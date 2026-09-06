#tag Class
Protected Class WTEC_UpDownButton
Inherits DesktopUpDownArrows
	#tag Event
		Sub DownPressed()
		  // Stunden runter durch pressed Event
		  
		  Var t As Integer
		  
		  If SourceTextfield = Nil Then Return
		  
		  #Pragma BreakOnExceptions False
		  Try
		    t  = SourceTextfield.TimeValue
		  Catch InvalidArgumentException
		    // Textfeld leer
		    Return
		  End Try
		  #Pragma BreakOnExceptions True
		  
		  t = t - 1
		  
		  Select Case SourceMode
		    
		  Case WTEC_UpDownButton.Modes.Hour
		    If t< 0 Then t = 23
		  Case Modes.Minute, Modes.Second
		    If t < 0 Then t = 59
		  Else
		    Return
		  End Select
		  
		  
		  SourceTextfield.TimeValue = t
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(x As Integer, y As Integer, deltaX As Integer, deltaY As Integer) As Boolean
		  // UpDown Button Stunden Bedienung mit Wheel
		  
		  If WheelEnabled Then
		    If SourceTextfield = Nil Then Return True
		    
		    Var t As Integer
		    #Pragma BreakOnExceptions False
		    Try
		      t  = SourceTextfield.TimeValue
		    Catch InvalidArgumentException
		      t = 0
		    End Try
		    #Pragma BreakOnExceptions True
		    
		    If deltay < 0 Then
		      t = t +1
		    ElseIf deltay > 0 Then
		      t = t-1
		    End If
		    
		    
		    Select Case SourceMode
		      
		    Case Modes.Hour
		      If t > 23 Then t = 0
		      If t < 0 Then t = 23
		    Case Modes.Minute, Modes.Second
		      If t < 0 Then t = 59
		      If t > 59 Then t = 0
		    Else
		      Return True
		    End Select
		    
		    
		    
		    SourceTextfield.TimeValue = t
		    
		    Return True
		  Else
		    Return False
		  end if
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub UpPressed()
		  // Stunden hoch durch pressed Event
		  
		  Var t As Integer
		  
		  If SourceTextfield = Nil Then Return
		  
		  t  = SourceTextfield.TimeValue
		  
		  
		  t = t + 1
		  
		  Select Case SourceMode
		  Case Modes.Hour
		    If t > 23 Then t = 0
		  Case Modes.Minute
		    If t > 59 Then t = 0
		  Else
		    Return
		  End Select
		  
		  SourceTextfield.TimeValue = t
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 5365747A656E2064657220506172616D657465722066C3BC722064696573656E20576865656C20427574746F6E2C20616D2062657374656E20696D204F70656E696E67204576656E742061757366C3BC6872656E
		Sub SetParameter(myTextfield as WTEC_TimeTextField, myMode as WTEC_UpDownButton.Modes, EnableWheel as boolean)
		  SourceMode = myMode
		  SourceTextfield = myTextfield
		  WheelEnabled = EnableWheel
		End Sub
	#tag EndMethod


	#tag Note, Name = Funktion
		Ein UpDown Button zum steuern einer Uhrzeit, je nach Modus für Stunden oder Minuten
		Der Wert wird an ein Textfeld weiter gereicht
		
		Zum Scrollen der Uhrzeit kann das Mausrad verwendet werden
		
		Beim Opening wird der Betriebsmodus über den Event GetMode festgelegt, wenn der Event nicht bedient wird, funktioniert die Steuerung über das Mausrad nicht.
		
		Über den Event GetTetfield wird das zugehörige Textfeld festgelegt, welches durch diesen Button gesteuert wird, wenn der Event nicht bedient wird, hat dieser Button keine Funktion.
		
		Da diese Funktionalität an mehreren Stellen im Programm gebraucht wird, wurde diese Klasse geschrieben
		
		
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private SourceMode As WTEC_UpDownButton.Modes = WTEC_UpDownButton.Modes.Invalid
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 5465787466656C64206461732062656469656E742077697264
		Private SourceTextfield As WTEC_TimeTextField
	#tag EndProperty

	#tag Property, Flags = &h21
		Private WheelEnabled As boolean = true
	#tag EndProperty


	#tag Enum, Name = Modes, Type = Integer, Flags = &h0, Description = 576F66C3BC7220646572205570446F776E20427574746F6E2076657277656E6465742077697264
		Invalid
		  Second
		  Hour
		Minute
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="PanelIndex"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mIndex"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mInitialParent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_mPanelIndex"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Active"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabStop"
			Visible=true
			Group="Focus Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="14"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="23"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
