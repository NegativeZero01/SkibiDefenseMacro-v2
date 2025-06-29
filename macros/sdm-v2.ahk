/* BASE SETTINGS */
#Requires AutoHotkey v2.0.19
#SingleInstance Force
Persistent(true)
SetWorkingDir(A_ScriptDir "\..")
#MaxThreads 8
#MaxThreadsPerHotkey 2
#MaxThreadsBuffer false
; error silencing
#Warn All, Off
OnError (e, mode) => (mode = "Return") ? -1 : 0
; interacting with window
CoordMode("Pixel", "Client")
CoordMode("Mouse", "Client")
SendMode("Event")
msgbox a_workingdir
/* INCLUDES */
#include "%A_ScriptDir%\..\files\functions\hotkeys.ahk"

; test hotkeys
f1:: {
	msgbox("hi there")
}

f2:: {
	msgbox("bye bye")
	FullExit()
}

f3:: {
	msgbox("brb")
	Reload()
}
