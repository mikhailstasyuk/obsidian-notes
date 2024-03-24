Set objFSO = CreateObject("Scripting.FileSystemObject")
strScriptPath = objFSO.GetParentFolderName(WScript.ScriptFullName)
strBatchFile = strScriptPath & "\autocommit.bat"

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run Chr(34) & strBatchFile & Chr(34), 0
Set WshShell = Nothing