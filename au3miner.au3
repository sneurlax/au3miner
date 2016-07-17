Global $_Ver = "0.0.9"

If FileExists("au3miner.bootstrap") Then
   FileCopy("au3miner.bootstrap", @TempDir&"\au3miner\au3miner.ini", 1)
EndIf

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

   If Not FileExists($_fInstallDir&"cpuminer-multi\") Then
	  Do
		  DirCreate($_fInstallDir&"cpuminer-multi\")
	  Until FileExists($_fInstallDir&"cpuminer-multi\")
   EndIf
   FileInstall("C:\github\au3miner\cpuminer-multi\minerd.exe", $_fInstallDir&"cpuminer-multi\minerd.exe", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libcurl-4.dll", $_fInstallDir&"cpuminer-multi\libcurl-4.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libiconv-2.dll", $_fInstallDir&"cpuminer-multi\libiconv-2.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libidn-11.dll", $_fInstallDir&"cpuminer-multi\libidn-11.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libintl-8.dll", $_fInstallDir&"cpuminer-multi\libintl-8.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\libwinpthread-1.dll", $_fInstallDir&"cpuminer-multi\libwinpthread-1.dll", 0)
   FileInstall("C:\github\au3miner\hodlminer-wolf\zlib1.dll", $_fInstallDir&"cpuminer-multi\zlib1.dll", 0)
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

   FileDelete($_fInstallDir&"cpuminer-multi\minerd.exe")
   FileDelete($_fInstallDir&"cpuminer-multi\libcurl-4.dll")
   FileDelete($_fInstallDir&"cpuminer-multi\libiconv-2.dll")
   FileDelete($_fInstallDir&"cpuminer-multi\libidn-11.dll")
   FileDelete($_fInstallDir&"cpuminer-multi\libintl-8.dll")
   FileDelete($_fInstallDir&"cpuminer-multi\libwinpthread-1.dll")
   FileDelete($_fInstallDir&"cpuminer-multi\zlib1.dll")
   FileDelete($_fInstallDir&"cpuminer-multi\")

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

Global $_GUI
Global $_SettingsManageGUI

Global $_sAutoStart
Global $_sInstallDirToReg
Global $_sClaymoreETH
Global $_sClaymoreDCR
Global $_sClaymoreSC
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
Global $_pCPUMinerMulti = ProcessExists("minerd.exe")
Global $_sCPUMinerMulti_auto
Global $_sCPUMinerMulti_persist
Global $_iCPUMinerMulti_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_sKeepAwake
Global $_sMonitorInternet
Global $_sInternetState ; 0 default/connect, >1::failed pings, <0 miners closed due to disconnection (Claymore 1, Qt 2, Ethminer 4, HodlWolf 8, HodlCore 16)
Global $_sCloseMiners
Global $_pMinersClosed
Global $_sCleanExit

Global $_uGlobalPoolUsername
Global $_uGlobalWorkerLabel
Global $_uGlobalWorkerPassword
Global $_uApplySettingsGlobally
Global $_uExportSettingsBootstrap

Global $_sEPool
Global $_sEServer
Global $_sEPayoutAddress
Global $_sEPoolUsername
Global $_sEWorkerLabel
Global $_sEWorkerPassword
Global $_sEOpts

Global $_sDPool
Global $_sDServer
Global $_sDPayoutAddress
Global $_sDPoolUsername
Global $_sDWorkerLabel
Global $_sDWorkerPassword
Global $_sDOpts

Global $_sSCPool
Global $_sSCServer
Global $_sSCPayoutAddress
Global $_sSCPoolUsername
Global $_sSCWorkerLabel
Global $_sSCWorkerPassword
Global $_sSCOpts

Global $_sHPool
Global $_sHServer
Global $_sHPayoutAddress
Global $_sHPoolUsername
Global $_sHWorkerLabel
Global $_sHWorkerPassword
Global $_sHOpts

Global $_sMServer
Global $_sMPayoutAddress
Global $_sMPoolUsername
Global $_sMWorkerLabel
Global $_sMWorkerPassword
Global $_sMOpts

SettingsRead()

Func SettingsRead()
   $_sAutoStart = IniRead($_sInstallDir&"\au3miner.ini", "settings", "autostart", 0)
   $_sInstallDirToReg = IniRead($_sInstallDir&"\au3miner.ini", "settings", "installdirtoreg", 0)
   $_sClaymoreMiner_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "Claymoreminerauto", 0)
   $_sClaymoreMiner_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "Claymoreminerpersist", 0)
   $_sClaymoreETH = IniRead($_sInstallDir&"\au3miner.ini", "settings", "claymoreeth", 1)
   $_sClaymoreDCR = IniRead($_sInstallDir&"\au3miner.ini", "settings", "claymoredcr", 1)
   $_sClaymoreSC = IniRead($_sInstallDir&"\au3miner.ini", "settings", "claymoresc", 0)
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
   $_sEPayoutAddress = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "payoutaddress", "0xa5d358F1e77F2360B996c714EE799A43E0cF183B")
   $_sEPoolUsername = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "poolusername", "au3miner")
   $_sEWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "workerlabel", StringMid(_Crypt_HashData(@ComputerName, $CALG_SHA1 ), 3, 6 ))
   $_sEWorkerPassword = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "workerpassword", "charity")
   $_sEOpts = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "customoptions", "-mport 0")

   $_sDServer = IniRead($_sInstallDir&"\au3miner.ini", "decred", "server", "stratum+tcp://dcr.suprnova.cc:2252")
   $_sDPayoutAddress = IniRead($_sInstallDir&"\au3miner.ini", "decred", "payoutaddress", "Dsm64tQLQwa613mfyfuoWfTRmyVAuc14PSM")
   $_sDPoolUsername = IniRead($_sInstallDir&"\au3miner.ini", "decred", "poolusername", "au3miner")
   $_sDWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "decred", "workerlabel", "au3miner")
   $_sDWorkerPassword = IniRead($_sInstallDir&"\au3miner.ini", "decred", "workerpassword", "charity")
   $_sDOpts = IniRead($_sInstallDir&"\au3miner.ini", "decred", "customoptions", "")

   $_sSCServer = IniRead($_sInstallDir&"\au3miner.ini", "siacoin", "server", "us-west1.nanopool.org:9999")
   $_sSCPayoutAddress = IniRead($_sInstallDir&"\au3miner.ini", "siacoin", "payoutaddress", "0b1bd6e0a7c8a96911fe929a2ff52a889ab40f58736f52f88d56de0f4d2bb53e09c797c7a330")
   $_sSCPoolUsername = IniRead($_sInstallDir&"\au3miner.ini", "siacoin", "poolusername", "au3miner")
   $_sSCWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "siacoin", "workerlabel", "au3miner")
   $_sSCWorkerPassword = IniRead($_sInstallDir&"\au3miner.ini", "siacoin", "workerpassword", "charity")
   $_sSCOpts = IniRead($_sInstallDir&"\au3miner.ini", "siacoin", "customoptions", "")

   $_sHServer = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "server", "stratum+tcp://hodl.blockquarry.com:3032")
   $_sHPayoutAddress = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "payoutaddress", "HKWfa34PpDrJR7LvbxuZoCMyARyEAj1JSy")
   $_sHPoolUsername = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "poolusername", "au3miner")
   $_sHWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerlabel", "au3miner")
   $_sHWorkerPassword = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerpassword", "charity")
   $_sHOpts = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "customoptions", "")

   $_sMServer = IniRead($_sInstallDir&"\au3miner.ini", "monero", "server", "stratum+tcp://xmr.pool.minergate.com:45560")
   $_sMPayoutAddress = IniRead($_sInstallDir&"\au3miner.ini", "monero", "payoutaddress", "44p5Yi4hkpXdFmA2cCFZFAAoYjop1P2YGBKUj7jZ6hKseyGGxKEU8em7VQuHCeAeUJS3nHRzDSA2nMMYy7nukk5B8A1epsA")
   $_sMPoolUsername = IniRead($_sInstallDir&"\au3miner.ini", "monero", "poolusername", "au3miner")
   $_sMWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "monero", "workerlabel", "au3miner")
   $_sMWorkerPassword = IniRead($_sInstallDir&"\au3miner.ini", "monero", "workerpassword", "charity")
   $_sMOpts = IniRead($_sInstallDir&"\au3miner.ini", "monero", "customoptions", "")
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
   $_sCPUMinerMulti_auto = GUICtrlRead($_uCPUMinerMulti_auto)
   $_sCPUMinerMulti_persist = GUICtrlRead($_uCPUMinerMulti_persist)
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
   If $_sCPUMinerMulti_auto <> $GUI_CHECKED Then $_sCPUMinerMulti_auto = False
   If $_uCPUMinerMulti_persist <> $GUI_CHECKED Then $_uCPUMinerMulti_persist = False
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

   If Not $_sInstalLDir == $_sInstallDirOld Then Install($_sInstallDir)

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
   $_sEPool = GUICtrlRead($_uEPool)
   $_sEServer = GUICtrlRead($_uEServer)
   $_sEPayoutAddress = GUICtrlRead($_uEPayoutAddress)
   $_sEPoolUsername = GUICtrlRead($_uEPoolUsername)
   $_sEWorkerLabel = GUICtrlRead($_uEWorkerLabel)
   $_sEWorkerPassword = GUICtrlRead($_uEWorkerPassword)
   $_sEOpts = GUICtrlRead($_uEOpts)

   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "pool", $_sEPool)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "server", $_sEServer)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "payoutaddress", $_sEPayoutAddress)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "poolusername", $_sEPoolUsername)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "workerlabel", $_sEWorkerLabel)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "workerpassword", $_sEWorkerPassword)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "customoptions", $_sEOpts)
EndFunc

Func DSettingsWrite()
   $_sDPool = GUICtrlRead($_uDPool)
   $_sDServer = GUICtrlRead($_uDServer)
   $_sDPayoutAddress = GUICtrlRead($_uDPayoutAddress)
   $_sDPoolUsername = GUICtrlRead($_uDPoolUsername)
   $_sDWorkerLabel = GUICtrlRead($_uDWorkerLabel)
   $_sDWorkerPassword = GUICtrlRead($_uDWorkerPassword)
   $_sDOpts = GUICtrlRead($_uDOpts)

   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "pool", $_sDPool)
   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "server", $_sDServer)
   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "payoutaddress", $_sDPayoutAddress)
   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "poolusername", $_sDPoolUsername)
   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "workerlabel", $_sDWorkerLabel)
   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "workerpassword", $_sDWorkerPassword)
   IniWrite($_sInstallDir&"\au3miner.ini", "decred", "customoptions", $_sDOpts)
EndFunc

Func SCSettingsWrite()
   $_sSCPool = GUICtrlRead($_uSCPool)
   $_sSCServer = GUICtrlRead($_uSCServer)
   $_sSCPayoutAddress = GUICtrlRead($_uSCPayoutAddress)
   $_sSCPoolUsername = GUICtrlRead($_uSCPoolUsername)
   $_sSCWorkerLabel = GUICtrlRead($_uSCWorkerLabel)
   $_sSCWorkerPassword = GUICtrlRead($_uSCWorkerPassword)
   $_sSCOpts = GUICtrlRead($_uSCEOpts)

   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "pool", $_sSCPool)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "server", $_sSCServer)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "payoutaddress", $_sSCPayoutAddress)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "poolusername", $_sSCPoolUsername)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "workerlabel", $_sSCWorkerLabel)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "workerpassword", $_sSCWorkerPassword)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "customoptions", $_sSCOpts)
EndFunc

Func HSettingsWrite()
   $_sHPool = GUICtrlRead($_uHPool)
   $_sHServer = GUICtrlRead($_uHServer)
   $_sHPayoutAddress = GUICtrlRead($_uHPayoutAddress)
   $_sHPoolUsername = GUICtrlRead($_uHPoolUsername)
   $_sHWorkerLabel = GUICtrlRead($_uHWorkerLabel)
   $_sHWorkerPassword = GUICtrlRead($_uHWorkerPassword)
   $_sHOpts = GUICtrlRead($_uHOpts)

   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "pool", $_sHPool)
   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "server", $_sHServer)
   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "payoutaddress", $_sHPayoutAddress)
   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "poolusername", $_sHPoolUsername)
   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerlabel", $_sHWorkerLabel)
   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerpassword", $_sHWorkerPassword)
   IniWrite($_sInstallDir&"\au3miner.ini", "hodlcoin", "customoptions", $_sHOpts)
EndFunc

Func MSettingsWrite()
   $_sMPool = GUICtrlRead($_uMPool)
   $_sMServer = GUICtrlRead($_uMServer)
   $_sMPayoutAddress = GUICtrlRead($_uMPayoutAddress)
   $_sMPoolUsername = GUICtrlRead($_uMPoolUsername)
   $_sMWorkerLabel = GUICtrlRead($_uMWorkerLabel)
   $_sMWorkerPassword = GUICtrlRead($_uMWorkerPassword)
   $_sMOpts = GUICtrlRead($_uMOpts)

   IniWrite($_sInstallDir&"\au3miner.ini", "monero", "pool", $_sMPool)
   IniWrite($_sInstallDir&"\au3miner.ini", "monero", "server", $_sMServer)
   IniWrite($_sInstallDir&"\au3miner.ini", "monero", "payoutaddress", $_sMPayoutAddress)
   IniWrite($_sInstallDir&"\au3miner.ini", "monero", "poolusername", $_sMPoolUsername)
   IniWrite($_sInstallDir&"\au3miner.ini", "monero", "workerlabel", $_sMWorkerLabel)
   IniWrite($_sInstallDir&"\au3miner.ini", "monero", "workerpassword", $_sMWorkerPassword)
   IniWrite($_sInstallDir&"\au3miner.ini", "monero", "customoptions", $_sMOpts)
EndFunc

#include <AutoItConstants.au3>
#include <GUIConstantsEx.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <WindowsConstants.au3>

$_GUIMain = GUICreate("au3miner "&$_Ver, 380, 333)

GUICtrlCreateTab(10, 10, 360, 313)
GUICtrlCreateTabItem("Home")
   $_uClaymoreMiner_launch = GUICtrlCreateButton("claymoreminer", 20, 40, 140, 37)
   $_uClaymoreETH = GUICtrlCreateCheckbox("Ξ", 170, 48)
   $_uClaymoreDCR = GUICtrlCreateCheckbox("Ð", 200, 48)
   $_uClaymoreSC = GUICtrlCreateCheckbox("SC", 230, 48)
   If($_sClaymoreETH == 1 OR $_sClaymoreETH == $GUI_CHECKED) Then GUICtrlSetState($_uClaymoreETH, $GUI_CHECKED)
   If($_sClaymoreDCR == 1 OR $_sClaymoreDCR == $GUI_CHECKED) Then GUICtrlSetState($_uClaymoreDCR, $GUI_CHECKED)
   If($_sClaymoreSC == 1 OR $_sClaymoreSC == $GUI_CHECKED) Then GUICtrlSetState($_uClaymoreSC, $GUI_CHECKED)

   $_uQtMiner_launch = GUICtrlCreateButton("qtminer", 20, 83, 140, 37)
   $_uQtMinerETH = GUICtrlCreateCheckbox("Ξ", 170, 91)
   GUICtrlSetState($_uQtMinerETH, $GUI_CHECKED)
   GUICtrlSetState($_uQtMinerETH, $GUI_DISABLE)

   $_uEthminerGenoil_launch = GUICtrlCreateButton("ethminer-genoil", 20, 126, 140, 37)
   $_uEthminerETH = GUICtrlCreateCheckbox("Ξ", 170, 134)
   GUICtrlSetState($_uEthminerETH, $GUI_CHECKED)
   GUICtrlSetState($_uEthminerETH, $GUI_DISABLE)

   $_uHOdlMinerWolf_launch = GUICtrlCreateButton("HOdlminer-wolf", 20, 167, 140, 37)
   $_uHOdlMinerWolfHODL = GUICtrlCreateCheckbox("HODL", 170, 175)
   GUICtrlSetState($_uHOdlMinerWolfHODL, $GUI_CHECKED)
   GUICtrlSetState($_uHOdlMinerWolfHODL, $GUI_DISABLE)

   $_uHOdlMiner_launch = GUICtrlCreateButton("HOdlminer", 20, 209, 140, 37)
   $_uHOdlMinerHODL = GUICtrlCreateCheckbox("HODL", 170, 217)
   GUICtrlSetState($_uHOdlMinerHODL, $GUI_CHECKED)
   GUICtrlSetState($_uHOdlMinerHODL, $GUI_DISABLE)

   $_uCPUMinerMulti_launch = GUICtrlCreateButton("cpuminer-multi", 20, 251, 140, 37)
   $_uCPUMinerXMR = GUICtrlCreateCheckbox("ɱ", 170, 259)
   GUICtrlSetState($_uCPUMinerXMR, $GUI_CHECKED)
   GUICtrlSetState($_uCPUMinerXMR, $GUI_DISABLE)

   GUICtrlCreateLabel("au3miner version "&$_Ver, 250, 296)
   $_uau3miner_update = GUICtrlCreateButton("Update via github", 20, 294, 220, 19)

   ;$_uTestButton = GUICtrlCreateButton("Test", 20, 237, 340, 27)

GUICtrlCreateTabItem("Settings")
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
   $_uClaymoreMiner_auto = GUICtrlCreateCheckbox("Start claymoreminer as soon as au3miner launches", 20, 165)
   GUICtrlSetState($_uClaymoreMiner_auto, $_sClaymoreMiner_auto)
   $_uClaymoreMiner_persist = GUICtrlCreateCheckbox("keep alive", 290, 165)
   GUICtrlSetState($_uClaymoreMiner_persist, $_sClaymoreMiner_persist)
   $_uQtMiner_auto = GUICtrlCreateCheckbox("Start qtminer as soon as au3miner launches", 20, 185)
   GUICtrlSetState($_uQtMiner_auto, $_sQtMiner_auto)
   $_uQtMiner_persist = GUICtrlCreateCheckbox("keep alive", 290, 185)
   GUICtrlSetState($_uQtMiner_persist, $_sQtMiner_persist)
   $_uEthminerGenoil_auto = GUICtrlCreateCheckbox("Start ethminer-genoil as soon as au3miner launches", 20, 205)
   GUICtrlSetState($_uEthminerGenoil_auto, $_sEthminerGenoil_auto)
   $_uEthminerGenoil_persist = GUICtrlCreateCheckbox("keep alive", 290, 205)
   GUICtrlSetState($_uEthminerGenoil_persist, $_sEthminerGenoil_persist)
   $_uHOdlMinerWolf_auto = GUICtrlCreateCheckbox("Start hodlminer-wolf as soon as au3miner launches", 20, 225)
   GUICtrlSetState($_uHOdlMinerWolf_auto, $_sHOdlMinerWolf_auto)
   $_uHOdlMinerWolf_persist = GUICtrlCreateCheckbox("keep alive", 290, 225)
   GUICtrlSetState($_uHOdlMinerWolf_persist, $_sHOdlMinerWolf_persist)
   $_uHOdlMiner_auto = GUICtrlCreateCheckbox("Start hodlminer as soon as au3miner launches", 20, 245)
   GUICtrlSetState($_uHOdlMiner_auto, $_sHOdlMiner_auto)
   $_uHOdlMiner_persist = GUICtrlCreateCheckbox("keep alive", 290, 245)
   GUICtrlSetState($_uHOdlMiner_persist, $_sHOdlMiner_persist)
   $_uCPUMinerMulti_auto = GUICtrlCreateCheckbox("Start cpuminer-multi as soon as au3miner launches", 20, 265)
   GUICtrlSetState($_uCPUMinerMulti_auto, $_sCPUMinerMulti_auto)
   $_uCPUMinerMulti_persist = GUICtrlCreateCheckbox("keep alive", 290, 265)
   GUICtrlSetState($_uCPUMinerMulti_persist, $_sCPUMinerMulti_persist)
   $_uManageSettings = GUICtrlCreateButton("Manage settings", 18, 289, 100)
   $_uSaveSettings = GUICtrlCreateButton("Save au3miner settings", 160, 289, 200)

GUICtrlCreateTabItem("Ethereum")
   GUICtrlCreateLabel("Pool:", 20, 44)
   $_uEPool = GUICtrlCreateCombo("Dwarfpool", 50, 40, 80)
   GUICtrlSetData($_uEPool, "Ethpool| sᴏʟᴏ| ᴄᴜsᴛᴏᴍ")
   $_uEServer = GUICtrlCreateInput($_sEServer, 20, 65, 260, 20)
   GUICtrlCreateLabel("Server", 285, 70)
   $_uEPayoutAddress = GUICtrlCreateInput($_sEPayoutAddress, 20, 90, 260, 20)
   GUICtrlCreateLabel("Payout address", 285, 95)
   $_uEPoolUsername = GUICtrlCreateInput($_sEPoolUsername, 20, 115, 110)
   GUICtrlCreateLabel("Pool username", 135, 120)
   $_uEWorkerLabel = GUICtrlCreateInput($_sEWorkerLabel, 20, 140, 110, 21)
   GUICtrlCreateLabel("Worker label", 135, 145)
   $_uEWorkerPassword = GUICtrlCreateInput($_sEWorkerPassword, 20, 165, 110, 21, $ES_PASSWORD)
   GUICtrlCreateLabel("Worker password", 135, 170)
   $_uEOpts = GUICtrlCreateInput($_sEOpts, 20, 190, 260, 20)
   GUICtrlCreateLabel("Custom options", 285, 195)
   $_uESaveSettings = GUICtrlCreateButton("Save Ethereum settings", 164, 293, 200)

GUICtrlCreateTabItem("Decred")
   GUICtrlCreateLabel("Pool:", 20, 44)
   $_uDPool = GUICtrlCreateCombo("Suprnova", 50, 40, 80)
   GUICtrlSetData($_uDPool, " sᴏʟᴏ| ᴄᴜsᴛᴏᴍ")
   $_uDServer = GUICtrlCreateInput($_sDServer, 20, 65, 260, 20)
   GUICtrlCreateLabel("Server", 285, 70)
   $_uDPayoutAddress = GUICtrlCreateInput($_sDPayoutAddress, 20, 90, 260, 20)
   GUICtrlCreateLabel("Payout address", 285, 95)
   $_uDPoolUsername = GUICtrlCreateInput($_sDPoolUsername, 20, 115, 110)
   GUICtrlCreateLabel("Pool username", 135, 120)
   $_uDWorkerLabel = GUICtrlCreateInput($_sDWorkerLabel, 20, 140, 110, 21)
   GUICtrlCreateLabel("Worker label", 135, 145)
   $_uDWorkerPassword = GUICtrlCreateInput($_sDWorkerPassword, 20, 165, 110, 21, $ES_PASSWORD)
   GUICtrlCreateLabel("Worker password", 135, 170)
   $_uDOpts = GUICtrlCreateInput($_sDOpts, 20, 190, 260, 20)
   GUICtrlCreateLabel("Custom options", 285, 195)
   $_uDSaveSettings = GUICtrlCreateButton("Save Decred settings", 164, 293, 200)

GUICtrlCreateTabItem("Siacoin")
   GUICtrlCreateLabel("Pool:", 20, 44)
   $_uSCPool = GUICtrlCreateCombo("Nanopool", 50, 40, 80)
   GUICtrlSetData($_uSCPool, "Siamining| sᴏʟᴏ| ᴄᴜsᴛᴏᴍ")
   $_uSCServer = GUICtrlCreateInput($_sSCServer, 20, 65, 260, 20)
   GUICtrlCreateLabel("Server", 285, 70)
   $_uSCPayoutAddress = GUICtrlCreateInput($_sSCPayoutAddress, 20, 90, 260, 20)
   GUICtrlCreateLabel("Payout address", 285, 95)
   $_uSCPoolUsername = GUICtrlCreateInput($_sSCPoolUsername, 20, 115, 110)
   GUICtrlCreateLabel("Pool username", 135, 120)
   $_uSCWorkerLabel = GUICtrlCreateInput($_sSCWorkerLabel, 20, 140, 110, 21)
   GUICtrlCreateLabel("Worker label", 135, 145)
   $_uSCWorkerPassword = GUICtrlCreateInput($_sSCWorkerPassword, 20, 165, 110, 21, $ES_PASSWORD)
   GUICtrlCreateLabel("Worker password", 135, 170)
   $_uSCOpts = GUICtrlCreateInput($_sSCOpts, 20, 190, 260, 20)
   GUICtrlCreateLabel("Custom options", 285, 195)
   $_uSCSaveSettings = GUICtrlCreateButton("Save Siacoin settings", 164, 293, 200)

GUICtrlCreateTabItem("Monero")
   GUICtrlCreateLabel("Pool:", 20, 44)
   $_uMPool = GUICtrlCreateCombo("MinerGate", 50, 40, 80)
   GUICtrlSetData($_uMPool, "Crypto-Pool|MoneroPool|mineXMR| sᴏʟᴏ| ᴄᴜsᴛᴏᴍ")
   $_uMServer = GUICtrlCreateInput($_sMServer, 20, 65, 260, 20)
   GUICtrlCreateLabel("Server", 285, 70)
   $_uMPayoutAddress = GUICtrlCreateInput($_sMPayoutAddress, 20, 90, 260, 20)
   GUICtrlCreateLabel("Payout address", 285, 95)
   $_uMPoolUsername = GUICtrlCreateInput($_sMPoolUsername, 20, 115, 110)
   GUICtrlCreateLabel("Pool username", 135, 120)
   $_uMWorkerLabel = GUICtrlCreateInput($_sMWorkerLabel, 20, 140, 110, 21)
   GUICtrlCreateLabel("Worker label", 135, 145)
   $_uMWorkerPassword = GUICtrlCreateInput($_sMWorkerPassword, 20, 165, 110, 21, $ES_PASSWORD)
   GUICtrlCreateLabel("Worker password", 135, 170)
   $_uMOpts = GUICtrlCreateInput($_sMOpts, 20, 190, 260, 20)
   GUICtrlCreateLabel("Custom options", 285, 195)
   $_uMSaveSettings = GUICtrlCreateButton("Save Monero settings", 164, 293, 200)

GUICtrlCreateTabItem("HOdlcoin")
   GUICtrlCreateLabel("Pool:", 20, 44)
   $_uHPool = GUICtrlCreateCombo("Suprnova", 50, 40, 80)
   GUICtrlSetData($_uHPool, "MaxMiners|Blockquarry| sᴏʟᴏ| ᴄᴜsᴛᴏᴍ")
   $_uHServer = GUICtrlCreateInput($_sHServer, 20, 65, 260, 20)
   GUICtrlCreateLabel("Server", 285, 70)
   $_uHPayoutAddress = GUICtrlCreateInput($_sHPayoutAddress, 20, 90, 260, 20)
   GUICtrlCreateLabel("Payout address", 285, 95)
   $_uHPoolUsername = GUICtrlCreateInput($_sSCPoolUsername, 20, 115, 110)
   GUICtrlCreateLabel("Pool username", 135, 120)
   $_uHWorkerLabel = GUICtrlCreateInput($_sSCWorkerLabel, 20, 140, 110, 21)
   GUICtrlCreateLabel("Worker label", 135, 145)
   $_uHWorkerPassword = GUICtrlCreateInput($_sSCWorkerPassword, 20, 165, 110, 21, $ES_PASSWORD)
   GUICtrlCreateLabel("Worker password", 135, 170)
   $_uHOpts = GUICtrlCreateInput($_sHOpts, 20, 190, 260, 20)
   GUICtrlCreateLabel("Custom options", 285, 195)
   $_uHSaveSettings = GUICtrlCreateButton("Save HOdlcoin settings", 164, 293, 200)

GUICtrlCreateTabItem("") ; end tabitem definition

GUISetState(@SW_SHOW, $_GUIMain)

$_GUISettingsManage = GUICreate("au3miner "&$_Ver&" settings manager", 220, 155)

$_uGlobalPoolUsername = GUICtrlCreateInput("", 10, 10, 110)
GUICtrlCreateLabel("Pool username", 125, 15)
$_uGlobalWorkerLabel = GUICtrlCreateInput("", 10, 35, 110, 21)
GUICtrlCreateLabel("Worker label", 125, 40)
$_uGlobalWorkerPassword = GUICtrlCreateInput("", 10, 60, 110, 21, $ES_PASSWORD)
GUICtrlCreateLabel("Worker password", 125, 65)

$_uApplySettingsGlobally = GUICtrlCreateButton("Apply these settings globally", 9, 90, 202)
$_uExportSettingsBootstrap = GUICtrlCreateButton("Export settings bootstrap", 9, 120, 202)

GUISetState(@SW_DISABLE, $_GUISettingsManage)

Func ClaymoreMiner()
   Global $_pClaymoreMiner

   Local $_sEPool = GUICtrlRead($_uEPool)
   Local $_sEServer = GUICtrlRead($_uEServer)
   Local $_sEPayoutAddress = GUICtrlRead($_uEPayoutAddress)
   Local $_sEWorkerLabel = GUICtrlRead($_uEWorkerLabel)
   Local $_sEWorkerPassword = GUICtrlRead($_uEWorkerPassword)

   Local $_sDPool = GUICtrlRead($_uDPool)
   Local $_sDServer = GUICtrlRead($_uDServer)
   Local $_sDPoolUsername = GUICtrlRead($_uDPoolUsername)
   Local $_sDWorkerLabel = GUICtrlRead($_uDWorkerLabel)
   Local $_sDWorkerPassword = GUICtrlRead($_uDWorkerPassword)

   Local $_sSCPool = GUICtrlRead($_uSCPool)
   Local $_sSCServer = GUICtrlRead($_uSCServer)
   Local $_sSCPoolUsername = GUICtrlRead($_uSCPoolUsername)
   Local $_sSCWorkerLabel = GUICtrlRead($_uSCWorkerLabel)
   Local $_sSCWorkerPassword = GUICtrlRead($_uSCWorkerPassword)

   Local $_sClaymoreETH = GUICtrlRead($_uClaymoreETH)
   Local $_sClaymoreDCR = GUICtrlRead($_uClaymoreDCR)
   Local $_sClaymoreSC = GUICtrlRead($_uClaymoreSC)

   ; 4=unchecked
   If $_sClaymoreETH <> $GUI_CHECKED Then $_sClaymoreETH = False
   If $_sClaymoreDCR <> $GUI_CHECKED Then $_sClaymoreDCR = False
   If $_sClaymoreSC <> $GUI_CHECKED Then $_sClaymoreSC = False

   Local $_sCGOpts
   $_sCGOpts &= "setx GPU_FORCE_64BIT_PTR 0"&@CRLF
   $_sCGOpts &= "setx GPU_MAX_HEAP_SIZE 100"&@CRLF
   $_sCGOpts &= "setx GPU_USE_SYNC_OBJECTS 1"&@CRLF
   $_sCGOpts &= "setx GPU_MAX_ALLOC_PERCENT 100"&@CRLF
   $_sCGOpts &= "setx GPU_SINGLE_ALLOC_PERCENT 100"&@CRLF

   Local $_sCBatch
   $_sCBatch = "cd "&$_sInstallDir&"claymoreminer"&@CRLF&$_sCGOpts&@CRLF&"EthDcrMiner64.exe "

   If $_sClaymoreETH Then
	  Switch $_sEPool
		 Case "Dwarfpool"
			$_sCBatch &= "-epool "&$_sEServer&" -ewal "&$_sEPayoutAddress&"/"&$_sEWorkerLabel&" -epsw "&$_sEWorkerPassword
		 Case "Ethpool"
			$_sCBatch &= "-epool "&$_sEServer&" -ewal "&$_sEPayoutAddress&"."&$_sEWorkerLabel&" -epsw "&$_sEWorkerPassword
		 Case " sᴏʟᴏ"
			$_sCBatch &= "-epool "&$_sEServer&" -ewal "&$_sEPayoutAddress&" -epsw "&$_sEWorkerPassword
		 Case Else
			$_sCBatch &= "-epool "&$_sEServer&" -ewal "&$_sEPayoutAddress&"."&$_sEWorkerLabel&" -epsw "&$_sEWorkerPassword
	  EndSwitch
   EndIf
   If $_sClaymoreDCR Then
	  $_sCBatch &= " -dpool "&$_sDServer&" -dwal "&$_sDPoolUsername&"."&$_sDWorkerLabel&" -dpsw "&$_sDWorkerPassword
   EndIf
   If $_sClaymoreSC Then
	  Switch $_sSCPool
		 Case "Nanopool"
			$_sCBatch &= " -dpool """&$_sSCServer&"/miner/header?address="&$_sSCPayoutAddress&"&worker="&$_sSCWorkerLabel&""" -dcoin sia"
		 Case "Siamining"
			$_sCBatch &= " -dpool """&$_sSCServer&"/miner/header?address="&$_sSCPayoutAddress&"&worker="&$_sSCWorkerLabel&""" -dcoin sia"
		 Case Else
			$_sCBatch &= " -dpool """&$_sSCServer&" -dcoin sia"
		 EndSwitch
   EndIf

   If FileExists($_sInstallDir&"au3-claymoreminer.bat") Then FileDelete($_sInstallDir&"au3-claymoreminer.bat")
   FileWrite($_sInstallDir&"au3-claymoreminer.bat", $_sCBatch)
   $_pClaymoreMiner = Run(@ComSpec&" /K au3-claymoreminer.bat", $_sInstallDir)

   $_iClaymoreMiner_state = 1 ; launching
EndFunc

Func QtMiner()
   Global $_pQtMiner

   Local $_sEPool = GUICtrlRead($_uEPool)
   Local $_sEServer = GUICtrlRead($_uEServer)
   Local $_sEPayoutAddress = GUICtrlRead($_uEPayoutAddress)
   Local $_sEWorkerLabel = GUICtrlRead($_uEWorkerLabel)

   Local $_sEGOpts
   $_sEGOpts &= "setx GPU_FORCE_64BIT_PTR 0"&@CRLF
   $_sEGOpts &= "setx GPU_MAX_HEAP_SIZE 100"&@CRLF
   $_sEGOpts &= "setx GPU_USE_SYNC_OBJECTS 1"&@CRLF
   $_sEGOpts &= "setx GPU_MAX_ALLOC_PERCENT 100"&@CRLF
   $_sEGOpts &= "SET GPU_SINGLE_ALLOC_PERCENT=100"&@CRLF

   Local $_sEOpts
   $_sEOpts &= "-G "
   #cs
   $_sEOpts &= "--cl-local-work "&$_sECLLocalWorkVal&" "
   $_sEOpts &= "--cl-global-work "&$_sECLGlobalWorkVal&" "
   #ce

   Local $_sBatch
   $_sBatch = "cd "&$_sInstallDir&"qtminer"&@CRLF&$_sEGOpts&@CRLF&"qtminer.exe -G -s "&$_sEServer&" -u "&$_sEPayoutAddress&"."&$_sEWorkerLabel&$_sEOpts
   If FileExists($_sInstallDir&"au3-qtminer.bat") Then FileDelete($_sInstallDir&"au3-qtminer.bat")
   FileWrite($_sInstallDir&"au3-qtminer.bat", $_sBatch)
   $_pQtMiner = Run(@ComSpec&" /K au3-qtminer.bat", $_sInstallDir)

   $_iQtMiner_state = 1 ; launching
EndFunc

Func EthminerGenoil()
   Global $_pEthminerGenoil

   Local $_sEPool = GUICtrlRead($_uEPool)
   Local $_sEServer = GUICtrlRead($_uEServer)
   Local $_sEPayoutAddress = GUICtrlRead($_uEPayoutAddress)
   Local $_sEWorkerLabel = GUICtrlRead($_uEWorkerLabel)
   Local $_sEWorkerPassword = GUICtrlRead($_uEWorkerPassword)

   Local $_sEOpts
   #cs
   If $_sECUDAGridSize Then $_sEOpts &= "--cuda-grid-size "&$_sECUDAGridSizeVal&" "
   If $_sECUDABlockSize Then $_sEOpts &= "--cuda-block-size "&$_sECUDABlockSizeVal&" "
   If $_sECUDASchedule Then $_sEOpts &= "--cuda-schedule "&$_sECUDAScheduleVal&" "
   #ce

   Local $_sBatch
   $_sBatch = "cd "&$_sInstallDir&"ethminer-genoil"&@CRLF&"ethminer-genoil.exe -U -F "&$_sEServer&" -O "&$_sEPayoutAddress&"."&$_sEWorkerLabel&" "&$_sEOpts
   If FileExists($_sInstallDir&"au3-ethminer-genoil.bat") Then FileDelete($_sInstallDir&"au3-ethminer-genoil.bat")
   FileWrite($_sInstallDir&"au3-ethminer-genoil.bat", $_sBatch)
   $_pEthminerGenoil = Run(@ComSpec&" /K au3-ethminer-genoil.bat", $_sInstallDir)

   $_iEthminerGenoil_state = 1 ; launching
EndFunc

Func HOdlMiner()
   Global $_pHOdlMiner

   Local $_sHPool = GUICtrlRead($_uHPool)
   Local $_sHServer = GUICtrlRead($_uHServer)
   Local $_sHPoolUsername = GUICtrlRead($_uHPoolUsername)
   Local $_sHWorkerLabel = GUICtrlRead($_uHWorkerLabel)
   Local $_sHWorkerPassword = GUICtrlRead($_uHWorkerPassword)

   Local $_sHOpts

   Local $_HBatch
   $_sBatch = "cd "&$_sInstallDir&"hodlminer"&@CRLF&"hodlminer.exe -a hodl -o "&$_sHServer&" -u "&$_sHPoolUsername&"."&$_sHWorkerLabel&" -p "&$_sHWorkerPassword&" "&$_sHOpts
   If FileExists($_sInstallDir&"au3-hodlminer.bat") Then FileDelete($_sInstallDir&"au3-hodlminer.bat")
   FileWrite($_sInstallDir&"au3-hodlminer.bat", $_sBatch)
   $_pHOdlMiner = Run(@ComSpec&" /K au3-hodlminer.bat", $_sInstallDir)

   $_iHOdlMiner_state = 1 ; launching
EndFunc

Func HOdlMinerWolf()
   Global $_pHOdlMinerWolf

   Local $_sHPool = GUICtrlRead($_uHPool)
   Local $_sHServer = GUICtrlRead($_uHServer)
   Local $_sHPoolUsername = GUICtrlRead($_uHPoolUsername)
   Local $_sHWorkerLabel = GUICtrlRead($_uHWorkerLabel)
   Local $_sHWorkerPassword = GUICtrlRead($_uHWorkerPassword)

   Local $_sHOpts

   Local $_HBatch
   $_sHBatch = "cd "&$_sInstallDir&"hodlminer-wolf"&@CRLF&"hodlminer-wolf.exe -a hodl -o "&$_sHServer&" -u "&$_sHPoolUsername&"."&$_sHWorkerLabel&" -p "&$_sHWorkerPassword&" "&$_sHOpts
   If FileExists($_sInstallDir&"au3-hodlminer-wolf.bat") Then FileDelete($_sInstallDir&"au3-hodlminer-wolf.bat")
   FileWrite($_sInstallDir&"au3-hodlminer-wolf.bat", $_sHBatch)
   $_pHOdlMinerWolf = Run(@ComSpec&" /K au3-hodlminer-wolf.bat", $_sInstallDir)

   $_iHOdlMinerWolf_state = 1 ; launching
EndFunc

Func CPUMinerMulti()
   Global $_pCPUMinerMulti

   Local $_sMPool = GUICtrlRead($_uMPool)
   Local $_sMServer = GUICtrlRead($_uMServer)
   Local $_sMPoolUsername = GUICtrlRead($_uMPoolUsername)
   Local $_sMWorkerLabel = GUICtrlRead($_uMWorkerLabel)
   Local $_sMWorkerPassword = GUICtrlRead($_uMWorkerPassword)

   Local $_sMOpts

   Local $_MBatch
   $_sMBatch = "cd "&$_sInstallDir&"cpuminer-multi"&@CRLF&"minerd.exe -o "&$_sMServer&" -u "&$_sMPoolUsername&" -p "&$_sMWorkerPassword&" "&$_sMOpts
   If FileExists($_sInstallDir&"au3-cpuminer-multi.bat") Then FileDelete($_sInstallDir&"au3-cpuminer-multi.bat")
   FileWrite($_sInstallDir&"au3-cpuminer-multi.bat", $_sMBatch)
   $_pCPUMinerMulti = Run(@ComSpec&" /K au3-cpuminer-multi.bat", $_sInstallDir)

   $_iCPUMinerMulti_state = 1 ; launching
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
		 If WinGetState("au3miner "&$_Ver&" settings manager") == 2 OR WinGetState("au3miner "&$_Ver&" settings manager") == 4 OR WinGetState("au3miner "&$_Ver&" settings manager") == 15 Then
			GUISetState(@SW_HIDE, $_GUISettingsManage)
			GUISetState(@SW_DISABLE, $_GUISettingsManage)
		 Else
			ExitLoop
		 EndIf
	  Case $_uClaymoreMiner_launch
		 $_pClaymoreMiner = ProcessExists("EthDcrMiner64.exe")
		 If Not $_pClaymoreMiner Then ClaymoreMiner()
	  Case $_uClaymoreDCR
		 If(GUICtrlRead($_uClaymoreDCR) == 1 OR GUICtrlRead($_uClaymoreDCR) == $GUI_CHECKED) Then
			If(GUICtrlRead($_uClaymoreSC) == 1 OR GUICtrlRead($_uClaymoreSC) == $GUI_CHECKED) Then
			   GUICtrlSetState($_uClaymoreSC, $GUI_UNCHECKED)
			EndIf
		 EndIf
	  Case $_uClaymoreSC
		 If(GUICtrlRead($_uClaymoreSC) == 1 OR GUICtrlRead($_uClaymoreSC) == $GUI_CHECKED) Then
			If(GUICtrlRead($_uClaymoreDCR) == 1 OR GUICtrlRead($_uClaymoreDCR) == $GUI_CHECKED) Then
			   GUICtrlSetState($_uClaymoreDCR, $GUI_UNCHECKED)
			EndIf
		 EndIf
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
	  Case $_uCPUMinerMulti_launch
		 $_pCPUMinerMulti = ProcessExists("minerd.exe")
		 If Not $_pCPUMinerMulti Then CPUMinerMulti()
	  Case $_uSaveSettings
		 SettingsWrite()
	  Case $_uManageSettings
		 GUISetState(@SW_ENABLE, $_GUISettingsManage)
		 GUISetState(@SW_SHOW, $_GUISettingsManage)
	  Case $_uApplySettingsGlobally
		 $_sGlobalPoolUsername = GUICtrlRead($_uGlobalPoolUsername)
		 $_sGlobalWorkerLabel = GUICtrlRead($_uGlobalWorkerLabel)
		 $_sGlobalWorkerPassword = GUICtrlRead($_uGlobalWorkerPassword)

		 If $_sGlobalPoolUsername <> "" Then
			$_sEPoolUsername = $_sGlobalPoolUsername
			$_sDPoolUsername = $_sGlobalPoolUsername
			$_sSCPoolUsername = $_sGlobalPoolUsername
			$_sHPoolUsername = $_sGlobalPoolUsername
			GUICtrlSetData($_uEPoolUsername, $_sGlobalPoolUsername)
			GUICtrlSetData($_uDPoolUsername, $_sGlobalPoolUsername)
			GUICtrlSetData($_uSCPoolUsername, $_sGlobalPoolUsername)
			GUICtrlSetData($_uHPoolUsername, $_sGlobalPoolUsername)
		 EndIf

		 If $_sGlobalWorkerLabel <> "" Then
			$_sEWorkerLabel = $_sGlobalWorkerLabel
			$_sDWorkerLabel = $_sGlobalWorkerLabel
			$_sSCWorkerLabel = $_sGlobalWorkerLabel
			$_sHWorkerLabel = $_sGlobalWorkerLabel
			GUICtrlSetData($_uEWorkerLabel, $_sGlobalWorkerLabel)
			GUICtrlSetData($_uDWorkerLabel, $_sGlobalWorkerLabel)
			GUICtrlSetData($_uSCWorkerLabel, $_sGlobalWorkerLabel)
			GUICtrlSetData($_uHWorkerLabel, $_sGlobalWorkerLabel)
		 EndIf

		 If $_sGlobalWorkerPassword <> "" Then
			$_sEWorkerPassword = $_sGlobalWorkerPassword
			$_sDWorkerPassword = $_sGlobalWorkerPassword
			$_sSCWorkerPassword = $_sGlobalWorkerPassword
			$_sHWorkerPassword = $_sGlobalWorkerPassword
			GUICtrlSetData($_uEWorkerPassword, $_sGlobalWorkerPassword)
			GUICtrlSetData($_uDWorkerPassword, $_sGlobalWorkerPassword)
			GUICtrlSetData($_uSCWorkerPassword, $_sGlobalWorkerPassword)
			GUICtrlSetData($_uHWorkerPassword, $_sGlobalWorkerPassworde)
		 EndIf

		 ESettingsWrite()
		 DSettingsWrite()
		 SCSettingsWrite()
		 HSettingsWrite()
	  Case $_uExportSettingsBootstrap
		 $_uSBMsgBox = MsgBox(1, "Settings bootstrap", "This function will copy all of your au3miner settings into a bootstrap file."&@CRLF&@CRLF&"Place the bootstrap in the same directory as au3miner.exe in order to bootstrap your settings quickly.")
		 If $_uSBMsgBox == 1 Then $uSBDir = FileSelectFolder("Export settings bootstrap to...", @WorkingDir)

		 If Not @error Then
			FileCopy($_sInstallDir&"\au3miner.ini", $uSBDir&"\au3miner.bootstrap")
		 EndIf
	  Case $_uESaveSettings
		 ESettingsWrite()
	  Case $_uDSaveSettings
		 DSettingsWrite()
	  Case $_uSCSaveSettings
		 SCSettingsWrite()
	  Case $_uHSaveSettings
		 HSettingsWrite()
	  Case $_uau3miner_update
		 GUICtrlSetData($_uau3miner_update, "Updating au3miner...")
		 Update()
	  Case $_uEPool
		 Switch GUICtrlRead($_uEPool)
			Case "Dwarfpool"
			   GUICtrlSetData($_uEServer, "eth-us2.dwarfpool.com:8008")
			Case "Ethpool"
			   GUICtrlSetData($_uEServer, "us2.ethpool.org:3333")
			Case " sᴏʟᴏ"
			   GUICtrlSetData($_uEServer, "http://192.168.0.1:8545")
			Case " ᴄᴜsᴛᴏᴍ"
			   If GUICtrlRead($_uEServer) == "http://192.168.0.1:8545" Then GUICtrlSetData($_uEServer, "")
		 EndSwitch
	  Case $_uDPool
		 Switch GUICtrlRead($_uDPool)
			Case "Suprnova"
			   GUICtrlSetData($_uDServer, "stratum+tcp://dcr.suprnova.cc:2252")
			Case " sᴏʟᴏ"
			   GUICtrlSetData($_uDServer, "N/A")
			Case " ᴄᴜsᴛᴏᴍ"
			   If GUICtrlRead($_uDServer) == "N/A" Then GUICtrlSetData($_uDServer, "")
		 EndSwitch
	  Case $_uSCPool
		 Switch GUICtrlRead($_uSCPool)
			Case "Nanopool"
			   GUICtrlSetData($_uSCServer, "us-west1.nanopool.org:9999")
			Case "Siamining"
			   GUICtrlSetData($_uSCServer, "siamining.com:9980")
			Case " sᴏʟᴏ"
			   GUICtrlSetData($_uSCServer, "N/A")
			Case " ᴄᴜsᴛᴏᴍ"
			   If GUICtrlRead($_uSCServer) == "N/A" Then GUICtrlSetData($_uSCServer, "")
		 EndSwitch
	  Case $_uHPool
		 Switch GUICtrlRead($_uHPool)
			Case "Suprnova"
			   GUICtrlSetData($_uHServer, "stratum+tcp://hodl.suprnova.cc:4693")
			Case "MaxMiners"
			   GUICtrlSetData($_uHServer, "stratum+tcp://hodl.maxminers.net:5256 ")
			Case "Blockquarry"
			   GUICtrlSetData($_uHServer, "stratum+tcp://hodl.blockquarry.com:3032")
			Case " sᴏʟᴏ"
			   GUICtrlSetData($_uHServer, "N/A")
			Case " ᴄᴜsᴛᴏᴍ"
			   If GUICtrlRead($_uHServer) == "N/A" Then GUICtrlSetData($_uHServer, "")
		 EndSwitch
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
		 If WinExists("EthDcrMiner64.exe", "&Close program") Then
			WinClose("EthDcrMiner64.exe", "&Close program")
			ProcessClose($_pClaymoreMiner)
			ClaymoreMiner()
		 EndIf
	  Case $_iClaymoreMiner_state == 3
		 Do
			ProcessClose($_pClaymoreMiner)
		 Until Not ProcessExists($_pClaymoreMiner)
		 $_iClaymoreMiner_state = 0
		 GUICtrlSetState($_uClaymoreMiner_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uClaymoreMiner_launch, "claymoreminer")
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
		 If WinExists("qtminer.exe", "&Close program") Then
			WinClose("qtminer.exe", "&Close program")
			ProcessClose($_pQtMiner)
			QtMiner()
		 EndIf
	  Case $_iQtMiner_state == 3
		 Do
			ProcessClose($_pQtMiner)
		 Until Not ProcessExists($_pQtMiner)
		 $_iQtMiner_state = 0
		 GUICtrlSetState($_uQtMiner_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uQtMiner_launch, "qtminer")
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
		 GUICtrlSetData($_uEthminerGenoil_launch, "Launching ethminer-genoil...")
		 If ProcessExists($_pEthminerGenoil) Then
			$_iEthminerGenoil_state = 2
			GUICtrlSetData($_uEthminerGenoil_launch, "ethminer-genoil is running")
		 EndIf
	  Case $_iEthminerGenoil_state == 2
		 If Not ProcessExists($_pEthminerGenoil) Then
			If $_sEthminerGenoil_persist == 1 Then
			   EthminerGenoil()
			   $_iEthminerGenoil_state = 1
			Else
			   $_iEthminerGenoil_state = 3
			   GUICtrlSetData($_uEthminerGenoil_launch, "ethminer-genoil closed")
			EndIf
		 EndIf
		 If WinExists("ethminer-genoil.exe", "&Close program") Then
			WinClose("ethminer-genoil.exe", "&Close program")
			ProcessClose($_pEthminerGenoil)
			EthminerGenoil()
		 EndIf
	  Case $_iEthminerGenoil_state == 3
		 Do
			ProcessClose($_pEthminerGenoil)
		 Until Not ProcessExists($_pEthminerGenoil)
		 $_iEthminerGenoil_state = 0
		 GUICtrlSetState($_uEthminerGenoil_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uEthminerGenoil_launch, "ethminer-genoil")
	  Case Else
		 If ProcessExists($_pEthminerGenoil) Then
			GUICtrlSetState($_uEthminerGenoil_launch, $GUI_DISABLE)
			$_iEthminerGenoil_state = 2
			GUICtrlSetData($_uEthminerGenoil_launch, "ethminer-genoil is running")
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
		 If WinExists("hodlminer.exe", "&Close program") Then
			WinClose("hodlminer.exe", "&Close program")
			ProcessClose($_pHOdlMiner)
			HOdlMiner()
		 EndIf
	  Case $_iHOdlMiner_state == 3
		 Do
			ProcessClose($_pHOdlMiner)
		 Until Not ProcessExists($_pHOdlMiner)
		 $_iHOdlMiner_state = 0
		 GUICtrlSetState($_uHOdlMiner_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uHOdlMiner_launch, "HOdlminer")
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
		 GUICtrlSetData($_uHOdlMinerWolf_launch, "Launching HOdlminer-wolf...")
		 If ProcessExists($_pHOdlMinerWolf) Then
			$_iHOdlMinerWolf_state = 2
			GUICtrlSetData($_uHOdlMinerWolf_launch, "HOdlminer-wolf is running")
		 EndIf
	  Case $_iHOdlMinerWolf_state == 2
		 If Not ProcessExists($_pHOdlMinerWolf) Then
			If $_sHOdlMinerWolf_persist == 1 Then
			   HOdlMinerWolf()
			   $_iHOdlMinerWolf_state = 1
			Else
			   $_iHOdlMinerWolf_state = 3
			   GUICtrlSetData($_uHOdlMinerWolf_launch, "HOdlminer-wolf closed")
			EndIf
		 EndIf
		 If WinExists("hodlminer-wolf.exe", "&Close program") Then
			WinClose("hodlminer-wolf.exe", "&Close program")
			ProcessClose($_pHOdlMinerWolf)
			HOdlMinerWolf()
		 EndIf
	  Case $_iHOdlMinerWolf_state == 3
		 Do
			ProcessClose($_pHOdlMinerWolf)
		 Until Not ProcessExists($_pHOdlMinerWolf)
		 $_iHOdlMinerWolf_state = 0
		 GUICtrlSetState($_uHOdlMinerWolf_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uHOdlMinerWolf_launch, "HOdlminer-wolf")
	  Case Else
		 If ProcessExists($_pHOdlMinerWolf) Then
			GUICtrlSetState($_uHOdlMinerWolf_launch, $GUI_DISABLE)
			$_iHOdlMinerWolf_state = 2
			GUICtrlSetData($_uHOdlMinerWolf_launch, "HOldminer is running")
		 EndIf
   EndSelect

   Select
	  Case $_iCPUMinerMulti_state == 1
		 GUICtrlSetState($_uCPUMinerMulti_launch, $GUI_DISABLE)
		 GUICtrlSetData($_uCPUMinerMulti_launch, "Launching cpuminer-multi...")
		 If ProcessExists($_pCPUMinerMulti) Then
			$_iCPUMinerMulti_state = 2
			GUICtrlSetData($_uCPUMinerMulti_launch, "cpuminer-multi is running")
		 EndIf
	  Case $_iCPUMinerMulti_state == 2
		 If Not ProcessExists($_pCPUMinerMulti) Then
			If $_sCPUMinerMulti_persist == 1 Then
			   CPUMinerMulti()
			   $_iCPUMinerMulti_state = 1
			Else
			   $_iCPUMinerMulti_state = 3
			   GUICtrlSetData($_uCPUMinerMulti_launch, "cpuminer-multi closed")
			EndIf
		 EndIf
		 If WinExists("minerd.exe", "&Close program") Then
			WinClose("minerd.exe", "&Close program")
			ProcessClose($_pCPUMinerMulti)
			CPUMinerMulti()
		 EndIf
	  Case $_iCPUMinerMulti_state == 3
		 Do
			ProcessClose($_pCPUMinerMulti)
		 Until Not ProcessExists($_pCPUMinerMulti)
		 $_iCPUMinerMulti_state = 0
		 GUICtrlSetState($_uCPUMinerMulti_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uCPUMinerMulti_launch, "cpuminer-multi")
	  Case Else
		 If ProcessExists($_pCPUMinerMulti) Then
			GUICtrlSetState($_uCPUMinerMulti_launch, $GUI_DISABLE)
			$_iCPUMinerMulti_state = 2
			GUICtrlSetData($_uCPUMinerMulti_launch, "cpuminer-multi is running")
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