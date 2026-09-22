#tag Class
 Attributes ( HideFromLibrary ) Protected Class WTEC_CountButton
Inherits DesktopButton
	#tag Event
		Function MouseWheel(x As Integer, y As Integer, deltaX As Integer, deltaY As Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  Return TriggerMouseWheel(deltaX, deltaY)
		End Function
	#tag EndEvent

	#tag Event
		Sub Opening()
		  // Initalisieren des Count Buttons
		  
		  
		  loc = RaiseEvent GetLocale
		  mode = RaiseEvent GetMode
		  WheelEnabled = RaiseEvent GetWheelEnabled
		  
		  If loc = Nil Then loc = locale.current
		  
		  Select Case Me.Mode
		    
		  Case Modes.MonthUp
		    Me.Tooltip = kHelp_NextMonth(loc.Identifier)
		    
		  Case Modes.MonthDown
		    Me.Tooltip = kHelp_PrevMonth(loc.Identifier)
		    
		  Case Modes.YearUp
		    Me.Tooltip = kHelp_NextYear(loc.Identifier)
		    
		  Case Modes.YearDown
		    Me.Tooltip = kHelp_PrevYear(loc.Identifier)
		    
		  End Select
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Pressed()
		  Var i As New DateInterval
		  Var d As DateTime = RaiseEvent GetWorkingDate
		  
		  If d <> Nil Then
		    Select Case Mode
		      
		    Case modes.MonthDown
		      i.Months = 1
		      d = d - i
		      
		    Case Modes.MonthUp
		      i.Months = 1
		      d = d + i
		    Case Modes.YearDown
		      i.Years = 1
		      d = d - i
		    Case Modes.YearUp
		      i.Years = 1
		      d = d + i
		    End Select
		    
		    RaiseEvent SetWorkingDate(d)
		  End If
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function TriggerMouseWheel(deltaX As Double, deltaY As Double) As boolean
		  #Pragma unused deltaX
		  
		  // Dieser Trigger wird vom Handler_WheelAction oder vom WheelEvent aufgerufen
		  
		  If WheelEnabled Then
		    
		    Var i As New DateInterval
		    Var d As DateTime = RaiseEvent GetWorkingDate
		    
		    If d <> Nil Then
		      If d <> Nil Then
		        Select Case Mode
		          
		        Case modes.MonthDown
		          i.Months = 1
		          
		        Case Modes.MonthUp
		          i.Months = 1
		          
		        Case Modes.YearDown
		          i.Years = 1
		          
		        Case Modes.YearUp
		          i.Years = 1
		          
		        End Select
		        
		        If deltay < 0 Then
		          d = d + i
		        ElseIf deltay > 0 Then
		          d = d - i
		        End If
		        
		        RaiseEvent SetWorkingDate(d)
		        
		      End If
		      Return True    // Wheel wurde verarbeitet
		    End If
		    
		  End If
		  
		  Return False    // Wheel wurde nicht verarbeitet
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 44657220436F756E74427574746F6E20666F726465727420
		Event GetLocale() As locale
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GetMode() As WTEC_CountButton.modes
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 49737420646965205768656C6C20537465756572756E6720656E61626C656420285452554529
		Event GetWheelEnabled() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 44657220436F756E7420427574746F6E20627261756368742064617320616B6C7475656C6C6520446174756D20766F6D204B616C656E646572
		Event GetWorkingDate() As DateTime
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 44657220436F756E7420427574746F6E207365747A742065696E206E6575657320446174756D
		Event SetWorkingDate(d as datetime)
	#tag EndHook


	#tag Property, Flags = &h21, Description = 4C6F63616C65206469652066C3BC7220417573676162656E20696D20436F756E74427574746F6E2062656E75747A7420776972642C20696E6974616C69736965727420696D204F70656E696E67204576656E74
		Private loc As locale
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 4D6F6475732064657320436F756E74427574746F6E2C207369656865204D6F6465732C20696E6974616C69736965727420696D204F70656E696E67204576656E74
		Private Mode As WTEC_CountButton.Modes = WTEC_CountButton.Modes.MonthUp
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 547275652C2077656E6E20576865656C20537465756572756E672065726C617562742C207769726420696D204F70656E696E674576656E742067657365747A74
		Private WheelEnabled As boolean = False
	#tag EndProperty


	#tag Constant, Name = kHelp_NextMonth, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Next Month"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Next Month"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Monat vor"
	#tag EndConstant

	#tag Constant, Name = kHelp_NextYear, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Next Year"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Next Year"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jahr vor"
	#tag EndConstant

	#tag Constant, Name = kHelp_PrevMonth, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Previous Month"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Previous Month"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Monat zur\xC3\xBCck"
	#tag EndConstant

	#tag Constant, Name = kHelp_PrevYear, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Previous Year"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Previous Year"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jahr zur\xC3\xBCck"
	#tag EndConstant


	#tag Enum, Name = Modes, Type = Integer, Flags = &h0
		YearUp
		  YearDown
		  MonthUp
		MonthDown
	#tag EndEnum


	#tag ViewBehavior
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
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="80"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="26"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue="False"
			Type="Boolean"
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
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
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
			Name="MacButtonStyle"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="MacButtonStyles"
			EditorType="Enum"
			#tag EnumValues
				"0 - Push"
				"1 - Gradient"
				"3 - Recessed"
				"4 - Textured"
				"5 - Rounded Textured"
				"6 - Square"
				"7 - Bevel"
				"8 - Round"
				"9 - Help"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cancel"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=true
			Group="Appearance"
			InitialValue="Untitled"
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Default"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
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
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
