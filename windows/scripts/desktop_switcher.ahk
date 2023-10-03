#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

get_session_id()
{
    ProcessId := DllCall("GetCurrentProcessId", "UInt")
    DllCall("ProcessIdToSessionId", "UInt", ProcessId, "UInt*", SessionId)
    return SessionId
}

get_VirtualDesktopIDs()
{
    RegRead, DesktopList, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VirtualDesktops, VirtualDesktopIDs
    return DesktopList
}

get_CurrentVirtualDesktop(session_id)
{
    RegRead, CurrentDesktopId, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\%session_id%\VirtualDesktops, CurrentVirtualDesktop
    return CurrentDesktopId
}

get_desktop_array(current_dekstop)
{
    virtual_desktop_ids := get_VirtualDesktopIDs()
    desktop_id_length := StrLen(current_dekstop)
    dekstop_count := Floor(StrLen(virtual_desktop_ids) / desktop_id_length)

    desktop_array := []
    i := 0
    Loop, %dekstop_count%
    {
        Temp := SubStr(virtual_desktop_ids, i*desktop_id_length + 1, desktop_id_length)
        desktop_array.Push(Temp)
        i++
    }

    return desktop_array
}

get_desktop_index(desktop, desktop_array)
{
    current_index := 0
    ; ListVars
    for index, element in desktop_array
    {
        if (desktop = desktop_array[index])
        {
            current_index := index
        }
    }
    return current_index
}

go_to_desktop(target_desktop_index)
{
    current_dekstop := get_CurrentVirtualDesktop(get_session_id())
    desktop_array := get_desktop_array(current_dekstop)

    target_desktop := desktop_array[target_desktop_index]

    if(StrLen(target_desktop) = 32)
    {
        current_desktop_index := get_desktop_index(current_dekstop, desktop_array)
        distance := target_desktop_index - current_desktop_index
        absolute_distance := Abs(distance)

        ; Go left
        if (distance < 0)
        {
            Loop, %absolute_distance%
            {
                Send ^#{Left}
            }
            return
        }

        ; Go right
        if (distance > 0)
        {
            Loop, %absolute_distance%
            {
                Send ^#{Right}
            }
            return
        }
    }
    else
    {
        ; TODO Create new desktop (but only current count + 1)
    }
}
