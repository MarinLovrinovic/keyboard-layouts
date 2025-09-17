^!k:: {
    if WinExist("KMONAD_CONSOLE") {
        WinActivate("KMONAD_CONSOLE")
        Send("^c")
        Send("^c")
        Sleep(100)
    } else {
        Sleep(200)
        Run('cmd.exe /c title KMONAD_CONSOLE && kmonad "C:\Projects\keyboard-layouts\laptop_layout-win.kbd"', , "Min")
        Sleep(200)
    }
}
