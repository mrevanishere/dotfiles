
# dotfiles
A place to hold all my settings for all programs / os / hardware that I use. Feel free to use.

# Content


-  [General](#general)

-  [Keyboard Layout](#layout)

-  [Ubuntu](#ubuntu)

-  [Windows](#windows)

-  [VSCode](#vscode)

-  [Station](#station)

-  [MacOS](#macos)

-  [Anki](#anki)

-  [Vim](#vim)


### Layout

My keyboard layout setup with QMK.

...

### Ubuntu  

[https://github.com/utkuufuk/ubuntu-on-steroids#other-tools](https://github.com/utkuufuk/ubuntu-on-steroids#other-tools)

sudo apt intsall net-tools

sudo apt install curl

sudo apt install gdeb

sudo apt install python3-pip

	[https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html](https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html)

	```cpp
	bash Anaconda3-4.3.0-Linux-x86_64.sh; export PATH=~/anaconda3/bin:$PATH
	```

	[https://askubuntu.com/questions/885052/no-such-file-or-directory-encountered-trying-to-install-anaconda](https://askubuntu.com/questions/885052/no-such-file-or-directory-encountered-trying-to-install-anaconda)

sudo apt install bspwm

	also need something like PowerTools FancyZones (better window control)

	also need something like PowerRename

sudo add-apt-respository ppa:obsproject/obs-studio

sudo apt install obs-studio

sudo apt install git

	Generate SSH key (or reuse existing key

	Add SSH Key to Github adccount (skip if using existing key)

Gnome Theme

	sudo add-apt-repository -u ppa:snwh/ppa

	sudo apt update

	sudo apt install gnome-tweak-tool

Settings

	Disable smooth scrolling (fix mouse scroll in general)

	gsettings set org.gnome.desktop.interface enable-animations false

	Turn off middle click paste
	
	Nightlight  
  
	adawaita dark  
  
	desktop icons  
	
	icon size: smallest

~~Vim-Perl-Python-TeX~~

	sudo apt install texlive-latex-extra

	~~sudo apt install texlive-extra-utils~~

	~~sudo apt install perl~~

	~~sudo apt install vim~~
	
VSCode - `sudo snap install code`

Jetbrains

PyCharm

CLion

IDEA

Software

Github Desktop → Dark mode

	wget -qO - [https://packagecloud.io/shiftkey/desktop/gpgkey](https://packagecloud.io/shiftkey/desktop/gpgkey) | sudo apt-key add -; sudo sh -c 'echo "deb [arch=amd64] [https://packagecloud.io/shiftkey/desktop/any/](https://packagecloud.io/shiftkey/desktop/any/) any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'; sudo apt-get update; sudo apt install github-desktop

	Github CLi

Brave

`snap install brave`

Chrome (school/work)

(wine) Notion → Dark mode

Discord

	`snap install discord`

Zoom

snippet / gif software (like sharex)

sudo apt install wine
  
Audio:  
  
	Sound→Output→Digital Output (not analog)  
	  
	sudo apt-get install pavucontrolt  
	  
	pulseaudio -h  
	  
	pulseaudio -k  
  
	alsamixer, F6, lower PCM  
  
  

  
If problems on boot:  
  
	Hold shift while booting  
	  
	CTRL ALT F2 for terminalt  


### General  
~optimize nvidia control panel brightness to raise monitor brightness~

Brave (Chrome, Opera, Edge, Unchromium)

	uBlock Origin

	Settings:

	Addons:

		Vimium

		Vimium C PDF reader

		Video Speed Controller

				Decrease <

				Increase >

				Opacity .35

		ublockorigin

		DfTube

		~~ActivityWebWatcher~~

		WebTimeTracker

		LeohNewTab

		JetBrainsIDE Support

		Imagus

		Multi-Highlight

		AutoTextExpander

		Dark Reader

		Leoh New Tab

		Other

			YomiChan

			AnkiAdder
  
Essential: Git, Notion, Krita, Anki, OBS, QMK
  	  	  
IntelliJ (PyCharm, CLion, IntelliJ IDEA)  
  
	Dracula, Color Scheme: High Contrast  
  
	IdeaVim (see ideavimrc)  
  
	Vim Emulator → `Alt + Z`  
	
	Jupyter
	
Other Programs: Yuzu, Dolphin, JoyToStick, TextShot, VMWare, BlueStacks, GARbro (game extraction), Krita, Putty, WinSCP, , SageMath, Surfshark, VLC, PCSX4, Choco
  
  
### Windows  
MikTeX, gVim , mupdf, SumatraPDF
  


PowerToys

	Fancy Zones
		
	Keyboard Manager
		
		CAPS -> ESC
		
		Menu -> Alt Tab
        
Windows preferences:  
	~[[Change CAPSLOCK to CTRL or ESC or ALT](https://www.howtogeek.com/howto/windows-vista/disable-caps-lock-key-in-windows-vista/)]~
  
	Sound
	
		Equalizer APO  
		  
		Peace  
		  
		Sound -30db  
  
	General Settings
		[turn off automatic file view](https://www.youtube.com/watch?v=t2eN3kq2Dm8)
  
		Japanese IME primary  
	  
		Language Bar Options → turn off ctrl shift and shift alt shortcuts (alt tilde and win space is fine)  
		  
		Sticky Keys Disabled  
		  
		Taskbar - nothing on it  
		  
		Clock: yyyy/mm/dd  
		  
		No clock on Taskbar  
		
		Always give permission as admin (remove request admin permission screen)
		
		Change Langauge Locale → Language → Settings → Change System Locale
  
ShareX (Windows)  
  
	Preferred Shortcuts:  
	  
		(Capture Active Monitor) Save Snip: Alt + Shift + Z  
		  
		Save Snip: Alt + Shift + X  
		  
		Save Vid: Alt + Shift + C  
		
### VSCode

code . (open vscode in current director

[https://github.com/viatsko/awesome-vscode](https://github.com/viatsko/awesome-vscode)

	use jupyter notebooks in vscode

	use jupyter notebooks in pycharm

Python, C++, JS + Node, Jupyter, SQL, md

LaTeX Workshop

	external pdf editor → zathura/sumatra/mupdf

Atom Just Black Theme (easiest to read latex) or Monokai Dimmed
	
	Vscode: Atom Just black for LaTeX, Default Dark for rest

vsc-Conceal

hypersnips or builtinsnips

	if only using builtin snippets: [https://snippet-generator.app/](https://snippet-generator.app/)

	[https://code.visualstudio.com/docs/editor/userdefinedsnippets](https://code.visualstudio.com/docs/editor/userdefinedsnippets)

	[https://github.com/Einlar/latex_snippets/blob/master/hsnips/latex.hsnips](https://github.com/Einlar/latex_snippets/blob/master/hsnips/latex.hsnips)

tabnine

code runner

~~vim~~

	~~→ use vimrc~~

	~~vanilla vimrc (no plugins + conceals?)~~

	~~discord rich presence~~

    
### Station  
  
Chair:  
  
Desk:  
  
CPU: Intel Core it-8500 CPU @3.00 GHzb (6 core), UHD Graphics 630  
  
GPU: EVGA XC RTX 2070, GTX 960 Gigabyte 2GB 
  
Monitor 1: Dell S-Series S2719DGF
  
Monitor 2: Gateway 1920x1200 60Hz  

	Settings: 
	
		* Theme: Cool
		
		* Contrast: 100
		
		* Brightness: 25
		
  
MOBO: MSI Z370 SLI Plus (MS-7B46) 2.0  
  
SSD: (2x) Samsung 970 EVO
  
Headphones: HyperX Cloud  
  
Earphones: Dudios Zeus X  
  
VR:  
  
Consoles: Switch  
  
Controllers: Xbox One, Joy Cons, Switch Pro Controller  
  
Case: Antec GX505 Window SC Mid-Tower Cabinet  
  
RAM: Corsair Vengeance LPX 16 GB (2 x 8 GB) DDR4  
  
PSU: CS850XM Corsair CXM V2 850W 80+ Bronze Certified Semi-modular  
  
HDD:  WD 2.0 TB
  
Ethernet: TP-Link Gigabit PCI Express Adapter  
  
Wifi: Qualcomm Atheros AR938x Wireless Network Adapter  
  
Keyboard: Drop + OKLB Preonic MX Kit V3
  
Mouse: Logitech G600 MMO Mouse  
  
Mousepad: Logitech Hard  
  
Phone: iPhone 12 Pro Max, iPhone 6S Plus  
  
Laptop: Mac Book Pro 2012  
  
Huion Inspiroy Q11K Wireless Graphic Drawing Tablet with 8192 Pressure Sensitivity 

  
### MacOS  
MacTeX
  
Sound Controller  - BackgroundMusic (github)  
  
- Need a sound manager  
  
SYSTEM SETTINGS  
  
	Keyboard  
	  
		smallest possible bottom bar  
		  
		Use as F keys as standard function keys  
  
## Anki Add-ons
Crossed out ones are ones I disabled.
* Anki Easy Mode (mine)
* Advaned Browser
* Anki Simulator
* Anki Connect
* ~Ankimote~
* ~Advanced Card Styles~
* Automatic Scoring
* Always On Top
* ~Anki Habitica for 21~
* BetterSearch
* Batch Editing
* Custom Background Image
* ~Change Order of Review Cards in Regular Decks~
* Card Info During Review
* ~Control Audio Playback Pause Skip backwardsforwards Stop Audio~
* Customize Keyboard Shortcuts
* ~Deck Stats~
* Dancing Baloney
* ~Edit Field During Review~
* Fast cards reposition
* ~HoochieMama Randomize Rev Queue~
* ~Image Occlusion Enhanced for Anki 21 alpha~
* ~Improved Quizlet to Anki 21 Importer~
* Large and Colorful Buttons
* ~Life Drain~
* Migaku Retirement
* ~More Decks Stats and Time Left~
* ~More Overview Stats~
* ~More Overview Stats 21~
* ~Progress Graphs and Stats for Learned and Matured Cards~
* Puppy Reinforcement
* ~Remaining time for Anki 21~
* Reset Card Scheduling
* Reset Ease
* ReviewHeatmap
* Set Font Size
* Speed Focus Mode auto-alert auto-reveal auto-fail
* ~True Retention~
* Zoom 21

### Vim

See [vim-plug](https://github.com/junegunn/vim-plug) to install vim-plug
