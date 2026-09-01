#tag Class
Protected Class WTEC_UpDownButton
Inherits DesktopUpDownArrows
	#tag Event
		Sub DownPressed()
		  // Stunden runter durch pressed Event
		  
		  Var t As Integer
		  
		  If myTextfield = Nil Then Return
		  
		  #Pragma BreakOnExceptions False
		  Try
		    t  = Integer.FromString(myTextfield.Text)
		  Catch InvalidArgumentException
		    // Textfeld leer
		    Return
		  End Try
		  #Pragma BreakOnExceptions True
		  
		  t = t - 1
		  
		  Select Case myMode
		    
		  Case WTEC_UpDownButton.Modes.Hour
		    If t< 0 Then t = 23
		  Case WTEC_UpDownButton.Modes.Minute
		    If t < 0 Then t = 59
		  Else
		    Return
		  End Select
		  
		  
		  myTextfield.Text = t.ToString
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(x As Integer, y As Integer, deltaX As Integer, deltaY As Integer) As Boolean
		  // UpDown Button Stunden Bedienung mit Wheel
		  
		  If myTextfield = Nil Then Return True
		  
		  Var t As Integer
		  #Pragma BreakOnExceptions False
		  Try
		    t  = Integer.FromString(myTextfield.Text)
		  Catch InvalidArgumentException
		    t = 0
		  End Try
		  #Pragma BreakOnExceptions True
		  
		  If deltay < 0 Then
		    t = t +1
		  ElseIf deltay > 0 Then
		    t = t-1
		  End If
		  
		  
		  Select Case myMode
		    
		  Case WTEC_UpDownButton.Modes.Hour
		    If t > 23 Then t = 0
		    If t < 0 Then t = 23
		  Case WTEC_UpDownButton.Modes.Minute
		    If t < 0 Then t = 59
		    If t > 59 Then t = 0
		  Else
		    Return True
		  End Select
		  
		  
		  
		  myTextfield.Text = t.ToString
		  
		  Return True
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Opening()
		  myMode = RaiseEvent GetMode
		  myTextfield = RaiseEvent GetTextfield
		End Sub
	#tag EndEvent

	#tag Event
		Sub UpPressed()
		  // Stunden hoch durch pressed Event
		  
		  Var t As Integer
		  
		  If myTextfield = Nil Then Return
		   
		  #Pragma BreakOnExceptions False
		  Try
		    t  = Integer.FromString(myTextfield.Text)
		  Catch InvalidArgumentException
		    // Textfeld leer
		    Return
		  End Try
		  #Pragma BreakOnExceptions True
		  
		  t = t + 1
		  
		  Select Case myMode
		  Case Modes.Hour
		    If t > 23 Then t = 0
		  Case Modes.Minute
		    If t > 59 Then t = 0
		  Else
		    Return
		  End Select
		  
		  myTextfield.Text = t.ToString
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0, Description = 5A756D20466573746C6567656E20646573204265747269656273204D6F647573
		Event GetMode() As WTEC_UpDownButton.Modes
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 57656C63686573205465787466656C6420736F6C6C2062656469656E742077657264656E
		Event GetTextfield() As WTEC_TimeTextField
	#tag EndHook


	#tag Note, Name = Funktion
		Ein UpDown Button zum steuern einer Uhrzeit, je nach Modus für Stunden oder Minuten
		Der Wert wird an ein Textfeld weiter gereicht
		
		Zum Scrollen der Uhrzeit kann das Mausrad verwendet werden
		
		Beim Opening wird der Betriebsmodus über den Event GetMode festgelegt, wenn der Event nicht bedient wird, funktioniert die Steuerung über das Mausrad nicht.
		
		Über den Event GetTetfield wird das zugehörige Textfeld festgelegt, welches durch diesen Button gesteuert wird, wenn der Event nicht bedient wird, hat dieser Button keine Funktion.
		
		Da diese Funktionalität an mehreren Stellen im Programm gebraucht wird, wurde diese Klasse geschrieben
		
		
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private myMode As WTEC_UpDownButton.Modes = WTEC_UpDownButton.Modes.Invalid
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 5465787466656C64206461732062656469656E742077697264
		Private myTextfield As WTEC_TimeTextField
	#tag EndProperty


	#tag Enum, Name = Modes, Type = Integer, Flags = &h0, Description = 576F66C3BC7220646572205570446F776E20427574746F6E2076657277656E6465742077697264
		Invalid
		  Minute
		Hour
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
