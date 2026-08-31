#tag Class
Protected Class AppColor
	#tag Method, Flags = &h21, Description = 4B6F70696572742064696520436F6C6F7247726F757020696E20646173205A69656C2050726F7065727479
		Private Shared Sub PushGroupTo(cGroup as colorgroup, dest as Colorgroup)
		  // Es werden nur Dual Farben akzeptiert
		  
		  If cGroup = Nil Then 
		    dest = Nil
		    Return
		  End If
		  
		  
		  If cGroup.Mode = ColorGroup.Modes.Dual Then
		    Var c() As Color = cGroup.Values
		    dest = New ColorGroup(c(0),c(1))
		  End If
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 446965736572204261636B67726F756E6420776972642066C3BC7220436F6E74726F6C732076657277656E646574
		#tag Getter
			Get
			  If zControlBackground = Nil Then zControlBackground = New ColorGroup(&cF8F8F900,&c2E2E3300)
			  
			  Return zControlBackground
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  PushGroupTo(value, zControlBackground)
			End Set
		#tag EndSetter
		Shared ControlBackground As colorgroup
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If zControlFrame = Nil Then zControlFrame =  New ColorGroup(Color.LightGray, Color.LightGray)       // Frames um Controls herum
			  
			  Return zControlFrame
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  PushGroupTo(value, zControlFrame)
			End Set
		#tag EndSetter
		Shared ControlFrame As colorgroup
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 44697361626C656420546578746661726265
		#tag Getter
			Get
			  If zDisabledText = Nil Then zDisabledText =  New ColorGroup(Color.LightGray, Color.LightGray)       // Disabled Text Farbe
			  
			  Return zDisabledText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  PushGroupTo(value, zDisabledText)
			End Set
		#tag EndSetter
		Shared DisabledText As colorgroup
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4C656963687465722048696E7465726772756E64206265692065696E65722073656C65637469657274656E2041726561
		#tag Getter
			Get
			  If zLiteSelectedArea = Nil Then zLiteSelectedArea = New ColorGroup(&c1FC6DE00, &c1FC6DE00)
			  
			  Return zLiteSelectedArea
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  PushGroupTo(value, zLiteSelectedArea)
			End Set
		#tag EndSetter
		Shared LiteSelectedArea As colorgroup
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 53746172746B65722048696E7465726772756E6420206265692065696E65722053656C65637465642041726561
		#tag Getter
			Get
			  If zSelectedArea = Nil Then zSelectedArea = New ColorGroup(&c1F9EDE00,&c1F9EDE00)
			  
			  Return zSelectedArea
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  PushGroupTo(value, zSelectedArea)
			End Set
		#tag EndSetter
		Shared SelectedArea As colorgroup
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 46617262652066C3BC7220546578742C206465722073656C656B74696572742069737420756D2064656E20436F6E7472617374207A752077616872656E
		#tag Getter
			Get
			  If zSelectedText = Nil Then zSelectedText = New ColorGroup(&cFFFFFF00, &c00000000)
			  
			  Return zSelectedText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  PushGroupTo(value, zSelectedText)
			End Set
		#tag EndSetter
		Shared SelectedText As colorgroup
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 537461726B6572204672616D6520646965206574776173204B656E6E7A656963686E656E
		#tag Getter
			Get
			  If zStrongFrame = Nil Then zStrongFrame = New ColorGroup(Color.Black, Color.White)        // Starker massiver Frame
			  
			  Return zStrongFrame
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  PushGroupTo(value, zStrongFrame)
			End Set
		#tag EndSetter
		Shared StrongFrame As colorgroup
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4E6F726D616C6520546578746661726265
		#tag Getter
			Get
			  If zText = Nil Then zText = New ColorGroup(Color.Black, Color.White)  // Normale Textfarbe
			  
			  Return zText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  
			  PushGroupTo(value, zText)
			  
			End Set
		#tag EndSetter
		Shared Text As Colorgroup
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54657874666172626520756D20756E67C3BC6C746967652045696E676162656E207A75206D61726B696572656E
		#tag Getter
			Get
			  If zTextError = Nil Then zTextError = New ColorGroup(&cFF000000,&cFF000000)
			  
			  Return zTextError
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  PushGroupTo(value, zTextError)
			End Set
		#tag EndSetter
		Shared TextError As colorgroup
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared zControlBackground As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared zControlFrame As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared zDisabledText As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared zLiteSelectedArea As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared zSelectedArea As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared zSelectedText As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared zStrongFrame As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared zText As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared zTextError As colorgroup
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
			InitialValue="-2147483648"
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
	#tag EndViewBehavior
End Class
#tag EndClass
