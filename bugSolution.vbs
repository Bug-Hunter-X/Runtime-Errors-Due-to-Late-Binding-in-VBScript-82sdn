Early Binding or Proper Error Handling: The solution involves either using early binding (declaring object types explicitly) or implementing robust error handling.  Early binding improves performance and allows for compile-time error checking, but requires explicit type declarations.  Error handling allows the script to gracefully handle situations where objects or methods are missing. 
```vbscript
On Error Resume Next  ' Enable error handling
Dim objFileSystem, fileExists
Set objFileSystem = CreateObject("Scripting.FileSystemObject")
If Err.Number <> 0 Then
  WScript.Echo "Error creating FileSystemObject: " & Err.Description
  Err.Clear
  Exit Sub
End If
fileExists = objFileSystem.FileExists("nonexistent.txt")
If Err.Number <> 0 Then
  WScript.Echo "Error checking file existence: " & Err.Description
  Err.Clear
End If
Set objFileSystem = Nothing
```