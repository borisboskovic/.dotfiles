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
