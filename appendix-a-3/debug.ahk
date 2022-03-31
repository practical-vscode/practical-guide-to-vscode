#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include %A_ScriptDir%/utils.ahk

^F1::
    ShowIME()
Return