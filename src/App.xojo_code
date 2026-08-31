#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Sub Opening()
		  #If DebugBuild
		    
		    CheckGitBranch
		    
		  #EndIf
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = C39C6265727072C3BC6674206F6220696E2047697420646965207269636874696765204272616E636820616B74697669657274206973742C20626569206D61696E206F646572206D6173746572206B6F6D6D742048696E77656973
		Sub CheckGitBranch()
		  // Überprüft ob in Git die richtige Branch aktiviert ist, bei main oder master kommt Hinweis
		  
		  Var realBranch As String
		  // Ausgangspunkt ist die ausführbare Datei der App selbst
		  Var exeFile As FolderItem = App.ExecutableFile
		  
		  If exeFile <> Nil Then
		    // 2. Eine Ebene höher gehen (in den Ordner, in dem Git Datei liegt liegt)
		    Var buildFolder As FolderItem = exeFile.Parent
		    
		    If buildFolder <> Nil Then
		      // Die Textdatei im Build-Ordner ansteuern
		      Var f As FolderItem = buildFolder.Child("git_branch.txt")
		      
		      // Falls die Textdatei dort existiert, auslesen
		      If f <> Nil And f.Exists Then
		        Try
		          Dim tis As TextInputStream = TextInputStream.Open(f)
		          realBranch = tis.ReadAll
		          tis.Close
		          
		          // Zeilenumbrüche und Whitespaces säubern
		          realBranch = realBranch.ReplaceAll(Chr(13), "").ReplaceAll(Chr(10), "").Trim
		          
		        Catch e As IOException
		          System.DebugLog("Fehler beim Lesen der Git-Datei: " + e.Message)
		        End Try
		      Else
		        System.DebugLog("git_branch.txt existiert nicht im Ordner: " + buildFolder.NativePath)
		      End If
		    End If
		  End If
		  
		  // === PRÜFUNG AUF MAIN-BRANCH ===
		  If realBranch = "main" Or realBranch = "master" Then
		    // Option A: Ein einfacher, unaufdringlicher Debug-Hinweis für dich beim Entwickeln
		    System.DebugLog("⚠️ WARNUNG: Du arbeitest direkt auf dem MAIN-Branch!")
		    
		    // Option B: Ein fettes Warnfenster, das dich beim Starten der Debug-App wachrüttelt
		    
		    // Wir zeigen das Fenster nur im Debug-Modus (beim Entwickeln), 
		    // damit der echte Kunde später nicht verwirrt wird.
		    Var d As New MessageDialog
		    d.IconType = MessageDialog.IconTypes.Caution
		    d.Title = "Achtung: Main-Branch aktiv!"
		    d.Message = "Du befindest dich gerade auf dem '" + realBranch + "'-Branch."
		    d.Explanation = "Es wird dringend empfohlen, für Änderungen einen neuen Developer-Branch zu erstellen, um unabsichtliche Commits auf main zu verhindern."
		    d.ActionButton.Caption = "Verstanden"
		    
		    // Dialog anzeigen (gibt den Fokus erst nach Klick frei)
		    Call d.ShowModal
		    
		  End If
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
