﻿;This is an AutoHotkey (AHK) Script.
;It requires you to install AHK to use it.
;I will not distribute compiled versions.

;The shortcut is set to WinKey + Home, see the AHK docs on how to change it.

;This script will try to force a pseudo borderless-fullscreen mode.
;This might not work at all or instead, break mouse functionality.
;You have been warned.

#Requires AutoHotkey v2.0
;#Usehook
#Warn
#Warn VarUnset, Off
#SingleInstance
SendMode("Input")
SetWorkingDir(A_ScriptDir)
KeyHistory(0)

#Home::ResizeWindow()
ResizeWindow()
{
	WindowID := WinGetID("A")
    WinSetStyle("-0xC40000", WindowID)
    WinMove(0, 0, A_ScreenWidth, A_ScreenHeight, WindowID)
}