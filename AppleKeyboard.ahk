;-------------------------------------------------------------------
; Mac keyboard to Windows Key Mappings
; 
; This file is based on the work of Jonathan Ströbele
; You can find is github repo here:
; https://github.com/stroebjo/autohotkey-windows-mac-keyboard
;
; NOTE 1: use a semicolon to comment out
; key mappings if you so desire.
;
; NOTE 2: you will still need to use 
; a proper keyboard layout in order to get
; your Apple keyboard behave properly.
; You can created your own layout with 
; Microsoft Keyboard Layout Creator 1.4 
; (http://www.microsoft.com/en-us/download/details.aspx?id=22339)
; Some layouts can be found online (search for: "apple klc")
;
;====================================================================

; --------------------------------------------------------------
; Special keys all mapped to the right option key
;
; NOTE: When using Bootcamp, media keys binding is not necessary 
; --------------------------------------------------------------

; Media keys
RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; Eject Key
F20::SendInput {Insert}

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; New File
#n::Send ^n

; Make Ctrl + S work with cmd (windows) key
#s::Send ^s

; Selecting
#a::Send ^a

; Copying
#c::Send ^c

; Pasting
#v::Send ^v

; Cutting
#x::Send ^x

; Opening
#o::Send ^o

; Do not apply in Explorer since Win + F is already in use
; If you don't care, feel free to uncomment the mapping in between
; the IfWinNotActive block.
#IfWinNotActive, ahk_class CabinetWClass

; Finding
#f::Send ^f

#IfWinNotActive

; Undo
#z::Send ^z

; Redo
#y::Send ^y

; New tab
#t::Send ^t

; Close tab
#w::Send ^w

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; Minimize windows
#m::WinMinimize,a

; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map Alt + n to ~
;
; NOTE: This rule will output a tilde at first stroke,
; thanks to that weird dot backspace trick. If you want 
; the default behavior, remove the .{BS} part
!n::SendInput ~.{BS}

; ---------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive

; ---------------------------------------------------------------
; Recycle Bin shortcuts
; ---------------------------------------------------------------

; Empty trash Cmd + Shift + BackSpace
#+BS::
    ; 260 Set the MsgBox Prompt to No
    MsgBox, 260, Recycle bin, Are you sure you want to empty your trash?
    IfMsgBox Yes
        ; This will empty you trash on the C: drive
        ; more info here: http://www.autohotkey.com/docs/commands/FileRecycleEmpty.htm
        FileRecycleEmpty, C:\
return

; Delete Files Selection Cmd + Backspace
#IfWinActive, ahk_class Progman ; Target Desktop
#BS::
#IfWinActive, ahk_class CabinetWClass ; Target Explorer
#BS::
    ; Copy selection
    Send, ^c
    ClipWait, 0.1
    clipboardContent := Clipboard

    ; Put each file in the trash
    Loop, parse, clipboardContent, `n, `r
    {
        If FileExist(A_LoopField)
        FileRecycle, %A_LoopField%
    }
return

#IfWinActive

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