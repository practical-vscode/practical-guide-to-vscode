#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

global ENG:=0x4090409
global ZH_TW:=0x4040404

IsEng() {
    ENG:=0x4090409
    return ENG == GetIME()
}

IsZH_TW() {
    ZH_TW:=0x4040404
    return ZH_TW == GetIME()
}

GetIME() {
    SetFormat, Integer, H
    WinGet, WinID,, A
    ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
    InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
    Return InputLocaleID
}

; Show current IME
ShowIME() {
    MsgBox % GetIME()
}

RunDualKeyRemapExe() {
    MsgBox % "Run Dualkey Remap"
    Run, dual-key-remap.exe, "%A_scriptDir%\dual-key-remap-v0.6\dual-key-remap.exe"    
}