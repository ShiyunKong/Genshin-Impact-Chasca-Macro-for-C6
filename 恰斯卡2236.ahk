#Requires AutoHotkey v2.0
#SingleInstance Force

; Global variable to track if sequence should be interrupted
g_InterruptSequence := false

XButton1::  ; Back side mouse button to start the sequence
{
    global g_InterruptSequence
    g_InterruptSequence := false
    
    ; Run the sequence with interrupt checks between each step
    if (!g_InterruptSequence) {
        Send("{e down}")
        Sleep(10)
        Send("{e up}")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(520)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(1300)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(770)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(980)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(1300)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(770)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(980)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(1300)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(770)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(980)
        Click("up")
        Sleep(5)
    }
    
    if (!g_InterruptSequence) {
        Click("down")
        Sleep(510)
        Click("up")
    }
}

; Middle mouse button to interrupt the sequence
MButton::
{
    global g_InterruptSequence
    g_InterruptSequence := true
    ; Send a mouse button up in case the sequence was holding it down
    Click("up")
}