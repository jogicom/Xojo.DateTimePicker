' 1. Pfad der Projektdatei holen
Dim projectPath As String = ProjectShellPath
Dim shellCommand As String = ""

' 2. Plattform-Weiche für das Host-System
If TargetWin32 Then
  Dim pathParts() As String = projectPath.Split("\")
  If InStr(pathParts(pathParts.LastIndex), ".") > 0 Then
    pathParts.RemoveAt(pathParts.LastIndex)
  End If
  Dim projectFolder As String = String.FromArray(pathParts, "\") + "\"
  
  ' Schreibt den Branch direkt in eine Textdatei im Build-Ordner
  shellCommand = "cd /d """ + projectFolder + """ && git branch --show-current > """ + CurrentBuildLocationNative + "\git_branch.txt"""
Else
  ' === LINUX ODER MACOS ===
  ' Schreibt den Branch in den Linux/Mac Build-Ordner
  shellCommand = "cd $(dirname " + projectPath + ") && git branch --show-current > """ + CurrentBuildLocationNative + "/git_branch.txt"""
End If

' 3. Git-Befehl ausführen (erstellt die Textdatei)
Call DoShellCommand(shellCommand)
