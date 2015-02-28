; ---------------------------------------------------------------
; Recycle Bin shortcuts
; ---------------------------------------------------------------

; Empty trash (Cmd + Shift + BackSpace)
#+BS::
    ; 260 Set the MsgBox Prompt to No
    MsgBox, 260, Recycle bin, Are you sure you want to empty your trash?
    IfMsgBox Yes
        ; This will empty you trash on the C: drive.
        ; More info here: http://www.autohotkey.com/docs/commands/FileRecycleEmpty.htm
        FileRecycleEmpty, C:\
return

; Delete Files Selection (Cmd + Backspace)
#IfWinActive, ahk_class Progman ; Target Desktop
#BS::
#IfWinActive, ahk_class CabinetWClass ; Target Explorer
#BS::
    Send {Delete}
return

#IfWinActive