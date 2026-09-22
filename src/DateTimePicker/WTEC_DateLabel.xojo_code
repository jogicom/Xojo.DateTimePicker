#tag Class
 Attributes ( HideFromLibrary ) Protected Class WTEC_DateLabel
Inherits DesktopLabel
	#tag Event
		Function MouseWheel(x As Integer, y As Integer, deltaX As Integer, deltaY As Integer) As Boolean
		  Return TriggerMouseWheel(x,y,deltaX, deltaY)
		End Function
	#tag EndEvent

	#tag Event
		Sub Opening()
		  // Label initalisieren mit Monat und Jahr
		  
		  loc = RaiseEvent GetLocale
		  
		  If loc = Nil Then loc = locale.Current
		  
		  WheelEnabled = RaiseEvent GetWheelEnabled
		  
		  Var d As DateTime = RaiseEvent GetWorkingDate
		  
		  If d <> Nil Then
		    Me.Text = d.ToString( "MMMM YYYY")
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function TriggerMouseWheel(x As integer, y As integer, deltaX As Double, deltaY As Double) As boolean
		  // Scrollen des Label Datums
		  #Pragma Unused deltaX
		  #pragma Unused y
		  
		  If RaiseEvent GetWheelEnabled Then
		    Var d As DateTime = RaiseEvent GetWorkingDate
		    
		    If d <> Nil Then
		      
		      If x < Me.Width/2 Then
		        // Wheel in der linken Hälfte des Labels, dann Monat scrollen
		        Var i As New DateInterval(0,1)
		        If deltaY < 0 Then
		          d = d + i
		        Else
		          d = d - i
		        End If
		        
		      Else
		        // Wheel in der rechten Häfte des Labels, dann Jahr scrollen
		        Var i As New DateInterval(1)
		        If deltaY < 0 Then
		          d = d + i
		        Else
		          d = d - i
		        End If
		        
		      End If
		      
		      RaiseEvent SetWorkingDate(d)
		      
		      Return True        // Wheel wurde verarbeitet
		      
		    End If
		    
		  End If
		  
		  Return False           // Wheel wurde nicht verarbeitet
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 416E666F72646572756E6720646572206C6F63616C652045696E7374656C6C756E672066C3BC7220575445435F446174654C6162656C
		Event GetLocale() As locale
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4973742064696520576865656C20537465756572756E6720656E61626C656420285452554529
		Event GetWheelEnabled() As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 44617320446174654C6162656C20627261756368742064617320616B6C7475656C6C6520446174756D20766F6D204B616C656E646572
		Event GetWorkingDate() As DateTime
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 44657220446174654C6162656C207365747A742065696E206E6575657320446174756D
		Event SetWorkingDate(d as datetime)
	#tag EndHook


	#tag Property, Flags = &h21, Description = 56657277656E64657465206C6F63616C652C20646965206265692064657220446174756D73617573676162652076657277656E64657420776972642C20696D204F70656E696E67204576656E742067657365747A74
		Private loc As locale
	#tag EndProperty

	#tag Property, Flags = &h21
		Private WheelEnabled As boolean = false
	#tag EndProperty


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
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="20"
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
			Name="Multiline"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selectable"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlignment"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="TextAlignments"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Left"
				"2 - Center"
				"3 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="ColorGroup"
			EditorType="ColorGroup"
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
			Name="Text"
			Visible=true
			Group="Appearance"
			InitialValue="Untitled"
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
			Name="FontName"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
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
	#tag EndViewBehavior
End Class
#tag EndClass
