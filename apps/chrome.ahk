; ---------------------------------------------------------------
; Google Chrome
; ---------------------------------------------------------------

#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools (Cmd + Alt + i)
#!i::Send {F12}

; Show source code with (Cmd + Alt + u)
#!u::Send ^u

#IfWinActive