#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;==================================o
;       Custom Delete Shortcut     | 
;----------------------------------o
;|     RAlt + w    |    Ctrl + BS  |
;|     RAlt + W    | Ctrl + Delete |
;|     RAlt + x    |   Backspace   |
;|     RAlt + d    |     Delete    |
;|     RAlt + u    |  Delete Line  |
;----------------------------------o
;           Conditions             | 
;----------------------------------o
IsDisableApps := AppName in Code.exe
;----------------------------------o
#If !IsDisableApps
>!u::Send, ^{ a } { Delete }
>!w::Send, ^{ BS }
>!+w::Send, ^{ Delete }
>!x::Send, { BS }
>!d::Send, { Delete }
#If
;----------------------------------o

