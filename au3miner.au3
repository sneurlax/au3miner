Global $_Ver = "0.0.9"

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

Install($_sInstallDir)

Func Install($_fInstallDir)
   If Not FileExists($_fInstallDir) Then
	  Do
		  DirCreate($_fInstallDir)
	  Until FileExists($_fInstallDir)
   EndIf

   If Not FileExists($_fInstallDir) Then
	  Do
		  DirCreate($_fInstallDir)
	  Until FileExists($_fInstallDir)
   EndIf

   If Not FileExists($_fInstallDir&"claymoreminer\") Then
	  Do
		  DirCreate($_fInstallDir&"claymoreminer\")
	  Until FileExists($_fInstallDir&"claymoreminer\")
   EndIf
   FileInstall("C:\github\au3miner\claymoreminer\EthDcrMiner64.exe", $_fInstallDir&"claymoreminer\EthDcrMiner64.exe", 0)
   FileInstall("C:\github\au3miner\qtminer\libcurl.dll", $_fInstallDir&"claymoreminer\libcurl.dll", 0)
   FileInstall("C:\github\au3miner\claymoreminer\msvcr110.dll", $_fInstallDir&"claymoreminer\msvcr110.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\OpenCL.dll", $_fInstallDir&"claymoreminer\OpenCL.dll", 0)
   FileInstall("C:\github\au3miner\claymoreminer\Data.bin", $_fInstallDir&"claymoreminer\Data.bin", 0)

   If Not FileExists($_fInstallDir&"qtminer\") Then
	  Do
		  DirCreate($_fInstallDir&"qtminer\")
	  Until FileExists($_fInstallDir&"qtminer\")
   EndIf
   FileInstall("C:\github\au3miner\qtminer\qt_ca.qm", $_fInstallDir&"qtminer\qt_ca.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\qt_cs.qm", $_fInstallDir&"qtminer\qt_cs.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\qt_de.qm", $_fInstallDir&"qtminer\qt_de.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\qt_fi.qm", $_fInstallDir&"qtminer\qt_fi.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\qt_hu.qm", $_fInstallDir&"qtminer\qt_hu.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\qt_it.qm", $_fInstallDir&"qtminer\qt_it.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\qt_ja.qm", $_fInstallDir&"qtminer\qt_ja.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\qt_ru.qm", $_fInstallDir&"qtminer\qt_ru.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\qt_sk.qm", $_fInstallDir&"qtminer\qt_sk.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\qt_uk.qm", $_fInstallDir&"qtminer\qt_uk.qm", 0)
   FileInstall("C:\github\au3miner\qtminer\QtMiner.exe", $_fInstallDir&"qtminer\QtMiner.exe", 0)
   FileInstall("C:\github\au3miner\qtminer\depends.exe", $_fInstallDir&"qtminer\depends.exe", 0)
   FileInstall("C:\github\au3miner\qtminer\msvcp120.dll", $_fInstallDir&"qtminer\msvcp120.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\msvcr120.dll", $_fInstallDir&"qtminer\msvcr120.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\icudt53.dll", $_fInstallDir&"qtminer\icudt53.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\icuin53.dll", $_fInstallDir&"qtminer\icuin53.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\icuuc53.dll", $_fInstallDir&"qtminer\icuuc53.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\Qt5Core.dll", $_fInstallDir&"qtminer\Qt5Core.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\Qt5Network.dll", $_fInstallDir&"qtminer\Qt5Network.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\OpenCL.dll", $_fInstallDir&"qtminer\OpenCL.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\evmjit.dll", $_fInstallDir&"qtminer\evmjit.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\libmicrohttpd-dll.dll", $_fInstallDir&"qtminer\libmicrohttpd-dll.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\libcurl.dll", $_fInstallDir&"qtminer\libcurl.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\depends.dll", $_fInstallDir&"qtminer\depends.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\qt.conf", $_fInstallDir&"qtminer\qt.conf", 0)
   If Not FileExists($_fInstallDir&"qtminer\bearer\") Then
	  Do
		  DirCreate($_fInstallDir&"qtminer\bearer\")
	  Until FileExists($_fInstallDir&"qtminer\bearer")
   EndIf
   FileInstall("C:\github\au3miner\qtminer\bearer\qgenericbearer.dll", $_fInstallDir&"qtminer\bearer\qgenericbearer.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\bearer\qnativewifibearer.dll", $_fInstallDir&"qtminer\bearer\qnativewifibearer.dll", 0)

   If Not FileExists($_fInstallDir&"ethminer-genoil\") Then
	  Do
		  DirCreate($_fInstallDir&"ethminer-genoil\")
	  Until FileExists($_fInstallDir&"ethminer-genoil\")
   EndIf
   FileInstall("C:\github\au3miner\ethminer-genoil\cudart64_75.dll", $_fInstallDir&"ethminer-genoil\cudart64_75.dll", 0)
   FileInstall("C:\github\au3miner\ethminer-genoil\ethminer-genoil.exe", $_fInstallDir&"ethminer-genoil\ethminer-genoil.exe", 0)
   FileInstall("C:\github\au3miner\qtminer\libcurl.dll", $_fInstallDir&"ethminer-genoil\libcurl.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\libmicrohttpd-dll.dll", $_fInstallDir&"ethminer-genoil\libmicrohttpd-dll.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\OpenCL.dll", $_fInstallDir&"ethminer-genoil\OpenCL.dll", 0)

   If Not FileExists($_fInstallDir&"hodlminer\") Then
	  Do
		  DirCreate($_fInstallDir&"hodlminer\")
	  Until FileExists($_fInstallDir&"hodlminer\")
   EndIf
   FileInstall("C:\github\au3miner\hodlminer\hodlminer.exe", $_fInstallDir&"hodlminer\hodlminer.exe", 0)

   If Not FileExists($_fInstallDir&"hodlminer-wolf\") Then
	  Do
		  DirCreate($_fInstallDir&"hodlminer-wolf\")
	  Until FileExists($_fInstallDir&"hodlminer-wolf\")
   EndIf
   FileInstall("C:\github\au3miner\hodlminer-wolf\hodlminer-wolf.exe", $_fInstallDir&"hodlminer-wolf\hodlminer-wolf.exe", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libcurl-4.dll", $_fInstallDir&"hodlminer-wolf\libcurl-4.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libeay32.dll", $_fInstallDir&"hodlminer-wolf\libeay32.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libffi-6.dll", $_fInstallDir&"hodlminer-wolf\libffi-6.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libgmp-10.dll", $_fInstallDir&"hodlminer-wolf\libgmp-10.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libgnutls-30.dll", $_fInstallDir&"hodlminer-wolf\libgnutls-30.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libhogweed-4-1.dll", $_fInstallDir&"hodlminer-wolf\libhogweed-4-1.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libiconv-2.dll", $_fInstallDir&"hodlminer-wolf\libiconv-2.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libidn-11.dll", $_fInstallDir&"hodlminer-wolf\libidn-11.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libintl-8.dll", $_fInstallDir&"hodlminer-wolf\libintl-8.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libnettle-6-1.dll", $_fInstallDir&"hodlminer-wolf\libnettle-6-1.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libp11-kit-0.dll", $_fInstallDir&"hodlminer-wolf\libp11-kit-0.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\librtmp-1.dll", $_fInstallDir&"hodlminer-wolf\librtmp-1.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libssh2-1.dll", $_fInstallDir&"hodlminer-wolf\libssh2-1.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libtasn1-6.dll", $_fInstallDir&"hodlminer-wolf\libtasn1-6.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libwinpthread-1.dll", $_fInstallDir&"hodlminer-wolf\libwinpthread-1.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\ssleay32.dll", $_fInstallDir&"hodlminer-wolf\ssleay32.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\zlib1.dll", $_fInstallDir&"hodlminer-wolf\zlib1.dll", 0)
EndFunc

Func Uninstall()
   Global $_fInstallDir
   If StringInStr($_fInstallDir, "github") Then Return

   FileDelete($_fInstallDir&"claymoreminer\EthDcrMiner64.exe")
   FileDelete($_fInstallDir&"claymoreminer\libcurl.dll")
   FileDelete($_fInstallDir&"claymoreminer\msvcr110.dll")
   FileDelete($_fInstallDir&"claymoreminer\OpenCL.dll")
   FileDelete($_fInstallDir&"claymoreminer\Data.bin")
   FileDelete($_fInstallDir&"claymoreminer\")

   FileDelete($_fInstallDir&"qtminer\qt_ca.qm")
   FileDelete($_fInstallDir&"qtminer\qt_cs.qm")
   FileDelete($_fInstallDir&"qtminer\qt_de.qm")
   FileDelete($_fInstallDir&"qtminer\qt_fi.qm")
   FileDelete($_fInstallDir&"qtminer\qt_hu.qm")
   FileDelete($_fInstallDir&"qtminer\qt_it.qm")
   FileDelete($_fInstallDir&"qtminer\qt_ja.qm")
   FileDelete($_fInstallDir&"qtminer\qt_ru.qm")
   FileDelete($_fInstallDir&"qtminer\qt_sk.qm")
   FileDelete($_fInstallDir&"qtminer\qt_uk.qm")
   FileDelete($_fInstallDir&"qtminer\QtMiner.exe")
   FileDelete($_fInstallDir&"qtminer\depends.exe")
   FileDelete($_fInstallDir&"qtminer\msvcp120.dll")
   FileDelete($_fInstallDir&"qtminer\msvcr120.dll")
   FileDelete($_fInstallDir&"qtminer\icudt53.dll")
   FileDelete($_fInstallDir&"qtminer\icuin53.dll")
   FileDelete($_fInstallDir&"qtminer\icuuc53.dll")
   FileDelete($_fInstallDir&"qtminer\Qt5Core.dll")
   FileDelete($_fInstallDir&"qtminer\Qt5Network.dll")
   FileDelete($_fInstallDir&"qtminer\OpenCL.dll")
   FileDelete($_fInstallDir&"qtminer\evmjit.dll")
   FileDelete($_fInstallDir&"qtminer\libmicrohttpd-dll.dll")
   FileDelete($_fInstallDir&"qtminer\libcurl.dll")
   FileDelete($_fInstallDir&"qtminer\depends.dll")
   FileDelete($_fInstallDir&"qtminer\qt.conf")
   FileDelete($_fInstallDir&"qtminer\")

   FileDelete($_fInstallDir&"qtminer\bearer\qgenericbearer.dll")
   FileDelete($_fInstallDir&"qtminer\bearer\qnativewifibearer.dll")
   FileDelete($_fInstallDir&"qtminer\bearer\")

   FileDelete($_fInstallDir&"hodlminer\hodlminer.exe")
   FileDelete($_fInstallDir&"hodlminer\")

   FileDelete($_fInstallDir&"ethminer-genoil\cudart64_75.dll")
   FileDelete($_fInstallDir&"ethminer-genoil\ethminer-genoil.exel")
   FileDelete($_fInstallDir&"ethminer-genoil\libcurl.dll")
   FileDelete($_fInstallDir&"ethminer-genoil\libmicrohttpd-dll.dll")
   FileDelete($_fInstallDir&"ethminer-genoil\OpenCL.dll")
   FileDelete($_fInstallDir&"ethminer-genoil\")

   FileDelete($_fInstallDir&"hodlminer-wolf\hodlminer-wolf.exe")
   FileDelete($_fInstallDir&"hodlminer-wolf\libcurl-4.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libeay32.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libffi-6.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libgmp-10.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libgnutls-30.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libhogweed-4-1.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libiconv-2.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libidn-11.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libintl-8.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libnettle-6-1.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libp11-kit-0.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\librtmp-1.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libssh2-1.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libtasn1-6.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\libwinpthread-1.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\ssleay32.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\zlib1.dll")
   FileDelete($_fInstallDir&"hodlminer-wolf\")

   If Not FileExists($_fInstallDir&"\au3miner.ini") Then FileDelete($_fInstallDir)
EndFunc

#include <InetConstants.au3>

Func Update()
   $_hUpdate = InetGet("https://github.com/sneurlax/au3miner/blob/master/bin/au3miner-latest.exe?raw=true", "au3miner-latest.exe", 0, 1)
   $_Update_downloaded = InetGetInfo($_hUpdate, $INET_DOWNLOADREAD)
   $_Update_downloadsize = InetGetInfo($_hUpdate, $INET_DOWNLOADSIZE)
   Do
	  Sleep(250)
	  $_Update_downloaded = InetGetInfo($_hUpdate, $INET_DOWNLOADREAD)
	  GUICtrlSetData($_uau3miner_update, "Updating au3miner... "&$_Update_downloaded&"/"&$_Update_downloadsize)
   Until InetGetInfo($_hUpdate, $INET_DOWNLOADCOMPLETE)
   If Not InetGetInfo($_hUpdate, $INET_DOWNLOADERROR) Then
	  Run("au3miner-latest.exe")
	  Exit
   EndIf
EndFunc

#include <MsgBoxConstants.au3>

Func AddToStartup()
   If IsAdmin() Then
	  $_lnk = FileCreateShortcut(@ScriptFullPath, @StartupCommonDir&"\"&@ScriptName&".lnk")
	  If Not $_lnk Then MsgBox(16, "Error", "Failed to create a shortcut in "&@StartupCommonDir&"!")
   Else
	  MsgBox(16, "Error", "Cannot create a shortcut in "&@StartupCommonDir&"!"&@CRLF&@CRLF&"Relaunch with administrator privileges")
	  Return @error
   EndIf
EndFunc

Func AddToRegistry()
   If IsAdmin() Then
	  If $_sInstallDirToReg Then
		 RegWrite("HKEY_LOCAL_MACHINE\Software\au3miner", "installdir", "REG_DWORD", String($_sInstallDir))
	  Else
		 RegDelete("HKEY_LOCAL_MACHINE\SOFTWARE\au3miner", "installdir")
	  EndIf
   Else
	  MsgBox(16, "Error", "Cannot write to registry without administrator privileges!"&@CRLF&@CRLF&"Relaunch with administrator privileges")
	  Return @error
   EndIf
EndFunc

#include <Crypt.au3> ; in order to SHA1 @ComputerName for the worker/rig labels

Global $_sAutoStart
Global $_sInstallDirToReg
Global $_pClaymoreMiner = ProcessExists("EthDcrMiner64.exe")
Global $_sClaymoreMiner_auto
Global $_sClaymoreMiner_persist
Global $_iClaymoreMiner_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_pQtMiner = ProcessExists("qtminer.exe")
Global $_sQtMiner_auto
Global $_sQtMiner_persist
Global $_iQtMiner_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_pEthminerGenoil = ProcessExists("etherminer-genoil.exe")
Global $_sEthminerGenoil_auto
Global $_sEthminerGenoil_persist
Global $_iEthminerGenoil_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_pHOdlMinerWolf = ProcessExists("hodlminer-wolf.exe")
Global $_sHOdlMinerWolf_auto
Global $_sHOdlMinerWolf_persist
Global $_iHOdlMinerWolf_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_pHOdlMiner = ProcessExists("hodlminer.exe")
Global $_sHOdlMiner_auto
Global $_sHOdlMiner_persist
Global $_iHOdlMiner_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_sKeepAwake
Global $_sMonitorInternet
Global $_sInternetState ; 0 default/connect, >1::failed pings, <0 miners closed due to disconnection (Claymore 1, Qt 2, Ethminer 4, HodlWolf 8, HodlCore 16)
Global $_sCloseMiners
Global $_pMinersClosed
Global $_sCleanExit

Global $_sEServer
Global $_sEPayoutAddress
Global $_sEWorkerLabel
Global $_sEG
Global $_sEU
Global $_sET
Global $_sETVal
Global $_sEOpenCLPlatform
Global $_sEOpenCLPlatformVal
Global $_sEOpenCLDevice
Global $_sEOpenCLDeviceVal
Global $_sECLLocalWork
Global $_sECLLocalWorkVal
Global $_sECLGlobalWork
Global $_sECLGlobalWorkVal
Global $_sEGPUForce64Bit
Global $_sEGPUMaxHeap
Global $_sEGPUMaxHeapVal
Global $_sEGPUUseSync
Global $_sEGPUMaxAlloc
Global $_sEGPUMaxAllocVal
Global $_sEGPUSingleAlloc
Global $_sEGPUSingleAllocVal
Global $_sECUDAGridSize
Global $_sECUDAGridSizeVal
Global $_sECUDABlockSize
Global $_sECUDABlockSizeVal
Global $_sECUDASchedule
Global $_sECUDAScheduleVal

Global $_sDServer
Global $_sDPoolUsername
Global $_sDWorkerLabel
Global $_sDWorkerPassword

Global $_sHServer
Global $_sHPoolUsername
Global $_sHWorkerLabel
Global $_sHWorkerPassword

SettingsRead()

Func SettingsRead()
   $_sAutoStart = IniRead($_sInstallDir&"\au3miner.ini", "settings", "autostart", 0)
   $_sInstallDirToReg = IniRead($_sInstallDir&"\au3miner.ini", "settings", "installdirtoreg", 0)
   $_sClaymoreMiner_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "claymoreminerauto", 0)
   $_sClaymoreMiner_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "claymoreminerpersist", 0)
   $_sQtMiner_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "qtminerauto", 0)
   $_sQtMiner_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "qtminerpersist", 0)
   $_sEthminerGenoil_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "ethminergenoiminerauto", 0)
   $_sEthminerGenoil_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "ethminergenoilpersist", 0)
   $_sHOdlMinerWolf_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "hodlminerwolfauto", 0)
   $_sHOdlMinerWolf_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "hodlminerwolfpersist", 0)
   $_sHOdlMiner_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "hodlminerauto", 0)
   $_sHOdlMiner_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "hodlminerpersist", 0)
   $_sKeepAwake = IniRead($_sInstallDir&"\au3miner.ini", "settings", "keepawake", 0)
   $_sMonitorInternet = IniRead($_sInstallDir&"\au3miner.ini", "settings", "monitorinternet", 0)
   $_sCloseMiners = IniRead($_sInstallDir&"\au3miner.ini", "settings", "closeminers", 0)
   $_sCleanExit = IniRead($_sInstallDir&"\au3miner.ini", "settings", "cleanexit", 0)

   $_sEServer = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "server", "us1.ethpool.org:3333")
   $_sEPayoutAddress = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "payoutaddress", "0x63e53247a99a539b11e740fa7d18fcb12aeda0b2")
   $_sEWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "workerlabel", StringMid(_Crypt_HashData(@ComputerName, $CALG_SHA1 ), 3, 6 ))
   $_sEWorkerPassword = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "workerpassword", "charity")
   $_sEG = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "g", 1)
   $_sET = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "t", 1)
   $_sETVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "tval", 2)
   $_sEOpenCLPlatform = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-platform", 1)
   $_sEOpenCLPlatformVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-platformval", 0)
   $_sEOpenCLDevice = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-device", 1)
   $_sEOpenCLDeviceVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-deviceval", 0)
   $_sECLLocalWork = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cl-localwork", 0)
   $_sECLLocalWorkVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cl-localworkval", 256)
   $_sECLGlobalWork = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cl-globalwork", 0)
   $_sECLGlobalWorkVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cl-globalworkval", 16384)
   $_sEGPUForce64Bit = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpuforce64bit", 0)
   $_sEGPUMaxHeap = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxheap", 1)
   $_sEGPUMaxHeapVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxheapval", 99)
   $_sEGPUUseSync = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpuusesync", 1)
   $_sEGPUMaxAlloc = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxalloc", 1)
   $_sEGPUMaxAllocVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxallocval", 99)
   $_sEGPUSingleAlloc = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpusinglealloc", 1)
   $_sEGPUSingleAllocVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpusingleallocval", 99)
   $_sECUDAGridSize = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cudagridsize", 1)
   $_sECUDAGridSizeVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cudagridsizeval", 8192)
   $_sECUDABlockSize = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cudablocksize", 1)
   $_sECUDABlockSizeVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cudablocksizeval", 128)
   $_sECUDASchedule = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cudaschedule", 1)
   $_sECUDAScheduleVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "cudascheduleval", "sync")

   $_sDServer = IniRead($_sInstallDir&"\au3miner.ini", "decred", "server", "stratum+tcp://dcr.suprnova.cc:2252")
   $_sDPoolUsername = IniRead($_sInstallDir&"\au3miner.ini", "decred", "poolusername", "au3miner")
   $_sDWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "decred", "workerlabel", "au3miner")
   $_sDWorkerPassword = IniRead($_sInstallDir&"\au3miner.ini", "decred", "workerpassword", "charity")

   $_sHServer = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "server", "stratum+tcp://hodl.blockquarry.com:3032")
   $_sHPoolUsername = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "poolusername", "au3miner")
   $_sHWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerlabel", "au3miner")
   $_sHWorkerPassword = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerpassword", "charity")
EndFunc

Func SettingsWrite()
   Global $_sInstallDir
   Global $_sInstallDirToReg

   $_sAutoStart = GUICtrlRead($_uAutoStart)
   $_sInstalLDirOld = $_sInstallDir
   $_sInstallDir = GUICtrlRead($_uInstallDir)
   $_sInstalLDirToReg = GUICtrlRead($_uInstallDirToReg)
   $_sClaymoreMiner_auto = GUICtrlRead($_uClaymoreMiner_auto)
   $_sClaymoreMiner_persist = GUICtrlRead($_uClaymoreMiner_persist)
   $_sQtMiner_auto = GUICtrlRead($_uQtMiner_auto)
   $_sQtMiner_persist = GUICtrlRead($_uQtMiner_persist)
   $_sEthminerGenoil_auto = GUICtrlRead($_uEthminerGenoil_auto)
   $_sEthminerGenoil_persist = GUICtrlRead($_uEthminerGenoil_persist)
   $_sHOdlMinerWolf_auto = GUICtrlRead($_uHOdlMinerWolf_auto)
   $_sHOdlMinerWolf_persist = GUICtrlRead($_uHOdlMinerWolf_persist)
   $_sHOdlMiner_auto = GUICtrlRead($_uHOdlMiner_auto)
   $_sHOdlMiner_persist = GUICtrlRead($_uHOdlMiner_persist)
   $_sKeepAwake = GUICtrlRead($_uKeepAwake)
   $_sCloseMiners = GUICtrlRead($_uCloseMiners)
   $_sMonitorInternet = GUICtrlRead($_uMonitorInternet)
   $_sCleanExit = GUICtrlRead($_uCleanExit)

   ; 4=unchecked
   If $_sAutoStart <> $GUI_CHECKED Then $_sAutoStart = False
   If $_sInstalLDirToReg <> $GUI_CHECKED Then $_sInstalLDirToReg = False
   If $_sClaymoreMiner_auto <> $GUI_CHECKED Then $_sClaymoreMiner_auto = False
   If $_sClaymoreMiner_persist <> $GUI_CHECKED Then $_sClaymoreMiner_persist = False
   If $_sQtMiner_auto <> $GUI_CHECKED Then $_sQtMiner_auto = False
   If $_sQtMiner_persist <> $GUI_CHECKED Then $_sQtMiner_persist = False
   If $_sEthminerGenoil_auto <> $GUI_CHECKED Then $_sEthminerGenoil_auto = False
   If $_sEthminerGenoil_persist <> $GUI_CHECKED Then $_sEthminerGenoil_persist = False
   If $_sHOdlMinerWolf_auto <> $GUI_CHECKED Then $_sHOdlMinerWolf_auto = False
   If $_uHOdlMinerWolf_persist <> $GUI_CHECKED Then $_uHOdlMinerWolf_persist = False
   If $_sHOdlMiner_auto <> $GUI_CHECKED Then $_sHOdlMiner_auto = False
   If $_uHOdlMiner_persist <> $GUI_CHECKED Then $_uHOdlMiner_persist = False
   If $_sKeepAwake <> $GUI_CHECKED Then $_sKeepAwake = False
   If $_sCloseMiners <> $GUI_CHECKED Then $_sCloseMiners = False
   If $_sMonitorInternet <> $GUI_CHECKED Then $_sMonitorInternet = False
   If $_sCleanExit <> $GUI_CHECKED Then $_sCleanExit = False

   If Not FileExists($_sInstallDir) Then
	  $_sCreateInstalLDir = MsgBox(51, "Directory does not exist", "Warning: "&$_sInstallDir&" does not exist!  Create directory?")
	  If $_sCreateInstallDir = 6 Then ;Yes
		 DirCreate($_sInstallDir)
		 If @error Then MsgBox(16, "Error", "Failed to create "&$_sInstallDir&"!"&@CRLF&@CRLF&"Relaunch with administrator privileges")
	  EndIf
	  If $_sCreateInstalLDir = 7 Then Return ;No
	  If $_sCreateInstalLDir = 2 Then Return ;Cancel
   EndIf

   If Not $_sInstalLDir == $_sInstalLDirOld Then Install($_sInstallDir)

   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "autostart", $_sAutoStart)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "installdir", $_sInstallDir)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "installdirtoreg", $_sInstalLDirToReg)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "claymoreminerauto", $_sClaymoreMiner_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "claymoreminerpersist", $_sClaymoreMiner_persist)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "qtminerauto", $_sQtMiner_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "qtminerpersist", $_sQtMiner_persist)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "ethminergenoilauto", $_sEthminerGenoil_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "ethminergenoilpersist", $_uHOdlMinerWolf_persist)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "hodlminerwolfauto", $_sHOdlMinerWolf_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "hodlminerwolfpersist", $_uHOdlMinerWolf_persist)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "hodlminerauto", $_sHOdlMiner_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "hodlminerpersist", $_uHOdlMiner_persist)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "keepawake", $_sKeepAwake)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "closeminers", $_sCloseMiners)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "monitorinternet", $_sMonitorInternet)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "cleanexit", $_sCleanExit)

   If $_sAutoStart Then AddToStartup()
   If $_sInstallDirToReg Then AddToRegistry()
EndFunc

Func ESettingsWrite()
   $_sEServer = GUICtrlRead($_uEServer)
   $_sEPayoutAddress = GUICtrlRead($_uEPayoutAddress)
   $_sEWorkerLabel = GUICtrlRead($_uEWorkerLabel)
   $_sEG = GUICtrlRead($_uEG)
   $_sET = GUICtrlRead($_uET)
   $_sETVal = GUICtrlRead($_uETVal)
   $_sEOpenCLPlatform = GUICtrlRead($_uEOpenCLPlatform)
   $_sEOpenCLPlatformVal = GUICtrlRead($_uEOpenCLPlatformVal)
   $_sEOpenCLDevice = GUICtrlRead($_uEOpenCLDevice)
   $_sEOpenCLDeviceVal = GUICtrlRead($_uEOpenCLDeviceVal)
   $_sECLLocalWork = GUICtrlRead($_uECLLocalWork)
   $_sECLLocalWorkVal = GUICtrlRead($_uECLLocalWorkVal)
   $_sECLGlobalWork = GUICtrlRead($_uECLGlobalWork)
   $_sECLGlobalWorkVal = GUICtrlRead($_uECLGlobalWorkVal)
   $_sEGPUForce64Bit = GUICtrlRead($_uEGPUForce64Bit)
   $_sEGPUMaxHeap = GUICtrlRead($_uEGPUMaxHeap)
   $_sEGPUMaxHeapVal = GUICtrlRead($_uEGPUMaxHeapVal)
   $_sEGPUUseSync = GUICtrlRead($_uEGPUUseSync)
   $_sEGPUMaxAlloc = GUICtrlRead($_uEGPUMaxAlloc)
   $_sEGPUMaxAllocVal = GUICtrlRead($_uEGPUMaxAllocVal)
   $_sEGPUSingleAlloc = GUICtrlRead($_uEGPUSingleAlloc)
   $_sEGPUSingleAllocVal = GUICtrlRead($_uEGPUSingleAllocVal)
   $_sECUDAGridSize = GUICtrlRead($_uECUDAGridSize)
   $_sECUDAGridSizeVal = GUICtrlRead($_uECUDAGridSizeVal)
   $_sECUDABlockSize = GUICtrlRead($_uECUDABlockSize)
   $_sECUDABlockSizeVal = GUICtrlRead($_uECUDABlockSizeVal)
   $_sECUDASchedule = GUICtrlRead($_uECUDASchedule)
   $_sECUDAScheduleVal = GUICtrlRead($_uECUDAScheduleVal)

   ; 4=unchecked
  If $_sEG <> $GUI_CHECKED Then $_sEG = False
  If $_sET <> $GUI_CHECKED Then $_sET = False
  If $_sEOpenCLPlatform <> $GUI_CHECKED Then $_sEOpenCLPlatform = False
  If $_sEOpenCLDevice <> $GUI_CHECKED Then $_sEOpenCLDevice = False
  If $_sECLLocalWork <> $GUI_CHECKED Then $_sECLLocalWork = False
  If $_sECLGlobalWork <> $GUI_CHECKED Then $_sECLGlobalWork = False
  If $_sEGPUForce64Bit <> $GUI_CHECKED Then $_sEGPUForce64Bit = False
  If $_sEGPUMaxHeap <> $GUI_CHECKED Then $_sEGPUMaxHeap = False
  If $_sEGPUUseSync <> $GUI_CHECKED Then $_sEGPUUseSync = False
  If $_sEGPUMaxAlloc <> $GUI_CHECKED Then $_sEGPUMaxAlloc = False
  If $_sEGPUSingleAlloc <> $GUI_CHECKED Then $_sEGPUSingleAlloc = False
  If $_sECUDAGridSize <> $GUI_CHECKED Then $_sECUDAGridSize = False
  If $_sECUDABlockSize <> $GUI_CHECKED Then $_sECUDABlockSize = False
  If $_sECUDASchedule <> $GUI_CHECKED Then $_sECUDASchedule = False

   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "server", $_sEServer)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "payoutaddress", $_sEPayoutAddress)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "workerlabel", $_sEWorkerLabel)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "g", $_sEG)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "t", $_sET)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "tval", $_sETVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-platform", $_sEOpenCLPlatform)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-platformval", $_sEOpenCLPlatformVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-device", $_sEOpenCLDevice)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-deviceval", $_sEOpenCLDeviceVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cl-localwork", $_sECLLocalWork)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cl-localworkval", $_sECLLocalWorkVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cl-globalwork", $_sECLGlobalWork)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cl-globalworkval", $_sECLGlobalWorkVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpuforce64bit", $_sEGPUForce64Bit)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxheap", $_sEGPUMaxHeap)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxheapval", $_sEGPUMaxHeapVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpuusesync", $_sEGPUUseSync)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxalloc", $_sEGPUMaxAlloc)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxallocval", $_sEGPUMaxAllocVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpusinglealloc", $_sEGPUSingleAlloc)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpusingleallocval", $_sEGPUSingleAllocVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cudagridsize", $_sECUDAGridSize)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cudagridsizeval", $_sECUDAGridSizeVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cudablocksize", $_sECUDABlockSize)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cudablocksizeval", $_sECUDABlockSizeVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cudaschedule", $_sECUDASchedule)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "cudascheduleval", $_sECUDAScheduleVal)
EndFunc

Func DSettingsWrite()
   $_sDServer = GUICtrlRead($_uDServer)
   $_sDPoolUsername = GUICtrlRead($_uDPoolUsername)
   $_sDWorkerLabel = GUICtrlRead($_uDWorkerLabel)
   $_sDWorkerPassword = GUICtrlRead($_uDWorkerPassword)

   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "server", $_sDServer)
   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "poolusername", $_sDPoolUsername)
   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "workerlabel", $_sDWorkerLabel)
   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "workerpassword", $_sDWorkerPassword)
EndFunc

Func HSettingsWrite()
   $_sHServer = GUICtrlRead($_uHServer)
   $_sHPoolUsername = GUICtrlRead($_uHPoolUsername)
   $_sHWorkerLabel = GUICtrlRead($_uHWorkerLabel)
   $_sHWorkerPassword = GUICtrlRead($_uHWorkerPassword)

   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "server", $_sHServer)
   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "poolusername", $_sHPoolUsername)
   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerlabel", $_sHWorkerLabel)
   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerpassword", $_sHWorkerPassword)
EndFunc

#include <AutoItConstants.au3>
#include <GUIConstantsEx.au3>
#include <EditConstants.au3>
#include <WindowsConstants.au3>

$_GUI = GUICreate("au3miner "&$_Ver, 380, 333)

GUICtrlCreateTab(10, 10, 360, 313)
GUICtrlCreateTabItem("Home")
   $_uClaymoreMiner_launch = GUICtrlCreateButton("Launch claymoreminer", 20, 40, 167, 37)
   $_uQtMiner_launch = GUICtrlCreateButton("Launch qtminer", 20, 83, 167, 37)
   $_uEthminerGenoil_launch = GUICtrlCreateButton("Launch ethminer-genoil", 20, 126, 167, 37)
   $_uHOdlMinerWolf_launch = GUICtrlCreateButton("Launch HOdlminer-wolf", 193, 40, 167, 80)
   $_uHOdlMiner_launch = GUICtrlCreateButton("Launch HOdlminer", 193, 126, 167, 37)
   $_uau3miner_update = GUICtrlCreateButton("Download latest au3miner version from github", 20, 267, 340, 27)
   GUICtrlCreateLabel("au3miner version "&$_Ver, 250, 300)

   ;$_uTestButton = GUICtrlCreateButton("Test", 20, 237, 340, 27)

GUICtrlCreateTabItem("Preferences")
   $_uInstallDir = GUICtrlCreateInput($_sInstallDir, 20, 40, 260, 20)
   GUICtrlCreateLabel("Install directory", 285, 45)
   $_uInstallDirToReg = GUICtrlCreateCheckbox("Link settings in registry", 233, 65)
   GUICtrlSetState($_uInstallDirToReg, $_sInstallDirToReg)
   $_uAutoStart = GUICtrlCreateCheckbox("Launch au3miner when Windows starts", 20, 65)
   GUICtrlSetState($_uAutoStart, $_sAutoStart)
   $_uKeepAwake = GUICtrlCreateCheckbox("Keep computer awake while mining", 20, 85)
   GUICtrlSetState($_uKeepAwake, $_sKeepAwake)
   $_uMonitorInternet = GUICtrlCreateCheckbox("Pause mining if internet connection drops", 20, 105)
   GUICtrlSetState($_uMonitorInternet, $_sMonitorInternet)
   $_uCloseMiners = GUICtrlCreateCheckbox("Close miners upon application exit", 20, 125)
   GUICtrlSetState($_uCloseMiners, $_sCloseMiners)
   $_uCleanExit = GUICtrlCreateCheckbox("Clean extracted files upon application exit", 20, 145)
   GUICtrlSetState($_uCleanExit, $_sCleanExit)
   $_uClaymoreMiner_auto = GUICtrlCreateCheckbox("Start claymoreminer as soon as au3miner launches", 20, 185)
   GUICtrlSetState($_uClaymoreMiner_auto, $_sClaymoreMiner_auto)
   $_uClaymoreMiner_persist = GUICtrlCreateCheckbox("keep alive", 290, 185)
   GUICtrlSetState($_uClaymoreMiner_persist, $_sClaymoreMiner_persist)
   $_uQtMiner_auto = GUICtrlCreateCheckbox("Start qtminer as soon as au3miner launches", 20, 205)
   GUICtrlSetState($_uQtMiner_auto, $_sQtMiner_auto)
   $_uQtMiner_persist = GUICtrlCreateCheckbox("keep alive", 290, 205)
   GUICtrlSetState($_uQtMiner_persist, $_sQtMiner_persist)
   $_uEthminerGenoil_auto = GUICtrlCreateCheckbox("Start ethminer-genoil as soon as au3miner launches", 20, 225)
   GUICtrlSetState($_uEthminerGenoil_auto, $_sEthminerGenoil_auto)
   $_uEthminerGenoil_persist = GUICtrlCreateCheckbox("keep alive", 290, 225)
   GUICtrlSetState($_uEthminerGenoil_persist, $_sEthminerGenoil_persist)
   $_uHOdlMinerWolf_auto = GUICtrlCreateCheckbox("Start hodlminer-wolf as soon as au3miner launches", 20, 245)
   GUICtrlSetState($_uHOdlMinerWolf_auto, $_sHOdlMinerWolf_auto)
   $_uHOdlMinerWolf_persist = GUICtrlCreateCheckbox("keep alive", 290, 245)
   GUICtrlSetState($_uHOdlMinerWolf_persist, $_sHOdlMinerWolf_persist)
   $_uHOdlMiner_auto = GUICtrlCreateCheckbox("Start hodlminer as soon as au3miner launches", 20, 265)
   GUICtrlSetState($_uHOdlMiner_auto, $_sHOdlMiner_auto)
   $_uHOdlMiner_persist = GUICtrlCreateCheckbox("keep alive", 290, 265)
   GUICtrlSetState($_uHOdlMiner_persist, $_sHOdlMiner_persist)
   $_uSaveSettings = GUICtrlCreateButton("Save au3miner settings", 164, 293, 200)

GUICtrlCreateTabItem("Ethereum")
   $_uEServer = GUICtrlCreateInput($_sEServer, 20, 40, 260, 20)
   GUICtrlCreateLabel("Server", 285, 45)
   $_uEPayoutAddress = GUICtrlCreateInput($_sEPayoutAddress, 20, 65, 260, 20)
   GUICtrlCreateLabel("Payout address", 285, 70)
   $_uEWorkerLabel = GUICtrlCreateInput($_sEWorkerLabel, 20, 90, 110, 20)
   GUICtrlCreateLabel("Worker label", 135, 95)
   $_uEG = GUICtrlCreateCheckbox("-G", 20, 113)
   GUICtrlSetState($_uEG, $_sEG)
   $_uET = GUICtrlCreateCheckbox("-t", 60, 113)
   GUICtrlSetState($_uET, $_sET)
   $_uETVal = GUICtrlCreateCombo("", 90, 113, 30)
   GUICtrlSetData($_uETVal, "2|3|4|5|6", $_sETVal)
   $_uEOpenCLPlatform = GUICtrlCreateCheckbox("--opencl-platform", 20, 135)
   GUICtrlSetState($_uEOpenCLPlatform, $_sEOpenCLPlatform)
   $_uEOpenCLPlatformVal = GUICtrlCreateInput($_sEOpenCLPlatformVal, 120, 135, 60)
   $_uEOpenCLDevice = GUICtrlCreateCheckbox("--opencl-device", 20, 157)
   GUICtrlSetState($_uEOpenCLDevice, $_sEOpenCLDevice)
   $_uEOpenCLDeviceVal = GUICtrlCreateInput($_sEOpenCLDeviceVal, 120, 157, 60)
   $_uECLLocalWork = GUICtrlCreateCheckbox("--cl-local-work", 190, 135)
   GUICtrlSetState($_uECLLocalWork, $_sECLLocalWork)
   $_uECLLocalWorkVal = GUICtrlCreateInput($_sECLLocalWorkVal, 285, 135, 40)
   $_uECLGlobalWork = GUICtrlCreateCheckbox("--cl-global-work", 190, 157)
   GUICtrlSetState($_uECLGlobalWork, $_sECLGlobalWork)
   $_uECLGlobalWorkVal = GUICtrlCreateInput($_sECLGlobalWorkVal, 285, 157, 40)
   $_uECUDABlockSize = GUICtrlCreateCheckbox("--cuda-blocksize", 190, 179)
   GUICtrlSetState($_uECUDABlockSize, $_sECUDABlockSize)
   $_uECUDABlockSizeVal = GUICtrlCreateInput($_sECUDABlockSizeVal, 290, 179, 40)
   $_uECUDAGridSize = GUICtrlCreateCheckbox("--cuda-gridsize", 190, 201)
   GUICtrlSetState($_uECUDAGridSize, $_sECUDAGridSize)
   $_uECUDAGridSizeVal = GUICtrlCreateInput($_sECUDAGridSizeVal, 290, 201, 40)
   $_uECUDASchedule = GUICtrlCreateCheckbox("--cuda-schedule", 190, 223)
   GUICtrlSetState($_uECUDASchedule, $_sECUDASchedule)
   $_uECUDAScheduleVal = GUICtrlCreateInput($_sECUDAScheduleVal, 290, 223, 40)
   $_uEGPUForce64Bit = GUICtrlCreateCheckbox("GPU_FORCE_64BIT_PTR", 20, 179)
   GUICtrlSetState($_uEGPUForce64Bit, $_sEGPUForce64Bit)
   $_uEGPUMaxHeap = GUICtrlCreateCheckbox("GPU_MAX_HEAP_SIZE", 20, 201)
   GUICtrlSetState($_uEGPUMaxHeap, $_sEGPUMaxHeap)
   $_uEGPUMaxHeapVal = GUICtrlCreateInput($_sEGPUMaxHeapVal, 157, 201, 27, 20)
   $_uEGPUUseSync = GUICtrlCreateCheckbox("GPU_USE_SYNC_OBJECTS", 20, 223)
   GUICtrlSetState($_uEGPUUseSync, $_sEGPUUseSync)
   $_uEGPUMaxAlloc = GUICtrlCreateCheckbox("GPU_MAX_ALLOC_PERCENT", 20, 245)
   GUICtrlSetState($_uEGPUMaxAlloc, $_sEGPUMaxAlloc)
   $_uEGPUMaxAllocVal = GUICtrlCreateInput($_sEGPUMaxAllocVal, 189, 245, 27, 20)
   $_uEGPUSingleAlloc = GUICtrlCreateCheckbox("GPU_SINGLE_ALLOC_PERCENT", 20, 267)
   GUICtrlSetState($_uEGPUSingleAlloc, $_sEGPUSingleAlloc)
   $_uEGPUSingleAllocVal = GUICtrlCreateInput($_sEGPUSingleAllocVal, 206, 267, 27, 20)
   $_uESaveQtMinerSettings = GUICtrlCreateButton("Save Ethereum settings", 164, 293, 200)

GUICtrlCreateTabItem("Decred")
   $_uDServer = GUICtrlCreateInput($_sDServer, 20, 40, 260, 20)
   GUICtrlCreateLabel("Server", 285, 45)
   $_uDPoolUsername = GUICtrlCreateInput($_sDPoolUsername, 20, 65, 110)
   GUICtrlCreateLabel("Pool username", 135, 70)
   $_uDWorkerLabel = GUICtrlCreateInput($_sDWorkerLabel, 20, 90, 110, 21)
   GUICtrlCreateLabel("Worker label", 135, 95)
   $_uDWorkerPassword = GUICtrlCreateInput($_sDWorkerPassword, 20, 115, 110, 21, $ES_PASSWORD)
   GUICtrlCreateLabel("Worker password", 135, 120)
   $_uDSaveClaymoreMinerSettings = GUICtrlCreateButton("Save Decred settings", 164, 293, 200)

GUICtrlCreateTabItem("HOdlcoin")
   $_uHServer = GUICtrlCreateInput($_sHServer, 20, 40, 260, 20)
   GUICtrlCreateLabel("Server", 285, 45)
   $_uHPoolUsername = GUICtrlCreateInput($_sHPoolUsername, 20, 65, 110)
   GUICtrlCreateLabel("Pool username", 135, 70)
   $_uHWorkerLabel = GUICtrlCreateInput($_sHWorkerLabel, 20, 90, 110, 21)
   GUICtrlCreateLabel("Worker label", 135, 95)
   $_uHWorkerPassword = GUICtrlCreateInput($_sHWorkerPassword, 20, 115, 110, 21, $ES_PASSWORD)
   GUICtrlCreateLabel("Worker password", 135, 120)
   $_uHSaveHOdlMinerSettings = GUICtrlCreateButton("Save HOdlcoin settings", 164, 293, 200)

GUICtrlCreateTabItem("Statistics")
   GUICtrlCreateLabel("There are no built-in statistics capabilities in version "&$_Ver&@CRLF&@CRLF&"PM me @ https://www.autoitscript.com/forum/profile/7432-joshdb/"&@CRLF&"if you're antsy for progress :)", 20, 40, 340, 300)
   GUICtrlCreateLabel("au3miner version "&$_Ver&@CRLF&@CRLF&"Made by joshdb / sneurlax, cheers if anyone actually finds this useful", 20, 270, 340)

GUICtrlCreateTabItem("") ; end tabitem definition

GUISetState(@SW_SHOW)

Func ClaymoreMiner()
   Global $_pClaymoreMiner

   Local $_sEServer = GUICtrlRead($_uEServer)
   Local $_sEPayoutAddress = GUICtrlRead($_uEPayoutAddress)
   Local $_sEWorkerLabel = GUICtrlRead($_uEWorkerLabel)

   Local $_sDServer = GUICtrlRead($_uDServer)
   Local $_sDPoolUsername = GUICtrlRead($_uDPoolUsername)
   Local $_sDWorkerLabel = GUICtrlRead($_uDWorkerLabel)
   Local $_sDWorkerPassword = GUICtrlRead($_uDWorkerPassword)

   Local $_sEGPUForce64Bit = GUICtrlRead($_uEGPUForce64Bit)
   Local $_sEGPUMaxHeap = GUICtrlRead($_uEGPUMaxHeap)
   Local $_sEGPUMaxHeapVal = GUICtrlRead($_uEGPUMaxHeapVal)
   Local $_sEGPUUseSync = GUICtrlRead($_uEGPUUseSync)
   Local $_sEGPUMaxAlloc = GUICtrlRead($_uEGPUMaxAlloc)
   Local $_sEGPUMaxAllocVal = GUICtrlRead($_uEGPUMaxAllocVal)
   Local $_sEGPUSingleAlloc = GUICtrlRead($_uEGPUSingleAlloc)
   Local $_sEGPUSingleAllocVal = GUICtrlRead($_uEGPUSingleAllocVal)

   ; 4=unchecked
   If $_sEGPUForce64Bit <> $GUI_CHECKED Then $_sEGPUForce64Bit = False
   If $_sEGPUMaxHeap <> $GUI_CHECKED Then $_sEGPUMaxHeap = False
   If $_sEGPUUseSync <> $GUI_CHECKED Then $_sEGPUUseSync = False
   If $_sEGPUMaxAlloc <> $GUI_CHECKED Then $_sEGPUMaxAlloc = False
   If $_sEGPUSingleAlloc <> $GUI_CHECKED Then $_sEGPUSingleAlloc = False

   Local $_sDBatch
   Local $_sCGOpts

   If $_sEGPUForce64Bit Then $_sCGOpts &= "setx GPU_FORCE_64BIT_PTR 1"&@CRLF
   If $_sEGPUMaxHeap Then $_sCGOpts &= "setx GPU_MAX_HEAP_SIZE "&$_sEGPUMaxHeapVal&@CRLF
   If $_sEGPUUseSync Then $_sCGOpts &= "setx GPU_USE_SYNC_OBJECTS 1"&@CRLF
   If $_sEGPUMaxAlloc Then $_sCGOpts &= "setx GPU_MAX_ALLOC_PERCENT "&$_sEGPUMaxAllocVal&@CRLF
   If $_sEGPUSingleAlloc Then $_sCGOpts &= "setx GPU_SINGLE_ALLOC_PERCENT "&$_sEGPUSingleAllocVal&@CRLF

   $_sDBatch = "cd "&$_sInstallDir&"claymoreminer"&@CRLF&$_sCGOpts&@CRLF&"EthDcrMiner64.exe -epool "&$_sEServer&" -ewal "&$_sEPayoutAddress&"."&$_sEWorkerLabel&" -epsw "&$_sEWorkerLabel&" -dpool "&$_sDServer&" -dwal "&$_sDPoolUsername&"."&$_sDWorkerLabel&" -dpsw "&$_sHWorkerPassword
   If FileExists($_sInstallDir&"au3-claymoreminer.bat") Then FileDelete($_sInstallDir&"au3-claymoreminer.bat")
   FileWrite($_sInstallDir&"au3-claymoreminer.bat", $_sDBatch)
   $_pClaymoreMiner = Run(@ComSpec&" /K au3-claymoreminer.bat", $_sInstallDir)

   $_iClaymoreMiner_state = 1 ; launching
EndFunc

Func QtMiner()
   Global $_pQtMiner

   Local $_sEServer = GUICtrlRead($_uEServer)
   Local $_sEPayoutAddress = GUICtrlRead($_uEPayoutAddress)
   Local $_sEWorkerLabel = GUICtrlRead($_uEWorkerLabel)
   Local $_sEG = GUICtrlRead($_uEG)
   Local $_sET = GUICtrlRead($_uET)
   Local $_sETVal = GUICtrlRead($_uETVal)
   Local $_sEOpenCLPlatform = GUICtrlRead($_uEOpenCLPlatform)
   Local $_sEOpenCLPlatformVal = GUICtrlRead($_uEOpenCLPlatformVal)
   Local $_sEOpenCLDevice = GUICtrlRead($_uEOpenCLDevice)
   Local $_sEOpenCLDeviceVal = GUICtrlRead($_uEOpenCLDeviceVal)
   Local $_sEGPUForce64Bit = GUICtrlRead($_uEGPUForce64Bit)
   Local $_sEGPUMaxHeap = GUICtrlRead($_uEGPUMaxHeap)
   Local $_sEGPUMaxHeapVal = GUICtrlRead($_uEGPUMaxHeapVal)
   Local $_sEGPUUseSync = GUICtrlRead($_uEGPUUseSync)
   Local $_sEGPUMaxAlloc = GUICtrlRead($_uEGPUMaxAlloc)
   Local $_sEGPUMaxAllocVal = GUICtrlRead($_uEGPUMaxAllocVal)
   Local $_sEGPUSingleAlloc = GUICtrlRead($_uEGPUSingleAlloc)
   Local $_sEGPUSingleAllocVal = GUICtrlRead($_uEGPUSingleAllocVal)

   ; 4=unchecked
   If $_sEG <> $GUI_CHECKED Then $_sEG = False
   If $_sET <> $GUI_CHECKED Then $_sET = False
   If $_sEOpenCLPlatform <> $GUI_CHECKED Then $_sEOpenCLPlatform = False
   If $_sEOpenCLDevice <> $GUI_CHECKED Then $_sEOpenCLDevice = False
   If $_sEGPUForce64Bit <> $GUI_CHECKED Then $_sEGPUForce64Bit = False
   If $_sEGPUMaxHeap <> $GUI_CHECKED Then $_sEGPUMaxHeap = False
   If $_sEGPUUseSync <> $GUI_CHECKED Then $_sEGPUUseSync = False
   If $_sEGPUMaxAlloc <> $GUI_CHECKED Then $_sEGPUMaxAlloc = False
   If $_sEGPUSingleAlloc <> $GUI_CHECKED Then $_sEGPUSingleAlloc = False

   Local $_sEOpts
   Local $_sEGOpts
   Local $_sBatch

   If $_sEG Then $_sEOpts &= "-G "
   If $_sET Then $_sEOpts &= "-t "&$_sETVal&" "
   If $_sEOpenCLPlatform Then $_sEOpts &= "--opencl-platform "&$_sEOpenCLPlatformVal&" "
   If $_sEOpenCLDevice Then $_sEOpts &= "--opencl-device "&$_sEOpenCLDeviceVal&" "
   If $_sECLLocalWork Then $_sEOpts &= "--cl-local-work "&$_sECLLocalWorkVal&" "
   If $_sECLGlobalWork Then $_sEOpts &= "--cl-global-work "&$_sECLGlobalWorkVal&" "

   If $_sEGPUForce64Bit Then $_sEGOpts &= "setx GPU_FORCE_64BIT_PTR 1"&@CRLF
   If $_sEGPUMaxHeap Then $_sEGOpts &= "setx GPU_MAX_HEAP_SIZE "&$_sEGPUMaxHeapVal&@CRLF
   If $_sEGPUUseSync Then $_sEGOpts &= "setx GPU_USE_SYNC_OBJECTS 1"&@CRLF
   If $_sEGPUMaxAlloc Then $_sEGOpts &= "setx GPU_MAX_ALLOC_PERCENT "&$_sEGPUMaxAllocVal&@CRLF
   If $_sEGPUSingleAlloc Then $_sEGOpts &= "SET GPU_SINGLE_ALLOC_PERCENT="&$_sEGPUSingleAllocVal&@CRLF

   $_sBatch = "cd "&$_sInstallDir&"qtminer"&@CRLF&$_sEGOpts&@CRLF&"qtminer.exe -s "&$_sEServer&" -u "&$_sEPayoutAddress&"."&$_sEWorkerLabel&" "&$_sEOpts
   If FileExists($_sInstallDir&"au3-qtminer.bat") Then FileDelete($_sInstallDir&"au3-qtminer.bat")
   FileWrite($_sInstallDir&"au3-qtminer.bat", $_sBatch)
   $_pQtMiner = Run(@ComSpec&" /K au3-qtminer.bat", $_sInstallDir)

   $_iQtMiner_state = 1 ; launching
EndFunc

Func EthminerGenoil()
   Global $_pEthminerGenoil

   Local $_sEServer = GUICtrlRead($_uEServer)
   Local $_sEPayoutAddress = GUICtrlRead($_uEPayoutAddress)
   Local $_sEWorkerLabel = GUICtrlRead($_uEWorkerLabel)
   Local $_sET = GUICtrlRead($_uET)
   Local $_sETVal = GUICtrlRead($_uETVal)

   ; 4=unchecked
   If $_sEG <> $GUI_CHECKED Then $_sEG = False
   If $_sET <> $GUI_CHECKED Then $_sET = False
   If $_sECUDAGridSize <> $GUI_CHECKED Then $_sECUDAGridSize = False
   If $_sECUDABlockSize <> $GUI_CHECKED Then $_sECUDABlockSize = False
   If $_sECUDASchedule <> $GUI_CHECKED Then $_sECUDASchedule = False

   Local $_sEOpts
   Local $_sBatch

   If $_sET Then $_sEOpts &= "-t "&$_sETVal&" "
   If $_sECUDAGridSize Then $_sEOpts &= "--cuda-grid-size "&$_sECUDAGridSizeVal&" "
   If $_sECUDABlockSize Then $_sEOpts &= "--cuda-block-size "&$_sECUDABlockSizeVal&" "
   If $_sECUDASchedule Then $_sEOpts &= "--cuda-schedule "&$_sECUDAScheduleVal&" "
   $_sBatch = "cd "&$_sInstallDir&"ethminer-genoil"&@CRLF&"ethminer-genoil.exe -U -F http://"&$_sEServer&"/miner/"&$_sEPayoutAddress&"."&$_sEWorkerLabel&"/10 "&$_sEOpts
   ;$_sBatch = "cd "&$_sInstallDir&"ethminer-genoil"&@CRLF&"ethminer-genoil.exe -U -F "&$_sEServer&" -O "&$_sEPayoutAddress&"."&$_sEWorkerLabel&" "&$_sEOpts
   If FileExists($_sInstallDir&"au3-ethminer-genoil.bat") Then FileDelete($_sInstallDir&"au3-ethminer-genoil.bat")
   FileWrite($_sInstallDir&"au3-ethminer-genoil.bat", $_sBatch)
   $_pEthminerGenoil = Run(@ComSpec&" /K au3-ethminer-genoil.bat", $_sInstallDir)

   $_iEthminerGenoil_state = 1 ; launching
EndFunc

Func HOdlMiner()
   Global $_pHOdlMiner

   Local $_sHServer = GUICtrlRead($_uHServer)
   Local $_sHPoolUsername = GUICtrlRead($_uHPoolUsername)
   Local $_sHWorkerLabel = GUICtrlRead($_uHWorkerLabel)
   Local $_sHWorkerPassword = GUICtrlRead($_uHWorkerPassword)

   Local $_HBatch

   $_sBatch = "cd "&$_sInstallDir&"hodlminer"&@CRLF&"hodlminer.exe -a hodl -o stratum+tcp://hodl.blockquarry.com:3032 -u "&$_sHPoolUsername&"."&$_sHWorkerLabel&" -p "&$_sHWorkerPassword
   If FileExists($_sInstallDir&"au3-hodlminer.bat") Then FileDelete($_sInstallDir&"au3-hodlminer.bat")
   FileWrite($_sInstallDir&"au3-hodlminer.bat", $_sBatch)
   $_pHOdlMiner = Run(@ComSpec&" /K au3-hodlminer.bat", $_sInstallDir)

   $_iHOdlMiner_state = 1 ; launching
EndFunc

Func HOdlMinerWolf()
   Global $_pHOdlMinerWolf

   Local $_sHServer = GUICtrlRead($_uHServer)
   Local $_sHPoolUsername = GUICtrlRead($_uHPoolUsername)
   Local $_sHWorkerLabel = GUICtrlRead($_uHWorkerLabel)
   Local $_sHWorkerPassword = GUICtrlRead($_uHWorkerPassword)

   Local $_HBatch

   $_sBatch = "cd "&$_sInstallDir&"hodlminer-wolf"&@CRLF&"hodlminer-wolf.exe -a hodl -o stratum+tcp://hodl.blockquarry.com:3032 -u "&$_sHPoolUsername&"."&$_sHWorkerLabel&" -p "&$_sHWorkerPassword
   If FileExists($_sInstallDir&"au3-hodlminer-wolf.bat") Then FileDelete($_sInstallDir&"au3-hodlminer-wolf.bat")
   FileWrite($_sInstallDir&"au3-hodlminer-wolf.bat", $_sBatch)
   $_pHOdlMinerWolf = Run(@ComSpec&" /K au3-hodlminer-wolf.bat", $_sInstallDir)

   $_iHOdlMinerWolf_state = 1 ; launching
EndFunc

Func CheckInternet()
   Global $_sInternetState

   $ping = Ping("www.google.com")
   If @error Then
	  $_sInternetState++
   Else
	  $_sInternetState = 0
   EndIf
   Return $_sInternetState
EndFunc

Func CloseMiners()
   Global $_pClaymoreMiner
   Global $_pQtMiner
   Global $_pEthMinerGenoil
   Global $_pHOdlMiner
   Global $_pHOdlMinerWolf

   $_iClaymoreMiner_state = 3
   $_iQtMiner_state = 3
   $_iEthminerGenoil_state = 3
   $_iHOdlMiner_state = 3
   $_iHOdlMinerWolf_state = 3
EndFunc

Func PreExit()
   If $_sCloseMiners == 1 Then CloseMiners()
   If $_sCleanExit == 1 Then Uninstall()
EndFunc

If $_sClaymoreMiner_auto == 1 And Not $_pClaymoreMiner Then ClaymoreMiner()
If $_sQtMiner_auto == 1 And Not $_pQtMiner Then QtMiner()
If $_sEthminerGenoil_auto == 1 And Not $_pEthminerGenoil Then EthminerGenoil()
If $_sHOdlMiner_auto == 1 And Not $_pHOdlMiner Then HOdlMiner()
If $_sHOdlMinerWolf_auto == 1 And Not $_pHOdlMinerWolf Then HOdlMinerWolf()
If $_sKeepAwake Then _PowerKeepAlive()
OnAutoItExitRegister("PreExit")
OnAutoItExitRegister("_PowerResetState")

While 1
   Switch GUIGetMsg()
	  Case $GUI_EVENT_CLOSE
		 ExitLoop
	  Case $_uClaymoreMiner_launch
		 $_pClaymoreMiner = ProcessExists("EthDcrMiner64.exe")
		 If Not $_pClaymoreMiner Then ClaymoreMiner()
	  Case $_uQtMiner_launch
		 $_pQtMiner = ProcessExists("qtminer.exe")
		 If Not $_pQtMiner Then QtMiner()
	  Case $_uEthminerGenoil_launch
		 $_pEthminerGenoil = ProcessExists("ethminer-genoil.exe")
		 If Not $_pEthminerGenoil Then EthminerGenoil()
	  Case $_uHOdlMiner_launch
		 $_pHOdlMiner = ProcessExists("hodlminer.exe")
		 If Not $_pHOdlMiner Then HOdlMiner()
	  Case $_uHOdlMinerWolf_launch
		 $_pHOdlMinerWolf = ProcessExists("hodlminer-wolf.exe")
		 If Not $_pHOdlMinerWolf Then HOdlMinerWolf()
	  Case $_uSaveSettings
		 SettingsWrite()
	  Case $_uESaveQtMinerSettings
		 ESettingsWrite()
	  Case $_uHSaveHOdlMinerSettings
		 HSettingsWrite()
	  Case $_uDSaveClaymoreMinerSettings
		 DSettingsWrite()
	  Case $_uau3miner_update
		 GUICtrlSetData($_uau3miner_update, "Updating au3miner...")
		 Update()
	  ;Case $_uTestButton
	  ;	If Not $_sInternetState Or $_sInternetState == 0 Then
	  ;		$_sInternetState = 1
	  ;	ElseIf $_sInternetState == 1 Then
	  ;		$_sInternetState = 0
	  ;	EndIf
   EndSwitch

   Select
	  Case $_iClaymoreMiner_state == 1
		 GUICtrlSetState($_uClaymoreMiner_launch, $GUI_DISABLE)
		 GUICtrlSetData($_uClaymoreMiner_launch, "Launching claymoreminer...")
		 If ProcessExists($_pClaymoreMiner) Then
			$_iClaymoreMiner_state = 2
			GUICtrlSetData($_uClaymoreMiner_launch, "claymoreminer is running")
		 EndIf
	  Case $_iClaymoreMiner_state == 2
		 If Not ProcessExists($_pClaymoreMiner) Then
			If $_sClaymoreMiner_persist == 1 Then
			   ClaymoreMiner()
			   $_iClaymoreMiner_state = 1
			Else
			   $_iClaymoreMiner_state = 3
			   GUICtrlSetData($_uClaymoreMiner_launch, "claymoreminer closed")
			EndIf
		 EndIf
		 If WinExists("EthDcrMiner64.exe", "EthDcrMiner64.exe has stopped working") Then
			ProcessClose($_pClaymoreMiner)
			ClaymoreMiner()
		 EndIf
	  Case $_iClaymoreMiner_state == 3
		 Do
			ProcessClose($_pClaymoreMiner)
		 Until Not ProcessExists($_pClaymoreMiner)
		 $_iClaymoreMiner_state = 0
		 GUICtrlSetState($_uClaymoreMiner_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uClaymoreMiner_launch, "Launch claymoreminer")
	  Case Else
		 If ProcessExists($_pClaymoreMiner) Then
			GUICtrlSetState($_uClaymoreMiner_launch, $GUI_DISABLE)
			$_iClaymoreMiner_state = 2
			GUICtrlSetData($_uClaymoreMiner_launch, "claymoreminer is running")
		 EndIf
   EndSelect

   Select
	  Case $_iQtMiner_state == 1
		 GUICtrlSetState($_uQtMiner_launch, $GUI_DISABLE)
		 GUICtrlSetData($_uQtMiner_launch, "Launching qtminer...")
		 If ProcessExists($_pQtMiner) Then
			$_iQtMiner_state = 2
			GUICtrlSetData($_uQtMiner_launch, "qtminer is running")
		 EndIf
	  Case $_iQtMiner_state == 2
		 If Not ProcessExists($_pQtMiner) Then
			If $_sQtMiner_persist == 1 Then
			   QtMiner()
			   $_iQtMiner_state = 1
			Else
			   $_iQtMiner_state = 3
			   GUICtrlSetData($_uQtMiner_launch, "qtminer closed")
			EndIf
		 EndIf
		 If WinExists("qtminer.exe", "qtminer.exe has stopped working") Then
			ProcessClose($_pQtMiner)
			QtMiner()
		 EndIf
	  Case $_iQtMiner_state == 3
		 Do
			ProcessClose($_pQtMiner)
		 Until Not ProcessExists($_pQtMiner)
		 $_iQtMiner_state = 0
		 GUICtrlSetState($_uQtMiner_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uQtMiner_launch, "Launch qtminer")
	  Case Else
		 If ProcessExists($_pQtMiner) Then
			GUICtrlSetState($_uQtMiner_launch, $GUI_DISABLE)
			$_iQtMiner_state = 2
			GUICtrlSetData($_uQtMiner_launch, "qtminer is running")
		 EndIf
   EndSelect

   Select
	  Case $_iEthminerGenoil_state == 1
		 GUICtrlSetState($_uEthminerGenoil_launch, $GUI_DISABLE)
		 GUICtrlSetData($_uEthminerGenoil_launch, "Launching EthminerGenoil...")
		 If ProcessExists($_pEthminerGenoil) Then
			$_iEthminerGenoil_state = 2
			GUICtrlSetData($_uEthminerGenoil_launch, "EthminerGenoil is running")
		 EndIf
	  Case $_iEthminerGenoil_state == 2
		 If Not ProcessExists($_pEthminerGenoil) Then
			If $_sEthminerGenoil_persist == 1 Then
			   EthminerGenoil()
			   $_iEthminerGenoil_state = 1
			Else
			   $_iEthminerGenoil_state = 3
			   GUICtrlSetData($_uEthminerGenoil_launch, "EthminerGenoil closed")
			EndIf
		 EndIf
		 If WinExists("ethminer-genoil.exe", "ethminer-genoil.exe has stopped working") Then
			ProcessClose($_pEthminerGenoil)
			EthminerGenoil()
		 EndIf
	  Case $_iEthminerGenoil_state == 3
		 Do
			ProcessClose($_pEthminerGenoil)
		 Until Not ProcessExists($_pEthminerGenoil)
		 $_iEthminerGenoil_state = 0
		 GUICtrlSetState($_uEthminerGenoil_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uEthminerGenoil_launch, "Launch EthminerGenoil")
	  Case Else
		 If ProcessExists($_pEthminerGenoil) Then
			GUICtrlSetState($_uEthminerGenoil_launch, $GUI_DISABLE)
			$_iEthminerGenoil_state = 2
			GUICtrlSetData($_uEthminerGenoil_launch, "EthminerGenoil is running")
		 EndIf
   EndSelect

   Select
	  Case $_iHOdlMiner_state == 1
		 GUICtrlSetState($_uHOdlMiner_launch, $GUI_DISABLE)
		 GUICtrlSetData($_uHOdlMiner_launch, "Launching HOdlminer...")
		 If ProcessExists($_pHOdlMiner) Then
			$_iHOdlMiner_state = 2
			GUICtrlSetData($_uHOdlMiner_launch, "HOdlminer is running")
		 EndIf
	  Case $_iHOdlMiner_state == 2
		 If Not ProcessExists($_pHOdlMiner) Then
			If $_sHOdlMiner_persist == 1 Then
			   HOdlMiner()
			   $_iHOdlMiner_state = 1
			Else
			   $_iHOdlMiner_state = 3
			   GUICtrlSetData($_uHOdlMiner_launch, "HOdlminer closed")
			EndIf
		 EndIf
		 If WinExists("hodlminer.exe", "hodlminer.exe has stopped working") Then
			ProcessClose($_pHOdlMiner)
			HOdlMiner()
		 EndIf
	  Case $_iHOdlMiner_state == 3
		 Do
			ProcessClose($_pHOdlMiner)
		 Until Not ProcessExists($_pHOdlMiner)
		 $_iHOdlMiner_state = 0
		 GUICtrlSetState($_uHOdlMiner_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uHOdlMiner_launch, "Launch HOdlminer")
	  Case Else
		 If ProcessExists($_pHOdlMiner) Then
			GUICtrlSetState($_uHOdlMiner_launch, $GUI_DISABLE)
			$_iHOdlMiner_state = 2
			GUICtrlSetData($_uHOdlMiner_launch, "HOldminer is running")
		 EndIf
   EndSelect

   Select
	  Case $_iHOdlMinerWolf_state == 1
		 GUICtrlSetState($_uHOdlMinerWolf_launch, $GUI_DISABLE)
		 GUICtrlSetData($_uHOdlMinerWolf_launch, "Launching HOdlMiner-wolf...")
		 If ProcessExists($_pHOdlMinerWolf) Then
			$_iHOdlMinerWolf_state = 2
			GUICtrlSetData($_uHOdlMinerWolf_launch, "HOdlMiner-wolf is running")
		 EndIf
	  Case $_iHOdlMinerWolf_state == 2
		 If Not ProcessExists($_pHOdlMinerWolf) Then
			If $_sHOdlMinerWolf_persist == 1 Then
			   HOdlMinerWolf()
			   $_iHOdlMinerWolf_state = 1
			Else
			   $_iHOdlMinerWolf_state = 3
			   GUICtrlSetData($_uHOdlMinerWolf_launch, "HOdlMiner-wolf closed")
			EndIf
		 EndIf
		 If WinExists("hodlminer-wolf.exe", "hodlminer-wolf.exe has stopped working") Then
			ProcessClose($_pHOdlMinerWolf)
			HOdlMinerWolf()
		 EndIf
	  Case $_iHOdlMinerWolf_state == 3
		 Do
			ProcessClose($_pHOdlMinerWolf)
		 Until Not ProcessExists($_pHOdlMinerWolf)
		 $_iHOdlMinerWolf_state = 0
		 GUICtrlSetState($_uHOdlMinerWolf_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uHOdlMinerWolf_launch, "Launch HOdlMiner-wolf")
	  Case Else
		 If ProcessExists($_pHOdlMinerWolf) Then
			GUICtrlSetState($_uHOdlMinerWolf_launch, $GUI_DISABLE)
			$_iHOdlMinerWolf_state = 2
			GUICtrlSetData($_uHOdlMinerWolf_launch, "HOldminer is running")
		 EndIf
   EndSelect

   If $_sMonitorInternet == 1 Then
	  CheckInternet()
	  If $_sInternetState > 0 Then
		 $_sInternetState = 0
		 If $_iClaymoreMiner_state > 0 Then
			$_iClaymoreMiner_state = 3
			$_sInternetState = $_sInternetState-1
		 EndIf
		 If $_iQtMiner_state > 0 Then
			$_iQtMiner_state = 3
			$_sInternetState = $_sInternetState-2
		 EndIf
		 If $_iEthminerGenoil_state > 0 Then
			$_iEthminerGenoil_state = 3
			$_sInternetState = $_sInternetState-4
		 EndIf
		 If $_iHOdlMinerWolf_state > 0 Then
			$_iHOdlMinerWolf_state = 3
			$_sInternetState = $_sInternetState-8
		 EndIf
		 If $_iHOdlMiner_state > 0 Then
			$_iHOdlMiner_state = 3
			$_sInternetState = $_sInternetState-16
		 EndIf
		 $_sInternetState = -1;
	  ElseIf $_sInternetState < 0 Then
		 If $_sInternetState >= 16 Then
			$_iHOdlMiner_state = 1
		 EndIf
		 If $_sInternetState >= 8 Then
			$_iHOdlMinerWolf_state = 1
		 EndIf
		 If $_sInternetState >= 4 Then
			$_iEthminerGenoil_state = 1
		 EndIf
		 If $_sInternetState >= 2 Then
			$_iQtMiner_state = 1
		 EndIf
		 If $_sInternetState >= 1 Then
			$_iClaymoreMiner_state = 1
		 EndIf
	  EndIf
   EndIf
WEnd

; ===============================================================================================================================
; Functions to prevent/disable sleep/power-savings modes
;
; Functions:
;    _PowerKeepAlive()
;    _PowerResetState()
;
; Author: Ascend4nt
; ===============================================================================================================================

; ==========================================================================================================================
; Func _PowerKeepAlive()
;
; Function to Prevent the Screensaver and Sleep/Power-savings modes from kicking in.
;    NOTE: Be sure to reset this state on exit!
;
; Returns:
;    Success: @error=0 & previous state as # (typically 0x80000000 [-2147483648])
;    Failure: @error set (returns 0x80000000, but thats just the normal state)
;        @error = 2 = DLLCall error. @extended = DLLCall error code (see AutoIt Help)
; ==========================================================================================================================

Func _PowerKeepAlive()
#cs
    ; Flags:
    ;    ES_SYSTEM_REQUIRED  (0x01) -> Resets system Idle timer
    ;    ES_DISPLAY_REQUIRED (0x02) -> Resets display Idle timer
    ;    ES_CONTINUOUS (0x80000000) -> Forces 'continuous mode' -> the above 2 will not need to continuously be reset
#ce
    Local $aRet=DllCall('kernel32.dll','long','SetThreadExecutionState','long',0x80000003)
    If @error Then Return SetError(2,@error,0x80000000)
    Return $aRet[0]    ; Previous state (typically 0x80000000 [-2147483648])
EndFunc

; ==========================================================================================================================
; Func _PowerResetState()
;
; Function to Reset the Screensaver and Sleep/Power-savings modes to defaults.
;    NOTE: The timer is reset on each call to this!
;
; Returns:
;    Success: @error=0 & previous state as #
;    Failure: @error set (returns 0x80000000, but thats just the normal state)
;        @error = 2 = DLLCall error. @extended = DLLCall error code (see AutoIt Help)
; ==========================================================================================================================

Func _PowerResetState()
    ; Flag:    ES_CONTINUOUS (0x80000000) -> (default) -> used alone, it resets timers & allows regular sleep/power-savings mode
    Local $aRet=DllCall('kernel32.dll','long','SetThreadExecutionState','long',0x80000000)
    If @error Then Return SetError(2,@error,0x80000000)
    Return $aRet[0]    ; Previous state
EndFunc