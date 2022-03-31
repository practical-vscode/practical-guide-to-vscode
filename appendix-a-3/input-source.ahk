#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Another: Capslock -> RShift
Capslock::
    Send, {Alt Down}{Shift Down}{Shift Up}{Alt Up} 
return