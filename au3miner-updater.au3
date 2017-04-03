$_sInstallDir = @WorkingDir

#include <Array.au3>
#include <Crypt.au3>

$_Drives = DriveGetDrive("ALL")

Local $_Update = 0

; A lot of this work will be duplicate; that's OK, it's better to be safe than sorry.
For $d = 1 to $_Drives[0]
	If FileExists($_Drives[$d]&"\au3miner-latest.exe") Then
		If FileExists($_Drives[$d]&"\au3miner-latest.exe.sig") Then
			$_Update = $_Drives[$d]&"\au3miner-latest.exe"
			FileCopy($_Drives[$d]&"\au3miner-latest.exe.sig", $_sInstallDir&"\gpg4win\au3miner-latest.exe.sig", 1)
		EndIf
	EndIf
Next

If $_Update Then
	$_pComSpec = Run(@ComSpec)
	ProcessWait($_pComSpec)
	Send("cd gpg4win{ENTER}")
	Send("gpg2 --import sneurlax.asc{ENTER}")
	Send("gpg2 --verify au3miner-latest.exe.sig{ENTER}")
	Send("{SHIFTDOWN}{HOME}{UP 20}{SHIFTUP}")
	Send("^C")
	ProcessClose($_pComSpec)
	$_Verification = ClipGet()
	If StringInStr($_Verification, 'Good signature from "sneurlax <sneurlax@gmail.com>"') Then
		$_Sig = FileRead($_sInstallDir&"\gpg4win\au3miner-latest.exe.sig")
		$_UpdateInfo = StringMid($_Sig, StringInStr($_Sig, "Hash: SHA512")+15, StringInStr($_Sig, "-----BEGIN PGP SIGNATURE-----")-StringInStr($_Sig, "Hash: SHA512")-15)
		$_SHA1 = StringLeft($_UpdateInfo, StringInStr($_UpdateInfo, ",")-1)
		If StringStripWS(_Crypt_HashFile($_Update, $CALG_SHA1),8) == StringStripWS($_SHA1,8) Then
			If ProcessExists("au3miner-latest.exe") Then
				ProcessClose("au3miner-latest.exe")
				ProcessWaitClose("au3miner-latest.exe")
			EndIf
			FileCopy($_Update,$_sInstallDir,1)
			Run("au3miner-latest.exe")
		EndIf
	EndIf
EndIf