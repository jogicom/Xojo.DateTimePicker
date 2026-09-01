#tag Class
Protected Class WTEC_TimeTextField
Inherits DesktopTextField
	#tag Event
		Function KeyDown(key As String) As Boolean
		  // 1. Erlaube System- und Steuerungstasten (Länge 0 fängt viele Sondertasten ab)
		  If key.Length = 0 Then
		    Return False
		  End If
		  
		  // 2. Explizit wichtige Steuerungstasten erlauben (ASCII-Werte abfragen)
		  Var asciiWert As Integer = key.Asc
		  
		  Select Case asciiWert
		  Case 8, 127, 9 // Backspace, Delete, Tabulator
		    Return False
		  Case 28, 29, 30, 31 // Pfeiltasten (Links, Rechts, Oben, Unten)
		    Return False
		  Case 1, 4 // Pos1 (Home), Ende (End)
		    Return False
		  End Select
		  
		  // 3. Prüfen, ob das Zeichen eine Zahl zwischen 0 und 9 ist
		  If key >= "0" And key <= "9" Then
		    Return False // Gültige Zahl -> Erlauben
		  End If
		  
		  // 4. Jedes andere Zeichen blockieren
		  Return True
		  
		End Function
	#tag EndEvent

	#tag Event
		Function MouseWheel(x As Integer, y As Integer, deltaX As Integer, deltaY As Integer) As Boolean
		  // Stunden Up/Down mit Wheel
		  
		  Var t As Integer
		  #Pragma BreakOnExceptions False
		  Try
		    t  = Integer.FromString(Me.Text)
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
		  Case Modes.Hour
		    // Bereich prüfen für Stunde
		    If t>23 Then t= 0
		    If t<0 Then  t = 23
		    Me.Text = t.ToString
		    Return True
		    
		  Case Modes.Minute 
		    // Bereich prüfen für Minute
		    If t>59 Then t= 0
		    If t<0 Then  t = 59
		    Me.Text = t.ToString
		    Return True
		    
		  Else
		    // Unbekannter Modus
		    Return True
		  End Select
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Opening()
		  myMode = RaiseEvent GetMode
		  
		  RaiseEvent Opening
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0, Description = 5365747A656E206465732042657472696562736D6F647573
		Event GetMode() As WTEC_TimeTextField.Modes
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook


	#tag Note, Name = Funktion
		Ein Textfeld zum darstellen einer Uhrzeit, je nach konfiguration für ein Minuten oder Stunden Feld
		
		Zum Scrollen der Uhrzeit kann das Mausrad verwendet werden
		
		Beim Opening wird der Betriebsmodus über den Event GetMode festgelegt, wenn der Event nicht bedient wird, funktioniert die Steuerung über das Mausrad nicht.
		
		Es werden nur Steuerzeichen oder Zahlen in der Eingabe zugelassen, alle anderen Eingaben werden verworfen
		
		Da diese Funktionalität an mehreren Stellen im Programm gebraucht wird, wurde diese Klasse geschrieben
		
		
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private myMode As WTEC_TimeTextField.modes = WTEC_TimeTextField.Modes.Invalid
	#tag EndProperty


	#tag Enum, Name = Modes, Flags = &h0, Description = 576F66C3BC7220646173205465787466656C642076657277656E6465742077697264
		Invalid
		  Minute
		Hour
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
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="ColorGroup"
			EditorType="ColorGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBorder"
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
			Name="Format"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
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
			Name="Password"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
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
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
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
		#tag ViewProperty
			Name="Hint"
			Visible=true
			Group="Initial State"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Initial State"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlignment"
			Visible=true
			Group="Behavior"
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
			Name="AllowSpellChecking"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumCharactersAllowed"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ValidationMask"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
