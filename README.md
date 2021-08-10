These are a set of scripts that enable easy, code-based inputs into the PCSX2 emulator, to help make creating a Tool-Assisted Speedrun for a PS2 game a lot easier.
Each version and build of PCSX2 needs to be manually added to ensure that it works, so currently these scripts are quite limited to the emulator versions they work on.
If you have a specific version that you want these tools to work with, send me a message! The emulator needs to have Frame Advance features, which are only really present in 1.7.0 and forks.
All of the currently compatible versions are:

1.4.0-RR (xTVaser build).

1.7.0-1258.

1.7.0-1509.



Please read me to understand what to do! Follow instructions in the order that they're laid out. It's not exactly necessary, but it will ensure nothing installs weirdly, and that you haven't missed a step.
Here is a video guide explaining how to use these tools: https://www.youtube.com/watch?v=QpP6gfQVXgs


I recommend that you use Notepad++, as it's just vastly better than the original Notepad. You can get Notepad++ from  https://notepad-plus-plus.org/downloads/ Version doesn't matter. 

You will need the following programs:
-PCSX2. You need a version that has frame-advancing and video recording capabibilties. If you're working on a project with multiple people, and you're sharing savestates and scripts, then you NEED to use the same Emulator and BIOS versions, or they won't play nicely. This is the exact emulator that I use, and is what the scripts were built on, and currently is the main supported version.
https://drive.google.com/drive/folders/1Au-wf4CemqZqEpBwQVmEwHooUKsb_Fdb?usp=sharing

-AutoHotkey, this is what the scripts are written in, and is required for them to function. I think version matters with this, though I haven't tested that, but this link is the exact version that I use.
https://www.filepuma.com/download/autohotkey_1.1.30.03-21959/

-vJoy, the exact version that the scripts are made to use. Other versions may not work correctly, but that hasn't been tested. This is what emulates the controller inputs.
https://sourceforge.net/projects/vjoystick/files/Beta%202.x/2.1.8.38-190417/vJoySetup.exe/download

You want to download all the Files along-side this one. Here is a list of them to make sure you have them all:
-Controls.ahk
-CvJoyInterface.ahk
-Blank Script.ahk
-TAS LilyPad Config File.lily

Save these together in the same folder, I'd recommend putting all the TAS stuff that you work on in their own folder, separate to any other emulation stuff.





---------SETUP----------

After installing vJoy, open 'Configure vJoy' and you will be greeted with a window that looks something like this: https://i.gyazo.com/a3a60b1b06343b23852ecfcde4d370d9.png
To get the settings correct, make sure you are on Controller 1 (Blue circle) and Add Device (Red Circle.) Then check all boxes except the last two on the left (Green Circle,) change the number of buttons to 16 (Black Circle,) and the Hat Switches to Continuous and 0 (Also Black Circle.)



Also in PCSX2, in config -> Controllers -> Plugin Settings, you want to select 'Load Bindings' in the bottom right, above the 'OK' button, and then navigate to and select the downloaded TAS LilyPad Config File. Once that's loaded, hit apply, then go into 'Pad 1' at the top, and make sure any controller that you will be using will also work (The Config File should already work with a PS4/PS5 controller, but if you use anything else, you'll have to add your own settings.)

Go into PCSX2, and in Config -> Memory Cards, and make sure that 'Auto-eject memory cards when loading savestates' is unchecked. This is also where you would change any memcards around, if you have a premade one.

The emulator has two versions of savestates, one for each type of boot that you use. When you use a savestate that someone has shared, if the file is preceded with 'BIOS (00000000)' then that means the emulator will have to have been Full Booted. If it's not preceded with that, then it has to have been Fast Booted.
