#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;-----------------------------------|
;                                   |
; QuickIncrement by LevenTech        |
;                                   |
; Version 1.0 (9-23-17)             |
;                                   |
;-----------------------------------|


; TRAY ICON CONFIGURATION
;-------------------------
Menu, Tray, Tip, QuickIncrement by LevenTech
Menu, Tray, Icon, QuickIncrement.ico, 1, 0

Menu, Tray, NoStandard
Menu, Tray, Add, Instructions, MyHelp
Menu, Tray, Default, Instructions 
Menu, Tray, Standard

; HELP TEXT
;-----------
MyHelp: 
+^/::
!^/::
	message = 
	message = %message%`n
	message = %message%`n Ctrl + Shift + (1-9):`t Increases numbers in selected text by (1-9)
	message = %message%`n
	message = %message%`n Ctrl + Shift + 0:`t`t Clear numbers from selected text
	message = %message%`n
	MsgBox, , QuickIncrement by LevenTech, %message%
Return
	
	
^+1::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(1)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return

^+2::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(2)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return

^+3::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(3)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return

^+4::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(4)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return
	
^+5::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(5)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return

^+6::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(6)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return

^+7::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(7)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return

^+8::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(8)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return

^+9::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(9)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return

^+0::
	Send ^c
	OldVal = %clipboard%
	ReplacedStr := DoIt(0,1)
	If (OldVal != ReplacedStr)
	{
		Send, %ReplacedStr%
	}
Return


DoIt(IncVal,Clear:=0)
{
	CurrentVal = %clipboard%
	Loop, 10 {
		ThisChar :=  A_Index-1
		If (InStr(CurrentVal,ThisChar)>0) {
			If (Clear = 1)
			{
				StringReplace, CurrentVal, CurrentVal, %ThisChar%, , All
				Return CurrentVal
			} else 
			{
				StringReplace, CurrentVal, CurrentVal, %ThisChar%, %IncVal%, All
				Return CurrentVal
			}
		}
		IncVal+=1
	}
}
