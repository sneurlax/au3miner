$_sInstallDir = @WorkingDir

#include <Array.au3>
#include <Crypt.au3>

Select
	Case RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\au3miner\", "installdir")
		Global $_sInstallDir = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\au3miner\", "installdir")
	Case FileExists("au3miner.ini")
		Global $_sInstallDir = IniRead("au3miner.ini" ,"settings", "installdir",@TempDir&"\au3miner\")
	Case FileExists(@WorkingDir&"au3miner.ini")
		Global $_sInstallDir = IniRead(@WorkingDir&"au3miner.ini" ,"settings", "installdir",@TempDir&"\au3miner\")
	Case FileExists(@TempDir&"\au3miner\au3miner.ini")
		Global $_sInstallDir = IniRead(@TempDir&"\au3miner.ini", "settings", "installdir", @TempDir&"\au3miner\")
	Case Else
		Global $_sInstallDir = @TempDir&"\au3miner\"
EndSelect

$_Drives = DriveGetDrive("ALL")

Local $_Update = 0

; A lot of this work will be duplicate; that's OK, it's better to be safe than sorry.
; Look for au3miner-latest.exe and an accompanying .sig file
For $d = 1 to $_Drives[0]
	If FileExists($_Drives[$d]&"\au3miner-latest.exe") Then
		If FileExists($_Drives[$d]&"\au3miner-latest.exe.sig") Then
			$_Update = $_Drives[$d]&"\au3miner-latest.exe"
			If Not FileExists($_sInstallDir&"\gpg4win\au3miner-latest.exe.sig") Then
				FileCopy($_Drives[$d]&"\au3miner-latest.exe.sig", $_sInstallDir&"\gpg4win\au3miner-latest.exe.sig", 1)
			EndIf
		EndIf
	EndIf
	If FileExists($_Drives[$d]&"\au3miner\au3miner-latest.exe") Then
		If FileExists($_Drives[$d]&"\au3miner\au3miner-latest.exe.sig") Then
			$_Update = $_Drives[$d]&"\au3miner\au3miner-latest.exe"
			If Not FileExists($_sInstallDir&"\gpg4win\au3miner-latest.exe.sig") Then
				FileCopy($_Drives[$d]&"\au3miner\au3miner-latest.exe.sig", $_sInstallDir&"\gpg4win\au3miner-latest.exe.sig", 1)
			EndIf
		EndIf
	EndIf
	If FileExists($_Drives[$d]&"\au3miner.bootstrap") Then
		If FileExists($_Drives[$d]&"\au3miner.bootstrap.sig") Then
			$_SettingsUpdate = $_Drives[$d]&"\au3miner.bootstrap"
			If Not FileExists($_sInstallDir&"\gpg4win\au3miner.bootstrap.sig") Then
				FileCopy($_Drives[$d]&"\au3miner.bootstrap.sig", $_sInstallDir&"\gpg4win\au3miner.bootstrap.sig", 1)
			EndIf
		EndIf
	EndIf
	If FileExists($_Drives[$d]&"\au3miner\au3miner.bootstrap") Then
		If FileExists($_Drives[$d]&"\au3miner\au3miner.bootstrap.sig") Then
			$_SettingsUpdate = $_Drives[$d]&"\au3miner\au3miner.bootstrap"
			If Not FileExists($_sInstallDir&"\gpg4win\au3miner.bootstrap.sig") Then
				FileCopy($_Drives[$d]&"\au3miner\au3miner.bootstrap.sig", $_sInstallDir&"\gpg4win\au3miner.bootstrap.sig", 1)
			EndIf
		EndIf
	EndIf
Next

If $_Update Then
	$_Sig = FileRead($_sInstallDir&"\gpg4win\au3miner-latest.exe.sig") ; A signed "SHA1(au3miner-latext.exe),version"
	$_UpdateInfo = StringMid($_Sig, StringInStr($_Sig, "Hash: SHA512")+15, StringInStr($_Sig, "-----BEGIN PGP SIGNATURE-----")-StringInStr($_Sig, "Hash: SHA512")-15)
	$_SHA1 = StringLeft($_UpdateInfo, StringInStr($_UpdateInfo, ",")-1)
	$_UpdateVer = StringRight($_UpdateInfo, StringLen($_UpdateInfo)-StringInStr($_UpdateInfo, ","))
	If StringStripWS($_UpdateVer, 8) > StringStripWS($_Ver, 8) Then
		If StringStripWS(_Crypt_HashFile($_Update, $CALG_SHA1),8) == StringStripWS($_SHA1,8) Then
			$_pComSpec = Run(@ComSpec, $_sInstallDir)
			ProcessWait($_pComSpec)
			Send("cd gpg4win{ENTER}")
			Send("gpg2 --import sneurlax.asc{ENTER}") ; You can change this to YOUR public key in ASCII-armored form
			Send("gpg2 --verify au3miner-latest.exe.sig{ENTER}")
			Sleep(500)
			Send("{SHIFTDOWN}{HOME}{UP 20}{SHIFTUP}")
			Send("^C")
			ProcessClose($_pComSpec)
			$_Verification = ClipGet()
			If StringInStr($_Verification, 'Good signature from "sneurlax <sneurlax@gmail.com>"') Then
				If ProcessExists("au3miner-latest.exe") Then
					ProcessClose("au3miner-latest.exe")
					ProcessWaitClose("au3miner-latest.exe")
				EndIf
				If FileExists(@DesktopDir&"\au3miner-latest.exe") Then
					FileCopy($_Update,@DesktopDir&"\au3miner-latest.exe",1)
					Run(@DesktopDir&"\au3miner-latest.exe")
					Exit
				EndIf
				If FileExists($_sInstallDir&"\au3miner-latest.exe") Then
					FileCopy($_Update,$_sInstallDir&"\au3miner-latest.exe",1)
					Run($_sInstallDir&"\au3miner-latest.exe")
				EndIf
			EndIf
		EndIf
	EndIf
EndIf
