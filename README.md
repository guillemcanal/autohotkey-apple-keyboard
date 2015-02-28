# Autohotkey script for Apple keyboards

An autohotkey script to emulate OSX behavior with an Apple keyboard.

This script is based on the work of [Jonathan Ströbele (stroebjo)](https://github.com/stroebjo).  
The original repository can be found [here](https://github.com/stroebjo/autohotkey-windows-mac-keyboard).

It add support for:

- Natural scrolling
- Move to trash (Command-Delete)
- Empty Trash (Command-Shift-Delete)

This script has been tested on a french MacBook Air keyboard. Feel free to contribute to support a wider range of configurations.

## Prerequisites

### Basic Apple key assignment for Microsoft Windows

Before you use this script, you will need to use a proper keyboard layout profile on Windows to cover the basic character mappings.

You can create your own using [Microsoft Keyboard Layout Creator](Microsoft Keyboard Layout Creator). For more informations, you can read this article on the [Apple support website](https://support.apple.com/us-us/HT5636)

Some contributors have already done it for you:

- Apple US keyboard: [fredemmott/AppleKeyboardsForWindows](https://github.com/fredemmott/AppleKeyboardsForWindows)
- Apple FR keyboard: [French Apple MacBook Keyboard Layout for Windows](http://phocean.net/tools/french-apple-macbook-keyboard-layout-for-windows)

## Installation

- Install [AutoHotKey](http://www.autohotkey.com/)
- Run the `AppleKeyboard.ahk` file
- Place a shortcut of this file in your Startup directory (see [Run a program automatically when Windows starts - on windows.microsoft.com](http://windows.microsoft.com/en-us/windows/run-program-automatically-windows-starts#1TC=windows-7))

## Contribute

### Adding support for an application

Application specific mappings **MUST** be placed in the `apps` folder.
Once created, just add a commented `#Include` instruction in the `AppleKeyboard.ahk` file under the "Applications support" section.

For example: 

```ahk
; -------------------------------------------------------------
; Applications support
;
; Note: Feel free to uncomment application specific mappings
; -------------------------------------------------------------

; #Include apps\my_awesome_application.ahk
```

### Adding optional key mappings

Optional key mappings **MUST** be placed in the `utils` folder.
Once created, just add a commented `#Include` instruction in the `AppleKeyboard.ahk` file under the "Optional key mappings" section.

For example: 

```ahk
; -------------------------------------------------------------
; Optional key mappings
;
; Note: Feel free to uncomment optional key mappings
; Filenames are self-explanatory
; -------------------------------------------------------------

; #Include utils\some_utility.ahk
```