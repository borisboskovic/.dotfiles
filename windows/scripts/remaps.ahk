#Include, desktop_switcher.ahk

<#e::
    if WinExist("Double Commander")
    {
        WinActivate
    }
    Else
    {
        Run, "C:\Program Files\Double Commander\doublecmd.exe"
    }
Return

<#1::go_to_desktop(1)
<#2::go_to_desktop(2)
<#3::go_to_desktop(3)
<#4::go_to_desktop(4)
<#5::go_to_desktop(5)
<#6::go_to_desktop(6)
<#7::go_to_desktop(7)
<#8::go_to_desktop(8)
<#9::go_to_desktop(9)
<#+q::destroy_desktop()

<#q::Send, <!{F4}
