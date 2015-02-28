; ---------------------------------------------------------------
; MinTTY
; ---------------------------------------------------------------

#IfWinActive, ahk_class mintty

; Copy 
#c::Send ^{Ins}

; Paste
#v::Send +{Ins}

; Fullscreen
#f::Send !{F11}

#IfWinActive