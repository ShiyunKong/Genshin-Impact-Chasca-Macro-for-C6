#Requires AutoHotkey v2.0
#SingleInstance Force

g_ShouldStop := false

XButton1:: {
    global g_ShouldStop := false
    
    ; New E key press added here (before all loops)
    Send("{e Down}")
    Sleep(50)
    Send("{e Up}")
    Sleep(20)
    
    Loop 11 {
        if (g_ShouldStop) {
            g_ShouldStop := false
            break
        }
        
        ; Mouse actions
        Click("Down")
        Sleep(170)
        Click("Up")
        Sleep(170)
        Click("Down")
        Sleep(60)
        Click("Up")
	Sleep(100)
        Click("Down")
        Sleep(285)
        Click("Up")
        Sleep(100)
	Click("Down")
        Sleep(20)
        Click("Up")

        
        ; Keyboard actions
        Send("{Shift Down}")
        Sleep(20)
        Send("{Shift Up}")
        
        Send("{s Down}")
        Sleep(50)
        Send("{s Up}")
        Sleep(20)
        
        Send("{w Down}")
        Sleep(50)
        Send("{w Up}")
        Sleep(120)

    }
}

MButton:: {  ; Middle Mouse Button to interrupt
    global g_ShouldStop := true
}