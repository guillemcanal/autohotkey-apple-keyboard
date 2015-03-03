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

; Finding
#f::Send ^f

; Undo
#z::Send ^z

; Redo
#y::Send ^y

; New tab
#t::Send ^t

; Close tab
#w::Send ^w

; Refresh Tab
#r::Send {F5}

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; Minimize windows
#m::WinMinimize,a

; Explorer Global Search
#IfWinActive, ahk_class CabinetWClass
#g::Send #f
#IfWinActive

; -------------------------------------------------------------
; Applications support
;
; Note: Feel free to uncomment application specific mappings
; -------------------------------------------------------------

Include apps\chrome.ahk
Include apps\mintty.ahk

; -------------------------------------------------------------
; Optional key mappings
;
; Note: Feel free to uncomment optional key mappings
; Filenames are self-explanatory
; -------------------------------------------------------------

Include utils\special_chars.ahk
Include utils\natural_scroll.ahk
Include utils\recycle_bin.ahk