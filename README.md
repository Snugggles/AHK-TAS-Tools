# About
These are a set of AutoHotkey Scripts that allow you to create a string of Controller Inputs, mainly used for creating Tool-Assisted Speedruns on Emulators.
The original project was just for use with the PS2 Emulator, PCSX2, as it had a lot of desyncing issues, as well as issues wiht Input Recording functionality, but I have attempted to generalize it a bit to make it work for other Emulators as well.
The way these Scripts function are by using a Virtual Controller thanks to VJoy to emulate Controller Inputs, giving insctructions so the Controller Inputs are set to whatever is desired for a specific frame, then using the Emulator's Frame Advancing feature it steps forward a frame. After that, it goes to the next instruction of Inputs, and carries on until the end of the Script is reached.
With the way the Scripts work, each version of each Emulator needs its own Memory Address settings, as the Scripts read what the current frame is to know when to move on to the next Inputs. Most Updates to the Emulators will change where this address is, so only a limited number of Emulators and Versions are currently compatible from a fresh Download.
It's always recommended to use the most up-to-date stable Version of any Emulator, outside of specific needs. Below is a table of current Versions for Emulators that I've personally made work in this build of the Scripts:

| PCSX2 | Dolphin|
|-------|--------|
|1.7.4117|5.0-18498|
|1.7.3902|5.0-17995|
|1.7.0-1947|--------|
|1.7.0-1509|--------|
|1.7.0-1258|--------|
|1.4.0-rr|--------|


## Default Hotkeys

Insert - Plays the Script that you have open.

F5 - Reloads the Script that you have open.

ScrollLock - Pauses the Script midway through.

` (Grave) - Tells you how many Frames have been Advanced during the Script so far.


## Prerequisites

Any Text Editor - I recommend Notepad++, but any Text Editor will work. Use whatever is most comfortable for you.

AutoHotkey - This is the language that the Scripts are written in. I'm unsure if the Version that you have installed matters, but this link is the exact Version that I use: https://www.filepuma.com/download/autohotkey_1.1.30.03-21959/

VJoy - This is used to create an Emulated Controller, normally used to map Keyboard Presses to Controller Inputs. Once again, I'm unsure if Version matters, but the link provided is the exact Version I have installed: https://sourceforge.net/projects/vjoystick/files/Beta%202.x/2.1.8.38-190417/vJoySetup.exe/download

Emulator - Your Version of Emulator is required to have Frame-Advancing capabilities, ideally along-side multiple Savestates to make testing easier. The Table above the Prerequisites shows which Emulators already work with the Scripts - I'll be making a Tutorial Video to show how to add more Versions.

## Setup

Once you have downloaded and installed the Prerequisites, there's just a small amount of setup required. 

AutoHotkey - Once installed, that's all you need to do for it to work correctly.

VJoy - Run 'Configure VJoy' to open the Settings Window for the Virtual Controllers. Make Sure 'Enable VJoy' is selected in the bottom-left.
The Scripts only emulate one Controller currently, so you only need to have one Virtual Controller. Select the Tab labelled '1,' have all Axes boxes checked except for 'Slider' and 'Dial/Slider2,' set the Number of Buttons to 16, and set POV Hat Switch to 'Continuous' and to 0. Hit Apply when done.

Emulator - You will have to set up the Controllers in your Emulator. Ideally, your Emulator will have some kind of Automatic Mapping function. If it doesn't, or if the Automatic Mapping is incorrect, follow the Video that I shall make to set it up.

Script Files - Keep them all in the same Folder on your Computer. For changing what Emulator and Version you are using, you need to open up 'Controls.ahk. in your Text Editor to change some settings. 

## Usage

Supplied in the Files here is a Blank Script. When you start a new Project or a new Segment of a Project, copy and paste this Blank Script file to create a duplicate, then Rename it however you wish - I personally name it "[xxx] - [Segment].ahk", where [xxx] is the Segment Number, and [Segment] is the name of the Segment of the Project, e.g. "001 - Paris to Hideout.ahk" was the first Segment of the Sly Cooper Any% TAS.

Inside this Script file is where you will write out your Inputs. There are 9 "Phase" Commands as default, which I use to make a Segment into smaller Segments, as well as a "Stitch" Command. You can ignore the "Stitch" Command if you wish, and just write the Inputs into any of the "Phases" Commands, but I use the "Stitch" Command to test small amounts of Inputs before moving them into a Phase, making it easier to test various Inputs from what would be in the middle of a Phase.

To Enable or Disable a Phase Command from being read and played through, remove or add a semi-colon ; at the front of that Phase Command in the ;-------Phase Selection-------; section of the Script.

Within the Phase or Stitch Commands in the ;-------Phase Editing-------; section of the Script is where you should put your Inputs. I'll run through an example of what I would do.

Once I have the Savestate that I want to start from, I make a backup of the Savestate, in case it gets overwritten accidentally. I will start writing my inputs into Stitch(), then move them into Phase1 once they are correct, which look like this as default:
```
Phase1()
{
ReleaseAll()
return
}

Stitch()
{
ReleaseAll()
return
}
```
If all I wanted to do for this Phase was to press the Start button, I would input that as:
```
Phase1()
{
ReleaseAll()
return
}

Stitch()
{
Start()
ReleaseAll()
return
}
```
Carrying on, imagining that Start opened the Pause Menu, and imagining that I could navigate it immediately, I could input my Menu Movements after that:
```
Phase1()
{
ReleaseAll()
return
}

Stitch()
{
Start()
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
Cross()
ReleaseAll()
return
}
```
This would alternate between pressing the DPad Down button  for a frame and then pressing nothing on the following frame to move down the Pause Menu, then selecing an option with the Cross button.

Once I'm ready to test my inputs, I will pause my Emulator, load my Savestate, reload the Script, then play the Script. If the outcome of the inputs is not what I want, then I can edit them as I see fit. If it works, then I can make a new Savestate, then move all of my inputs from the Stitch Command to the Phase1 Command:
```
Phase1()
{
Start()
DDown()
waitFrames(1)
DDown()
waitFrames(1)
DDown()
Cross()
ReleaseAll()
return
}

Stitch()
{
ReleaseAll()
return
}
```
Then I carry on from the new Savestate in the Stitch Command again, repeating the steps above once I have my desired outcome.
