#SingleInstance Force

#Include %A_ScriptDir%/utils.ahk
#Include %A_ScriptDir%/custom-delete-keybindings.ahk
#Include %A_ScriptDir%/input-source.ahk

^Esc::ExitApp 

;==================================o
;      Custom Modifier Remap       | 
;----------------------------------o
$LAlt::LCtrl
$LCtrl::LAlt
;----------------------------------o
; #If IsEng()
;   Space::LShift
; ; LShift::Space
; #If

;----------------------------------o

;==================================o
;       Basic Cursor Shortcut      | 
;----------------------------------o
$!j::Send { down }
$!k::Send { up }
;----------------------------------o
;      (x) RAlt & j::Down          |
;      (x) RAlt & k::Up            |
;----------------------------------o
;  Above Configs have side-effect  | 
;           at VS Code             | 
;    (trigger built-in alt+j/k)    | 
;----------------------------------o

;==================================o
;       Custom Cursor Shortcut     | 
;----------------------------------o
;|     RAlt + l    |  Ctrl + Right |
;|     RAlt + h    |  Ctrl + Left  |
;|     RAlt + f    |      Right    |
;|     RAlt + b    |      Left     |
;|     RAlt + e    |      End      |
;|     RAlt + a    |      Home     |
;==================================o
;           Conditions             | 
;----------------------------------o
IsNotDisableApps := AppName not in Code.exe
#If IsNotDisableApps
  ;----------------------------------o
>!l::Send, ^{ Right }
>!h::Send, ^{ Left }
>!f::Send, { Right }
>!b::Send, { Left }
>!e::Send, { End }
>!a::Send, { Home }
;----------------------------------o
#If
  ;----------------------------------o

;==================================o
;       Custom Cursor Shortcut     | 
;----------------------------------o
;|    LCtrl + Up   |  Ctrl + Home  |
;|    LCtrl + Down |  Ctrl + End   |
;----------------------------------o
$^+k::Send, ^{ Home }
$^+j::Send, ^{ End }
;----------------------------------o
; $^!k::Send, ^{ Home };   failed  |
;----------------------------------o

;==================================o
;       Custom Editor Shortcut     | 
;----------------------------------o
;|     RAlt + s    |     Space     |
;----------------------------------o
>!s::Send, { Space }
;----------------------------------o

;==================================o
;       Custom Esc Shortcut        | 
;----------------------------------o
;|     RAlt + q    |    Ctrl + q   |
;----------------------------------o
>!q::Send, { Escape }
;----------------------------------o

