#include <GUIConstantsEx.au3>
#include <File.au3>

Global $sMyComputerCLSID = "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
Global $gsDirData = ""

Global $ghMain = GUICreate('FileInstall Directory', 600, 380)
Global $giOutPut = GUICtrlCreateEdit('', 10, 10, 580, 300)
GUICtrlCreateLabel('Extension:', 20, 318, 50, 20, 0x001)
Global $giExtension = GUICtrlCreateInput('*', 75, 315, 50, 20)
GUICtrlCreateLabel('Destination Path:', 130, 318, 90, 20, 0x001)
Global $giDestPath = GUICtrlCreateInput('@TempDir & "\"', 220, 315, 200, 20)
GUICtrlCreateLabel('Flag:', 425, 318, 30, 20, 0x001)
Global $giFlag = GUICtrlCreateCombo('', 455, 315, 40, 300)
GUICtrlSetData($giFlag, '0|1|', '0')
Global $giDirDrive = GUICtrlCreateCheckbox("Long Path", 500, 315)
Global $giDirRecurse = GUICtrlCreateCheckbox("Dir Recurse", 500, 335)
Global $giDirHierarchy = GUICtrlCreateCheckbox("Keep Hierarchy", 500, 355)
Global $giGetDir = GUICtrlCreateButton('Directory Get Files', 110, 345, 150, 30)
Global $giCopyData = GUICtrlCreateButton('Copy Data', 320, 345, 150, 30)
GUISetState()
While 1
    Switch GUIGetMsg()
        Case - 3
            Exit
        Case $giGetDir
            $gsDirData = _GetDirData(GUICtrlRead($giExtension), (GUICtrlRead($giDirDrive) <> 1), _
                GUICtrlRead($giDestPath), GUICtrlRead($giFlag), GUICtrlRead($giDirRecurse), _
                GUICtrlRead($giDirHierarchy) = $GUI_CHECKED)
            If Not @error Then
                GUICtrlSetData($giOutPut, '')
                GUICtrlSetData($giOutPut, $gsDirData)
            EndIf
        Case $giCopyData
            ClipPut(GUICtrlRead($giOutPut))
    EndSwitch
WEnd

Func _GetDirData($sExt, $bExcludeLongName, $sDestPath, $nFlag, $nRecursive, $bHierarchy)

    Local $sDir = FileSelectFolder("Select a Directory to FileInstall", $sMyComputerCLSID)
    If @error Then
        Return SetError(1, @extended, "")
    EndIf

    $nRecursive = ($nRecursive = $GUI_CHECKED) ? 1 : 0
    Local $aFiles = _FileListToArrayRec($sDir, "*." & $sExt, 1, $nRecursive, 0, 2)
    If Not IsArray($aFiles) Then
        Return SetError(2, @extended, "")
    EndIf

    Local $sTDrive, $sTDir, $sTFName, $sTExt
    Local $sHold = ""
    _GetExistStr($sDestPath, $sHold)

    Local $sFinstall = ""
    Local $sTmpDest = ""
    Local $sHoldStr = ""

    If $bHierarchy Then
        ; main folder searching
        _PathSplit($sDir, $sTDrive, $sTDir, $sTFName, $sTExt)
        If StringRight(StringRegExpReplace($sDestPath, "[\\/]+\z", ""), _
            StringLen($sTFName)) <> $sTFName Then
            $sTmpDest = StringRegExpReplace($sDestPath, _
                "(\&\s*(?:\x27|\x22)[\\/]+(?:\x27|\x22))", "") & ' & "\' & $sTFName & '\"'
            If Not StringInStr($sHoldStr, $sTDir & @LF) Then
                $sHoldStr &= $sTDir & @LF
                _GetExistStr($sTmpDest, $sHold)
            EndIf
        EndIf
    EndIf

    Local Static $sScrDir = StringRegExpReplace(@ScriptDir, "\\+\z", "")
    For $i = 1 To UBound($aFiles) - 1
        $sTmpDest = $sDestPath

        _PathSplit($aFiles[$i], $sTDrive, $sTDir, $sTFName, $sTExt)

        If $bExcludeLongName Then
            If $sScrDir = StringRegExpReplace($sTDrive & $sTDir, "\\+\z", "") Then
                $aFiles[$i] = $sTFName & $sTExt
            EndIf
        EndIf

        If $bHierarchy Then
            $sTmpDest = StringRegExpReplace($sTmpDest, _
                "(\&\s*(?:\x27|\x22)[\\/]+(?:\x27|\x22))", "") & ' & "' & $sTDir & '"'
            If Not StringInStr($sHoldStr, $sTDir & @LF) Then
                $sHoldStr &= $sTDir & @LF
                _GetExistStr($sTmpDest, $sHold)
            EndIf
        EndIf

        $sFinstall &= "FileInstall(""" & $aFiles[$i] & '", ' & $sTmpDest & ", " & $nFlag & ")" & @CRLF
    Next

    $sHold &= $sFinstall
    $sHold = StringTrimRight($sHold, 2)
    Return $sHold
EndFunc

Func _GetExistStr($sDestPath, ByRef $sOutData)
    $sOutData &= 'If Not FileExists(' & $sDestPath & ') Then' & @CRLF
    $sOutData &= '    Do' & @CRLF
    $sOutData &= '        DirCreate(' & $sDestPath & ')' & @CRLF
    $sOutData &= '    Until FileExists(' & $sDestPath & ')' & @CRLF
    $sOutData &= 'EndIf' & @CRLF
EndFunc