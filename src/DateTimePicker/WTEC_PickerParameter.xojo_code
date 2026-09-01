#tag Class
Protected Class WTEC_PickerParameter
	#tag Property, Flags = &h0, Description = 44617320446174756D20646173206265696D20496E6974616C6973696572656E20646573204B616C656E646572732076657277656E6465742077697264
		actualDate As Datetime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 57656E6E204175746F436C6F73652026206469657365722057657274206175662054727565206973742C207363686C6965737374207369636820646572204B616C656E6465722C2077656E6E20646965204D6175732064656E204B616C656E646572207665726CC3A4737374
		AutoCloseWhenMouseExit As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 57656E6E20547275652C2077697264204B616C656E646572206E616368204175737761686C2065696E657320446174756D73206D696E696D69657274
		AutoCollapse As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0, Description = C39C6265722064696573652043616C6C6261636B206D656C64657420646572204B616C656E6465722C20646173732065722065696E656E20436C6F7365206475726368676566C3BC68727420686174
		CalendarClose As WTEC_DateTimePicker.CallbackCalendarClose
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 48696572206973742064657220657273746520576F6368656E7461672C20616C736F2064657220546167206D69742064656D2064696520576F63686520696D204B616C656E64657220626567696E6E656E20736F6C6C2C20646566696E69657274
		FirstWeekDay As WTEC_DateTimePicker.FirstWeekDays
	#tag EndProperty

	#tag Property, Flags = &h0
		ForceLocale As string
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 44657220686F72697A6F6E74616C652041627374616E64207A7769736368656E2064656E2054616765736E756D6D65726E20696D204B616C656E646572
		HMarginDayNumbers As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 44657220486F72697A6F6E74616C652041627374616E642064657220436F6E74726F6C73
		HMargin_CalendarWindow As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4869657220697374206469652042726569746520646573205465787465696E676162652046656C646573207665726D65726B742C20736F206461737320646572204B616C656E646572207365696E6520506F736974696F6E20616E70617373656E206B616E6E2C2077656E6E206572206E6963687420617566206461732046656E73746572207061737374
		MainControlWidth As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0, Description = C39C6265722064696573656E2043616C6C6261636B206D656C64657420646572204B616C656E6465722C2077656E6E2065696E2054616720617573676577C3A4686C74207775726465
		SetNewDate As WTEC_DateTimePicker.CallbackNewDate
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4D6F64757320646572204B616C656E646572616E7A656967652C206D6974206F646572206F686E65205568727A656974
		ViewMode As WTEC_DateTimePicker.ViewModes = WTEC_DateTimePicker.ViewModes.DateOnly
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4465722076657274696B616C652041627374616E64207A7769736368656E2064656E2054616765736E756D6D65726E20696D204B616C656E646572
		VMarginDayNumbers As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4465722056657274696B616C652041627374616E642064657220436F6E74726F6C73
		VMargin_CalendarWindow As Integer = 5
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
		#tag ViewProperty
			Name="HMargin_CalendarWindow"
			Visible=false
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="VMargin_CalendarWindow"
			Visible=false
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="VMarginDayNumbers"
			Visible=false
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HMarginDayNumbers"
			Visible=false
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstWeekDay"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="WTEC_DateTimePicker.FirstWeekDays"
			EditorType="Enum"
			#tag EnumValues
				"0 - Invalid"
				"1 - Sunday"
				"2 - Monday"
				"3 - Tuesday"
				"4 - Wednesday"
				"5 - Thursday"
				"6 - Friday"
				"7 - Saturday"
				"8 - LastIndex"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoCollapse"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MainControlWidth"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoCloseWhenMouseExit"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ForceLocale"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
