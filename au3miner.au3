Select
      Case FileExists("au3miner.ini")
         Global $_sInstallDir = IniRead("au3miner.ini" ,"settings", "installdir",@TempDir&"\au3miner\")
      Case FileExists(@TempDir&"\au3miner\au3miner.ini")
         Global $_sInstallDir = IniRead(@TempDir&"\au3miner.ini", "settings", "installdir", @TempDir&"\au3miner\")
      Case Else
         Global $_sInstallDir = @TempDir&"\au3miner\"
EndSelect

Install($_sInstallDir)

Func Install($_fInstallDir)
   If Not FileExists( $_fInstallDir ) Then $_fInstallDir = @TempDir

   If Not FileExists($_fInstallDir) Then
      Do
          DirCreate($_fInstallDir)
      Until FileExists($_fInstallDir)
   EndIf
   If Not FileExists($_fInstallDir&"qtminer\") Then
      Do
          DirCreate($_fInstallDir&"qtminer\")
      Until FileExists($_fInstallDir&"qtminer\")
   EndIf
   FileInstall("C:\au3miner\qtminer\qt_ca.qm", $_fInstallDir & "qtminer\qt_ca.qm", 0)
   FileInstall("C:\au3miner\qtminer\qt_cs.qm", $_fInstallDir & "qtminer\qt_cs.qm", 0)
   FileInstall("C:\au3miner\qtminer\qt_de.qm", $_fInstallDir & "qtminer\qt_de.qm", 0)
   FileInstall("C:\au3miner\qtminer\qt_fi.qm", $_fInstallDir & "qtminer\qt_fi.qm", 0)
   FileInstall("C:\au3miner\qtminer\qt_hu.qm", $_fInstallDir & "qtminer\qt_hu.qm", 0)
   FileInstall("C:\au3miner\qtminer\qt_it.qm", $_fInstallDir & "qtminer\qt_it.qm", 0)
   FileInstall("C:\au3miner\qtminer\qt_ja.qm", $_fInstallDir & "qtminer\qt_ja.qm", 0)
   FileInstall("C:\au3miner\qtminer\qt_ru.qm", $_fInstallDir & "qtminer\qt_ru.qm", 0)
   FileInstall("C:\au3miner\qtminer\qt_sk.qm", $_fInstallDir & "qtminer\qt_sk.qm", 0)
   FileInstall("C:\au3miner\qtminer\qt_uk.qm", $_fInstallDir & "qtminer\qt_uk.qm", 0)
   FileInstall("C:\au3miner\qtminer\QtMiner.exe", $_fInstallDir & "qtminer\QtMiner.exe", 0)
   FileInstall("C:\au3miner\qtminer\depends.exe", $_fInstallDir & "qtminer\depends.exe", 0)
   FileInstall("C:\au3miner\qtminer\msvcp120.dll", $_fInstallDir & "qtminer\msvcp120.dll", 0)
   FileInstall("C:\au3miner\qtminer\msvcr120.dll", $_fInstallDir & "qtminer\msvcr120.dll", 0)
   FileInstall("C:\au3miner\qtminer\icudt53.dll", $_fInstallDir & "qtminer\icudt53.dll", 0)
   FileInstall("C:\au3miner\qtminer\icuin53.dll", $_fInstallDir & "qtminer\icuin53.dll", 0)
   FileInstall("C:\au3miner\qtminer\icuuc53.dll", $_fInstallDir & "qtminer\icuuc53.dll", 0)
   FileInstall("C:\au3miner\qtminer\Qt5Core.dll", $_fInstallDir & "qtminer\Qt5Core.dll", 0)
   FileInstall("C:\au3miner\qtminer\Qt5Network.dll", $_fInstallDir & "qtminer\Qt5Network.dll", 0)
   FileInstall("C:\au3miner\qtminer\OpenCL.dll", $_fInstallDir & "qtminer\OpenCL.dll", 0)
   FileInstall("C:\au3miner\qtminer\evmjit.dll", $_fInstallDir & "qtminer\evmjit.dll", 0)
   FileInstall("C:\au3miner\qtminer\libmicrohttpd-dll.dll", $_fInstallDir & "qtminer\libmicrohttpd-dll.dll", 0)
   FileInstall("C:\au3miner\qtminer\libcurl.dll", $_fInstallDir & "qtminer\libcurl.dll", 0)
   FileInstall("C:\au3miner\qtminer\depends.dll", $_fInstallDir & "qtminer\depends.dll", 0)
   FileInstall("C:\au3miner\qtminer\qt.conf", $_fInstallDir & "qtminer\qt.conf", 0)
   If Not FileExists($_fInstallDir & "qtminer\bearer\") Then
      Do
          DirCreate($_fInstallDir & "qtminer\bearer\")
      Until FileExists($_fInstallDir & "qtminer\bearer")
   EndIf
   FileInstall("C:\au3miner\qtminer\bearer\qgenericbearer.dll", $_fInstallDir & "qtminer\bearer\qgenericbearer.dll", 0)
   FileInstall("C:\au3miner\qtminer\bearer\qnativewifibearer.dll", $_fInstallDir & "qtminer\bearer\qnativewifibearer.dll", 0)
   If Not FileExists($_fInstallDir & "hodlminer\") Then
      Do
          DirCreate($_fInstallDir & "hodlminer\")
      Until FileExists($_fInstallDir & "hodlminer\")
   EndIf
   FileInstall("C:\au3miner\hodlminer\hodlminer.exe", $_fInstallDir & "hodlminer\hodlminer.exe", 0)
EndFunc

#include <Crypt.au3> ; in order to SHA1 @ComputerName for the worker/rig labels

Global $_Ver = "0.0.1"

Global $_pQtMiner = ProcessExists("qtminer.exe")
Global $_sQtMiner_auto
Global $_iQtMiner_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_pHOdlMiner = ProcessExists("hodlminer.exe")
Global $_sHOdlMiner_auto
Global $_iHOdlMiner_state ; 0 default/not running, 1 launching, 2 running, 3 closing
Global $_sKeepAwake

Global $_sEServer
Global $_sEPayoutAddress
Global $_sEWorkerLabel
Global $_sEG
Global $_sET
Global $_sETVal
Global $_sEOpenCLPlatform
Global $_sEOpenCLPlatformVal
Global $_sEOpenCLDevice
Global $_sEOpenCLDeviceVal
Global $_sEGPUForce64Bit
Global $_sEGPUMaxHeap
Global $_sEGPUMaxHeapVal
Global $_sEGPUUseSync
Global $_sEGPUMaxAlloc
Global $_sEGPUMaxAllocVal
Global $_sEGPUSingleAlloc
Global $_sEGPUSingleAllocVal

Global $_sHServer
Global $_sHPoolUsername
Global $_sHWorkerLabel
Global $_sHWorkerPassword

SettingsRead()

Func SettingsRead()
   $_sQtMiner_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "qtminerauto", 0)
   $_sHOdlMiner_auto = IniRead($_sInstallDir&"\au3miner.ini", "settings", "hodlminerauto", 0)
   $_sKeepAwake = IniRead($_sInstallDir&"\au3miner.ini", "settings", "keepawake", 0)

   $_sEServer = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "server", "us1.ethpool.org:3333")
   $_sEPayoutAddress = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "payoutaddress", "0x63e53247a99a539b11e740fa7d18fcb12aeda0b2")
   $_sEWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "workerlabel", StringMid(_Crypt_HashData(@ComputerName, $CALG_SHA1 ), 3, 6 ))
   $_sEG = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "g", 1)
   $_sET = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "t", 1)
   $_sETVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "tval", 2)
   $_sEOpenCLPlatform = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-platform", 1)
   $_sEOpenCLPlatformVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-platformval", 0)
   $_sEOpenCLDevice = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-device", 1)
   $_sEOpenCLDeviceVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "opencl-deviceval", 0)
   $_sEGPUForce64Bit = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpuforce64bit", 1)
   $_sEGPUMaxHeap = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxheap", 1)
   $_sEGPUMaxHeapVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxheapval", 100)
   $_sEGPUUseSync = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpuusesync", 1)
   $_sEGPUMaxAlloc = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxalloc", 1)
   $_sEGPUMaxAllocVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxallocval", 100)
   $_sEGPUSingleAlloc = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpusinglealloc", 1)
   $_sEGPUSingleAllocVal = IniRead($_sInstallDir&"\au3miner.ini", "ethereum", "gpusingleallocval", 100)

   $_sHServer = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "server", "stratum+tcp://hodl.blockquarry.com:3032")
   $_sHPoolUsername = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "poolusername", "au3miner")
   $_sHWorkerLabel = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerlabel", "default")
   $_sHWorkerPassword = IniRead($_sInstallDir&"\au3miner.ini", "hodlcoin", "workerpassword", "charity")
EndFunc

Func SettingsWrite()
   $_sInstalLDirOld = $_sInstallDir
   $_sInstallDir = GUICtrlRead($_uInstallDir)
   $_sQtMiner_auto = GUICtrlRead($_uQtMiner_auto)
   $_sHOdlMiner_auto = GUICtrlRead($_uHOdlMiner_auto)
   $_sKeepAwake = GUICtrlRead($_uKeepAwake)

   If Not FileExists($_sInstallDir) Then
      $_sCreateInstalLDir = MsgBox(3, "Directory does not exist", "Warning: "&$_sInstallDir&" does not exist!  Create directory?")
      If $_sCreateInstallDir = 6 Then ;Yes
         DirCreate($_sInstallDir)
         If @error Then MsgBox(0, "Error", "Failed to create "&$_sInstallDir&"!")
      EndIf
      If $_sCreateInstalLDir = 7 Then Return ;No
      If $_sCreateInstalLDir = 2 Then Return ;Cancel
   EndIf

   If Not $_sInstalLDir = $_sInstalLDirOld Then Install($_sInstallDir)

   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "installdir", $_sInstallDir)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "qtminerauto", $_sQtMiner_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "hodlminerauto", $_sHOdlMiner_auto)
   IniWrite($_sInstallDir&"\au3miner.ini", "settings", "keepawake", $_sKeepAwake)
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
   $_sEGPUForce64Bit = GUICtrlRead($_uEGPUForce64Bit)
   $_sEGPUMaxHeap = GUICtrlRead($_uEGPUMaxHeap)
   $_sEGPUMaxHeapVal = GUICtrlRead($_uEGPUMaxHeapVal)
   $_sEGPUUseSync = GUICtrlRead($_uEGPUUseSync)
   $_sEGPUMaxAlloc = GUICtrlRead($_uEGPUMaxAlloc)
   $_sEGPUMaxAllocVal = GUICtrlRead($_uEGPUMaxAllocVal)
   $_sEGPUSingleAlloc = GUICtrlRead($_uEGPUSingleAlloc)
   $_sEGPUSingleAllocVal = GUICtrlRead($_uEGPUSingleAllocVal)

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
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpuforce64bit", $_sEGPUForce64Bit)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxheap", $_sEGPUMaxHeap)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxheapval", $_sEGPUMaxHeapVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpuusesync", $_sEGPUUseSync)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxalloc", $_sEGPUMaxAlloc)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpumaxallocval", $_sEGPUMaxAllocVal)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpusinglealloc", $_sEGPUSingleAlloc)
   IniWrite($_sInstallDir&"\au3miner.ini", "ethereum", "gpusingleallocval", $_sEGPUSingleAllocVal)
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
#include <WindowsConstants.au3>

$_GUI = GUICreate("au3miner", 380, 333)

GUICtrlCreateTab(10, 10, 360, 313)
GUICtrlCreateTabItem("Home")
   $_uQtMiner_launch = GUICtrlCreateButton("Launch qtminer", 20, 40, 167, 80)
   $_uHOdlMiner_launch = GUICtrlCreateButton("Launch HOdlminer", 193, 40, 167, 80)
   GUICtrlCreateLabel("au3miner version "&$_Ver, 250, 300)

GUICtrlCreateTabItem("Preferences")
   $_uInstallDir = GUICtrlCreateInput($_sInstallDir, 20, 40, 260, 20)
   GUICtrlCreateLabel("Install directory", 285, 45)
   $_uQtMiner_auto = GUICtrlCreateCheckbox("Start qtminer as soon as au3miner launches", 20, 65)
   GUICtrlSetState($_uQtMiner_auto, $_sQtMiner_auto)
   $_uHOdlMiner_auto = GUICtrlCreateCheckbox("Start hodlminer as soon as au3miner launches", 20, 85)
   GUICtrlSetState($_uHOdlMiner_auto, $_sHOdlMiner_auto)
   $_uKeepAwake = GUICtrlCreateCheckbox("Attempt to keep computer awake while mining", 20, 105)
   GUICtrlSetState($_uKeepAwake, $_sKeepAwake)
   $_uSaveSettings = GUICtrlCreateButton("Save au3miner settings", 164, 293, 200)

GUICtrlCreateTabItem("Ethereum settings")
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
   $_uEOpenCLPlatformVal = GUICtrlCreateCombo("", 120, 135, 30)
   GUICtrlSetData($_uEOpenCLPlatformVal, "0|1", $_sEOpenCLPlatformVal)
   $_uEOpenCLDevice = GUICtrlCreateCheckbox("--opencl-device", 20, 157)
   GUICtrlSetState($_uEOpenCLDevice, $_sEOpenCLDevice)
   $_uEOpenCLDeviceVal = GUICtrlCreateCombo("", 120, 157, 30)
   GUICtrlSetData($_uEOpenCLDeviceVal, "0|1", $_sEOpenCLDeviceVal)
   $_uEGPUForce64Bit = GUICtrlCreateCheckbox("GPU_FORCE_64BIT_PTR", 20, 179)
   GUICtrlSetState($_uEGPUForce64Bit, $_sEGPUForce64Bit)
   $_uEGPUMaxHeap = GUICtrlCreateCheckbox("GPU_MAX_HEAP_SIZE", 20, 201)
   GUICtrlSetState($_uEGPUMaxHeap, $_sEGPUMaxHeap)
   $_uEGPUMaxHeapVal = GUICtrlCreateInput($_sEGPUMaxHeapVal, 160, 201, 27, 20)
   $_uEGPUUseSync = GUICtrlCreateCheckbox("GPU_USE_SYNC_OBJECTS", 20, 223)
   GUICtrlSetState($_uEGPUUseSync, $_sEGPUUseSync)
   $_uEGPUMaxAlloc = GUICtrlCreateCheckbox("GPU_MAX_ALLOC_PERCENT", 20, 245)
   GUICtrlSetState($_uEGPUMaxAlloc, $_sEGPUMaxAlloc)
   $_uEGPUMaxAllocVal = GUICtrlCreateInput($_sEGPUMaxAllocVal, 190, 245, 27, 20)
   $_uEGPUSingleAlloc = GUICtrlCreateCheckbox("GPU_SINGLE_ALLOC_PERCENT", 20, 267)
   GUICtrlSetState($_uEGPUSingleAlloc, $_sEGPUSingleAlloc)
   $_uEGPUSingleAllocVal = GUICtrlCreateInput($_sEGPUSingleAllocVal, 205, 267, 27, 20)
   $_uESaveQtMinerSettings = GUICtrlCreateButton("Save qtminer settings", 164, 293, 200)

GUICtrlCreateTabItem("HOdlcoin settings")
   $_uHServer = GUICtrlCreateInput($_sHServer, 20, 40, 260, 20)
   GUICtrlCreateLabel("Server", 285, 45)
   $_uHPoolUsername = GUICtrlCreateInput($_sHPoolUsername, 20, 65, 110)
   GUICtrlCreateLabel("Pool username", 135, 70)
   $_uHWorkerLabel = GUICtrlCreateInput($_sHWorkerLabel, 20, 90, 110)
   GUICtrlCreateLabel("Worker label", 135, 95)
   $_uHWorkerPassword = GUICtrlCreateInput($_sHWorkerPassword, 20, 115, 110)
   GUICtrlCreateLabel("Worker password", 135, 120)
   $_uHSaveHOdlMinerSettings = GUICtrlCreateButton("Save hodlminer settings", 164, 293, 200)

GUICtrlCreateTabItem("Statistics")
   GUICtrlCreateLabel("There are no built-in statistics capabilities in version "&$_Ver&@CRLF&@CRLF&"PM me @ https://www.autoitscript.com/forum/profile/7432-joshdb/"&@CRLF&"if you're antsy for progress :)", 20, 40, 340, 300)
   GUICtrlCreateLabel("au3miner version "&$_Ver&@CRLF&@CRLF&"Made by joshdb / sneurlax, cheers if anyone actually finds this useful", 20, 270, 340)

GUICtrlCreateTabItem("") ; end tabitem definition

GUISetState(@SW_SHOW)

Func MineEthereum()
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

   Local $_sEOpts
   Local $_sEGOpts
   Local $_sBatch

   If $_sEG Then $_sEOpts &= "-G "
   If $_sET Then $_sEOpts &= "-t "&$_sETVal&" "
   If $_sEOpenCLPlatform Then $_sEOpts &= "--opencl-platform "&$_sEOpenCLPlatformVal&" "
   If $_sEOpenCLDevice Then $_sEOpts &= "--opencl-device "&$_sEOpenCLDeviceVal&" "

   If $_sEGPUForce64Bit Then $_sEGOpts &= "setx GPU_FORCE_64BIT_PTR 1&&"
   If $_sEGPUMaxHeap Then $_sEGOpts &= "setx GPU_MAX_HEAP_SIZE "&$_uEGPUMaxHeapVal&"&&"
   If $_sEGPUUseSync Then $_sEGOpts &= "setx GPU_USE_SYNC_OBJECTS 1&&"
   If $_sEGPUMaxAlloc Then $_sEGOpts &= "setx GPU_MAX_ALLOC_PERCENT "&$_sEGPUMaxAllocVal&"&&"
   If $_sEGPUSingleAlloc Then $_sEGOpts &= "SET GPU_SINGLE_ALLOC_PERCENT="&$_sEGPUSingleAllocVal&"&&"

   $_sBatch = "cd "&$_sInstallDir&"qtminer&&"&$_sEGOpts&"qtminer.exe -s "&$_sEServer&" -u "&$_sEPayoutAddress&"."&$_sEWorkerLabel&" "&$_sEOpts
   If FileExists($_sInstallDir&"au3-qtminer.bat") Then FileDelete($_sInstallDir&"au3-qtminer.bat")
   FileWrite($_sInstallDir&"au3-qtminer.bat", $_sBatch)
   $_pQtMiner = Run(@ComSpec&" /K au3-qtminer.bat", $_sInstallDir)

   $_iQtMiner_state = 1 ; launching
EndFunc

Func MineHOdlcoin()
   Local $_sHServer = GUICtrlRead($_uHServer)
   Local $_sHPoolUsername = GUICtrlRead($_uHPoolUsername)
   Local $_sHWorkerLabel = GUICtrlRead($_uHWorkerLabel)
   Local $_sHWorkerPassword = GUICtrlRead($_uHWorkerPassword)

   Local $_HBatch

   $_sBatch = "cd "&$_sInstallDir&"hodlminer&&hodlminer.exe -a hodl -o stratum+tcp://hodl.blockquarry.com:3032 -u "&$_sHPoolUsername&"."&$_sHWorkerLabel&" -p "&$_sHWorkerPassword
   If FileExists($_sInstallDir&"au3-hodlminer.bat") Then FileDelete($_sInstallDir&"au3-hodlminer.bat")
   FileWrite($_sInstallDir&"au3-hodlminer.bat", $_sBatch)
   $_pHOdlMiner = Run(@ComSpec&" /K au3-hodlminer.bat", $_sInstallDir)

   $_iHOdlMiner_state = 1 ; launching
EndFunc

While 1
   Switch GUIGetMsg()
      Case $GUI_EVENT_CLOSE
         ExitLoop
      Case $_uQtMiner_launch
         MineEthereum()
      Case $_uHOdlMiner_launch
         MineHOdlcoin()
      Case $_uSaveSettings
         SettingsWrite()
      Case $_uESaveQtMinerSettings
         ESettingsWrite()
      Case $_uHSaveHOdlMinerSettings
         HSettingsWrite()
   EndSwitch

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
            $_iQtMiner_state = 3
            GUICtrlSetData($_uQtMiner_launch, "qtminer closed")
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
      Case $_iHOdlMiner_state == 1
         GUICtrlSetState($_uHOdlMiner_launch, $GUI_DISABLE)
         GUICtrlSetData($_uHOdlMiner_launch, "Launching HOdlminer...")
         If ProcessExists($_pHOdlMiner) Then
            $_iHOdlMiner_state = 2
            GUICtrlSetData($_uHOdlMiner_launch, "HOdlminer is running")
         EndIf
      Case $_iHOdlMiner_state == 2
         If Not ProcessExists($_pHOdlMiner) Then
            $_iHOdlMiner_state = 3
            GUICtrlSetData($_uHOdlMiner_launch, "HOdlminer closed")
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
WEnd