; ---------------------------------------------------------------
; Natural scroll
; 
; NOTE: By default, Windows scroll 3 lines at a time,
; you may want to reduce this value when using the trackpad.
; To do so, go to: 
; Start > Control Panel > Change mouse wheel settings.
; ---------------------------------------------------------------

#MaxHotkeysPerInterval 200

WheelUp::
Send {WheelDown}
Return

WheelDown::
Send {WheelUp}
Return