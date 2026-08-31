#tag DesktopWindow
Begin DesktopContainer WTEC_DateTimePicker
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   27
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   False
   Visible         =   True
   Width           =   157
   Begin DesktopTextField TF_DateInput
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   27
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   123
   End
   Begin DesktopCanvas Can_ShowCalendar
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   10
      Index           =   -2147483648
      Left            =   127
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Visible         =   True
      Width           =   10
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  // Die Elemente Positionieren
		  
		  // Textfeld oben Links
		  Self.TF_DateInput.Left = 0
		  Self.TF_DateInput.Top = 0
		  Self.TF_DateInput.Height = Self.Height
		  
		  Self.Can_ShowCalendar.Top = 0
		  
		  Var rest As Integer = Self.Width - Can_ShowCalendar.Width
		  
		  Self.TF_DateInput.Width = rest
		  
		  Self.Can_ShowCalendar.Left = Self.TF_DateInput.Width
		  Self.Can_ShowCalendar.Height = Self.Height / 3
		  
		  
		  // Datum holen, mit dem der Kalender initalisiert werden soll
		  actualDate = RaiseEvent InitialDate
		  
		  If actualDate = Nil Then
		    // Es wurde kein Datum zurück geliefert, dann das heutige Datum initalisieren
		    actualDate = New DateTime(DateTime.Now)
		  End If
		  
		  // Das aktuelle Datum in das Eingabe Feld speichern und den Focus für sofortige Eingabe auf das Textfeld setzen
		  TF_DateInput.Text = dtToString(actualDate)
		  TF_DateInput.SetFocus
		  
		  AceptInput = True          // Eingaben werden ab jetzt akzeptiert und verarbeitet
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function calcAbsPosition(startContainer as DesktopContainer) As Point
		  // Berechnet die absolute Position eines Containers relativ zum Desktop Window
		  
		  If startContainer = Nil Then 
		    #If WTEC_DateTimePicker.fDebug
		      System.DebugLog("Invalid container reference")
		    #EndIf
		    Return Nil    // Abbrechen wenn ungültig
		  End If
		  
		  Var selfCtrl As DesktopContainer
		  
		  // Startkoordinaten 
		  Var absPos As New Point(0,0)
		  
		  #If WTEC_DateTimePicker.fDebug
		    selfCtrl = DesktopContainer(startContainer)
		    // Den echten Klassennamen des Containers zur Laufzeit auslesen
		    Var ti As Xojo.Introspection.TypeInfo = Xojo.Introspection.GetType(selfCtrl)
		    Var tiSource As Xojo.Introspection.TypeInfo
		    Var containerName As String = ti.Name
		    System.DebugLog("Absolute position calculation starts at the container: " + containerName)
		  #EndIf
		  
		  // Wir wandern die Kette der Parents nach oben
		  Var currentElement As Object = startContainer
		  
		  While currentElement <> Nil
		    Var nextParent As Object = Nil
		    
		    // Das aktuelle Element ist ein Standard-Control (z. B. ein Label oder eine GroupBox)
		    If currentElement IsA DesktopUIControl Then
		      Var uiCtrl As DesktopUIControl = DesktopUIControl(currentElement)
		      nextParent = uiCtrl.Parent
		      
		      // Wenn das übergeordnete Element ein weiteres Steuerelement ist, addieren wir dessen Versatz
		      If nextParent IsA DesktopUIControl Then
		        Var parentCtrl As DesktopUIControl = DesktopUIControl(nextParent)
		        absPos.x = absPos.x + parentCtrl.Left
		        absPos.y = absPos.y + parentCtrl.Top
		      End If
		      
		      #If WTEC_DateTimePicker.fDebug
		        // Den echten Klassennamen des Standard Controls zur Laufzeit auslesen
		        ti  = Xojo.Introspection.GetType(nextParent)
		        tiSource = Xojo.Introspection.GetType(uiCtrl)
		        System.DebugLog("The Desktop Control " + tiSource.Name + " has the parent object: " + ti.Name)
		      #EndIf
		      
		      // Das aktuelle Element ist ein Container
		    ElseIf currentElement IsA DesktopContainer Then
		      Var containerCtrl As DesktopContainer = DesktopContainer(currentElement)
		      
		      // Da Xojo den Container-Parent im Code versteckt, nutzen wir die Fensterkoordinaten
		      // des Containers als exakten visuellen Versatz auf dem Fenster.
		      absPos.x = absPos.x + containerCtrl.Left
		      absPos.y = absPos.y + containerCtrl.Top
		      nextParent = containerCtrl.Window
		      
		      #If WTEC_DateTimePicker.fDebug
		        // Den echten Klassennamen des Standard Controls zur Laufzeit auslesen
		        ti  = Xojo.Introspection.GetType(nextParent)
		        tiSource = Xojo.Introspection.GetType(containerCtrl)
		        System.DebugLog("The container " + tiSource.Name + " has the parent object: " + ti.Name)
		      #EndIf
		      
		      // Das Element ist direkt ein Desktop Window
		    ElseIf currentElement IsA DesktopWindow Then
		      
		      #If WTEC_DateTimePicker.fDebug
		        System.DebugLog("Target window reached")
		      #EndIf
		      
		      Exit // Fensterkoordinaten sind das Ziel, Schleife beenden
		      
		      // Fallback für ungetypte DesktopControls
		    ElseIf currentElement IsA DesktopControl Then
		      Var generalCtrl As DesktopControl = DesktopControl(currentElement)
		      nextParent = generalCtrl.Window
		      
		      #If WTEC_DateTimePicker.fDebug
		        // Den echten Klassennamen des Desktop Controls zur Laufzeit auslesen
		        tiSource = Xojo.Introspection.GetType(generalCtrl)
		        System.DebugLog("Untyped desktop control found: " + tiSource.Name)
		      #EndIf
		      
		    End If
		    
		    currentElement = nextParent
		  Wend
		  
		  // Ausgabe der echten, absoluten Koordinaten im Hauptfenster
		  #If WTEC_DateTimePicker.fDebug
		    System.DebugLog("Absolute position of the container " + containerName + ": " + absPos.x.ToString + ", " +absPos.y.ToString)
		  #EndIf
		  
		  Return absPos
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 5769726420766F6D204B616C656E646572206175666765727566656E2C2077656E6E2065722073696368207363686C69657373742C2064616D697420617566676572C3A4756D742077657264656E206B616E6E
		Private Sub CalendarClose()
		  CalendarContainer = Nil
		  IsExpanded = False
		  Can_ShowCalendar.Refresh
		End Sub
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0, Description = 52C3BC636B6D656C64756E672077656E6E204B616C656E6465722067657363686C6F7373656E2077697264
		Delegate Sub CallbackCalendarClose()
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0, Description = 43616C6C6261636B207A756D206D656C64656E2065696E657320446174756D73206175732064656D204B616C656E646572207A756D204461746554696D655069636B6572
		Delegate Sub CallbackNewDate(d as datetime)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 417573676162652065696E6573204461746554696D657320616C7320537472696E672C206469657365204D6574686F6465207374616E646172697369657274206461732041757367616265666F726D6174204B616C656E6465722057656974
		Shared Function dtToString(d as DateTime) As string
		  If d <> Nil Then
		    
		    Return d.ToString( Locale.Current, DateTime.FormatStyles.Medium, DateTime.FormatStyles.None)
		    
		  End If
		  
		  Return ""    // Bei ungültiger DateTime
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747A742064617320616B7475656C6C65204B616C656E646572646174756D
		Sub SetDate(d as Datetime)
		  // Setzen eines bestimmten Datums im Kalender
		  
		  TF_DateInput.Text = d.ToString( Locale.Current, DateTime.FormatStyles.Medium, DateTime.FormatStyles.None)
		  
		  TF_DateInput.SetFocus
		  
		  actualDate = d
		  
		  // An den Kalender weiter melden, wenn geöffnet
		  
		  If CalendarContainer <> Nil Then
		    CalendarContainer.SetDate(d)
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 457320777572646520766F6D204B616C656E64657220436F6E7461696E65722065696E206E6575657320446174756D2067656D656C646574
		Private Sub SetDateFromCalendar(d as DateTime)
		  // Im Kalender wurde ein Datum ausgewählt ( Callback)
		  TF_DateInput.Text = d.ToString( Locale.Current, DateTime.FormatStyles.Medium, DateTime.FormatStyles.None)
		  
		  actualDate = d
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 496D204B616C656E6465722077757264652064617320C3BC626572676562656E6520446174756D20617573676577C3A4686C74
		Event DateChanged(value as Datetime)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4D69742077656C6368656D20446174756D20736F6C6C20646572204B616C656E646572206265696D20537461727420696E6974616C6973696572742077657264656E
		Event InitialDate() As Datetime
	#tag EndHook


	#tag Property, Flags = &h21, Description = 536F6C616E67652064696573657320466C6167206175662046616C73652073746568742C2077657264656E206B65696E652045696E676162656E2076657261726265697465742C207769726420696D204F70656E204576656E74206E6163682062657374C3BC636B656E2064657220446174656E20667265696765676562656E
		Private AceptInput As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 44617320616B7475656C6C20696D205465787466656C642065696E676574726167656E6520446174756D
		Private actualDate As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 57656E6E20547275652C2077697264204B616C656E646572206E616368204175737761686C2065696E657320446174756D73206D696E696D69657274
		AutoCollapse As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 5265666572656E7A207A756D206765C3B666666E6574656E204B616C656E64657220436F6E7461696E65722C204E494C2077656E6E206E6963687420696E6974616C697369657274
		Private CalendarContainer As WTEC_Calendar = nil
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 4661726265206465722054616765736E756D6D657220696D204B616C656E6465722C2077656E6E206465722054616720696E6E657268616C206465732041726265697473646174756D73206C696567742C207769726420696D20436F6E7374727563746F7220696E6974616C697369657274
		Private cDayIsInMonth As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 466172626520776972642066C3BC722065696E65204D6F6E6174736E756D6D65722076657277656E6465742C20646965207369636820696D20566F722F6E616368204D6F6E617420626566696E6465742C207769726420696D20436F6E7374727563746F7220696E6974616C697369657274
		Private cDayOutOfMonth As ColorGroup
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 446965204661726265206465732048696E7465726772756E6465732C2077656E6E20646572205461672064656D2073656C656B7469657274656E2054616720656E74737072696368742C207769726420696D20436F6E7374727563746F7220696E6974616C697369657274
		Private cFullHighLite As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 446965204661726265206465732048696E7465726772756E6465732C2077656E6E206D616E206D697420646572204D61757320646172C3BC6265722066C3A46872742C207769726420696D20436F6E7374727563746F7220696E6974616C697369657274
		Private cLiteHighLite As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 44696520466172626520646573205261686D656E732C2077656E6E2065696E2045696E74726167206D61726B6965727420776972642C207769726420696D20436F6E7374727563746F7220696E6974616C697369657274
		Private cSelectFrame As colorgroup
	#tag EndProperty

	#tag Property, Flags = &h0
		FirstWeekday As WTEC_DateTimePicker.FirstWeekDays = WTEC_DateTimePicker.FirstWeekDays.Monday
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 44657220686F72697A6F6E74616C652041627374616E64207A7769736368656E2064656E2054616765736E756D6D65726E20696D204B616C656E646572
		HMarginDayNumbers As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 44657220486F7269746F6E74616C652041627374616E6420646572204B616C656E6465722042656469656E656C656D656E74652061757373657268616C62206465732043616E766173
		HMargin_CalendarWindow As Integer = 5
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 457870616E64696572742064656E204B616C656E6465722077656E6E20545255452C206F646572206B6F6C6C6162696572742064656E204B616C656E6465722077656E6E2046414C5345
		#tag Getter
			Get
			  Return zIsExpanded
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #Pragma Warning "Blockade"
			  
			  If value <> zIsExpanded Then
			    
			    If value Then
			      // Expand
			      Var p As Point
			      
			      p = Self.calcAbsPosition(Self)
			      
			      If p <> Nil Then
			        
			        // 1. Neue Instanz des ContainerControls erzeugen
			        Var para As New WTEC_DateTimeParameter
			        para.HMargin_CalendarWindow = HMargin_CalendarWindow
			        para.VMargin_CalendarWindow = VMargin_CalendarWindow
			        para.VMarginDayNumbers      = VMarginDayNumbers
			        para.HMarginDayNumbers      = VMarginDayNumbers
			        para.actualDate             = actualDate
			        para.FirstWeekDay           = FirstWeekday
			        para.SetNewDate             = WeakAddressOf SetDateFromCalendar   // Hierüber werden Änderungen des Kalenderdatums gemeldet
			        para.CalendarClose          = WeakAddressOf CalendarClose         // Meldung, wenn Kalender geschlossen wird zum aufräumen
			        para.AutoCollapse           = AutoCollapse
			        
			        CalendarContainer =  New WTEC_Calendar(para)
			        
			        // 2. In das Ziel-Control (z.B. eine GroupBox1) einbetten
			        // Parameter: Ziel-Control, X-Position, Y-Position
			        p.y = p.y + TF_DateInput.Height
			        CalendarContainer.EmbedWithin(Window1, p.x, p.y)
			      End If 
			      zIsExpanded = True
			      Refresh
			      
			    Else
			      If CalendarContainer <> Nil Then
			        CalendarContainer.Close
			        CalendarContainer = Nil
			      End If
			      zIsExpanded = False
			    End If
			    
			  End If
			End Set
		#tag EndSetter
		IsExpanded As boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0, Description = 4465722076657274696B616C652041627374616E64207A7769736368656E2064656E2054616765736E756D6D65726E20696D204B616C656E646572
		VMarginDayNumbers As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4465722056657274696B616C652041627374616E6420646572204B616C656E6465722042656469656E656C656D656E74652061757373657268616C62206465732043616E766173
		VMargin_CalendarWindow As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 547275652C2077656E6E204B616C656E64657220657870616E646965727420697374
		Private zIsExpanded As boolean = False
	#tag EndProperty


	#tag Constant, Name = fDebug, Type = Boolean, Dynamic = False, Default = \"true", Scope = Public
	#tag EndConstant


	#tag Enum, Name = FirstWeekDays, Flags = &h0, Description = 576F6368656E746167206465722064656E2053746172742064657220576F63686520646566696E69657274
		Invalid
		  Sunday
		  Monday
		  Tuesday
		  Wednesday
		  Thursday
		  Friday
		  Saturday
		LastIndex
	#tag EndEnum


#tag EndWindowCode

#tag Events TF_DateInput
	#tag Event
		Sub TextChanged()
		  // Im Datumsfeld wurde etwas geändert, Datum prüfen
		  If AceptInput Then
		    Var d As DateTime
		    
		    #Pragma BreakOnExceptions False
		    Try
		      
		      d = DateTime.FromString(Me.Text, Locale.Current)
		    Catch InvalidArgumentException
		      // Leerer String = kein gültiges Datum
		      Me.TextColor = Color.Red
		      Return
		    Catch RuntimeException
		      // Ungültiges Datum Format
		      Me.TextColor = Color.Red
		      Return
		    End Try
		    
		    Me.TextColor = Color.TextColor
		    #Pragma BreakOnExceptions True
		    
		    
		    // Das neue Datum an den Kalender Container melden und an die Hauptanwendung
		    RaiseEvent DateChanged(d)
		    
		    If Self.CalendarContainer <> Nil Then
		      
		      
		      #Pragma Warning "Meldung an Container fehlt!"
		    End If
		    
		    Return
		    
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Can_ShowCalendar
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  // Zeichnen eines Dreiecks, je nach Zustand gefüllt
		  
		  // 1. Wunschgröße und Mittelpunkt berechnen
		  Var triWidth As Double = g.Width
		  Var triHeight As Double = g.Height
		  
		  Var centerX As Double = g.Width / 2.0
		  Var centerY As Double = g.Height / 2.0
		  
		  // 2. Einen neuen GraphicsPath erstellen
		  Var p As New GraphicsPath
		  
		  // 3. Die drei Punkte des Dreiecks definieren
		  // Startpunkt: Ecke oben links
		  Var startX As Double = centerX - (triWidth / 2.0)
		  Var startY As Double = centerY - (triHeight / 2.0)
		  
		  p.MoveToPoint(startX, startY)
		  
		  // Linie zur Ecke oben rechts
		  p.AddLineToPoint(centerX + (triWidth / 2.0), centerY - (triHeight / 2.0))
		  
		  // Linie zur Spitze unten (Mitte)
		  p.AddLineToPoint(centerX, centerY + (triHeight / 2.0))
		  
		  // Manuelles Schließen des Pfads (zieht die Linie zurück zum Startpunkt)
		  p.AddLineToPoint(startX, startY)
		  
		  // 4. Farbe festlegen und das Dreieck zeichnen
		  g.DrawingColor = Color.TextColor
		  
		  // Der zweite Parameter (True) sorgt für das automatische Schließen/Füllen des Pfads
		  If Self.IsExpanded Then
		    g.DrawPath(p,True)
		  Else
		    g.FillPath(p, True)
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  Return true      // Bitte den MouseUp Event senden
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  If Self.IsExpanded Then
		    Self.IsExpanded = False     // Calendar ist expandiert, dann Collapse
		  Else
		    Self.IsExpanded = True      // Calendar expand
		  End If
		  
		  me.Refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Super"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
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
		Name="AllowFocusRing"
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
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composited"
		Visible=true
		Group="Window Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsExpanded"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
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
		Name="VMargin_CalendarWindow"
		Visible=false
		Group="Behavior"
		InitialValue="5"
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
		Name="HMarginDayNumbers"
		Visible=false
		Group="Behavior"
		InitialValue="5"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FirstWeekday"
		Visible=false
		Group="Behavior"
		InitialValue="WTEC_DateTimePicker.FirstWeekDays.Monday"
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
#tag EndViewBehavior
