#tag DesktopWindow
Begin DesktopContainer WTEC_Calendar
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   300
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
   Width           =   300
   Begin DesktopButton PB_YearDown
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "<<"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      Italic          =   False
      Left            =   11
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "#kHelp_PrevYear"
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   28
   End
   Begin DesktopButton PB_MonthDown
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "<"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      Italic          =   False
      Left            =   51
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "#kHelp_PrevMonth"
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   28
   End
   Begin DesktopButton PB_MonthUp
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   ">"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      Italic          =   False
      Left            =   212
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "#kHelp_NextMonth"
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   28
   End
   Begin DesktopButton PB_YearUp
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   ">>"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      Italic          =   False
      Left            =   252
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "#kHelp_NextYear"
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   28
   End
   Begin DesktopLabel LBL_ActualMonthAndYear
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   71
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "August 2026"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   26
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   144
   End
   Begin DesktopButton PB_SelectToday
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Today: 26.08.2028"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      Italic          =   False
      Left            =   71
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   254
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   132
   End
   Begin DesktopCanvas Can_CalendarPicker
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   177
      Index           =   -2147483648
      Left            =   11
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   58
      Transparent     =   False
      Visible         =   True
      Width           =   276
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  dtPara = Nil
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  // Berechnen der nötigen Breite und Höhe des Kalenders dazu wird temporär ein Picture erzeugt
		  
		  Var p As New Picture(100,100)
		  
		  p.Graphics.Bold = True
		  
		  // Berechnen der benötigten Breite für alle Elemente im Kalender
		  Self.Width = p.Graphics.TextWidth(kMaxMonthYearString)    + 6 * dtPara.HMargin_CalendarWindow + 4 * PB_MonthDown.Width 
		  
		  // Die Höhe muss 18 Textzeilen gross sein
		  Self.Height = p.Graphics.TextHeight("MO DI MI DO FR SA SO SPACE", 500)  * 18
		  
		  SetControlPositions
		  
		  // Datum holen, mit dem der Kalender initalisiert werden soll
		  //actualSelectedDate = RaiseEvent InitialDate
		  //
		  //If actualSelectedDate = Nil Then
		  //// Es wurde kein Datum zurück geliefert, dann das heutige Datum initalisieren
		  //actualSelectedDate = New DateTime(DateTime.Now)
		  //End If
		  //// Datum, mit dem innerhalb des Kalenders gearbeitet wird erstellen
		  //workingDate = New DateTime(actualSelectedDate.SecondsFrom1970, actualSelectedDate.Timezone)
		  //
		  //// Das aktuelle Datum in das Eingabe Feld speichern und den Focus für sofortige Eingabe auf das Textfeld setzen
		  //TF_DateInput.Text = actualSelectedDate.ToString( Locale.Current, DateTime.FormatStyles.Medium, DateTime.FormatStyles.None)
		  //TF_DateInput.SetFocus
		  //
		  //AceptInput = True          // Eingaben werden ab jetzt akzeptiert und verarbeitet
		  //
		  //// Groesse auf Collapsed einstellen
		  //Width = TF_DateInput.Width + PB_ShowCalendar.Width + TF_DateInput.Left
		  //Height = TF_DateInput.Height + TF_DateInput.Top
		  //
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  g.DrawingColor = Color.FillColor
		  g.FillRectangle(0,0,g.Width, g.Height)
		  
		  g.DrawingColor = Color.FrameColor
		  
		  g.DrawRectangle(0,0,g.Width, g.Height)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(param as WTEC_DateTimeParameter)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  // Parameter wie Sprungsziele und Einstellungen
		  dtPara = param
		  
		  If param.actualDate <> Nil Then
		    workingDate = New DateTime(param.actualDate.Year, param.actualDate.Month, param.actualDate.Day)
		  Else
		    workingDate = New DateTime(DateTime.Now)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 45727374656C6C742064696520526563687465636B652066C3BC722064696520576F6368656E746167736E616D656E20756E6420646965206C656572656E205265636865636B652066C3BC7220646965204B616C656E64657274616765
		Private Sub CreateDayAreas()
		  // ==========================================================
		  //        Initalisieren aller benötigten Calender Arrays
		  // ==========================================================
		  
		  // First Weekday prüfen, wenn nicht gesetzt dann auf Standard setzen
		  If dtPara.FirstWeekday <  WTEC_DateTimePicker.FirstWeekDays.Sunday Or  dtPara.FirstWeekday >= WTEC_DateTimePicker.FirstWeekDays.LastIndex Then
		    dtPara.FirstWeekday = WTEC_DateTimePicker.FirstWeekDays.Monday
		  End If
		  
		  // Horizontal besitzt eine Reihe 7 Nummer Felder und 8 Abstände dazwischen
		  Var rectWitdth As Integer = (Can_CalendarPicker.Width -8 * dtPara.HMarginDayNumbers) / 7
		  
		  // Vertikal besitzt eine Spalte 7 Einträge und 8 Abstände dazwischen
		  Var rectHeight As Integer = (Can_CalendarPicker.Height - 8 * dtPara.VMarginDayNumbers) / 7
		  
		  // Var  textheight As Double = g.TextHeight("88",4)
		  
		  // Tabelle der Wochentagsnamen erstellen am Anfang einen leeren Eintrag anfügen wegen Index 1 to .....
		  // kWeekDays ist lokalisiert
		  Var weekdays() As String= kWeekDays.Split(",")
		  weekdays.AddAt(0,"")
		  
		  Var wbutt As WTEC_DateButtonOld
		  
		  // =================================================================
		  //         Die Areas für die Wochentagsbezeichnungen erstellen
		  // =================================================================
		  DayNameButtons.RemoveAll
		  
		  For r As Integer = 1 To 7
		    wbutt = New WTEC_DateButtonOld
		    wbutt.Caption = WeekDays(Integer(dtPara.FirstWeekday) + r-1)
		    wbutt.CalDate = Nil
		    wbutt.Area.Left = (r * dtPara.VMarginDayNumbers) + (rectWitdth * (r-1))
		    wbutt.Area.Top = dtPara.HMarginDayNumbers 
		    wbutt.Area.Width = rectWitdth        
		    wbutt.Area.Height = rectHeight      
		    DayNameButtons.Add(wbutt)
		  Next
		  
		  // ========================================================
		  //            Die Areas für die Monatstage erstellen
		  // ========================================================
		  
		  DayNumberButtons.RemoveAll
		  
		  For row As Integer = 1 To 6
		    For column As Integer = 1 To 7
		      wbutt = New WTEC_DateButtonOld
		      wbutt.CalDate = Nil
		      wbutt.Area.Left = (column * dtPara.HMarginDayNumbers) + ((column -1) * rectWitdth)
		      wbutt.Area.Top = ((row +1) * dtPara.VMarginDayNumbers) + (row  * rectHeight)
		      wbutt.Area.Width = rectWitdth
		      wbutt.Area.Height = rectHeight
		      DayNumberButtons.add(wbutt)
		    Next
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = C39C6265727072C3BC66742064617320446174756D206F622065732064656D206D6F6D656E74616E2073656C65637469657274656D20446174756D20656E747370726963687420285452554529
		Private Function IsDateSelected(d as datetime) As boolean
		  // Uberprüft, ob das heutige Datum dem aktuell Selectiertem Datum entspricht
		  
		  If workingDate.day = d.Day And workingDate.Month = d.Month And workingDate.year = d.Year Then Return True
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = C39C6265727072C3BC66742064617320446174756D206F6220657320646173206865757469676520446174756D2069737420285452554529
		Private Function IsDateToday(d as datetime) As boolean
		  // Uberprüft, ob das heutige Datum dem übergebenen Datum entspricht (TRUE = JA)
		  
		  Var todayDate As New DateTime(DateTime.now)
		  
		  If todayDate.day = d.Day And todayDate.Month = d.Month And todayDate.year = d.Year Then Return True
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 545255452C2077656E6E2064696520417265612073696368206D69742065696E657220646572204172656173207369636820C3BC6265727363686E65696465742C207769726420696E205061696E74204576656E742062656E75747A7420756D20666573747A757374656C6C656E206F622065696E2042657265696368206E65752067657A656963686E65742077657264656E206D757373
		Private Function IsInArea(Areas() as Rect, Area as Rect) As boolean
		  // Prüft ob eine Überschneidung der Areas besteht
		  
		  If Areas.Count <> 0 Then
		    If Area <> Nil Then
		      For r As Integer = 0 To Areas.LastIndex
		        If Areas(r) <> Nil Then
		          If Areas(r).Intersects(Area) Then Return True
		        End If
		      Next
		    End If
		  Else
		    // Es wurde ine leeres Areas Array übergeben, bedeutet dass alles neu gezeichnet werden muss
		    // Hier gibt es einen elementaren Unterschied zwischen Linux und Windows
		    // Linux liefert immer mindestens ein Areas Element, während Windows teilweise keines mit liefert
		    Return True
		  End If
		  
		  Return False    // Keine Überschneidung
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 566572676C6569636874207A776569204461746574696D657320756E64206C69656665727420545255452C2077656E6E20626569646520676C656963682073696E64
		Private Function IsSameDate(d1 as datetime, d2 as datetime) As boolean
		  if d1 = Nil or d2 = Nil Then Return false
		  If d1.Year = d2.Year And d1.Month = d2.Month And d1.Day = d2.Day Then Return True
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 526566726573682065696E6572204172656120696E2043616E5F43616C656E6461725069636B6572
		Private Sub RefreshArea(Area as Rect)
		  // Refresh einer Area im Canvas des Kalenders
		  
		  If Area <> Nil Then Can_CalendarPicker.Refresh(Area.Left, Area.Top, Area.Width, Area.Height)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 526566726573682065696E6572204172656120696E2043616E5F43616C656E6461725069636B6572
		Private Sub RefreshArea1(Area as Rect)
		  // Refresh einer Area im Canvas des Kalenders
		  
		  If Area <> Nil Then Can_CalendarPicker.Refresh(Area.Left, Area.Top, Area.Width, Area.Height)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 5365747A742064696520506F736974696F6E20616C6C657220436F6E74726F6C7320756E64206175636820646572656E204772C3B6C39F652061756620646572204B616C656E64657220416E77656E64756E67
		Private Sub SetControlPositions()
		  // ==========================================================================
		  //      Setzen der Positionen und Größen der einzelnen Controls im Kalender
		  // ==========================================================================
		  
		  // Die breite und linke Position des Kalender Canvas anpassen
		  Can_CalendarPicker.Left = dtPara.HMargin_CalendarWindow
		  Can_CalendarPicker.Width = self.Width - 2 * dtPara.HMargin_CalendarWindow
		  
		  
		  // Den Jahr zurück Button positionieren
		  PB_YearDown.Top = dtPara.VMargin_CalendarWindow
		  PB_YearDown.Left = Can_CalendarPicker.Left
		  
		  // Den Monat zurück positionieren
		  PB_MonthDown.Top = PB_YearDown.top
		  PB_MonthDown.Left = PB_YearDown.Left + PB_YearDown.Width + dtPara.HMargin_CalendarWindow
		  
		  // Den JahrUp Button positonieren
		  PB_YearUp.Top = PB_YearDown.Top
		  PB_YearUp.Left = Can_CalendarPicker.Width + Can_CalendarPicker.Left - PB_YearUp.Width 
		  
		  // Den Monat Up Button Positionieren
		  PB_MonthUp.Top = PB_YearDown.top
		  PB_MonthUp.Left = PB_YearUp.Left - PB_MonthUp.Width - dtPara.HMargin_CalendarWindow
		  
		  // Die Jahres/Monatsanzeige in der Größe anpassen und Positionieren
		  LBL_ActualMonthAndYear.Top = PB_YearDown.Top
		  LBL_ActualMonthAndYear.Left = PB_MonthDown.Left + PB_MonthDown.Width + dtPara.HMargin_CalendarWindow
		  LBL_ActualMonthAndYear.Width = PB_MonthUp.Left - LBL_ActualMonthAndYear.Left - dtPara.HMargin_CalendarWindow
		  
		  // Nun die Position und breite des Today Buttons anpassen
		  PB_SelectToday.Left = Can_CalendarPicker.Left
		  PB_SelectToday.Width =  Can_CalendarPicker.Width 
		  PB_SelectToday.top = Self.Height - dtPara.VMargin_CalendarWindow - PB_SelectToday.Height
		  
		  // Nun die Höhe des Kalender Canvas berechnen, INFO: Der Today Button ist immer unten angedockt, also kann dieser als Referenz herangezogen werden
		  Can_CalendarPicker.Top = PB_YearDown.top + PB_YearDown.Height + dtPara.VMargin_CalendarWindow
		  Can_CalendarPicker.Height = PB_SelectToday.Top - Can_CalendarPicker.Top - dtPara.VMargin_CalendarWindow
		  
		  fReCalcControlPositions = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDate(d as dateTime)
		  // Setzen des Arbeitsdatums von aussen
		  
		  workingDate = New DateTime(d.Year,d.Month,d.Day)
		  
		  #Pragma Warning "Refresh fehlt"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 44656E204B616C656E646572206D697420446174656E20626566C3BC6C6C656E20616E68616E642064657320616B7475656C6C656D20446174756D73
		Private Sub UpdateCalendar()
		  // ==================================================
		  //    Den Kalender mit aktuellen Daten des Monats befüllen
		  // ==================================================
		  
		  // First Weekday prüfen, wenn nicht gesetzt dann auf Standard setzen
		  If dtPara.FirstWeekday <  WTEC_DateTimePicker.FirstWeekDays.Sunday Or  dtPara.FirstWeekday >= WTEC_DateTimePicker.FirstWeekDays.LastIndex Then
		    dtPara.FirstWeekday = WTEC_DateTimePicker.FirstWeekDays.Monday
		  End If
		  
		  Var oneDay As New DateInterval
		  oneday.Days = 1 ' 1 Tages intervall
		  
		  // Kopie des aktuellen Arbeits Datums erstellen
		  Var adate As New DateTime(workingDate.SecondsFrom1970, workingDate.TimeZone)
		  
		  // Das Datum auf den Monatsersten setzen
		  adate =  New DateTime(adate.Year, adate.Month, 1, adate.Hour, adate.Minute, adate.Second, adate.Nanosecond, adate.TimeZone)
		  
		  
		  // Zuerst den Monatsnamen und das Jahr updaten im Kalender
		  LBL_ActualMonthAndYear.Text = adate.ToString( "MMMM YYYY")
		  
		  // Datum zurück drehen bis Wochenbeginn erreicht
		  // FirstWeekday muss geprüft sein, sonst Endlos Schleife!!!!!!
		  While adate.DayOfWeek <> Integer (dtPara.FirstWeekday)
		    adate = adate - oneDay
		  Wend
		  
		  // Die Kalendertag Nummern im Kalender bestücken
		  Var butt As WTEC_DateButtonOld
		  For r As Integer = 0 To DayNumberButtons.LastIndex
		    butt = DayNumberButtons(r)
		    butt.CalDate = New DateTime(adate.SecondsFrom1970, adate.Timezone)
		    butt.Caption = butt.CalDate.Day.ToString
		    
		    adate = adate + oneDay
		  Next
		  
		  ForceCalendarUpdate = False
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21, Description = 4461732041727261792064657220576F6368656E7461676520646965736573204B616C656E64657273
		Private DayNameButtons() As WTEC_DateButtonOld
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 446173204172726179206D69742064656E20427574746F6E732066C3BC7220646965204D6F6E6174737461676520202832342C2030312920
		Private DayNumberButtons() As WTEC_DateButtonOld
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dtPara As WTEC_DatetimeParameter
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 57656E6E2064696573657320466C61672054525545206973742C2077697264206265692065696E656D205061696E7420646572204B616C656E646572206D697420616B7475656C6C656E20446174656E20626566C3BC6C6C74
		Private ForceCalendarUpdate As boolean = TRUE
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 57656E6E20547275652C2077657264656E206265692065696E656D205061696E74204576656E74207A75657273742064696520436F6E74726F6C7320506F736974696F6E69657274
		Private fReCalcControlPositions As boolean = TRUE
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21, Description = 5365747A74202F204C696573742064656E20496E6465782077656C63686572204D6F6E617473746167206D61726B69657274206973742C206CC3B67374206265696D207365747A656E2064657320496E6465782065696E656E20526566726573682064657220626574726F6666656E656E204172656173206175732C20697374202D312077656E6E206B65696E20546167206D61726B6965727420697374
		#tag Getter
			Get
			  Return zLiteHighLightIndex
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Einen neuen Index als markiert Zeichnen
			  
			  If value <> zLiteHighLightIndex Then
			    // Es wurde ein anderer Index markiert
			    
			    If value = -1 Then
			      // Keine neue Markierung erforderlich
			      If zLiteHighLightIndex <> -1 Then
			        // Nur die alte markierung löschen
			        RefreshArea(DayNumberButtons(zLiteHighLightIndex).Area)
			        zLiteHighLightIndex = value
			      End If
			      
			      
			    Else
			      // Neue Markierung erforderlich
			      
			      If zLiteHighLightIndex <> -1 Then
			        // Es ist bereits ein anderes Feld markiert
			        RefreshArea(DayNumberButtons(zLiteHighLightIndex).Area)
			        zLiteHighLightIndex = value
			        RefreshArea(DayNumberButtons(zLiteHighLightIndex).Area)
			      Else
			        // Es ist kein anderes Feld markiert
			        zLiteHighLightIndex = value
			        RefreshArea(DayNumberButtons(zLiteHighLightIndex).Area)
			      End If
			      
			    End If
			    
			  End If
			End Set
		#tag EndSetter
		Private LiteHighLightIndex As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private workingDate As DateTime
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 496E7465726E65722053706569636865722064657320496E64657865732C206E6963687420646972656B742062656E75747A656E21
		Private zLiteHighLightIndex As Integer = -1
	#tag EndProperty


	#tag Constant, Name = kAbout, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"About Calendar"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"About Calendar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x9Cber den Kalender"
	#tag EndConstant

	#tag Constant, Name = kAbout1, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"About Calendar"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"About Calendar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x9Cber den Kalender"
	#tag EndConstant

	#tag Constant, Name = kHelp_NextMonth, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Next Month"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Next Month"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Monat vor"
	#tag EndConstant

	#tag Constant, Name = kHelp_NextMonth1, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Next Month"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Next Month"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Monat vor"
	#tag EndConstant

	#tag Constant, Name = kHelp_NextYear, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Next Year"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Next Year"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jahr vor"
	#tag EndConstant

	#tag Constant, Name = kHelp_NextYear1, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Next Year"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Next Year"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jahr vor"
	#tag EndConstant

	#tag Constant, Name = kHelp_PrevMonth, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Previous Month"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Previous Month"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Monat zur\xC3\xBCck"
	#tag EndConstant

	#tag Constant, Name = kHelp_PrevMonth1, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Previous Month"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Previous Month"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Monat zur\xC3\xBCck"
	#tag EndConstant

	#tag Constant, Name = kHelp_PrevYear, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Previous Year"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Previous Year"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jahr zur\xC3\xBCck"
	#tag EndConstant

	#tag Constant, Name = kHelp_PrevYear1, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Previous Year"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Previous Year"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Jahr zur\xC3\xBCck"
	#tag EndConstant

	#tag Constant, Name = kMaxMonthYearString, Type = String, Dynamic = True, Default = \"", Scope = Public, Description = 46C3BC7220646965204272656974656E6265726563686E756E6720646573205465787466656C6465732077656C636865732064656E204D6F6E6174736E616D656E20756E642064617320616B7475656C6C65204A61687220616E7A656967742E2044696520427265697465207769726420736F206265726563686E65742C2064617373206469657365722054657874207265696E70617373742E2046C3BC7220616E64657265204CC3A46E646572206D6974206BC3BC727A6572656E2F6CC3A46E676572656E204D6F6E6174736E616D656E2C20736F6C6C74652065696E65204CC3A46E6465727370657A6966697363686520446566696E6974696F6E2067656D616368742077657264656E2E
		#Tag Instance, Platform = Any, Language = Default, Definition  = \" ++September 2026++ "
		#Tag Instance, Platform = Any, Language = de, Definition  = \".ahdfahf aahuf aas fasg afia asIAIAIfA"
	#tag EndConstant

	#tag Constant, Name = kMaxMonthYearString1, Type = String, Dynamic = True, Default = \"", Scope = Public, Description = 46C3BC7220646965204272656974656E6265726563686E756E6720646573205465787466656C6465732077656C636865732064656E204D6F6E6174736E616D656E20756E642064617320616B7475656C6C65204A61687220616E7A656967742E2044696520427265697465207769726420736F206265726563686E65742C2064617373206469657365722054657874207265696E70617373742E2046C3BC7220616E64657265204CC3A46E646572206D6974206BC3BC727A6572656E2F6CC3A46E676572656E204D6F6E6174736E616D656E2C20736F6C6C74652065696E65204CC3A46E6465727370657A6966697363686520446566696E6974696F6E2067656D616368742077657264656E2E
		#Tag Instance, Platform = Any, Language = Default, Definition  = \" ++September 2026++ "
		#Tag Instance, Platform = Any, Language = de, Definition  = \".ahdfahf aahuf aas fasg afia asIAIAIfA"
	#tag EndConstant

	#tag Constant, Name = kText_CalendarAbout, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Copyright (c) 2026 jogicom\nGithub: https://github.com/jogicom/Xojo.DateTimePicker\n\nDieser Code ist unter der MIT-Lizenz ver\xC3\xB6ffentlich\nDieser Hinweis muss erhalten bleiben\x2C kann aber erweitert werden\n\nCode Version: "
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Copyright (c) 2026 jogicom\nGithub: https://github.com/jogicom/Xojo.DateTimePicker\n\nThis code is released under the MIT License.\nThis notice must be retained but may be extended.\n\nCode version:"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Copyright (c) 2026 jogicom\nGithub: https://github.com/jogicom/Xojo.DateTimePicker\n\nThis code is released under the MIT License.\nThis notice must be retained but may be extended.\n\nCode version:"
	#tag EndConstant

	#tag Constant, Name = kText_CalendarAbout1, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Copyright (c) 2026 jogicom\nGithub: https://github.com/jogicom/Xojo.DateTimePicker\n\nDieser Code ist unter der MIT-Lizenz ver\xC3\xB6ffentlich\nDieser Hinweis muss erhalten bleiben\x2C kann aber erweitert werden\n\nCode Version: "
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Copyright (c) 2026 jogicom\nGithub: https://github.com/jogicom/Xojo.DateTimePicker\n\nThis code is released under the MIT License.\nThis notice must be retained but may be extended.\n\nCode version:"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Copyright (c) 2026 jogicom\nGithub: https://github.com/jogicom/Xojo.DateTimePicker\n\nThis code is released under the MIT License.\nThis notice must be retained but may be extended.\n\nCode version:"
	#tag EndConstant

	#tag Constant, Name = kToday, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Today"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Heute"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Today"
	#tag EndConstant

	#tag Constant, Name = kToday1, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Today"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Heute"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Today"
	#tag EndConstant

	#tag Constant, Name = kVersion, Type = String, Dynamic = False, Default = \"V 1.0.0", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kWeekDays, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = de, Definition  = \"So\x2CMo\x2CDi\x2CMi\x2CDo\x2CFr\x2CSa\x2CSo\x2CMo\x2CDi\x2CMi\x2CDo\x2CFr\x2CSa"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Sun\x2CMon\x2CTue\x2CWed\x2CThu\x2CFri\x2CSat\x2CSun\x2CMon\x2CTue\x2CWed\x2CThu\x2CFri\x2CSat"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Sun\x2CMon\x2CTue\x2CWed\x2CThu\x2CFri\x2CSat\x2CSun\x2CMon\x2CTue\x2CWed\x2CThu\x2CFri\x2CSat"
	#tag EndConstant

	#tag Constant, Name = kWeekDays1, Type = String, Dynamic = True, Default = \"", Scope = Public
		#Tag Instance, Platform = Any, Language = de, Definition  = \"So\x2CMo\x2CDi\x2CMi\x2CDo\x2CFr\x2CSa\x2CSo\x2CMo\x2CDi\x2CMi\x2CDo\x2CFr\x2CSa"
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Sun\x2CMon\x2CTue\x2CWed\x2CThu\x2CFri\x2CSat\x2CSun\x2CMon\x2CTue\x2CWed\x2CThu\x2CFri\x2CSat"
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Sun\x2CMon\x2CTue\x2CWed\x2CThu\x2CFri\x2CSat\x2CSun\x2CMon\x2CTue\x2CWed\x2CThu\x2CFri\x2CSat"
	#tag EndConstant


#tag EndWindowCode

#tag Events PB_YearDown
	#tag Event
		Sub Pressed()
		  // Das Arbeitsdatum um ein Jahr herunter zählen
		  #pragma Warning "Blockade"
		  //Var oneYear As New DateInterval
		  //oneYear.Years = 1 ' 1 Jahres intervall
		  //
		  //workingDate = workingDate - oneYear
		  //UpdateCalendar
		  //
		  //Refresh( _
		  //Can_CalendarPicker.Left, _
		  //Can_CalendarPicker.Top, _
		  //Can_CalendarPicker.Width, _
		  //Can_CalendarPicker.Height) 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PB_MonthDown
	#tag Event
		Sub Pressed()
		  // Das Arbeitsdatum um einen Monat herunter zählen
		  
		  #pragma Warning "Blockade"
		  //Var oneMonth As New DateInterval
		  //oneMonth.Months = 1 ' 1 Monats intervall
		  //
		  //workingDate = workingDate - oneMonth
		  //UpdateCalendar
		  //
		  //Refresh( _
		  //Can_CalendarPicker.Left, _
		  //Can_CalendarPicker.Top, _
		  //Can_CalendarPicker.Width, _
		  //Can_CalendarPicker.Height) 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PB_MonthUp
	#tag Event
		Sub Pressed()
		  // Das Arbeitsdatum um einen Monat hoch zählen
		  #Pragma Warning "Blockade"
		  //Var oneMonth As New DateInterval
		  //oneMonth.Months = 1 ' 1 Monats intervall
		  //
		  //workingDate = workingDate + oneMonth
		  //UpdateCalendar
		  //
		  //Refresh( _
		  //Can_CalendarPicker.Left, _
		  //Can_CalendarPicker.Top, _
		  //Can_CalendarPicker.Width, _
		  //Can_CalendarPicker.Height)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PB_YearUp
	#tag Event
		Sub Pressed()
		  // Das Arbeitsdatum um ein Jahr hoch zählen
		  #Pragma Warning "Blockade"
		  //Var oneYear As New DateInterval
		  //oneYear.Years = 1 ' 1 Jahres intervall
		  //
		  //workingDate = workingDate + oneYear
		  //UpdateCalendar
		  //
		  //Refresh( _
		  //Can_CalendarPicker.Left, _
		  //Can_CalendarPicker.Top, _
		  //Can_CalendarPicker.Width, _
		  //Can_CalendarPicker.Height) 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PB_SelectToday
	#tag Event
		Sub Opening()
		  // Text des Today Buttons setzen
		  #Pragma Warning "Blockade"
		  //Var d As New DateTime(DateTime.Now)
		  //
		  //Me.Caption = kToday + ": " + d.ToString(Locale.Current, Datetime.FormatStyles.Medium, DateTime.FormatStyles.None)
		  //
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  // Das heutige Datum setzen als gewähltes Datum
		  
		  Var d As DateTime =  New DateTime(DateTime.Now)
		  
		  //// Das Textfeld steuert alle nötigen Abläufe zur Datumsanpassung
		  //TF_DateInput.Text = d.ToString( Locale.Current, DateTime.FormatStyles.Medium, DateTime.FormatStyles.None)
		  //RaiseEvent DateChanged(d)
		  //
		  //TF_DateInput.SetFocus
		  //if AutoCollapse then IsExpanded = False
		  #pragma Warning "Blockade"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Can_CalendarPicker
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  
		  
		  
		  If fReCalcControlPositions Then SetControlPositions
		  
		  If DayNameButtons.Count = 0 Or DayNumberButtons.Count = 0 Then
		    
		    // Die Wochentage Areas/Tage wurden nicht erstellt, dann erstellen
		    CreateDayAreas
		    
		  End If
		  
		  If ForceCalendarUpdate Then
		    // Den Kalender mit aktuellen Daten befüllen
		    UpdateCalendar
		  End If
		  
		  Var  textheight As Double = g.TextHeight("88",4)
		  
		  #If WTEC_DateTimePickerOld.IsDebug
		    g.DrawingColor = &cE2F00900
		    g.FillRectangle(0,0,Me.Width,Me.Height)
		  #EndIf
		  
		  // 2. Virtuelle "Unterlänge" berechnen für Vertikale Text Zentrierung
		  Var fontDescent As Double = g.TextHeight - g.FontAscent
		  Var fontVCenter As Double = (g.FontAscent / 2) - (fontDescent / 2)
		  
		  Var b As WTEC_DateButtonOld
		  
		  // =========================================================
		  // Ausgabe der Wochentagsnamen
		  // =========================================================
		  g.Bold = True
		  g.DrawingColor = Color.TextColor
		  For r As Integer = 0 To 6
		    
		    b = DayNameButtons(r)
		    
		    If IsInArea(areas, b.Area) Then
		      #If WTEC_DateTimePickerOld.IsDebug
		        // Bei Debug Rahmen um Wochentage zeichnen
		        g.DrawRectangle(b.Area.Left, b.Area.Top, b.Area.Width, b.Area.Height)
		      #EndIf
		      
		      // Wochentage ausgeben
		      g.DrawText(b.Caption, _
		      b.Area.HorizontalCenter -g.TextWidth(b.Caption) / 2, _      // Horizontal zentriert
		      b.Area.VerticalCenter + fontVCenter , _                     // Vertikal Zentriert
		      b.Area.Width _
		      )
		    End If
		  Next
		  
		  
		  For r As Integer = 0 To 41
		    
		    b = DayNumberButtons(r)
		    
		    If IsInArea(areas, b.Area) Then
		      // Hintergrund leicht einfärben ( Index wird gesetzt wenn Mouse Over)
		      If r =LiteHighLightIndex Then
		        g.DrawingColor = &cEB1C1C00  //cLiteHighLite
		        g.FillRectangle(b.Area.Left, b.Area.Top, b.Area.Width, b.Area.Height)
		      End If
		      
		      // Parameter auf Standard
		      g.Bold = False
		      g.DrawingColor = Color.TextColor
		      
		      
		      #If WTEC_DateTimePickerOld.IsDebug
		        g.DrawRectangle(b.Area.Left, b.Area.Top, b.Area.Width, b.Area.Height)
		      #EndIf
		      
		      If b.CalDate = Nil Then
		        g.DrawText("i" + r.ToString, b.Area.Left, b.Area.Top+textheight, b.Area.Width)
		      Else
		        
		        If IsSameDate(b.CalDate, workingDate) Then
		          // Den selektierten Tag / im Background markieren
		          g.DrawingColor = Color.HighlightColor
		          g.FillRectangle(b.Area.Left, b.Area.Top,b.Area.Width,b.Area.Height)
		        End If
		        
		        If IsDateToday(b.CalDate) Or IsSameDate(b.CalDate, workingDate) Then
		          // Den heutigen Tag / das selectierte Datum mit einem Frame markieren
		          g.DrawingColor = Color.FrameColor
		          g.DrawRectangle(b.Area.Left, b.Area.Top,b.Area.Width,b.Area.Height)
		        End If
		        
		        If b.CalDate.Month <> workingDate.Month Then 
		          g.DrawingColor = Color.DisabledTextColor
		        Else
		          g.DrawingColor = Color.TextColor
		        End If
		        
		        g.DrawText(b.Caption, _
		        b.Area.HorizontalCenter -g.TextWidth(b.Caption) / 2, _      // Horizontal zentriert
		        b.Area.VerticalCenter + fontVCenter , _                     // Vertikal Zentriert
		        b.Area.Width _
		        )
		      End If
		    End If
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(x As Integer, y As Integer)
		  
		  // Herausfinden, über welchem Index sich die Maus gerade befindet und diesen Tag  auf LiteHighlight setzen, -1 wenn Maus über keinem Kalendertag ist
		  
		  Var indexMouse As Integer = -1
		  
		  If DayNameButtons.Count <> 0 Then
		    For r As Integer = 0 To DayNumberButtons.LastIndex
		      
		      If DayNumberButtons(r).Area.Contains(x,y) Then
		        indexMouse = r
		        Exit For r
		      End If
		    Next
		  End If
		  
		  LiteHighLightIndex = indexMouse       // Neuen Index verarbeiten
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  // Die Maus hat den Canvas verlassen, Markierung zurücksetzen, sonst bleibt bei sehr schnellen Mauswegegungen die Lite Markierung stehen
		  
		  LiteHighLightIndex = -1
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  
		  Return True   // Ich möchte den MouseUp Event haben
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  // Prüfen, ob der Mausklick auf einem  Kalendertag statt fand
		  
		  If DayNumberButtons.Count <> 0 Then
		    Var b As WTEC_DateButtonOld
		    
		    For r As Integer = 0 To DayNumberButtons.LastIndex
		      b = DayNumberButtons(r)
		      If b.Area.Contains(x,y) Then
		        #Pragma Warning "Blockade"
		        
		        workingDate = New DateTime(b.CalDate.Year, b.CalDate.Month,b.CalDate.Day)
		        
		        Var d As New DateTime(b.CalDate.Year, b.CalDate.Month,b.CalDate.Day)
		        dtPara.SetNewDate.Invoke(d)
		        
		        If dtPara.AutoCollapse Then
		          // Automatisches Schliessen des Kalenders nach Auswahl
		          dtPara.CalendarClose.Invoke()
		          Self.Close
		          dtPara = Nil
		        End If
		        
		        #Pragma Warning "Refresh auf betoffene Felder einengen"
		        Self.Refresh
		        
		      End If
		    Next
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  
		  base.AddMenu(New DesktopMenuItem(kAbout))
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  MessageBox(kText_CalendarAbout + kVersion)
		End Function
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
#tag EndViewBehavior
