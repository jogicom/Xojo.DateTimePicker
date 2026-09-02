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
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   False
   Visible         =   True
   Width           =   160
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
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
      Width           =   160
   End
   Begin DesktopCanvas Can_ShowCalendar
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   27
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
      Width           =   15
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  // Temporäre Graphics für Fontberechnungen
		  //Var p As New Picture(100,100)
		  
		  // Locale übernehmen, falls vorhanden
		  #Pragma BreakOnExceptions False
		  Try
		    If ForceLocale <> "" Then
		      loc = New Locale(ForceLocale)
		    Else
		      loc = locale.Current
		    end if
		  Catch InvalidArgumentException
		    loc = locale.Current
		  End Try
		  #Pragma BreakOnExceptions True
		  
		  // Die Fontparameter des Textfeldes setzen
		  TF_DateInput.FontName = Fontname
		  TF_DateInput.FontSize = FontSize
		  TF_DateInput.FontUnit = FontUnit
		  
		  // Die Elemente Positionieren
		  
		  // Textfeld oben Links
		  Self.TF_DateInput.Left = 0
		  Self.TF_DateInput.Top = 0
		  Self.TF_DateInput.Height = Self.Height
		  
		  Self.Can_ShowCalendar.Top = 0
		  
		  Var rest As Integer = Self.Width - Can_ShowCalendar.Width
		  
		  Self.TF_DateInput.Width = rest
		  
		  Self.Can_ShowCalendar.Left = Self.TF_DateInput.Width-1
		  Self.Can_ShowCalendar.Height = Self.TF_DateInput.Height 
		  
		  
		  // Datum holen, mit dem der Kalender initalisiert werden soll
		  actualDate = RaiseEvent InitialDate
		  
		  If actualDate = Nil Then
		    // Es wurde kein Datum zurück geliefert, dann das heutige Datum initalisieren
		    actualDate = New DateTime(DateTime.Now)
		  End If
		  
		  // Uhrzeit getrennt aufbewahren
		  actualHour   = actualDate.Hour
		  actualMinute = actualDate.minute
		  
		  // Das aktuelle Datum in das Eingabe Feld speichern und den Focus für sofortige Eingabe auf das Textfeld setzen
		  TF_DateInput.Text = dtToString(actualDate, loc)
		  TF_DateInput.SetFocus
		  
		  AcceptInput = True          // Eingaben werden ab jetzt akzeptiert und verarbeitet
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function calcAbsPosition(startObject as Object) As Point
		  // Berechnet die absolute Position eines Containers relativ zum Desktop Window
		  
		  If startObject = Nil Then 
		    #If WTEC_DateTimePicker.IsDebug
		      System.DebugLog("Invalid object reference")
		    #EndIf
		    Return Nil    // Abbrechen wenn ungültig
		  End If
		  
		  
		  
		  // Startkoordinaten 
		  Var absPos As New Point(0,0)
		  
		  #If WTEC_DateTimePicker.IsDebug
		    // Benötigte Variable für Debug anlegen
		    
		    // Den echten Klassennamen des Start Objects zur Laufzeit auslesen
		    Var ti As Introspection.TypeInfo // = Introspection.GetType(selfCtrl)
		    Var isStart As Boolean = True
		    Var tiSource As Introspection.TypeInfo
		    Var startObjectName As String
		    
		  #EndIf
		  
		  // Wir wandern die Kette der Parents nach oben
		  Var currentElement As Object = startObject
		  
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
		      
		      #If WTEC_DateTimePicker.IsDebug
		        
		        // Den echten Klassennamen des Standard Controls zur Laufzeit auslesen
		        ti  = Introspection.GetType(nextParent)
		        tiSource = Introspection.GetType(uiCtrl)
		        
		        If isStart Then
		          System.DebugLog("Caclulation start at Object: " + tiSource.Name)
		          startObjectName = tiSource.Name
		          isStart = False
		        Else
		          System.DebugLog("The Desktop Control " + tiSource.Name + " has the parent object: " + ti.Name)
		        End If
		        
		      #EndIf
		      
		      // Das aktuelle Element ist ein Container
		    ElseIf currentElement IsA DesktopContainer Then
		      Var containerCtrl As DesktopContainer = DesktopContainer(currentElement)
		      
		      // Da Xojo den Container-Parent im Code versteckt, nutzen wir die Fensterkoordinaten
		      // des Containers als exakten visuellen Versatz auf dem Fenster.
		      absPos.x = absPos.x + containerCtrl.Left
		      absPos.y = absPos.y + containerCtrl.Top
		      nextParent = containerCtrl.Window
		      
		      #If WTEC_DateTimePicker.IsDebug
		        // Den echten Klassennamen des Standard Controls zur Laufzeit auslesen
		        ti  = Introspection.GetType(nextParent)
		        tiSource = Introspection.GetType(containerCtrl)
		        If isStart Then
		          System.DebugLog("Caclulation start at Object: " + tiSource.Name)
		          startObjectName = tiSource.Name
		          isStart = False
		        Else
		          System.DebugLog("The container " + tiSource.Name + " has the parent object: " + ti.Name)
		        End If
		      #EndIf
		      
		      // Das Element ist direkt ein Desktop Window
		    ElseIf currentElement IsA DesktopWindow Then
		      
		      #If WTEC_DateTimePicker.IsDebug
		        System.DebugLog("Target window reached")
		      #EndIf
		      
		      Exit // Fensterkoordinaten sind das Ziel, Schleife beenden
		      
		      // Fallback für ungetypte DesktopControls
		    ElseIf currentElement IsA DesktopControl Then
		      Var generalCtrl As DesktopControl = DesktopControl(currentElement)
		      nextParent = generalCtrl.Window
		      
		      #If WTEC_DateTimePicker.IsDebug
		        // Den echten Klassennamen des Desktop Controls zur Laufzeit auslesen
		        tiSource = Introspection.GetType(generalCtrl)
		        If isStart Then
		          System.DebugLog("Caclulation start at untyped Object: " + tiSource.Name)
		          startObjectName = tiSource.Name
		          isStart = False
		        Else
		          System.DebugLog("Untyped desktop control found: " + tiSource.Name)
		        End If
		      #EndIf
		      
		    End If
		    
		    currentElement = nextParent
		  Wend
		  
		  // Ausgabe der echten, absoluten Koordinaten im Hauptfenster
		  #If WTEC_DateTimePicker.IsDebug
		    System.DebugLog("Absolute position of the start Object " + startObjectName + ": " + absPos.x.ToString + ", " +absPos.y.ToString)
		  #EndIf
		  
		  Return absPos
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 5769726420766F6D204B616C656E646572206175666765727566656E2C2077656E6E2065722073696368207363686C69657373742C2064616D697420617566676572C3A4756D742077657264656E206B616E6E
		Private Sub CalendarClose(date as Datetime, IsChanged as boolean)
		  // Kalender meldet closed (callback)
		  
		  RaiseEvent CalendarClosed(date, IsChanged)
		  
		  CalendarContainer = Nil
		  IsExpanded = False
		  Can_ShowCalendar.Refresh
		End Sub
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0, Description = 52C3BC636B6D656C64756E672077656E6E204B616C656E6465722067657363686C6F7373656E20776972642C206573207769726420646173207A756C65747A7420696D204B616C656E64657220657266617373746520446174756D20756E64205568727A6569742067656D656C6465742C207A7573C3A4747A6C6963682065696E20466C61672C2064617320616E7A656967742C206461737320446174656E206765C3A46E646572742077757264656E207365697420646572204B616C656E646572206175666765727566656E207775726465
		Delegate Sub CallbackCalendarClose(date as Datetime, isChanged as boolean)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0, Description = 43616C6C6261636B207A756D206D656C64656E2065696E657320446174756D73206175732064656D204B616C656E646572207A756D204461746554696D655069636B6572
		Delegate Sub CallbackNewDate(d as datetime)
	#tag EndDelegateDeclaration

	#tag DelegateDeclaration, Flags = &h0, Description = 43616C6C6261636B207A756D206D656C64656E2065696E6572205568727A656974206175732064656D204B616C656E646572207A756D204461746554696D655069636B6572
		Delegate Sub CallbackNewTime(hour as integer, minute as integer, seconds as integer)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0, Description = 417573676162652065696E6573204461746554696D657320616C7320537472696E672C206469657365204D6574686F6465207374616E646172697369657274206461732041757367616265666F726D6174204B616C656E64657220576569742C2077656E6E20227769746854696D6522203D20545255452064616E6E2077697264206175636820646965205568727A65697420696D206C6F6B616C656D20466F726D6174206175736765676562656E
		Shared Function dtToString(d as DateTime, loc as Locale, withTime as boolean = false) As string
		  If d <> Nil Then
		    
		    If withTime Then
		      // Ausgabe mit Uhrzeit
		      Return d.ToString( loc, DateTime.FormatStyles.Short, DateTime.FormatStyles.Short)
		    Else
		      // Ausgabe ohne Uhrzeit
		      Return d.ToString( loc, DateTime.FormatStyles.Short, DateTime.FormatStyles.None)
		    End If
		  End If
		  
		  Return ""    // Bei ungültiger DateTime
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747A742064617320616B7475656C6C65204B616C656E646572646174756D
		Sub SetDate(d as Datetime)
		  // Setzen eines bestimmten Datums und Uhrzeit im Kalender, durch die Hauptanwendung
		  
		  actualDate = d
		  actualHour = d.Hour
		  actualMinute = d.Minute
		  
		  TF_DateInput.Text = WTEC_DateTimePicker.dtToString(d,loc)
		  
		  TF_DateInput.SetFocus
		  
		  
		  // An den Kalender Container weiter melden, wenn geöffnet
		  
		  If CalendarContainer <> Nil Then
		    CalendarContainer.SetDate(d)
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 457320777572646520766F6D204B616C656E64657220436F6E7461696E6572206F64657220646972656B7420766F6D204B616C656E64657220506F7075702065696E206E6575657320446174756D2067656D656C646574
		Private Sub SetDateFromContainer(d as DateTime)
		  // Im Kalender Container wurde ein Datum ausgewählt ( Callback)
		  
		  actualDate = New DateTime(d.SecondsFrom1970)
		  actualHour = d.Hour
		  actualMinute = d.Minute
		  
		  // Unter Linux wird kein TextChanged Event ausgelöst, wenn hier das gleiche Datum gesetzt wird das sich schon im Textfeld befindet (evt. auch unter Windows?)
		  // Deshalb wird hier generell der TextChanged Event blockiert und das Datum von hier aus weiter gemeldet
		  AcceptInput = False
		  TF_DateInput.Text = WTEC_DateTimePicker.dtToString(d,loc)
		  AcceptInput = True
		  
		  Var dNew As New DateTime(d.SecondsFrom1970)
		  
		  // Das neue Datum an die Hauptanwendung melden
		  RaiseEvent DateChanged(d)
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetTimeFromContainer(hour as integer, minute as integer, second as integer)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 57656E6E207369636820646572204B616C656E6465722067657363686C6F7373656E206861742C207769726420C3BC6265722064696573656E204576656E7420696E666F726D696572742E2064617465203D205568727A6569742F446174756D2C2049734368616E67656420545255452077656E6E20446174656E206765C3A46E6465727420777572646520736569742064656D204F70656E
		Event CalendarClosed(date as DateTime, IsChanged as boolean)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 496D204B616C656E6465722077757264652064617320C3BC626572676562656E6520446174756D20617573676577C3A4686C742C20646965204D656C64756E672069737420696E636C7573697665205A656974
		Event DateChanged(value as Datetime)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 4D69742077656C6368656D20446174756D20736F6C6C20646572204B616C656E646572206265696D20537461727420696E6974616C6973696572742077657264656E
		Event InitialDate() As Datetime
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 496D204B616C656E646572207775726420646569205568727A656974206765C3A46E646572742C20446174756D20697374206175662064656D206C65747A74656E205374616E64
		Event TimeChanged(hour as integer, minute as integer, seconds as integer)
	#tag EndHook


	#tag Property, Flags = &h21, Description = 536F6C616E67652064696573657320466C6167206175662046616C73652073746568742C2077657264656E206B65696E652045696E676162656E2076657261726265697465742C207769726420696D204F70656E204576656E74206E6163682062657374C3BC636B656E2064657220446174656E20667265696765676562656E
		Private AcceptInput As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 44617320616B7475656C6C20696D205465787466656C642065696E676574726167656E6520446174756D
		Private actualDate As DateTime
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 48696572207769726420646965205374756E64652064657220616B7475656C6C2076657277656E646574656E205A6569742066657374676568616C74656E2C20657273746D616C696720696D204F70656E204576656E74
		Private actualHour As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 48696572207769726420646965204D696E7574652064657220616B7475656C6C2076657277656E646574656E205A6569742066657374676568616C74656E2C20657273746D616C696720696D204F70656E204576656E74
		Private actualMinute As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 57656E6E20547275652C2077697264204B616C656E646572206E616368204175737761686C2065696E657320446174756D73206D696E696D69657274
		AutoCollapse As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 57656E6E205452554520756E64204175746F436F6C6C61707365203D20545255452064616E6E207769726420646572204B616C656E646572206265656E6465742C20736F62616C6420646965204D61757320646965204B616C656E6465722041726561207665726CC3A4737374
		AutoCollapseOnMouseExit As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 5265666572656E7A207A756D206765C3B666666E6574656E204B616C656E64657220436F6E7461696E65722C204E494C2077656E6E206E6963687420696E6974616C697369657274
		Private CalendarContainer As WTEC_Calendar = nil
	#tag EndProperty

	#tag Property, Flags = &h0
		FirstWeekday As WTEC_DateTimePicker.FirstWeekDays = WTEC_DateTimePicker.FirstWeekDays.Monday
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 466F6E742064657220696D204B616C656E6465722076657277656E6465742077657264656E20736F6C6C2C2044656661756C74203D2053797374656D
		Fontname As string = "System"
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 466F6E746772C3B67373652064696520696D204B616C656E6465722076657277656E64657420776972642C2077656E6E203020776972642053797374656D666F6E74204772C3B67373652076657277656E646574
		FontSize As Single = 0
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 466F6E74556E69742064696520696D204B616C656E6465722076657277656E6465742077657264656E20736F6C6C
		FontUnit As FontUnits = FontUnits.Default
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 486965726D6974206B616E6E2067657A69656C7420696E2065696E6520616E64657265205370726163686520C3BC6265727365747A742077657264656E2C206C656572206C617373656E2077656E6E205370726163686520617566206175746F6D6174697363682067657374656C6C7420776572646520736F6C6C2E20426569737069656C3A202028656E2D555329
		ForceLocale As string
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
			  
			  
			  If value <> zIsExpanded Then
			    
			    If value Then
			      // Expand
			      Var p As Point
			      
			      p = Self.calcAbsPosition(Self)
			      
			      If p <> Nil Then
			        
			        // 1. Neue Instanz des ContainerControls erzeugen
			        Var para As New WTEC_PickerParameter
			        para.HMargin_CalendarWindow = HMargin_CalendarWindow
			        para.VMargin_CalendarWindow = VMargin_CalendarWindow
			        para.VMarginDayNumbers      = VMarginDayNumbers
			        para.HMarginDayNumbers      = VMarginDayNumbers
			        para.actualDate             = actualDate
			        para.FirstWeekDay           = FirstWeekday
			        para.SetNewDate             = WeakAddressOf Self.SetDateFromContainer  // Hierüber werden Änderungen des Kalenderdatums gemeldet
			        para.CalendarClose          = WeakAddressOf Self.CalendarClose         // Meldung, wenn Kalender geschlossen wird zum aufräumen
			        para.AutoCollapse           = AutoCollapse
			        para.SetNewTime             = WeakAddressOf Self.SetTimeFromContainer  // Meldung wenn Uhrzeit im Kalender geändert wurde
			        para.AutoCloseWhenMouseExit = AutoCollapseOnMouseExit
			        para.MainControlWidth       = TF_DateInput.Width                  // Damit kann der Kalender seine Position variieren
			        para.ForceLocale            = ForceLocale
			        para.ViewMode               = ViewMode                            // Kalender Mode
			        // Fontparameter
			        para.Fontname               = Fontname
			        para.FontUnit               = FontUnit
			        para.FontSize               = FontSize
			        
			        CalendarContainer =  New WTEC_Calendar(para)
			        
			        // 2. In das Ziel-Control (z.B. eine GroupBox1) einbetten
			        // Parameter: Ziel-Control, X-Position, Y-Position
			        p.y = p.y + TF_DateInput.Height
			        CalendarContainer.EmbedWithin(Self.Window, p.x, p.y)
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

	#tag Property, Flags = &h21, Description = 44696520616B7475656C6C2076657277656E646574652053707261636865696E7374656C6C756E67
		Private loc As Locale
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return zMouseOverShowCalendar
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  
			  If zMouseOverShowCalendar <> value Then
			    
			    zMouseOverShowCalendar = value
			    Self.Can_ShowCalendar.Refresh            // Refresh des Canvas
			    
			  End If
			  
			End Set
		#tag EndSetter
		Private MouseOverShowCalendar As boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0, Description = 566965774D6F646520646573204B616C656E646572732C20446174654F6E6C79206F6465722044617465416E6454696D65
		ViewMode As WTEC_DateTimePicker.ViewModes = WTEC_DateTimePicker.ViewModes.DateOnly
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 57656E6E204B616C656E64657220696D20566965774D6F64652044617465416E6454696D65206973742C2077657264656E20696D204B616C656E6465722061756368206469652053656B756E64656E20616E67657A656967742C2077656E6E20646965657220657274205472756520697374
		ViewSeconds As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4465722076657274696B616C652041627374616E64207A7769736368656E2064656E2054616765736E756D6D65726E20696D204B616C656E646572
		VMarginDayNumbers As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4465722056657274696B616C652041627374616E6420646572204B616C656E6465722042656469656E656C656D656E74652061757373657268616C62206465732043616E766173
		VMargin_CalendarWindow As Integer = 5
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 547275652C2077656E6E204B616C656E64657220657870616E646965727420697374
		Private zIsExpanded As boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private zMouseOverShowCalendar As boolean
	#tag EndProperty


	#tag Constant, Name = IsDebug, Type = Boolean, Dynamic = False, Default = \"false", Scope = Public, Description = 57656E6E20747275652C2077657264656E2044656275674D656C64756E67656E206175736765676562656E
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

	#tag Enum, Name = ViewModes, Type = Integer, Flags = &h0, Description = 446566696E696572742064696520416E7A6569676520617566206E757220446174756D206F64657220446174756D206D6974205568727A656974
		DateOnly
		DateAndTime
	#tag EndEnum


#tag EndWindowCode

#tag Events TF_DateInput
	#tag Event
		Sub TextChanged()
		  // Im Datumsfeld wurde etwas geändert, Datum prüfen
		  If AcceptInput Then
		    Var d As DateTime
		    
		    #Pragma BreakOnExceptions False
		    Try
		      
		      d = DateTime.FromString(Me.Text, loc)  // Datetime aus reinem Datum bilden, ohne gültige Uhrzeit
		    Catch InvalidArgumentException
		      // Leerer String = kein gültiges Datum
		      Me.TextColor = AppColor.TextError
		      Return
		    Catch RuntimeException
		      // Ungültiges Datum Format
		      Me.TextColor = AppColor.TextError
		      Return
		    End Try
		    
		    // Nun neue Datetime mit Uhrzeit generieren
		    d = New DateTime(d.Year, d.Month, d.Day, actualHour, actualMinute)
		    
		    Me.TextColor = AppColor.Text
		    #Pragma BreakOnExceptions True
		    
		    
		    // Das neue Datum an den Kalender Container, an die Hauptanwendung melden und das neue Datum merken
		    RaiseEvent DateChanged(d)
		    
		    If Self.CalendarContainer <> Nil Then CalendarContainer.SetDate(d)   // Nur wenn expandiert
		    
		    actualDate = New DateTime(d.SecondsFrom1970)
		    
		    Return
		    
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(key As String) As Boolean
		  // Prüft auf die normale Return-Taste oder die Enter-Taste des Ziffernblocks
		  If key = Chr(13) Or key = Chr(3) Then
		    
		    IsExpanded = False    // Kalender Colapse, falls geöffnet
		    
		    Return True   // Event wurde verarbeitet
		  End If
		  
		  Return False    // Kein Return erkannt, weiter zum System
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Can_ShowCalendar
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  #Pragma Unused areas
		  // Zeichnen eines Dreiecks, je nach Zustand gefüllt
		  
		  // Farbe setzen
		  If Self.zMouseOverShowCalendar Then
		    g.DrawingColor = AppColor.SelectedArea
		  Else
		    g.DrawingColor = AppColor.ControlFrame
		  End If
		  
		  // Rahmen
		  g.DrawRectangle(0,0,g.Width, g.Height)
		  
		  // Wunschgröße und Mittelpunkt berechnen
		  Var triWidth As Double = g.Width / 2 //- 10
		  Var triHeight As Double = g.Width/2 // -6 //g.Height / 2
		  
		  Var centerX As Double = g.Width    / 2.0
		  Var centerY As Double = g.Height   / 2.0
		  
		  // Einen neuen GraphicsPath erstellen
		  Var p As New GraphicsPath
		  
		  // Die drei Punkte des Dreiecks definieren
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
		  
		  // Das Dreieck zeichnen, der zweite Parameter (True) sorgt für das automatische Schließen/Füllen des Pfads
		  If Self.IsExpanded Then
		    g.DrawPath(p,True)
		  Else
		    g.FillPath(p, True)
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  Return True      // Bitte den MouseUp Event senden
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  If Self.IsExpanded Then
		    Self.IsExpanded = False     // Calendar ist expandiert, dann Collapse
		  Else
		    Self.IsExpanded = True      // Calendar expand
		  End If
		  
		  me.Refresh
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  // Maus über dem Control
		  
		  Self.MouseOverShowCalendar = True     // löst Refresh aus im setter
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  // Maus ausserhalb des Controls
		  
		  Self.MouseOverShowCalendar = False      // löst Refresh aus im setter
		  
		  
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
		Name="IsExpanded"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="boolean"
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
		Name="ViewMode"
		Visible=true
		Group="Calendar Behavor"
		InitialValue="0"
		Type="WTEC_DateTimePicker.ViewModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - DateOnly"
			"1 - DateAndTime"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="ViewSeconds"
		Visible=true
		Group="Calendar Behavor"
		InitialValue="False"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ForceLocale"
		Visible=true
		Group="Calendar Behavor"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HMarginDayNumbers"
		Visible=true
		Group="Calendar Behavor"
		InitialValue="5"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="VMarginDayNumbers"
		Visible=true
		Group="Calendar Behavor"
		InitialValue="5"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HMargin_CalendarWindow"
		Visible=true
		Group="Calendar Behavor"
		InitialValue="5"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="VMargin_CalendarWindow"
		Visible=true
		Group="Calendar Behavor"
		InitialValue="5"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FirstWeekday"
		Visible=true
		Group="Calendar Behavor"
		InitialValue="2"
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
		Visible=true
		Group="Calendar Behavor"
		InitialValue="true"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoCollapseOnMouseExit"
		Visible=true
		Group="Calendar Behavor"
		InitialValue="false"
		Type="boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Fontname"
		Visible=true
		Group="Font Settings"
		InitialValue="System"
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FontUnit"
		Visible=true
		Group="Font Settings"
		InitialValue="0"
		Type="FontUnits"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Pixel"
			"2 - Point"
			"3 - Inches"
			"4 - Millimeter"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FontSize"
		Visible=true
		Group="Font Settings"
		InitialValue="0"
		Type="Single"
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
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
