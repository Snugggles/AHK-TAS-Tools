;This block includes things to make the script work correctly.
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#include Controls.ahk


;These scripts work by using the functions noted at the bottom of this file. The actual code of those functions is in Controls.ahk, but the full list is in this file at the end for easy reference. 

;When you are running the script, F5 will be taken over, so it won't work to refresh web pages and such. Instead, it reloads the currently loaded script, so when you make changes to a script that's open, all you have to do is save the file, press F5, and then the changes are ready to test.
;This can be changed by going into the Controls.ahk file, and changing the hotkey on line 37 from "f5::" to "YourRefreshHotkeyButton::", make sure to include the "::" at the end, that denotes a hotkey.


;The hotkey for playing the script is Insert, which also will have its actual function disabled whilst you have one of these scripts running. You can change it below in the same way as described above with the refresh key



Insert::	;This plays the following inputs
{


;This is the big block of code that runs the rest of the scripts. You'll find the blocks for each 'Phase' after this block. This just has it split up so that editing per savestate is easier.
;To ignore a specific Phase, just place a ; before it, similar to these messages. I've used Phase3 as an example. This means the script ignores that whole Phase of inputs, and goes to the next one. Don't worry if you don't use them all, that's not an issue. If you need more Phases, go below this block and copy one of the empty Phases all the way from "Phasex()" to the "}" bracket after "return", paste it and change the number, then add that to this list.
Phase1()
Phase2()
;Phase3()
Phase4()
Phase5()
Phase6()
Phase7()
Phase8()
Phase9()
return
}

Phase1()
{

ReleaseAll()
return
}

Phase2()
{

ReleaseAll()
return
}

Phase3()
{

ReleaseAll()
return
}

Phase4()
{

ReleaseAll()
return
}

Phase5()
{

ReleaseAll()
return
}

Phase6()
{

ReleaseAll()
return
}

Phase7()
{

ReleaseAll()
return
}

Phase8()
{

ReleaseAll()
return
}

Phase9()
{

ReleaseAll()
return
}





/*List of functions


----MISC----

waitFrames(x) ; This will advance the game by x frames.


----STICKS----

RStick(x,y) ; x is vertical, y is horizontal. Both can be between 0 and 100, including decimal places. 0 is all the way left/down, 50 is neutral, 100 is all the way up/right)

LStick(x,y) ; x is vertical, y is horizontal. Both can be between 0 and 100, including decimal places. 0 is all the way left/down, 50 is neutral, 100 is all the way up/right)


----BUTTONS----

; The following functions hold the corresponding buttons, advence the game by one frame, and release them without advancing to the next frame. Not useful for pressing multiple buttons on the same frame.
Cross()
Square()
Circle()
Triangle()
DUp()
DDown()
DLeft()
DRight()
R1()
R2()
R3()
L1()
L2()
L3()
Select()
Start()

The following functions set the button as held, and don't progress the game at all. Useful for when you need to press multiple buttons at once, e.g. [HoldCircle(), HoldCross(), waitFrames(1)] will have them both be held at the same time, then the game will progress by a single frame.
HoldCross()
HoldSquare()
HoldCircle()
HoldTriangle()
HoldDUp()
HoldDDown()
HoldDRight()
HoldDLeft()
HoldR1()
HoldR2()
HoldR3()
HoldL1()
HoldL2()
HoldL3()
HoldSelect()
HoldStart()

The following functions set the button as released, and don't progress the game at all. Useful for when you need to release multiple buttons at once, e.g. [ReleaseCircle(), ReleaseCross(), waitFrames(1)] will have them both let go at the same time, then the game will progress by a single frame.
ReleaseCross()
ReleaseSquare()
ReleaseCircle()
ReleaseTriangle()
ReleaseDUp()
ReleaseDDown()
ReleaseDRight()
ReleaseDLeft()
ReleaseR1()
ReleaseR2()
ReleaseR3()
ReleaseL1()
ReleaseL2()
ReleaseL3()
ReleaseSelect()
ReleaseStart()
*/