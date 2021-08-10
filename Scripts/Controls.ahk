#MaxThreads 30
#MaxThreadsPerHotkey 30
#MaxMem 4095
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#SingleInstance, force
#include CvJoyInterface.ahk
vJoyInterface := new CvJoyInterface()
if (!vJoyInterface.vJoyEnabled()){
	; Show log of what happened
	Msgbox % vJoyInterface.LoadLibraryLog
	ExitApp
}
Versions := [140,1701258,1701509]



/*
For the "PCSX2Version" variable, you want to put your version number followed by Build. The following list are all currently compatible versions along with what you should put in the variable.
1.4.0-RR: 140
1.7.0-1258: 1701258
1.7.0-1509: 1701509
*/
PCSX2Version := 1701509
waitTime := 50
myStick := vJoyInterface.Devices[1]
lastX := 50
lastY := 50
lastRX := 50
lastRY := 50
Rewrites := 0
Base := getProcessBaseAddress("ahk_exe pcsx2.exe")
if (hasValue(Versions, PCSX2Version) = false)
	{
	MsgBox, 0, ERROR: PCSX2Version not found., The Version of PCSX2 that is written in the Controls.ahk file isn't compatible with these tools. Please check that you have entered your version correctly.
	}
; End Startup Sequence
Return


; Hotkeys
f5::
{
ReleaseAll()
RStick(50,50)
LStick(50,50)
IniRead, Rewrites, Rewrites.txt, Count, Count
if (FileExist("Rewrites.txt") = False or Rewrites = "")
	{
	a := 1
	IniWrite, 1, Rewrites.txt, Count, Count
	}
else
	{
	NewRewrites := Rewrites + 1
	IniWrite, %NewRewrites%, Rewrites.txt, Count, Count
	}
reload
return
}

;Functions
RStick(rx="",ry="")
{
global myStick
global vJoyInterface
global lastX
global lastY
global lastRX
global lastRY
if (RX = "")
	{
	RX = %lastRX%
	}
if (RY = "")
	{
	RY = %lastRY%
	}
lastRX = %RX%
lastRY = %RY%
myStick.SetAxisByName(vJoyInterface.PercentTovJoy(RX),"RX")
myStick.SetAxisByName(vJoyInterface.PercentTovJoy(RY),"RY")
return


}
LStick(x="",y="")
{
global myStick
global vJoyInterface
global lastX
global lastY
if (x = "")
	{
	x = %lastX%
	}
if (y = "")
	{
	y = %lastY%
	}
lastX = %X%
lastY = %Y%
myStick.SetAxisByName(vJoyInterface.PercentTovJoy(x),"x")
myStick.SetAxisByName(vJoyInterface.PercentTovJoy(Y),"Y")
return
}

Cross()
{
global myStick
a = getFrame()
myStick.SetBtn(1,1)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,1)
return
}

Square()
{
global myStick
a = getFrame()
myStick.SetBtn(1,2)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,2)
return
}
Circle()
{
global myStick
a = getFrame()
myStick.SetBtn(1,3)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,3)
return
}
Triangle()
{
global myStick
a = getFrame()
myStick.SetBtn(1,4)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,4)
return
}
DUp()
{
global myStick
a = getFrame()
myStick.SetBtn(1,5)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,5)
return
}
DDown()
{
global myStick
a = getFrame()
myStick.SetBtn(1,6)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,6)
return
}
DLeft()
{
global myStick
a = getFrame()
myStick.SetBtn(1,7)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,7)
return
}
DRight()
{
global myStick
a = getFrame()
myStick.SetBtn(1,8)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,8)
return
}
R1()
{
global myStick
a = getFrame()
myStick.SetBtn(1,9)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,9)
return
}
R2()
{
global myStick
a = getFrame()
myStick.SetBtn(1,10)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,10)
return
}
R3()
{
global myStick
a = getFrame()
myStick.SetBtn(1,11)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,11)
return
}
L1()
{
global myStick
a = getFrame()
myStick.SetBtn(1,12)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,12)
return
}
L2()
{
global myStick
a = getFrame()
myStick.SetBtn(1,13)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,13)
return
}
L3()
{
global myStick
a = getFrame()
myStick.SetBtn(1,14)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,14)
return
}
Select()
{
global myStick
a = getFrame()
myStick.SetBtn(1,15)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,15)
return
}
Start()
{
global myStick
a = getFrame()
myStick.SetBtn(1,16)
waitFrames(1)
while (getframe() = a)
{
}
myStick.SetBtn(0,16)
return
}


HoldCross()
{
global myStick
myStick.SetBtn(1,1)
return
}
ReleaseCross()
{
global myStick
myStick.SetBtn(0,1)
return
}
HoldSquare()
{
global myStick
myStick.SetBtn(1,2)
return
}
ReleaseSquare()
{
global myStick
myStick.SetBtn(0,2)
return
}
HoldCircle()
{
global myStick
myStick.SetBtn(1,3)
return
}
ReleaseCircle()
{
global myStick
myStick.SetBtn(0,3)
return
}
HoldTriangle()
{
global myStick
myStick.SetBtn(1,4)
return
}
ReleaseTriangle()
{
global myStick
myStick.SetBtn(0,4)
return
}
HoldDUp()
{
global myStick
myStick.SetBtn(1,5)
return
}
ReleaseDUp()
{
global myStick
myStick.SetBtn(0,5)
return
}
HoldDDown()
{
global myStick
myStick.SetBtn(1,6)
return
}
ReleaseDDown()
{
global myStick
myStick.SetBtn(0,6)
return
}
HoldDLeft()
{
global myStick
myStick.SetBtn(1,7)
return
}
ReleaseDLeft()
{
global myStick
myStick.SetBtn(0,7)
return
}
HoldDRight()
{
global myStick
myStick.SetBtn(1,8)
return
}
ReleaseDRight()
{
global myStick
myStick.SetBtn(0,8)
return
}
HoldR1()
{
global myStick
myStick.SetBtn(1,9)
return
}
ReleaseR1()
{
global myStick
myStick.SetBtn(0,9)
return
}
HoldR2()
{
global myStick
myStick.SetBtn(1,10)
return
}
ReleaseR2()
{
global myStick
myStick.SetBtn(0,10)
return
}
HoldR3()
{
global myStick
myStick.SetBtn(1,11)
return
}
ReleaseR3()
{
global myStick
myStick.SetBtn(0,11)
return
}
HoldL1()
{
global myStick
myStick.SetBtn(1,12)
return
}
ReleaseL1()
{
global myStick
myStick.SetBtn(0,12)
return
}
HoldL2()
{
global myStick
myStick.SetBtn(1,13)
return
}
ReleaseL2()
{
global myStick
myStick.SetBtn(0,13)
return
}
HoldL3()
{
global myStick
myStick.SetBtn(1,14)
return
}
ReleaseL3()
{
global myStick
myStick.SetBtn(0,14)
return
}
HoldSelect()
{
global myStick
myStick.SetBtn(1,15)
return
}
ReleaseSelect()
{
global myStick
myStick.SetBtn(0,15)
return
}
HoldStart()
{
global myStick
myStick.SetBtn(1,16)
return
}
ReleaseStart()
{
global myStick
myStick.SetBtn(0,16)
return
}

ReleaseDPad()
{
ReleaseDLeft()
ReleaseDRight()
ReleaseDUp()
ReleaseDDown()
return
}

ReleaseAll()
{
ReleaseCircle()
ReleaseCross()
ReleaseDDown()
ReleaseDLeft()
ReleaseDRight()
ReleaseDUp()
ReleaseL1()
ReleaseL2()
ReleaseL3()
ReleaseR1()
ReleaseR2()
ReleaseR3()
ReleaseSelect()
ReleaseStart()
ReleaseTriangle()
ReleaseSquare()
LStick(50,50)
RStick(50,50)
return
}





waitFrames(x)
{
Loop %X%
{
global waitTime
global frameAddress
global Base
global PCSX2Version
Timer = %waitTime%
Timer = %Timer%
sleep Timer / 2
p2 := getMemoryAddress()
CFrame := % p2
Send {Space}
	sleep Timer * 2
Loop {
p2 := getMemoryAddress()
if (p2-CFrame=1)
	break
}
}
return
}

getMemoryAddress()
{
global frameAddress
global Base
global PCSX2Version
Switch [%PCSX2Version%]
{
140:
	temp := ReadMemory(Base + 0x831200, "ahk_exe pcsx2.exe")
1701258:
	temp := ReadMemory(0x0ae1955c, "ahk_exe pcsx2.exe")
1701509:
	temp := ReadMemory(Base + 0xAB3A2A8, "ahk_exe pcsx2.exe")
}
return temp
}
 


getFrame()
{
global frameAddress
global Base
p2 := ReadMemory(Base + frameAddress, "ahk_exe pcsx2.exe")
return %p2%
}
getProcessBaseAddress(WindowTitle, windowMatchMode := "3")    ;WindowTitle can be anything ahk_exe ahk_class etc
{
    if (windowMatchMode && A_TitleMatchMode != windowMatchMode)
    {
        mode := A_TitleMatchMode ; This is a string and will not contain the 0x prefix
        StringReplace, windowMatchMode, windowMatchMode, 0x ; remove hex prefix as SetTitleMatchMode will throw a run time error. This will occur if integer mode is set to hex and matchmode param is passed as an number not a string.
        SetTitleMatchMode, %windowMatchMode%    ;mode 3 is an exact match
    }
    WinGet, hWnd, ID, %WindowTitle%
    if mode
        SetTitleMatchMode, %mode%    ; In case executed in autoexec
    if !hWnd
        return ; return blank failed to find window
    else return DllCall( A_PtrSize = 4
                        	? "GetWindowLong"
                        	: "GetWindowLongPtr"
                        , "Ptr", hWnd
                        , "Int", -6
                        , "Int64") ; Use Int64 to prevent negative overflow when AHK is 32 bit and target process is 64bit
     ; If DLL call fails, returned value will = 0
}

ReadMemory(MADDRESS,PROGRAM)
{
winget, pid, PID, %PROGRAM%
 
VarSetCapacity(MVALUE,4,0)
ProcessHandle := DllCall("OpenProcess", "Int", 24, "Char", 0, "UInt", pid, "UInt")
DllCall("ReadProcessMemory","UInt",ProcessHandle,"UInt",MADDRESS,"Str",MVALUE,"UInt",4,"UInt *",0)
 
Loop 4
result += *(&MVALUE + A_Index-1) << 8*(A_Index-1)
 
return, result  
}
HexToFloat(x)
{
   Return (1-2*(x>>31)) * (2**((x>>23 & 255)-150)) * (0x800000 | x & 0x7FFFFF)
}

Bin(x){
	return (x>>1 ? Bin(x>>1):"")x&1 
}
Dec(x){
	return (StrLen(x)>1 ? Dec(SubStr(x,1,-1))<<1:0)|SubStr(x,0)
}

hasValue(haystack, needle) {
    if(!isObject(haystack))
        return false
    if(haystack.Length()==0)
        return false
    for k,v in haystack
        if(v==needle)
            return true
    return false
}





;======CUSTOM COMMANDS=========;
;Ratchet and Clank 1

ILJ(x,y)
{
ReleaseAll()
waitFrames(1)
Loop %X%
{
HoldR1()
DLeft()
ReleaseAll()
waitFrames(y)
HoldR2()
DRight()
ReleaseAll()
waitFrames(y)
}
return
}


;Sly Cooper and the Thievius Raccoonus

Vault(a,b,c,s="")
{
ReleaseAll()
x := 19
y := 30
z := c
waitFrames(88)
if (a < 6)
	{
	Loop %a%
	{
	DUp()
	waitFrames(x)
	}
	}
if (a >= 6)
	{
	a := 10 - a
	Loop %a%
	{
	DDown()
	waitFrames(x)
	}
	}
DRight()
waitFrames(y)
if (c = 1 or c = 9)
	{
	if (b < 6 )
		{
		b2 := b - 1
		Loop %b2%
		{
		DUp()
		waitFrames(x)
		}
		}
	if (b >= 6)
		{
		b2 := 9 - b
		Loop %b2%
		{
		DDown()
		waitFrames(x)
		}
		}
	Reload()
	if (b < 6 )
		{
		b2 := b - 1
		Loop 1
		{
		DUp()
		waitFrames(x)
		}
		}
	if (b >= 6)
		{
		b2 := 9 - b
		Loop 1
		{
		DDown()
		waitFrames(x)
		}
		}
	}
else
	{
	if (b < 6 )
		{
		b2 := b
		Loop %b2%
		{
		DUp()
		waitFrames(x)
		}
		}
	if (b >= 6)
		{
		b2 := 10 - b
		Loop %b2%
		{
		DDown()
		waitFrames(x)
		}
		}
	}
DRight()
if (c = 2 or c = 8)
	{
	if (s = "L")
		{
		Reload()
		}
	}
waitFrames(y)
if (c = 2 or c = 8)
	{
	if (c < 6 )
		{
		Loop %c%
		{
		DUp()
		waitFrames(x)
		}
		}
	if (c >= 6)
		{
		c2 := 10 - c
		Loop %c2%
		{
		DDown()
		waitFrames(x)
		}
		}
	}
else
	{
	if (c < 6 )
		{
		c2 := c - 2
		Loop %c%
		{
		DUp()
		waitFrames(x)
		}
		if (s = "L")
			{
			Reload()
			}
		Loop 2
		{
		DUp()
		waitFrames(x)
		}
		}
	if (c >= 6)
		{
		c2 := 8 - c
		Loop %c2%
		{
		DDown()
		waitFrames(x)
		}
		if (s = "L")
			{
			Reload()
			}
		Loop 2
		{
		DDown()
		waitFrames(x)
		}
		}
	}
waitFrames(40)
return
}

MPS(d="",x="")
{
if (d = "L")
	{	
	Loop %x%
		{
		RStick(100,81)
		LStick(50,0)
		waitFrames(2)
		LStick(50,100)
		waitFrames(1)
		}
	}
if (d = "R")
	{
	Loop %x%
		{
		RStick(100,19)
		LStick(50,100)
		waitFrames(2)
		LStick(50,0)
		waitFrames(1)
		}
	}
if (d = "F")
	{
	Loop %x%
		{
		HoldR3()
		LStick(50,100)
		waitFrames(1)
		ReleaseR3()
		LStick(50,0)
		waitFrames(1)
		}
	}
return
}

ReLoad()
{
Start() ;1
DDown()
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(2)
Cross() ;Options Menu Starts
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(2)
DDown()
waitFrames(2)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(2)
Cross() ;Load Menu Starts
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
waitFrames(2)
DDown()
waitFrames(2)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
DUp()
waitFrames(1)
Cross() ;Load Selected
return
}
