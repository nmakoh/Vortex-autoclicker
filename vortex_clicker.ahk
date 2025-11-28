#Requires AutoHotkey v2

; Point coordinates
points := [[833, 639], [833, 742], [833, 677], [833, 994]]

; Color that means the button can be clicked
expectedColor := 0x545458

isRunning := false  ; global switch for auto-clicker

F1:: {
    global isRunning
    isRunning := !isRunning
    MsgBox("Auto-clicker " (isRunning ? "ENABLED" : "DISABLED"))

    while isRunning {
        for index, point in points {
            X := point[1]
            Y := point[2]

            ; Move cursor to point
            MouseMove(X, Y, 10)

            Sleep(500)  ; wait for hover color change

            ; Read pixel color after hover
            color := PixelGetColor(X, Y, "RGB")
            ToolTip("Point " index ": " color)

            if (color = expectedColor) {
                Click()
                ; Block input for safety
                BlockInput("On")
                Sleep(6000)
                BlockInput("Off")
            }
        }
        Sleep(500)
    }
    ToolTip("")
}

F2:: {
    global isRunning
    isRunning := false
    ToolTip("")
    MsgBox("Auto-clicker DISABLED")
}
