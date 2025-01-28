Late Binding: VBScript's late binding can lead to runtime errors if an object or method doesn't exist.  This is especially problematic when dealing with COM objects or external libraries where version compatibility isn't guaranteed.  For example, trying to call a method on an object that isn't properly initialized or doesn't support that method will throw an error at runtime, not during compilation.  
```vbscript
Dim objFileSystem
Set objFileSystem = CreateObject("Scripting.FileSystemObject")
' ... some code ...
' This line will cause a runtime error if objFileSystem was not properly set.
Dim fileExists = objFileSystem.FileExists("nonexistent.txt")
```