#!/bin/sh

set -e

cat << 'EOF' > mnt/etc/Keyboard.ini
[Mapping]
Keymaps=de,en-gb
Keymap=de
EOF

cat << 'EOF' > mnt/etc/WindowServer.ini
[Theme]
Name=Default

[Screens]
MainScreen=0

[Screen0]
Mode=Device
Device=/dev/gpu/connector0
Left=0
Top=0
Width=2256
Height=1504
ScaleFactor=1

[Fonts]
Default=Katica 10 400 0
WindowTitle=Katica 10 700 0
FixedWidth=Csilla 10 400 0

[Mouse]
AccelerationFactor=1.0
ScrollStepSize=4
CursorTheme=Default
ButtonsSwitched=false

[Graphics]
OverlayRectShadow=/res/graphics/overlay-rect-shadow.png

[Input]
DoubleClickSpeed=250

[Background]
Mode=stretch

[Applet]
Order=Audio,WorkspacePicker,CPUGraph,MemoryGraph,NetworkGraph,Network,ClipboardHistory,Keymap

[Workspaces]
Rows=1
Columns=1
EOF

cat << 'EOF' > mnt/home/anon/.config/Terminal.ini
[Startup]
Command=fortune && Shell
[Terminal]
ShowScrollBar=true
MaxHistorySize=4096
[Window]
Opacity=238
Bell=Visible
ColorScheme=Default
EOF

cat << 'EOF' > mnt/home/anon/.config/SystemMonitor.ini
[Monitor]
Frequency=1
EOF

cat << 'EOF' > mnt/home/anon/.config/Taskbar.ini
[QuickLaunch]
Browser=Browser.af
Terminal=Terminal.af
FileManager=FileManager.af
Presenter=Presenter.af
PixelPaint=PixelPaint.af
EOF

cat << 'EOF' > mnt/home/anon/.config/FileManager.ini
[DirectoryView]
ShowDotFiles=true
ViewMode=Icon
EOF

cat << 'EOF' > mnt/home/anon/.config/Browser.ini
[Preferences]
ShowBookmarksBar=true
EnableContentFilters=true
CloseDownloadWidgetOnFinish=false
SearchEngine=https://www.ecosia.org/search?q={}
ColorScheme=auto
Home=https://entropia.de/GPN21
EOF

cat << 'EOF' > mnt/home/anon/.config/AudioApplet.ini
[Applet]
ShowPercent=true
EOF

cat << 'EOF' > mnt/etc/timezone
Europe/Berlin
EOF
