$_sInstallDir = @WorkingDir
Global $_Ver = "0.0.9.1"

#include <Array.au3>
#include <Crypt.au3>

$_Drives = DriveGetDrive("ALL")

Local $_Update = 0

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
		$_UpdateVer = StringRight($_UpdateInfo, StringLen($_UpdateInfo)-StringInStr($_UpdateInfo, ","))
		If $_UpdateVer > $_Ver Then
			If StringStripWS(_Crypt_HashFile($_Update, $CALG_SHA1),8) == StringStripWS($_SHA1,8) Then
				MsgBox(0,'','It seems an update is in order.')
			EndIf
		EndIf
	EndIf
EndIf

#cs

RunWait(@ComSpec & " gpg --import gpg4win\sneurlax.asc", @WorkingDir&"\gpg4win")
RunWait(@ComSpec & " gpg --verify test.sig", @WorkingDir&"\gpg4win")

ConsoleWrite(_getDOSOutput('gpg2 --import sneurlax.asc; gpg2 --verify test.sig') & @CRLF)

Func _getDOSOutput($command)
   Local $text = '', $Pid = Run('"' & @ComSpec & '" /c ' & $command, '', @SW_HIDE, 2 + 4)
   While 1
	  $text &= StdoutRead($Pid, False, False)
	  If @error Then ExitLoop
	  Sleep(10)
   WEnd
   Return StringStripWS($text, 7)
EndFunc   ;==>_getDOSOutput
#ce