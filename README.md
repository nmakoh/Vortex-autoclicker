# Manual Vortex Download Guide

This guide explains how to use the AutoHotkey script to automatically click the **"Manual Download"** button in Vortex / Wabbajack.

---

## Requirements
- Windows OS
- AutoHotkey v2
- Screen resolution: **1920x1080** (default)

---

## Installation

### Step 1 – Install AutoHotkey v2
Download AutoHotkey v2 from the official website:
https://www.autohotkey.com/v2/

---

### Step 2 – Create or Download the Script

#### Option A: Download ready file
Download the `.ahk` script from this repository.

#### Option B: Create manually
1. Create a new text file.
2. Rename it to for example: `vortex_clicker.ahk`
3. Right-click the file → Open with Notepad
4. Paste the script code.
5. Save the file.

---

### Step 3 – Run the Script
Double-click the `.ahk` file to start it.

You should see an AutoHotkey icon in your system tray.

---

### Step 4 – Launch Wabbajack or Vortex
1. Open **Wabbajack** or **Vortex**.
2. Start installing your modlist.
3. Make sure the program is in fullscreen window mode.

---

### Step 5 – Hotkeys

| Key | Action |
|-----|--------|
| F1  | Start / Stop auto-clicker |
| F2  | Emergency stop |

---

## Configuration (Different Resolution)

If your screen resolution is NOT **1920x1080**, you must manually update button coordinates.

---

### Finding Coordinates (Window Spy)

AutoHotkey installs **Window Spy**.

To open it:
- Right-click AutoHotkey icon in tray
- Click **Window Spy**

---

### How to Capture Coordinates

1. Open Window Spy.
2. Hover your mouse over the **"Manual Download"** button.
3. Look for 'Mouse Postion:'
4. Copy the Screen value.

---

### Update Script Coordinates

Find this line at the top of the script:

```ahk
points := [[833, 639], [833, 742], [833, 677], [833, 994]]
