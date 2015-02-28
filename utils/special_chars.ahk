; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map Alt + n to ~
;
; NOTE: This rule will output a tilde at first stroke,
; thanks to that weird dot backspace trick. If you want 
; the default behavior, remove the .{BS} part
!n::SendInput ~.{BS}

; Map Alt + Shift + l to |
!+l::Send |