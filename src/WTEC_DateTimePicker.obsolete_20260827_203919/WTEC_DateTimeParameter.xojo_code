#tag Class
Protected Class WTEC_DateTimeParameter
	#tag Property, Flags = &h0
		actualDate As Datetime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 57656E6E20547275652C2077697264204B616C656E646572206E616368204175737761686C2065696E657320446174756D73206D696E696D69657274
		AutoCollapse As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		CalendarClose As WTEC_DateTimePicker.CallbackCalendarClose
	#tag EndProperty

	#tag Property, Flags = &h0
		FirstWeekDay As WTEC_DateTimePicker.FirstWeekDays
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 44657220686F72697A6F6E74616C652041627374616E64207A7769736368656E2064656E2054616765736E756D6D65726E20696D204B616C656E646572
		HMarginDayNumbers As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 44657220486F72697A6F6E74616C652041627374616E642064657220436F6E74726F6C73
		HMargin_CalendarWindow As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0
		SetNewDate As WTEC_DateTimePicker.CallbackNewDate
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
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoCollapse"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
