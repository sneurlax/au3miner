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
   FileInstall("C:\github\au3miner\claymoreminer\EthDcrMiner64.exe", $_fInstallDir&"claymoreminer\EthDcrMiner64.exe", 1)
   FileInstall("C:\github\au3miner\qtminer\libcurl.dll", $_fInstallDir&"claymoreminer\libcurl.dll", 0)
   FileInstall("C:\github\au3miner\claymoreminer\msvcr110.dll", $_fInstallDir&"claymoreminer\msvcr110.dll", 0)
   FileInstall("C:\github\au3miner\claymoreminer\Data.bin", $_fInstallDir&"claymoreminer\Data.bin", 0)
   FileInstall("C:\github\au3miner\claymoreminer\cudart64_80.dll", $_fInstallDir&"claymoreminer\cudart64_80.dll", 0)

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
   FileInstall("C:\github\au3miner\qtminer\QtMiner.exe", $_fInstallDir&"qtminer\QtMiner.exe", 1)
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
   FileInstall("C:\github\au3miner\ethminer-genoil\ethminer-genoil.exe", $_fInstallDir&"ethminer-genoil\ethminer-genoil.exe", 1)
   FileInstall("C:\github\au3miner\qtminer\libcurl.dll", $_fInstallDir&"ethminer-genoil\libcurl.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\libmicrohttpd-dll.dll", $_fInstallDir&"ethminer-genoil\libmicrohttpd-dll.dll", 0)
   FileInstall("C:\github\au3miner\qtminer\OpenCL.dll", $_fInstallDir&"ethminer-genoil\OpenCL.dll", 0)

   If Not FileExists($_fInstallDir&"sgminer-gm\") Then
	  Do
		  DirCreate($_fInstallDir&"sgminer-gm\")
	  Until FileExists($_fInstallDir&"sgminer-gm\")
   EndIf
   FileInstall("C:\github\au3miner\sgminer-gm\pdcurses.dll", $_fInstallDir&"sgminer-gm\", 0)
   FileInstall("C:\github\au3miner\sgminer-gm\pthreadGC2.dll", $_fInstallDir&"sgminer-gm\", 0)
   FileInstall("C:\github\au3miner\sgminer-gm\sgminer-eth.conf", $_fInstallDir&"sgminer-gm\"", 0)
   FileInstall("C:\github\au3miner\sgminer-gm\sgminer-xmr.conf", $_fInstallDir&"sgminer-gm\", 0)
   FileInstall("C:\github\au3miner\sgminer-gm\sgminer-zcash.conf", $_fInstallDir&"sgminer-gm\", 0)
   FileInstall("C:\github\au3miner\sgminer-gm\sgminer.exe", $_fInstallDir&"sgminer-gm\", 0)
   FileInstall("C:\github\au3miner\sgminer-gm\start.bat", $_fInstallDir&"sgminer-gm\"", 0)
   FileInstall("C:\github\au3miner\sgminer-gm\xmr.conf", $_fInstallDir&"sgminer-gm\", 0)

   If Not FileExists($_fInstallDir&"claymorecryptonote\") Then
      Do
         DirCreate($_fInstallDir&"claymorecryptonote\")
      Until FileExists($_fInstallDir&"claymorecryptonote\")
   EndIf
   FileInstall("C:\github\au3miner\claymorecryptonote\charity.bat", $_fInstallDir&"claymorecryptonote\", 0)
   FileInstall("C:\github\au3miner\claymorecryptonote\config.txt", $_fInstallDir&"claymorecryptonote\", 0)
   FileInstall("C:\github\au3miner\claymorecryptonote\Data.bin", $_fInstallDir&"claymorecryptonote\", 0)
   FileInstall("C:\github\au3miner\claymorecryptonote\epools.txt", $_fInstallDir&"claymorecryptonote\", 0)
   FileInstall("C:\github\au3miner\claymorecryptonote\History.txt", $_fInstallDir&"claymorecryptonote\", 0)
   FileInstall("C:\github\au3miner\claymorecryptonote\License.txt", $_fInstallDir&"claymorecryptonote\", 0)
   FileInstall("C:\github\au3miner\claymorecryptonote\msvcr110.dll", $_fInstallDir&"claymorecryptonote\", 0)
   FileInstall("C:\github\au3miner\claymorecryptonote\NsGpuCNMiner.exe", $_fInstallDir&"claymorecryptonote\", 0)
   FileInstall("C:\github\au3miner\claymorecryptonote\Readme!!!.txt", $_fInstallDir&"claymorecryptonote\", 0)
EndFunc

Func Uninstall()
   Global $_fInstallDir
   If StringInStr($_fInstallDir, "github") Then Return

   FileDelete($_fInstallDir&"claymoreminer\EthDcrMiner64.exe")
   FileDelete($_fInstallDir&"claymoreminer\libcurl.dll")
   FileDelete($_fInstallDir&"claymoreminer\msvcr110.dll")
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

   FileDelete($_fInstallDir&"ethminer-genoil\cudart64_75.dll")
   FileDelete($_fInstallDir&"ethminer-genoil\ethminer-genoil.exel")
   FileDelete($_fInstallDir&"ethminer-genoil\libcurl.dll")
   FileDelete($_fInstallDir&"ethminer-genoil\libmicrohttpd-dll.dll")
   FileDelete($_fInstallDir&"ethminer-genoil\OpenCL.dll")
   FileDelete($_fInstallDir&"ethminer-genoil\")

   FileInstall($_fInstallDir&"sgminer-gm\pdcurses.dll")
   FileInstall($_fInstallDir&"sgminer-gm\pthreadGC2.dll")
   FileInstall($_fInstallDir&"sgminer-gm\sgminer-eth.conf"0)
   FileInstall($_fInstallDir&"sgminer-gm\sgminer-xmr.conf")
   FileInstall($_fInstallDir&"sgminer-gm\sgminer-zcash.conf")
   FileInstall($_fInstallDir&"sgminer-gm\sgminer.exe")
   FileInstall($_fInstallDir&"sgminer-gm\start.bat")
   FileInstall($_fInstallDir&"sgminer-gm\xmr.conf")
   FileDelete($_fInstallDir&"sgminer-gm\")

   FileDelete($_fInstallDir&"claymorecryptonote\charity.bat")
   FileDelete($_fInstallDir&"claymorecryptonote\config.txt")
   FileDelete($_fInstallDir&"claymorecryptonote\Data.bin")
   FileDelete($_fInstallDir&"claymorecryptonote\epools.txt")
   FileDelete($_fInstallDir&"claymorecryptonote\History.txt")
   FileDelete($_fInstallDir&"claymorecryptonote\License.txt")
   FileDelete($_fInstallDir&"claymorecryptonote\msvcr110.dll")
   FileDelete($_fInstallDir&"claymorecryptonote\NsGpuCNMiner.exe")
   FileDelete($_fInstallDir&"claymorecryptonote\Readme!!!.txt")
   FileDelete($_fInstallDir&"claymorecryptonote\")

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
Global $_pSGMinerGM = ProcessExists("sgminer.exe")
Global $_sSGMinerGM_auto
Global $_sSGMinerGM_persist
Global $_iSGMinerGM_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_pCCNMiner = ProcessExists("sgminer.exe")
Global $_sCCNMiner_auto
Global $_sCCNMiner_persist
Global $_iCCNMiner_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_sKeepAwake
Global $_sMonitorInternet
Global $_sInternetState ; 0 default/connect, >1::failed pings, <0 miners closed due to disconnection (Claymore 1, Qt 2, Ethminer 4)
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
   $_sClaymoreDCR = IniRead($_sInstallDir&"\au3miner.ini", "settings", "claymoredcr", 0)
   $_sClaymoreSC = IniRead($_sInstallDir&"\au3miner.ini", "settings", "claymoresc", 1)
   $_sQtMiner_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "qtminerauto", 0)
   $_sQtMiner_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "qtminerpersist", 0)
   $_sEthminerGenoil_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "ethminergenoiminerauto", 0)
   $_sEthminerGenoil_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "ethminergenoilpersist", 0)
   $_sSGMinerGM_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "SGMinerGMauto", 0)
   $_sSGMinerGM_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "SGMinerGMpersist", 0)
   $_sCCNMiner_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "CCNMinerauto", 0)
   $_sCCNMiner_persist = IniRead($_sInstallDir&"\au3miner.ini", "settings", "CCNMinerpersist", 0)
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

   $_sMServer = IniRead($_sInstallDir&"\au3miner.ini", "monero", "server", "stratum+tcp://xmr-usa.dwarfpool.com:8080")
   $_sMPayoutAddress = IniRead($_sInstallDir&"\au3miner.ini", "monero", "payoutaddress", "4Aqm2RebbpmZEATdPjzpHodLJeYMW8C5oX79jQxboJQhJ3sUU48BwmrerBbFfrVHi8acW6D6EgFTobGaoH2EnK1MVqhYmrf")
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
   $_sClaymoreETH = GUICtrlRead($_uClaymoreETH)
   $_sClaymoreDCR = GUICtrlRead($_uClaymoreDCR)
   $_sClaymoreSC = GUICtrlRead($_uClaymoreSC)
   $_sQtMiner_auto = GUICtrlRead($_uQtMiner_auto)
   $_sQtMiner_persist = GUICtrlRead($_uQtMiner_persist)
   $_sEthminerGenoil_auto = GUICtrlRead($_uEthminerGenoil_auto)
   $_sEthminerGenoil_persist = GUICtrlRead($_uEthminerGenoil_persist)
   $_sSGMinerGM_auto = GUICtrlRead($_uSGMinerGM_auto)
   $_sSGMinerGM_persist = GUICtrlRead($_uSGMinerGM_persist)
   $_sCCNMiner_auto = GUICtrlRead($_uCCNMiner_auto)
   $_sCCNMiner_persist = GUICtrlRead($_uCCNMiner_persist)
   $_sKeepAwake = GUICtrlRead($_uKeepAwake)
   $_sCloseMiners = GUICtrlRead($_uCloseMiners)
   $_sMonitorInternet = GUICtrlRead($_uMonitorInternet)
   $_sCleanExit = GUICtrlRead($_uCleanExit)

   ; 4=unchecked
   If $_sAutoStart <> $GUI_CHECKED Then $_sAutoStart = False
   If $_sInstalLDirToReg <> $GUI_CHECKED Then $_sInstalLDirToReg = False
   If $_sClaymoreMiner_auto <> $GUI_CHECKED Then $_sClaymoreMiner_auto = False
   If $_sClaymoreMiner_persist <> $GUI_CHECKED Then $_sClaymoreMiner_persist = False
   If $_sClaymoreETH <> $GUI_CHECKED Then $_sClaymoreETH = False
   If $_sClaymoreDCR <> $GUI_CHECKED Then $_sClaymoreDCR = False
   If $_sClaymoreSC <> $GUI_CHECKED Then $_sClaymoreSC = False
   If $_sQtMiner_auto <> $GUI_CHECKED Then $_sQtMiner_auto = False
   If $_sQtMiner_persist <> $GUI_CHECKED Then $_sQtMiner_persist = False
   If $_sEthminerGenoil_auto <> $GUI_CHECKED Then $_sEthminerGenoil_auto = False
   If $_sEthminerGenoil_persist <> $GUI_CHECKED Then $_sEthminerGenoil_persist = False
   If $_sSGMinerGM_auto <> $GUI_CHECKED Then $_sSGMinerGM_auto = False
   If $_uSGMinerGM_persist <> $GUI_CHECKED Then $_uSGMinerGM_persist = False
   If $_sCCNMiner_auto <> $GUI_CHECKED Then $_sCCNMiner_auto = False
   If $_uCCNMiner_persist <> $GUI_CHECKED Then $_uCCNMiner_persist = False
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
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "claymoreeth", $_sClaymoreETH)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "claymoredcr", $_sClaymoreDCR)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "claymoresc", $_sClaymoreSC)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "qtminerauto", $_sQtMiner_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "qtminerpersist", $_sQtMiner_persist)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "ethminergenoilauto", $_sEthminerGenoil_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "sgminergmauto", $_sSGMinerGM_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "sgminergmpersist", $_uSGMinerGM_persist)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "ccnminerauto", $_sCCNMiner_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "ccnminerpersist", $_uCCNMiner_persist)
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
   $_sSCOpts = GUICtrlRead($_uSCOpts)

   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "pool", $_sSCPool)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "server", $_sSCServer)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "payoutaddress", $_sSCPayoutAddress)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "poolusername", $_sSCPoolUsername)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "workerlabel", $_sSCWorkerLabel)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "workerpassword", $_sSCWorkerPassword)
   IniWrite($_sInstallDir&"\au3miner.ini", "siacoin", "customoptions", $_sSCOpts)
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
   $_uClaymoreMiner_launch = GUICtrlCreateButton("claymore ethereum", 20, 40, 140, 37)
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

   $_uSGMinerGM_launch = GUICtrlCreateButton("sgminer-gm", 20, 208, 140, 37)
   $_uSGMinerXMR = GUICtrlCreateCheckbox("ɱ", 170, 216)
   GUICtrlSetState($_uSGMinerXMR, $GUI_CHECKED)
   GUICtrlSetState($_uSGMinerXMR, $GUI_DISABLE)

   $_uCCNMiner_launch = GUICtrlCreateButton("claymore cryptonote", 20, 251, 140, 37)
   $_uCCNMinerXMR = GUICtrlCreateCheckbox("ɱ", 170, 259)
   GUICtrlSetState($_uCCNMinerXMR, $GUI_CHECKED)
   GUICtrlSetState($_uCCNMinerXMR, $GUI_DISABLE)

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
   $_uClaymoreMiner_auto = GUICtrlCreateCheckbox("Start claymore ethereum as soon as au3miner launches", 20, 165)
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
   $_uSGMinerGM_auto = GUICtrlCreateCheckbox("Start sgminer-gm as soon as au3miner launches", 20, 245)
   GUICtrlSetState($_uSGMinerGM_auto, $_sSGMinerGM_auto)
   $_uSGMinerGM_persist = GUICtrlCreateCheckbox("keep alive", 290, 245)
   GUICtrlSetState($_uSGMinerGM_persist, $_sSGMinerGM_persist)
   $_uCCNMiner_auto = GUICtrlCreateCheckbox("Start claymore cryptonote as soon as au3miner launches", 20, 265)
   GUICtrlSetState($_uCCNMiner_auto, $_sCCNMiner_auto)
   $_uCCNMiner_persist = GUICtrlCreateCheckbox("keep alive", 290, 265)
   GUICtrlSetState($_uCCNMiner_persist, $_sCCNMiner_persist)
   $_uManageSettings = GUICtrlCreateButton("Manage settings", 18, 289, 100)
   $_uSaveSettings = GUICtrlCreateButton("Save au3miner settings", 160, 289, 200)

GUICtrlCreateTabItem("Ethereum")
   GUICtrlCreateLabel("Pool:", 20, 44)
   $_uEPool = GUICtrlCreateCombo("Dwarfpool", 50, 40, 80)
   GUICtrlSetData($_uEPool, "Ethpool|Nanopool|Nanopool (ETC)| sᴏʟᴏ| ᴄᴜsᴛᴏᴍ")
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
   $_uMPool = GUICtrlCreateCombo("DwarfPool", 50, 40, 80)
   GUICtrlSetData($_uMPool, "Crypto-Pool|MinerGate|MoneroPool|mineXMR| sᴏʟᴏ| ᴄᴜsᴛᴏᴍ")
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
   Local $_sEOpts = GUICtrlRead($_uEOpts)

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
		 Case "Nanopool"
			$_sCBatch &= "-epool "&$_sEServer&" -ewal "&$_sEPayoutAddress&"/"&$_sEWorkerLabel&" -epsw "&$_sEWorkerPassword
		 Case "Nanopool (ETC)"
			$_sCBatch &= "-epool "&$_sEServer&" -ewal "&$_sEPayoutAddress&"/"&$_sEWorkerLabel&" -epsw "&$_sEWorkerPassword
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
			$_sCBatch &= " -dpool ""http://"&$_sSCServer&"/miner/header?address="&$_sSCPayoutAddress&"&worker="&$_sSCWorkerLabel&""" -dcoin sia"
		 Case "Siamining"
			$_sCBatch &= " -dpool ""http://"&$_sSCServer&"/miner/header?address="&$_sSCPayoutAddress&"&worker="&$_sSCWorkerLabel&""" -dcoin sia"
		 Case Else
			$_sCBatch &= " -dpool ""http://"&$_sSCServer&""" -dcoin sia"
		 EndSwitch
   EndIf

   $_sCBatch &= " "&$_sEOpts

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
   Local $_sEOpts = GUICtrlRead($_uEOpts)

   Local $_sEGOpts
   $_sEGOpts &= "setx GPU_FORCE_64BIT_PTR 0"&@CRLF
   $_sEGOpts &= "setx GPU_MAX_HEAP_SIZE 100"&@CRLF
   $_sEGOpts &= "setx GPU_USE_SYNC_OBJECTS 1"&@CRLF
   $_sEGOpts &= "setx GPU_MAX_ALLOC_PERCENT 100"&@CRLF
   $_sEGOpts &= "SET GPU_SINGLE_ALLOC_PERCENT=100"&@CRLF

   $_sEOpts &= " -G "
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
   Local $_sEOpts = GUICtrlRead($_uEOpts)

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

Func SGMinerGM()
   Global $_pSGMinerGM

   Local $_sMPool = GUICtrlRead($_uMPool)
   Local $_sMServer = GUICtrlRead($_uMServer)
   Local $_sMPayoutAddress = GUICtrlRead($_uMPayoutAddress)
   Local $_sMPoolUsername = GUICtrlRead($_uMPoolUsername)
   Local $_sMWorkerLabel = GUICtrlRead($_uMWorkerLabel)
   Local $_sMWorkerPassword = GUICtrlRead($_uMWorkerPassword)
   Local $_sMOpts = GUICtrlRead($_uMOpts)

   Local $_sMConfBatch
   $_sMConfBatch = '' & @CRLF & _
                   '{' & @CRLF & _
                   '    "pools":' & @CRLF & _
                   '    [' & @CRLF & _
                   '        {' & @CRLF & _
                   '            "name": "' & $_sMPool & '",' & @CRLF & _
                   '            "url": "' & $_sMServer & '",' & @CRLF & _
                   '            "user": "' & $_sMPayoutAddress & '.' & $_sMWorkerLabel & '",' & @CRLF & _
                   '            "pass": "' & $_sMWorkerPassword & '",' & @CRLF & _
                   '            "priority": "0",' & @CRLF & _
                   '            "profile": "xmr"' & @CRLF & _
                   '        }' & @CRLF & _
                   '    ],' & @CRLF & _
                   '    "profiles":' & @CRLF & _
                   '    [' & @CRLF & _
                   '        {' & @CRLF & _
                   '            "name": "xmr",' & @CRLF & _
                   '            "algorithm": "cryptonight",' & @CRLF & _
                   '            "rawintensity": "1024",' & @CRLF & _
                   '            "worksize": "8",' & @CRLF & _
                   '            "gpu-engine": "1000,1050,1050,1000",' & @CRLF & _
                   '            "gpu-memclock": "1500,500,1500,1500",' & @CRLF & _
                   '            "gpu-powertune": "20,50,50,50",' & @CRLF & _
                   '            "gpu-threads": "1",' & @CRLF & _
                   '            "gpu-fan": "100"' & @CRLF & _
                   '        }' & @CRLF & _
                   '    ],' & @CRLF & _
                   '    "default-profile": "xmr",' & @CRLF & _
                   '    "no-submit-stale": false,' & @CRLF & _
                   '    "no-extranonce": true' & @CRLF & _
                   '}'
   If FileExists($_sInstallDir&"sgminer-gm\au3miner.conf") Then FileDelete($_sInstallDir&"sgminer-gm\au3miner.conf")
   FileWrite($_sInstallDir&"sgminer-gm\au3miner.conf", $_sMConfBatch)

   Local $_sMBatch
   $_sMBatch = "cd "&$_sInstallDir&"sgminer-gm"&@CRLF&"sgminer.exe --config au3miner.conf " & $_sMOpts
   If FileExists($_sInstallDir&"au3-sgminer-gm.bat") Then FileDelete($_sInstallDir&"au3-sgminer-gm.bat")
   FileWrite($_sInstallDir&"au3-sgminer-gm.bat", $_sMBatch)
   $_pSGMinerGM = Run(@ComSpec&" /K au3-sgminer-gm.bat", $_sInstallDir)

   $_iSGMinerGM_state = 1 ; launching
EndFunc

Func ClaymoreCryptoNoteMiner()
   Global $_pCCNMiner

   Local $_sMPool = GUICtrlRead($_uMPool)
   Local $_sMServer = GUICtrlRead($_uMServer)
   Local $_sMPayoutAddress = GUICtrlRead($_uMPayoutAddress)
   Local $_sMPoolUsername = GUICtrlRead($_uMPoolUsername)
   Local $_sMWorkerLabel = GUICtrlRead($_uMWorkerLabel)
   Local $_sMWorkerPassword = GUICtrlRead($_uMWorkerPassword)
   Local $_sMOpts = GUICtrlRead($_uMOpts)

   Local $_sMGOpts
   $_sMGOpts &= "setx GPU_FORCE_64BIT_PTR 0"&@CRLF
   $_sMGOpts &= "setx GPU_MAX_HEAP_SIZE 100"&@CRLF
   $_sMGOpts &= "setx GPU_USE_SYNC_OBJECTS 1"&@CRLF
   $_sMGOpts &= "setx GPU_MAX_ALLOC_PERCENT 100"&@CRLF
   $_sMGOpts &= "SET GPU_SINGLE_ALLOC_PERCENT=100"&@CRLF

   Local $_sMBatch
   $_sMBatch = $_sMGOpts&@CRLF&"cd "&$_sInstallDir&"claymorecryptonote"&@CRLF&"NsGpuCNMiner.exe -o "&$_sMServer&" -u "&$_sMPayoutAddress&" -p "&$_sMWorkerPassword&" " & $_sMOpts
   If FileExists($_sInstallDir&"au3-ccnminer.bat") Then FileDelete($_sInstallDir&"au3-ccnminer.bat")
   FileWrite($_sInstallDir&"au3-ccnminer.bat", $_sMBatch)
   $_pCCNMiner = Run(@ComSpec&" /K au3-ccnminer.bat", $_sInstallDir)

   $_iCCNMiner_state = 1 ; launching
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

   $_iClaymoreMiner_state = 3
   $_iQtMiner_state = 3
   $_iEthminerGenoil_state = 3
EndFunc

Func PreExit()
   If $_sCloseMiners == 1 Then CloseMiners()
   If $_sCleanExit == 1 Then Uninstall()
EndFunc

If $_sClaymoreMiner_auto == 1 And Not $_pClaymoreMiner Then ClaymoreMiner()
If $_sQtMiner_auto == 1 And Not $_pQtMiner Then QtMiner()
If $_sEthminerGenoil_auto == 1 And Not $_pEthminerGenoil Then EthminerGenoil()
If $_sSGMinerGM_auto == 1 And Not $_pSGMinerGM Then SGMinerGM()
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
	  Case $_uSGMinerGM_launch
		 $_pSGMinerGM = ProcessExists("sgminer.exe")
		 If Not $_pSGMinerGM Then SGMinerGM()
     Case $_uCCNMiner_launch
       $_pCCNMiner = ProcessExists("NsGpuCNMine.exe")
       If Not $_pCCNMiner Then ClaymoreCryptoNoteMiner()
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
			GUICtrlSetData($_uEPoolUsername, $_sGlobalPoolUsername)
			GUICtrlSetData($_uDPoolUsername, $_sGlobalPoolUsername)
			GUICtrlSetData($_uSCPoolUsername, $_sGlobalPoolUsername)
		 EndIf

		 If $_sGlobalWorkerLabel <> "" Then
			$_sEWorkerLabel = $_sGlobalWorkerLabel
			$_sDWorkerLabel = $_sGlobalWorkerLabel
			$_sSCWorkerLabel = $_sGlobalWorkerLabel
			$_sHWorkerLabel = $_sGlobalWorkerLabel
			GUICtrlSetData($_uEWorkerLabel, $_sGlobalWorkerLabel)
			GUICtrlSetData($_uDWorkerLabel, $_sGlobalWorkerLabel)
			GUICtrlSetData($_uSCWorkerLabel, $_sGlobalWorkerLabel)
		 EndIf

		 If $_sGlobalWorkerPassword <> "" Then
			$_sEWorkerPassword = $_sGlobalWorkerPassword
			$_sDWorkerPassword = $_sGlobalWorkerPassword
			$_sSCWorkerPassword = $_sGlobalWorkerPassword
			$_sHWorkerPassword = $_sGlobalWorkerPassword
			GUICtrlSetData($_uEWorkerPassword, $_sGlobalWorkerPassword)
			GUICtrlSetData($_uDWorkerPassword, $_sGlobalWorkerPassword)
			GUICtrlSetData($_uSCWorkerPassword, $_sGlobalWorkerPassword)
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
	  Case $_uMSaveSettings
		 MSettingsWrite()
	  Case $_uau3miner_update
		 GUICtrlSetData($_uau3miner_update, "Updating au3miner...")
		 Update()
	  Case $_uEPool
		 Switch GUICtrlRead($_uEPool)
			Case "Dwarfpool"
			   GUICtrlSetData($_uEServer, "eth-us2.dwarfpool.com:8008")
			Case "Ethpool"
			   GUICtrlSetData($_uEServer, "us2.ethpool.org:3333")
			Case "Nanopool"
			   GUICtrlSetData($_uEServer, "eth-us-west1.nanopool.org:9999")
			Case "Nanopool (ETC)"
			   GUICtrlSetData($_uEServer, "etc-us-west1.nanopool.org:19999")
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
			   GUICtrlSetData($_uSCServer, "sia-us-west1.nanopool.org:9980")
			Case "Siamining"
			   GUICtrlSetData($_uSCServer, "siamining.com:9980")
			Case " sᴏʟᴏ"
			   GUICtrlSetData($_uSCServer, "N/A")
			Case " ᴄᴜsᴛᴏᴍ"
			   If GUICtrlRead($_uSCServer) == "N/A" Then GUICtrlSetData($_uSCServer, "")
		 EndSwitch
	  Case $_uMPool
		 Switch GUICtrlRead($_uMPool)
			Case "DwarfPool"
			   GUICtrlSetData($_uMServer, "stratum+tcp://xmr-usa.dwarfpool.com:8080")
			Case "Crypto-Pool"
			   GUICtrlSetData($_uMServer, "stratum+tcp://xmr.crypto-pool.fr:3333")
			Case "MinerGate"
			   GUICtrlSetData($_uMServer, "stratum+tcp://xmr.pool.minergate.com:45560")
			Case "MoneroPool"
			   GUICtrlSetData($_uMServer, "stratum+tcp://mine.moneropool.com:3333")
			Case "mineXMR"
			   GUICtrlSetData($_uMServer, "stratum+tcp://pool.minexmr.com:4444")
			Case " sᴏʟᴏ"
			   GUICtrlSetData($_uMServer, "http://192.168.0.1:8545")
			Case " ᴄᴜsᴛᴏᴍ"
			   If GUICtrlRead($_uMServer) == "http://192.168.0.1:8545" Then GUICtrlSetData($_uEServer, "")
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
			GUICtrlSetData($_uClaymoreMiner_launch, "claymore ethereum is running")
		 EndIf
	  Case $_iClaymoreMiner_state == 2
		 If Not ProcessExists($_pClaymoreMiner) Then
			If $_sClaymoreMiner_persist == 1 Then
			   ClaymoreMiner()
			   $_iClaymoreMiner_state = 1
			Else
			   $_iClaymoreMiner_state = 3
			   GUICtrlSetData($_uClaymoreMiner_launch, "claymore ethereum closed")
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
		 GUICtrlSetData($_uClaymoreMiner_launch, "claymore ethereum")
	  Case Else
		 If ProcessExists($_pClaymoreMiner) Then
			GUICtrlSetState($_uClaymoreMiner_launch, $GUI_DISABLE)
			$_iClaymoreMiner_state = 2
			GUICtrlSetData($_uClaymoreMiner_launch, "claymore ethereum is running")
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
	  Case $_iSGMinerGM_state == 1
		 GUICtrlSetState($_uSGMinerGM_launch, $GUI_DISABLE)
		 GUICtrlSetData($_uSGMinerGM_launch, "Launching sgminer-gm...")
		 If ProcessExists($_pSGMinerGM) Then
			$_iSGMinerGM_state = 2
			GUICtrlSetData($_uSGMinerGM_launch, "sgminer-gm is running")
		 EndIf
	  Case $_iSGMinerGM_state == 2
		 If Not ProcessExists($_pSGMinerGM) Then
			If $_sSGMinerGM_persist == 1 Then
			   SGMinerGM()
			   $_iSGMinerGM_state = 1
			Else
			   $_iSGMinerGM_state = 3
			   GUICtrlSetData($_uSGMinerGM_launch, "sgminer-gm closed")
			EndIf
		 EndIf
		 If WinExists("minerd.exe", "&Close program") Then
			WinClose("minerd.exe", "&Close program")
			ProcessClose($_pSGMinerGM)
			SGMinerGM()
		 EndIf
	  Case $_iSGMinerGM_state == 3
		 Do
			ProcessClose($_pSGMinerGM)
		 Until Not ProcessExists($_pSGMinerGM)
		 $_iSGMinerGM_state = 0
		 GUICtrlSetState($_uSGMinerGM_launch, $GUI_ENABLE)
		 GUICtrlSetData($_uSGMinerGM_launch, "sgminer-gm")
	  Case Else
		 If ProcessExists($_pSGMinerGM) Then
			GUICtrlSetState($_uSGMinerGM_launch, $GUI_DISABLE)
			$_iSGMinerGM_state = 2
			GUICtrlSetData($_uSGMinerGM_launch, "sgminer-gm is running")
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
		 $_sInternetState = -1;
	  ElseIf $_sInternetState < 0 Then
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