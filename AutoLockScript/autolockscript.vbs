Dim skipAction, password
password = "frostneekisaveryhandsomeguy"
skipAction = False

' Create FileSystemObject
Set objFSO = CreateObject("Scripting.FileSystemObject")

Do
    ' Check if a specific file exists in the file explorer
    Dim folderPath, filePath
    folderPath = "E:\Heck" ' Replace this with the actual path to your folder
    fileName = "antivirus.vbs" ' Replace this with the actual file name

    If objFSO.FileExists(objFSO.BuildPath(folderPath, fileName)) Then
        WScript.Echo "File exists in the file explorer. Automatically running the action..."
        Set objShell = CreateObject("WScript.Shell")
        objShell.Run "rundll32.exe user32.dll,LockWorkStation"
        WScript.Quit
    End If

    ' If the file doesn't exist, proceed with the user input
    userInput = InputBox("Do you want to lock the computer? (Type 'yes' or 'no')", "User Input")

    If LCase(userInput) = "yes" Then
        WScript.Echo "Locking the computer..."
        Set objShell = CreateObject("WScript.Shell")
        objShell.Run "rundll32.exe user32.dll,LockWorkStation"
        Exit Do
    ElseIf LCase(userInput) = "no" Then
        WScript.Echo "You chose: No"
        ' Additional actions for 'no' can be added here if needed
    ElseIf userInput = password Then
        WScript.Echo "Someone figured out the password. Skipping action."
        skipAction = True
    Else
        WScript.Echo "Invalid input. Putting the computer to sleep..."
        Set objShell = CreateObject("WScript.Shell")
        objShell.Run "shutdown.exe /h /f"
        WScript.Quit
    End If
Loop While Not skipAction
