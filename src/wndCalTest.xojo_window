#tag DesktopWindow
Begin DesktopWindow wndCalTest
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   HasTitleBar     =   True
   Height          =   836
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   438636543
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "#kTitle"
   Type            =   0
   Visible         =   True
   Width           =   1116
   Begin DesktopButton PB_SendTestDate
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Setze Datum auf 5.1.2024"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   26
      Index           =   -2147483648
      Italic          =   False
      Left            =   397
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
      Tooltip         =   ""
      Top             =   482
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   231
   End
   Begin DesktopSeparator Separator1
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Visible         =   True
      Width           =   1076
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopLabel LBL_Header
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "MathJax_Vector"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "WTEC_DateTimeTool Test"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   1076
   End
   Begin DesktopGroupBox GroupBox2
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#kDemoPopup"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   154
      Index           =   -2147483648
      Italic          =   False
      Left            =   32
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   93
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   287
      Begin DesktopButton PB_Popup
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "#kPB_OpenCalendar"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   26
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   102
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   129
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   157
      End
      Begin DesktopLabel LBL_PopUpDemo
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   60
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   52
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#kPopUpDemoDescription"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   167
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   247
      End
   End
   Begin DesktopGroupBox GroupBox3
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Demo 2"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   154
      Index           =   -2147483648
      Italic          =   False
      Left            =   346
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   93
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   287
      Begin DesktopLabel LBL_Demo2
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   67
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         Italic          =   False
         Left            =   355
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#kPopUpDemo1Description"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   160
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   258
      End
      Begin WTEC_DateTimePicker Demo2
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         AutoCollapse    =   True
         AutoCollapseOnMouseExit=   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF
         Composited      =   False
         Enabled         =   True
         FirstWeekday    =   1
         Fontname        =   "System"
         FontSize        =   20.0
         FontUnit        =   0
         ForceLocale     =   ""
         HasBackgroundColor=   False
         Height          =   38
         HMarginDayNumbers=   5
         HMargin_CalendarWindow=   5
         Index           =   -2147483648
         InitialParent   =   "GroupBox3"
         IsExpanded      =   False
         Left            =   477
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   110
         Transparent     =   False
         ViewMode        =   0
         Visible         =   True
         VMarginDayNumbers=   5
         VMargin_CalendarWindow=   5
         Width           =   126
      End
   End
   Begin DesktopGroupBox GroupBox4
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Demo 3"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   154
      Index           =   -2147483648
      Italic          =   False
      Left            =   346
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   259
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   287
      Begin DesktopLabel LBL_Demo3
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   60
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         Italic          =   False
         Left            =   366
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#kPopUpDemo3Description"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   340
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   258
      End
      Begin WTEC_DateTimePicker Demo3
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         AutoCollapse    =   True
         AutoCollapseOnMouseExit=   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF
         Composited      =   False
         Enabled         =   True
         FirstWeekday    =   2
         Fontname        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         ForceLocale     =   ""
         HasBackgroundColor=   False
         Height          =   27
         HMarginDayNumbers=   5
         HMargin_CalendarWindow=   5
         Index           =   -2147483648
         InitialParent   =   "GroupBox4"
         IsExpanded      =   False
         Left            =   373
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   295
         Transparent     =   False
         ViewMode        =   2
         Visible         =   True
         VMarginDayNumbers=   5
         VMargin_CalendarWindow=   5
         Width           =   240
      End
   End
   Begin DesktopGroupBox GroupBox5
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Event Console"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   197
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   619
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   1082
      Begin DesktopListBox LB_Report
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   1
         ColumnWidths    =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "Monospace"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   3
         HasBorder       =   True
         HasHeader       =   False
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   154
         Index           =   -2147483648
         InitialParent   =   "GroupBox5"
         InitialValue    =   ""
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   655
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   1042
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin DesktopGroupBox GroupBox6
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Demo 1"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   154
      Index           =   -2147483648
      Italic          =   False
      Left            =   32
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   259
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   287
      Begin DesktopLabel LBL_Demo1
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   64
         Index           =   -2147483648
         InitialParent   =   "GroupBox6"
         Italic          =   False
         Left            =   52
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#kPopUpDemo1Description"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   341
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   247
      End
      Begin WTEC_DateTimePicker Demo1
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         AutoCollapse    =   True
         AutoCollapseOnMouseExit=   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF
         Composited      =   False
         Enabled         =   True
         FirstWeekday    =   2
         Fontname        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         ForceLocale     =   ""
         HasBackgroundColor=   False
         Height          =   27
         HMarginDayNumbers=   5
         HMargin_CalendarWindow=   5
         Index           =   -2147483648
         InitialParent   =   "GroupBox6"
         IsExpanded      =   False
         Left            =   108
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   295
         Transparent     =   False
         ViewMode        =   0
         Visible         =   True
         VMarginDayNumbers=   5
         VMargin_CalendarWindow=   5
         Width           =   126
      End
   End
   Begin DesktopGroupBox GroupBox1
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Demo 4"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   154
      Index           =   -2147483648
      Italic          =   False
      Left            =   655
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   93
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   287
      Begin WTEC_DateTimePicker Demo4
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         AutoCollapse    =   True
         AutoCollapseOnMouseExit=   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF
         Composited      =   False
         Enabled         =   True
         FirstWeekday    =   1
         Fontname        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         ForceLocale     =   ""
         HasBackgroundColor=   False
         Height          =   29
         HMarginDayNumbers=   5
         HMargin_CalendarWindow=   5
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         IsExpanded      =   False
         Left            =   675
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   129
         Transparent     =   False
         ViewMode        =   1
         Visible         =   True
         VMarginDayNumbers=   5
         VMargin_CalendarWindow=   5
         Width           =   188
      End
      Begin DesktopLabel LBL_Demo4
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   67
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   665
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   True
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#kPopUpDemo4Description"
         TextAlignment   =   2
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   170
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   258
      End
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  Quit
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub PopUpDemo_ReportsClosed(d as datetime, IsChanged as boolean)
		  LB_Report.AddRowAt(0,"[PopupDemo] reports CLOSED")
		  
		  CalendarContainer = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopUpDemo_ReportsNewDate(d as datetime)
		  LB_Report.AddRowAt(0, _
		  "[PopUpDemo] reports a new Date: " + WTEC_DateTimePicker.dtToString(d, locale.Current), _
		  0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopUpDemo_ReportsNewTime(hour as integer, minute as integer, Seconds as integer)
		  LB_Report.AddRowAt(0, _
		  "[PopUpDemo] reports a new time: " + hour.ToString + ":" + minute.ToString + "::" + seconds.ToString, _
		  0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportsClosed(d as datetime, IsChanged as boolean)
		  MessageBox("Caldendar reports: Is Closed")
		  
		  CalendarContainer = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportsNewDate(d as datetime)
		  MessageBox("Calendar send a new date: " + WTEC_DateTimePicker.dtToString(d, locale.Current, true))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReportsNewTime(hour as integer, minute as integer)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CalendarContainer As WTEC_Calendar
	#tag EndProperty


	#tag Constant, Name = kDemoPopup, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Popup Demo"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Popup Demo"
	#tag EndConstant

	#tag Constant, Name = kPB_OpenCalendar, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Open calendar"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x96ffne Kalender"
	#tag EndConstant

	#tag Constant, Name = kPopUpDemo1Description, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"With actice AutoColapse \x2C ViewMode\x3DDateOnly\x2C Font \x3D System (Default)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit aktiviertem AutoColapse ViewMode\x3D DateOnly\x2C Font\x3DSystem (Default)"
	#tag EndConstant

	#tag Constant, Name = kPopUpDemo2Description, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"With actice AutoColapse \x2C ViewMode\x3DDateOnly\x2C Font \x3D System (Default)\x2C FontSize\x3D20"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit aktiviertem AutoColapse ViewMode\x3D DateOnly\x2C Font\x3DSystem (Default)\x2C GontSize\x3D20"
	#tag EndConstant

	#tag Constant, Name = kPopUpDemo3Description, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"With actice AutoColapse \x2C ViewMode\x3DDateAndSeconds\x2C Font \x3D Default"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit aktiviertem AutoColapse ViewMode\x3D DateAndSeconds\x2C Font\x3D Default"
	#tag EndConstant

	#tag Constant, Name = kPopUpDemo4Description, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"With actice AutoColapse \x2C ViewMode\x3DDateAndTime\x2C Font \x3D Default"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit aktiviertem AutoColapse ViewMode\x3D DateAndTime\x2C Font\x3D Default"
	#tag EndConstant

	#tag Constant, Name = kPopUpDemoDescription, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"With actice AutoColapse and AutoCloseWhenMouseExit\x2C ViewMode\x3D DateOnly"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit aktiviertem AutoColapse und AutoCloseWhenMouseExit\x2C ViewMode\x3D DateOnly"
	#tag EndConstant

	#tag Constant, Name = kTitle, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Multible calendar tests"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verschiedene Kalender Test\'s"
	#tag EndConstant


#tag EndWindowCode

#tag Events PB_SendTestDate
	#tag Event
		Sub Pressed()
		  //Var d As New DateTime(2024,1,5)
		  //WTEC_DateTimePicker1.SetDate(d)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PB_Popup
	#tag Event
		Sub Pressed()
		  // pure Calendar Popup without Textfield
		  
		  LB_Report.AddRowAt(0, "Open calendar PopUp Demo")
		  
		  
		  // Setup Calendar Parameters, Caution: This Array is destroyed by Calendar Close!
		  
		  
		  Var para As New WTEC_PickerParameter
		  para.HMargin_CalendarWindow = 5     // distance between controls
		  para.VMargin_CalendarWindow = 5
		  para.VMarginDayNumbers      = 5     // distance between day areas
		  para.HMarginDayNumbers      = 5
		  para.actualDate             = New DateTime(DateTime.Now)         // initial date      
		  para.FirstWeekDay           = WTEC_DateTimePicker.FirstWeekDays.Monday
		  para.SetNewDate             = WeakAddressOf PopupDemo_ReportsNewDate       // Method that receives the selected date
		  para.CalendarClose          = WeakAddressOf PopUpDemo_ReportsClosed        // Method that is notified of the closing. `CalendarContainer` should be set to `nil` there.
		  para.SetNewTime             = WeakAddressOf PopUpDemo_ReportsNewTime       // Method that is notified of time change 
		  para.AutoCollapse           = True                               // If False, the calendar must be closed using the Close method (Not possible by PopUp mode!
		  para.AutoCloseWhenMouseExit = True                               // If True, calendar is closed by MousExit
		  
		  
		  CalendarContainer =  New WTEC_Calendar(para)      // Create a Calendar instance
		  
		  //  note that the calendar position is absolute, you can calc absolute position with methode WTEC_DateTimePicker.clcAbsPosition 
		  CalendarContainer.EmbedWithin(wndCalTest, 20, 20)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Demo2
	#tag Event , Description = 496D204B616C656E6465722077757264652064617320C3BC626572676562656E6520446174756D20617573676577C3A4686C74
		Sub DateChanged(year as integer, month as integer, day as integer)
		  Var d As New DateTime(year,month,day)
		  LB_Report.AddRowAt(0), "[Demo2->Event DateChanged] reports a new Date : " + WTEC_DateTimePicker.dtToString(d , locale.Current)
		End Sub
	#tag EndEvent
	#tag Event , Description = 57656E6E207369636820646572204B616C656E6465722067657363686C6F7373656E206861742C207769726420C3BC6265722064696573656E204576656E7420696E666F726D696572742E2064617465203D205568727A6569742F446174756D2C2049734368616E67656420545255452077656E6E20446174656E206765C3A46E6465727420777572646520736569742064656D204F70656E
		Sub CalendarClosed(date as DateTime, IsChanged as boolean)
		  LB_Report.AddRowAt(0, "[Demo2->Event CalendarClosed] Reports closed  with Date: " _
		  + WTEC_DateTimePicker.dtToString(date, locale.Current) + " IsChanged=" + IsChanged.ToString, 0)
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 496D204B616C656E646572207775726420646569205568727A656974206765C3A46E646572742C20446174756D20697374206175662064656D206C65747A74656E205374616E64
		Sub TimeChanged(hour as integer, minute as integer, seconds as integer)
		  LB_Report.AddRowAt(0, "[Demo2->Event TimeChanged] reports a new Time : " + hour.ToString + ":" + minute.ToString + "::" + seconds.ToString, 0)
		End Sub
	#tag EndEvent
	#tag Event , Description = 4D69742077656C6368656D20446174756D20736F6C6C20646572204B616C656E646572206265696D20537461727420696E6974616C6973696572742077657264656E
		Function InitialDate() As Datetime
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Demo3
	#tag Event , Description = 496D204B616C656E6465722077757264652064617320C3BC626572676562656E6520446174756D20617573676577C3A4686C74
		Sub DateChanged(year as integer, month as integer, day as integer)
		  Var d As New DateTime(year,month,day)
		  LB_Report.AddRowAt(0),  LB_Report.RowCount.ToString("000") + ". " +"[Demo3-> Event DateChanged] reports a new Date : " + WTEC_DateTimePicker.dtToString(d , locale.Current)
		End Sub
	#tag EndEvent
	#tag Event , Description = 496D204B616C656E646572207775726420646569205568727A656974206765C3A46E646572742C20446174756D20697374206175662064656D206C65747A74656E205374616E64
		Sub TimeChanged(hour as integer, minute as integer, seconds as integer)
		  LB_Report.AddRowAt(0,  LB_Report.RowCount.ToString("000") + ". " +"[Demo3->Event TimeChanged] reports a new Time: " + hour.ToString("00") + ":" + minute.ToString("00") + "::" + seconds.ToString ("00"), 0)
		End Sub
	#tag EndEvent
	#tag Event , Description = 4D69742077656C6368656D20446174756D20736F6C6C20646572204B616C656E646572206265696D20537461727420696E6974616C6973696572742077657264656E
		Function InitialDate() As Datetime
		  
		End Function
	#tag EndEvent
	#tag Event , Description = 57656E6E207369636820646572204B616C656E6465722067657363686C6F7373656E206861742C207769726420C3BC6265722064696573656E204576656E7420696E666F726D696572742E2064617465203D205568727A6569742F446174756D2C2049734368616E67656420545255452077656E6E20446174656E206765C3A46E6465727420777572646520736569742064656D204F70656E
		Sub CalendarClosed(date as DateTime, IsChanged as boolean)
		  LB_Report.AddRowAt(0, LB_Report.RowCount.ToString("000") + ". " +"[Demo3-> EventCalendarClosed] Reports closed with Date: " _
		  + WTEC_DateTimePicker.dtToString(date, locale.Current,True,True) _ 
		  + " IsChanged=" + IsChanged.ToString, 0)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Demo1
	#tag Event , Description = 496D204B616C656E6465722077757264652064617320C3BC626572676562656E6520446174756D20617573676577C3A4686C742C20646965204D656C64756E672069737420696E636C7573697665205A656974
		Sub DateChanged(year as integer, month as integer, day as integer)
		  Var d As New DateTime(year,month,day)
		  LB_Report.AddRowAt(0), "[Demo1->Event DateChanged] reports a new Date: " + WTEC_DateTimePicker.dtToString(d , locale.Current)
		End Sub
	#tag EndEvent
	#tag Event , Description = 4D69742077656C6368656D20446174756D20736F6C6C20646572204B616C656E646572206265696D20537461727420696E6974616C6973696572742077657264656E
		Function InitialDate() As Datetime
		  
		End Function
	#tag EndEvent
	#tag Event , Description = 496D204B616C656E646572207775726420646569205568727A656974206765C3A46E646572742C20446174756D20697374206175662064656D206C65747A74656E205374616E64
		Sub TimeChanged(hour as integer, minute as integer, seconds as integer)
		  LB_Report.AddRowAt(0, "[Demo1->EventTimeChanged] reports a new Time: " + hour.ToString + ":" + minute.ToString + "::" + seconds.ToString, 0)
		End Sub
	#tag EndEvent
	#tag Event , Description = 57656E6E207369636820646572204B616C656E6465722067657363686C6F7373656E206861742C207769726420C3BC6265722064696573656E204576656E7420696E666F726D696572742E2064617465203D205568727A6569742F446174756D2C2049734368616E67656420545255452077656E6E20446174656E206765C3A46E6465727420777572646520736569742064656D204F70656E
		Sub CalendarClosed(date as DateTime, IsChanged as boolean)
		  LB_Report.AddRowAt(0, "[Demo1->Event CalendarClosed] Closed with Date: " + WTEC_DateTimePicker.dtToString(date, locale.Current) + " IsChanged=" + IsChanged.ToString, 0)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Demo4
	#tag Event
		Sub DateChanged(year as integer, month as integer, day as integer)
		  Var d As New DateTime(year,month,day)
		  LB_Report.AddRowAt(0), "[Demo4->Event DateChanged] reports a new Date : " + WTEC_DateTimePicker.dtToString(d , locale.Current)
		End Sub
	#tag EndEvent
	#tag Event
		Sub CalendarClosed(date as DateTime, IsChanged as boolean)
		  LB_Report.AddRowAt(0, "[Demo4->Event CalendarClosed] Reports closed  with Date: " _
		  + WTEC_DateTimePicker.dtToString(date, locale.Current,true) + " IsChanged=" + IsChanged.ToString, 0)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TimeChanged(hour as integer, minute as integer, seconds as integer)
		  LB_Report.AddRowAt(0, "[Demo4->Event TimeChanged] reports a new Time : " + hour.ToString + ":" + minute.ToString + "::" + seconds.ToString, 0)
		End Sub
	#tag EndEvent
	#tag Event
		Function InitialDate() As Datetime
		  
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
		Name="Interfaces"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasTitleBar"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
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
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
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
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
