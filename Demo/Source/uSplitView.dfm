object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'TSplitView'
  ClientHeight = 669
  ClientWidth = 1034
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ScreenSnap = True
  ShowHint = True
  OnAfterMonitorDpiChanged = FormAfterMonitorDpiChanged
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object splSettings: TSplitter
    Left = 1031
    Top = 42
    Height = 627
    Align = alRight
    AutoSnap = False
    Beveled = True
    MinSize = 45
    ExplicitLeft = 208
    ExplicitTop = 57
    ExplicitHeight = 682
  end
  object splSplit: TSplitter
    Left = 200
    Top = 42
    Height = 627
    AutoSnap = False
    Beveled = True
    MinSize = 45
    ExplicitLeft = 344
    ExplicitTop = 296
    ExplicitHeight = 100
  end
  object PageControl: TPageControl
    Left = 203
    Top = 42
    Width = 528
    Height = 627
    ActivePage = tsStandard
    Align = alClient
    TabOrder = 3
    OnChange = PageControlChange
    object tsStandard: TTabSheet
      Caption = 'Standard Controls'
      ImageIndex = 1
      DesignSize = (
        520
        599)
      object Label1: TLabel
        Left = 8
        Top = 5
        Width = 31
        Height = 13
        Caption = 'Label1'
        Transparent = True
      end
      object Edit: TEdit
        Left = 8
        Top = 24
        Width = 223
        Height = 21
        TabOrder = 0
      end
      object HomeButton: TButton
        Left = 361
        Top = 567
        Width = 75
        Height = 25
        Action = actHome
        Anchors = [akRight, akBottom]
        Images = IconFontsImageList
        TabOrder = 13
      end
      object LogButton: TButton
        Left = 442
        Top = 567
        Width = 75
        Height = 25
        Action = actLog
        Anchors = [akRight, akBottom]
        Images = IconFontsImageList
        TabOrder = 14
      end
      object CheckListBox: TCheckListBox
        Left = 8
        Top = 59
        Width = 223
        Height = 100
        ItemHeight = 13
        Items.Strings = (
          'First'
          'Second'
          'Third')
        TabOrder = 3
      end
      object ColorGrid: TColorGrid
        Left = 237
        Top = 59
        Width = 100
        Height = 100
        TabOrder = 4
      end
      object RichEdit: TRichEdit
        Left = 343
        Top = 59
        Width = 186
        Height = 100
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Zoom = 100
      end
      object SpinEdit: TSpinEdit
        Left = 8
        Top = 173
        Width = 121
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 6
        Value = 0
      end
      object ComboBox: TComboBox
        Left = 135
        Top = 173
        Width = 202
        Height = 21
        Style = csDropDownList
        Color = clBtnFace
        TabOrder = 7
        Items.Strings = (
          'First'
          'Second'
          'Third')
      end
      object ListBox: TListBox
        Left = 8
        Top = 216
        Width = 121
        Height = 97
        ItemHeight = 13
        Items.Strings = (
          'One'
          'Two'
          'Three')
        TabOrder = 9
      end
      object Memo: TMemo
        Left = 136
        Top = 216
        Width = 201
        Height = 97
        TabOrder = 10
      end
      object ColorBox: TColorBox
        Left = 344
        Top = 173
        Width = 185
        Height = 24
        ItemHeight = 18
        TabOrder = 8
      end
      object MaskEdit: TMaskEdit
        Left = 237
        Top = 24
        Width = 127
        Height = 21
        EditMask = '!\(999\)000-0000;1; '
        MaxLength = 13
        TabOrder = 1
        Text = '(   )   -    '
      end
      object RadioButton: TRadioButton
        Left = 384
        Top = 28
        Width = 145
        Height = 13
        Caption = 'Radio button'
        TabOrder = 2
      end
      object RadioGroup: TRadioGroup
        Left = 343
        Top = 216
        Width = 122
        Height = 97
        Caption = 'RadioGroup'
        Items.Strings = (
          'First'
          'Second'
          'Third')
        ParentBackground = False
        TabOrder = 11
      end
      object DBRichEdit: TDBRichEdit
        Left = 8
        Top = 329
        Width = 329
        Height = 113
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        TabOrder = 12
        Zoom = 100
      end
      object DateTimePicker: TDateTimePicker
        Left = 8
        Top = 457
        Width = 129
        Height = 21
        Date = 43839.000000000000000000
        Time = 0.673683599539799600
        TabOrder = 15
      end
    end
    object tsWindows10: TTabSheet
      Caption = 'Windows 10 controls'
      ImageIndex = 2
      ExplicitHeight = 131
      object CalendarView: TCalendarView
        Left = 3
        Top = 16
        Width = 230
        Height = 201
        Date = 43797.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        HeaderInfo.DaysOfWeekFont.Color = clWindowText
        HeaderInfo.DaysOfWeekFont.Height = -13
        HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        HeaderInfo.DaysOfWeekFont.Style = []
        HeaderInfo.Font.Charset = DEFAULT_CHARSET
        HeaderInfo.Font.Color = clWindowText
        HeaderInfo.Font.Height = -20
        HeaderInfo.Font.Name = 'Segoe UI'
        HeaderInfo.Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CalendarPicker: TCalendarPicker
        Left = 3
        Top = 236
        Width = 146
        Height = 25
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TextHint = 'select a date'
      end
      object ButtonEdit: TSearchBox
        Left = 3
        Top = 279
        Width = 223
        Height = 21
        TabOrder = 2
        Text = 'Milano'
        SearchIndicator = sbiAudio
      end
      object ButtonEditDate: TSearchBox
        Left = 3
        Top = 323
        Width = 223
        Height = 21
        MaxLength = 10
        TabOrder = 3
      end
    end
    object tsDatabase: TTabSheet
      Caption = 'Database'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBNavigator: TDBNavigator
        Left = 0
        Top = 0
        Width = 520
        Height = 25
        DataSource = DataSource
        Align = alTop
        TabOrder = 0
      end
      object DbGrid: TDBGrid
        Left = 0
        Top = 25
        Width = 520
        Height = 136
        Align = alTop
        DataSource = DataSource
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Species No'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Category'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Common_Name'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Species Name'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Length (cm)'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Length_In'
            Width = 70
            Visible = True
          end>
      end
      object paEdit: TPanel
        Left = 0
        Top = 161
        Width = 520
        Height = 438
        Align = alClient
        ParentColor = True
        TabOrder = 2
        DesignSize = (
          520
          438)
        object Label4: TLabel
          Left = 6
          Top = 8
          Width = 52
          Height = 13
          Caption = 'Species No'
          FocusControl = DBEdit1
        end
        object Label5: TLabel
          Left = 6
          Top = 48
          Width = 45
          Height = 13
          Caption = 'Category'
          FocusControl = DBEdit2
        end
        object Label6: TLabel
          Left = 6
          Top = 88
          Width = 74
          Height = 13
          Caption = 'Common_Name'
          FocusControl = DBEdit3
        end
        object Label7: TLabel
          Left = 6
          Top = 128
          Width = 66
          Height = 13
          Caption = 'Species Name'
          FocusControl = DBEdit4
        end
        object Label8: TLabel
          Left = 6
          Top = 176
          Width = 57
          Height = 13
          Caption = 'Length (cm)'
          FocusControl = DBEdit5
        end
        object Label9: TLabel
          Left = 6
          Top = 216
          Width = 49
          Height = 13
          Caption = 'Length_In'
          FocusControl = DBEdit6
        end
        object Label10: TLabel
          Left = 6
          Top = 259
          Width = 28
          Height = 13
          Caption = 'Notes'
          FocusControl = DBMemo1
        end
        object Label11: TLabel
          Left = 213
          Top = 8
          Width = 36
          Height = 13
          Caption = 'Graphic'
          FocusControl = DBImage
        end
        object DBEdit1: TDBEdit
          Left = 6
          Top = 24
          Width = 134
          Height = 21
          DataField = 'Species No'
          DataSource = DataSource
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 6
          Top = 64
          Width = 199
          Height = 21
          DataField = 'Category'
          DataSource = DataSource
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 6
          Top = 104
          Width = 199
          Height = 21
          DataField = 'Common_Name'
          DataSource = DataSource
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 6
          Top = 144
          Width = 199
          Height = 21
          DataField = 'Species Name'
          DataSource = DataSource
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 6
          Top = 192
          Width = 134
          Height = 21
          DataField = 'Length (cm)'
          DataSource = DataSource
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 6
          Top = 232
          Width = 134
          Height = 21
          DataField = 'Length_In'
          DataSource = DataSource
          TabOrder = 5
        end
        object DBMemo1: TDBMemo
          Left = 6
          Top = 275
          Width = 199
          Height = 156
          Anchors = [akLeft, akTop, akBottom]
          DataField = 'Notes'
          DataSource = DataSource
          TabOrder = 6
        end
        object DBImage: TDBImage
          Left = 213
          Top = 24
          Width = 296
          Height = 407
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clAqua
          DataField = 'Graphic'
          DataSource = DataSource
          Proportional = True
          Stretch = True
          TabOrder = 7
          OnDblClick = DBImageDblClick
        end
      end
    end
  end
  object panlTop: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object lblTitle: TLabel
      AlignWithMargins = True
      Left = 40
      Top = 3
      Width = 121
      Height = 36
      Align = alLeft
      Caption = 'TSplitView Demonstration'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object MenuButtonToolbar: TToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 31
      Height = 36
      Align = alLeft
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 36
      Color = clYellow
      DrawingStyle = dsGradient
      GradientEndColor = clHighlight
      GradientStartColor = clHighlight
      Images = IconFontsImageList
      ParentColor = False
      TabOrder = 0
      Transparent = True
      object ToolButton1: TToolButton
        AlignWithMargins = True
        Left = 0
        Top = 0
        Action = actMenu
        AutoSize = True
      end
    end
    object ToolBar: TToolBar
      AlignWithMargins = True
      Left = 923
      Top = 3
      Width = 108
      Height = 36
      Align = alRight
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 36
      Color = clYellow
      DrawingStyle = dsGradient
      GradientEndColor = clHighlight
      GradientStartColor = clHighlight
      Images = IconFontsImageList
      ParentColor = False
      TabOrder = 1
      Transparent = True
      object ToolButton2: TToolButton
        Left = 0
        Top = 0
        Action = actHome
      end
      object ToolButton3: TToolButton
        Left = 36
        Top = 0
        Action = actChangeTheme
      end
      object ToolButton4: TToolButton
        Left = 72
        Top = 0
        Action = actSettings
      end
    end
  end
  object SV: TSplitView
    Left = 0
    Top = 42
    Width = 200
    Height = 627
    CloseStyle = svcCompact
    CompactWidth = 48
    OpenedWidth = 200
    ParentBackground = True
    ParentColor = True
    ParentDoubleBuffered = True
    Placement = svpLeft
    TabOrder = 1
    OnClosed = SVClosed
    OnClosing = SVClosing
    OnOpened = SVOpened
    OnOpening = SVOpening
    OnResize = SVResize
    object catMenuItems: TCategoryButtons
      Left = 0
      Top = 0
      Width = 200
      Height = 554
      Align = alClient
      BackgroundGradientDirection = gdVertical
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonHeight = 36
      ButtonWidth = 36
      ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
      Categories = <
        item
          Caption = 'Actions'
          Color = clNone
          Collapsed = False
          Items = <
            item
              Action = actHome
            end
            item
              Action = actChangeTheme
            end
            item
              Action = actShowChildForm
            end>
          TextColor = clHighlightText
        end
        item
          Caption = 'Messages'
          Color = clNone
          Collapsed = False
          Items = <
            item
              Action = acErrorMessage
            end
            item
              Action = acConfirmMessage
            end
            item
              Action = acWarningMessage
            end
            item
              Action = acInfoMessage
            end>
          TextColor = clHighlightText
        end
        item
          Caption = 'Info'
          Color = clNone
          Collapsed = False
          Items = <
            item
              Action = actLog
            end
            item
              Action = actSettings
            end
            item
              Action = acAbout
            end>
          TextColor = clHighlightText
        end>
      Color = clHighlight
      DoubleBuffered = True
      HotButtonColor = 12500670
      Images = IconFontsImageList
      ParentDoubleBuffered = False
      RegularButtonColor = clNone
      SelectedButtonColor = clNone
      TabOrder = 0
    end
    object catSettings: TCategoryButtons
      Left = 0
      Top = 554
      Width = 200
      Height = 73
      Align = alBottom
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonHeight = 36
      ButtonWidth = 36
      ButtonOptions = [boCaptionOnlyBorder]
      Categories = <
        item
          Caption = 'Settings'
          Color = clNone
          Collapsed = False
          Items = <
            item
              Action = actHome
            end
            item
              Action = actChangeTheme
            end
            item
              Action = actSettings
            end>
          TextColor = clHighlightText
        end>
      Color = clHighlight
      HotButtonColor = 15974029
      Images = IconFontsImageList
      RegularButtonColor = clNone
      SelectedButtonColor = clNone
      TabOrder = 1
      OnCategoryCollapase = CatPreventCollapase
    end
  end
  object svSettings: TSplitView
    Left = 731
    Top = 42
    Width = 300
    Height = 627
    AnimationDelay = 10
    AnimationStep = 30
    Color = 15000804
    CompactWidth = 44
    OpenedWidth = 300
    ParentDoubleBuffered = True
    Placement = svpRight
    TabOrder = 2
    OnClosed = svSettingsClosed
    OnClosing = svSettingsClosing
    OnOpened = svSettingsOpened
    object catMenuSettings: TCategoryButtons
      Left = 0
      Top = 0
      Width = 300
      Height = 249
      Align = alTop
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonHeight = 36
      ButtonWidth = 36
      ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
      Categories = <
        item
          Color = clNone
          Collapsed = False
          Items = <
            item
              Action = acFont
            end
            item
              Action = actViewOptions
            end
            item
              Action = acIconFonts
              Caption = 'Icons'
            end
            item
              Action = actAnimate
            end
            item
              Action = actLog
            end>
        end>
      Color = clBtnFace
      HotButtonColor = 12500670
      Images = IconFontsImageListColored
      RegularButtonColor = clNone
      SelectedButtonColor = clNone
      TabOrder = 0
      OnCategoryCollapase = CatPreventCollapase
    end
    object pnlSettings: TPanel
      Left = 0
      Top = 249
      Width = 300
      Height = 378
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      Visible = False
      object pcSettings: TPageControl
        Left = 0
        Top = 67
        Width = 300
        Height = 311
        Margins.Top = 60
        ActivePage = tsFont
        Align = alClient
        TabOrder = 0
        object tsFont: TTabSheet
          Caption = 'Font'
          ImageIndex = 3
          DesignSize = (
            292
            283)
          object Label2: TLabel
            Left = 18
            Top = 16
            Width = 56
            Height = 13
            Caption = 'Font Height'
          end
          object FontSizeLabel: TLabel
            Left = 120
            Top = 16
            Width = 6
            Height = 13
            Caption = '8'
          end
          object FontTrackBar: TTrackBar
            Left = 8
            Top = 56
            Width = 282
            Height = 36
            Anchors = [akLeft, akTop, akRight]
            Max = 26
            Min = 8
            Position = 14
            TabOrder = 0
            OnChange = FontTrackBarChange
          end
          object FontComboBox: TComboBox
            Left = 18
            Top = 112
            Width = 263
            Height = 21
            Style = csDropDownList
            TabOrder = 1
            OnSelect = FontComboBoxSelect
            Items.Strings = (
              'First'
              'Second'
              'Third')
          end
          object SaveFontButton: TButton
            Left = 18
            Top = 251
            Width = 75
            Height = 25
            Action = acApplyFont
            Anchors = [akLeft, akBottom]
            Images = IconFontsImageList
            TabOrder = 2
          end
        end
        object tsStyle: TTabSheet
          Caption = 'Menu'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            292
            283)
          object grpDisplayMode: TRadioGroup
            Left = 2
            Top = 6
            Width = 286
            Height = 42
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Display Mode'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Docked'
              'Overlay')
            TabOrder = 0
            OnClick = grpDisplayModeClick
          end
          object grpCloseStyle: TRadioGroup
            Left = 3
            Top = 65
            Width = 286
            Height = 42
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Close Style'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Collapse'
              'Compact')
            TabOrder = 1
            OnClick = grpCloseStyleClick
          end
          object grpPlacement: TRadioGroup
            Left = 2
            Top = 124
            Width = 287
            Height = 46
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Placement'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Left'
              'Right')
            TabOrder = 2
            OnClick = grpPlacementClick
          end
        end
        object tsIconFonts: TTabSheet
          Caption = 'Icons'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            292
            283)
          object Label3: TLabel
            Left = 26
            Top = 24
            Width = 68
            Height = 13
            Caption = 'Icon Font Size'
          end
          object IconFontsSizeLabel: TLabel
            Left = 128
            Top = 24
            Width = 12
            Height = 13
            Caption = '24'
          end
          object IconFontsTrackBar: TTrackBar
            Left = 10
            Top = 64
            Width = 282
            Height = 36
            Anchors = [akLeft, akTop, akRight]
            Max = 64
            Min = 16
            Position = 24
            TabOrder = 0
            OnChange = IconFontsTrackBarChange
          end
          object IconsToggleSwitch: TToggleSwitch
            Left = 14
            Top = 106
            Width = 104
            Height = 20
            StateCaptions.CaptionOn = 'SVG Icons'
            StateCaptions.CaptionOff = 'SVG Icons'
            TabOrder = 1
            OnClick = IconsToggleSwitchClick
          end
        end
        object tsAnimation: TTabSheet
          Caption = 'Animation'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            292
            283)
          object lblAnimationDelay: TLabel
            Left = 11
            Top = 41
            Width = 100
            Height = 13
            Caption = 'Animation Delay (15)'
          end
          object lblAnimationStep: TLabel
            Left = 11
            Top = 108
            Width = 95
            Height = 13
            Caption = 'Animation Step (20)'
          end
          object tswAnimation: TToggleSwitch
            Left = 9
            Top = 9
            Width = 72
            Height = 20
            State = tssOn
            TabOrder = 0
            OnClick = tswAnimationClick
          end
          object trkAnimationDelay: TTrackBar
            Left = 3
            Top = 62
            Width = 282
            Height = 36
            Anchors = [akLeft, akTop, akRight]
            Max = 15
            Min = 1
            Position = 3
            TabOrder = 1
            OnChange = trkAnimationDelayChange
          end
          object trkAnimationStep: TTrackBar
            Left = 3
            Top = 129
            Width = 282
            Height = 33
            Anchors = [akLeft, akTop, akRight]
            Max = 15
            Min = 1
            Position = 4
            TabOrder = 2
            OnChange = trkAnimationStepChange
          end
          object tsvDisplayMode: TToggleSwitch
            Left = 9
            Top = 177
            Width = 94
            Height = 20
            StateCaptions.CaptionOn = 'Overlay'
            StateCaptions.CaptionOff = 'Docked'
            TabOrder = 3
            OnClick = tsvDisplayModeClick
          end
          object ttsCloseStyle: TToggleSwitch
            Left = 9
            Top = 209
            Width = 98
            Height = 20
            StateCaptions.CaptionOn = 'Collapse'
            StateCaptions.CaptionOff = 'Compact'
            TabOrder = 4
            OnClick = ttsCloseStyleClick
          end
          object ttsCloseSplitView: TToggleSwitch
            Left = 9
            Top = 241
            Width = 153
            Height = 20
            State = tssOn
            StateCaptions.CaptionOn = 'Auto close menu'
            StateCaptions.CaptionOff = 'Leave menu opened'
            TabOrder = 5
            OnClick = ttsCloseStyleClick
          end
        end
        object tsLog: TTabSheet
          Caption = 'Log'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lstLog: TListBox
            Left = 0
            Top = 0
            Width = 292
            Height = 283
            Align = alClient
            ItemHeight = 13
            ParentColor = True
            TabOrder = 0
          end
        end
      end
      object catPanelSettings: TCategoryButtons
        Left = 0
        Top = 0
        Width = 300
        Height = 67
        Align = alTop
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        ButtonFlow = cbfVertical
        ButtonHeight = 36
        ButtonWidth = 36
        ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
        Categories = <
          item
            Caption = 'Settings'
            Color = clNone
            Collapsed = False
            Items = <
              item
                Action = actBack
              end>
          end>
        GradientDirection = gdVertical
        HotButtonColor = 15974029
        Images = IconFontsImageListColored
        RegularButtonColor = clWhite
        SelectedButtonColor = 15132390
        TabOrder = 1
        OnCategoryCollapase = CatPreventCollapase
      end
    end
  end
  object ActionList: TActionList
    Images = IconFontsImageList
    OnUpdate = ActionListUpdate
    Left = 464
    Top = 460
    object actHome: TAction
      Caption = 'Home'
      Hint = 'Home action...'
      ImageIndex = 5
      OnExecute = actHomeExecute
    end
    object actChangeTheme: TAction
      Caption = 'Theme selector'
      Hint = 'Change theme using Theme Selector...'
      ImageIndex = 7
      OnExecute = actChangeThemeExecute
    end
    object actShowChildForm: TAction
      Caption = 'Child form'
      Hint = 'Show child form...'
      ImageIndex = 3
      OnExecute = actShowChildFormExecute
    end
    object actMenu: TAction
      Hint = 'Collapse'
      ImageIndex = 0
      OnExecute = actMenuExecute
    end
    object actSettings: TAction
      Caption = 'Settings'
      ImageIndex = 1
      OnExecute = actSettingsExecute
    end
    object actViewOptions: TAction
      Caption = 'Menu'
      Hint = 'Menu settings'
      ImageIndex = 12
      OnExecute = actViewOptionsExecute
    end
    object actBack: TAction
      Caption = 'Back'
      ImageIndex = 8
      OnExecute = actBackExecute
    end
    object actAnimate: TAction
      Caption = 'Animate'
      ImageIndex = 9
      OnExecute = actAnimateExecute
    end
    object actLog: TAction
      Caption = 'Log'
      ImageIndex = 10
      OnExecute = actLogExecute
    end
    object acFont: TAction
      Caption = 'Font'
      ImageIndex = 11
      OnExecute = acFontExecute
    end
    object acApplyFont: TAction
      Caption = 'Save'
      Hint = 'Save application font...'
      ImageIndex = 13
      OnExecute = acApplyFontExecute
      OnUpdate = acApplyFontUpdate
    end
    object acIconFonts: TAction
      Caption = 'Icon Fonts'
      ImageIndex = 14
      OnExecute = acIconFontsExecute
    end
    object acErrorMessage: TAction
      Caption = 'Error Message...'
      ImageIndex = 16
      OnExecute = acMessageExecute
    end
    object acWarningMessage: TAction
      Caption = 'Warning Message...'
      ImageIndex = 15
      OnExecute = acMessageExecute
    end
    object acInfoMessage: TAction
      Caption = 'Info Message...'
      ImageIndex = 17
      OnExecute = acMessageExecute
    end
    object acConfirmMessage: TAction
      Caption = 'Confirmation Message...'
      ImageIndex = 18
      OnExecute = acMessageExecute
    end
    object acAbout: TAction
      Caption = 'About...'
      ImageIndex = 19
      OnExecute = acAboutExecute
    end
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = ClientDataSetAfterPost
    Left = 600
    Top = 120
    object ClientDataSetSpeciesNo: TFloatField
      FieldName = 'Species No'
    end
    object ClientDataSetCategory: TStringField
      FieldName = 'Category'
      Size = 15
    end
    object ClientDataSetCommon_Name: TStringField
      FieldName = 'Common_Name'
      Size = 30
    end
    object ClientDataSetSpeciesName: TStringField
      FieldName = 'Species Name'
      Size = 40
    end
    object ClientDataSetLengthcm: TFloatField
      FieldName = 'Length (cm)'
    end
    object ClientDataSetLength_In: TFloatField
      FieldName = 'Length_In'
    end
    object ClientDataSetNotes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
      Size = 50
    end
    object ClientDataSetGraphic: TGraphicField
      FieldName = 'Graphic'
      BlobType = ftGraphic
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 928
    Top = 144
  end
  object IconFontsImageList: TIconFontsImageList
    IconFontItems = <
      item
        FontIconDec = 983900
        IconName = 'menu'
      end
      item
        FontIconDec = 984211
        IconName = 'settings'
      end
      item
        FontIconDec = 983276
        IconName = 'calculator'
      end
      item
        FontIconDec = 983848
        IconName = 'layers'
      end
      item
        FontIconDec = 983346
        IconName = 'checkbox'
      end
      item
        FontIconDec = 983772
        IconName = 'home'
      end
      item
        FontIconDec = 983165
        IconName = 'battery-40'
      end
      item
        FontIconDec = 984024
        IconName = 'palette'
      end
      item
        FontIconDec = 983117
        IconName = 'arrow-left'
      end
      item
        FontIconDec = 984075
        IconName = 'play'
      end
      item
        FontIconDec = 986799
        IconName = 'find'
      end
      item
        FontIconDec = 984790
        IconName = 'font'
      end
      item
        FontIconDec = 984430
        IconName = 'dashboard'
      end
      item
        FontIconDec = 986654
        IconName = 'check'
      end
      item
        FontIconDec = 983787
        IconName = 'picture'
      end
      item
        FontIconDec = 983078
        IconName = 'alert'
      end
      item
        FontIconDec = 983081
        IconName = 'error'
      end
      item
        FontIconDec = 983804
        IconName = 'information'
      end
      item
        FontIconDec = 983080
        IconName = 'warning'
      end
      item
        FontIconDec = 983767
        IconName = 'help'
      end>
    FontName = 'Material Design Icons Desktop'
    FontColor = clBlack
    MaskColor = clSilver
    Size = 24
    OnFontMissing = IconFontsImageListFontMissing
    Left = 368
    Top = 520
  end
  object IconFontsImageListColored: TIconFontsImageList
    IconFontItems = <
      item
        FontIconDec = 983900
        IconName = 'menu'
      end
      item
        FontIconDec = 984211
        IconName = 'cog'
      end
      item
        FontIconDec = 983275
        IconName = 'cake-variant'
      end
      item
        FontIconDec = 983848
        IconName = 'layers'
      end
      item
        FontIconDec = 983346
        IconName = 'checkbox-marked'
      end
      item
        FontIconDec = 983772
        IconName = 'home'
      end
      item
        FontIconDec = 983165
        IconName = 'battery-40'
      end
      item
        FontIconDec = 984024
        FontColor = clRed
        IconName = 'palette'
      end
      item
        FontIconDec = 983117
        FontColor = clTeal
        IconName = 'arrow-left'
      end
      item
        FontIconDec = 984075
        IconName = 'play-box-outline'
      end
      item
        FontIconDec = 986799
        IconName = 'text-box-search-outline'
      end
      item
        FontIconDec = 984790
        FontColor = clNavy
        IconName = 'format-font'
      end
      item
        FontIconDec = 984430
        FontColor = 13536057
        IconName = 'view-dashboard'
      end
      item
        FontIconDec = 986654
        FontColor = clGreen
        IconName = 'check-bold'
      end
      item
        FontIconDec = 987146
        FontColor = clMaroon
        IconName = 'account-box-multiple-outline'
      end
      item
        FontIconDec = 983078
        FontColor = clYellow
        IconName = 'alert'
      end
      item
        FontIconDec = 983081
        FontColor = clRed
        IconName = 'alert-octagon'
      end
      item
        FontIconDec = 983804
        FontColor = clGreen
        IconName = 'information'
      end
      item
        FontIconDec = 983080
        FontColor = clBlue
        IconName = 'alert-circle'
      end
      item
        FontIconDec = 983767
        IconName = 'help-circle'
      end>
    FontName = 'Material Design Icons Desktop'
    FontColor = clBlack
    MaskColor = clWhite
    Size = 24
    OnFontMissing = IconFontsImageListFontMissing
    Left = 480
    Top = 520
  end
  object FileOpenDialog: TFileOpenDialog
    DefaultExtension = '*.gif'
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 632
    Top = 424
  end
  object SVGIconImageList: TSVGIconImageList
    Size = 24
    Left = 368
    Top = 576
    Images = {
      14000000040000006D0065006E007500320100003C7376672076657273696F6E
      3D22312220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
      30302F737667222076696577426F783D223020302034382034382220656E6162
      6C652D6261636B67726F756E643D226E657720302030203438203438223E0D0A
      202020203C672066696C6C3D2223363037443842223E0D0A2020202020202020
      3C7265637420783D22362220793D223232222077696474683D22333622206865
      696768743D2234222F3E0D0A20202020202020203C7265637420783D22362220
      793D223130222077696474683D22333622206865696768743D2234222F3E0D0A
      20202020202020203C7265637420783D22362220793D22333422207769647468
      3D22333622206865696768743D2234222F3E0D0A202020203C2F673E0D0A3C2F
      7376673E0D0A08000000730065007400740069006E0067007300050400003C73
      76672076657273696F6E3D22312220786D6C6E733D22687474703A2F2F777777
      2E77332E6F72672F323030302F737667222076696577426F783D223020302034
      382034382220656E61626C652D6261636B67726F756E643D226E657720302030
      203438203438223E0D0A202020203C706174682066696C6C3D22233630374438
      422220643D224D33392E362C32372E3263302E312D302E372C302E322D312E34
      2C302E322D322E32732D302E312D312E352D302E322D322E326C342E352D332E
      3263302E342D302E332C302E362D302E392C302E332D312E344C34302C31302E
      3820632D302E332D302E352D302E382D302E372D312E332D302E346C2D352C32
      2E33632D312E322D302E392D322E342D312E362D332E382D322E326C2D302E35
      2D352E35632D302E312D302E352D302E352D302E392D312D302E39682D382E36
      632D302E352C302D312C302E342D312C302E396C2D302E352C352E3520632D31
      2E342C302E362D322E372C312E332D332E382C322E326C2D352D322E33632D30
      2E352D302E322D312E312C302D312E332C302E346C2D342E332C372E34632D30
      2E332C302E352D302E312C312E312C302E332C312E346C342E352C332E32632D
      302E312C302E372D302E322C312E342D302E322C322E322073302E312C312E35
      2C302E322C322E324C342C33302E34632D302E342C302E332D302E362C302E39
      2D302E332C312E344C382C33392E3263302E332C302E352C302E382C302E372C
      312E332C302E346C352D322E3363312E322C302E392C322E342C312E362C332E
      382C322E326C302E352C352E352063302E312C302E352C302E352C302E392C31
      2C302E3968382E3663302E352C302C312D302E342C312D302E396C302E352D35
      2E3563312E342D302E362C322E372D312E332C332E382D322E326C352C322E33
      63302E352C302E322C312E312C302C312E332D302E346C342E332D372E342063
      302E332D302E352C302E312D312E312D302E332D312E344C33392E362C32372E
      327A204D32342C3335632D352E352C302D31302D342E352D31302D313063302D
      352E352C342E352D31302C31302D313063352E352C302C31302C342E352C3130
      2C31304333342C33302E352C32392E352C33352C32342C33357A222F3E0D0A20
      2020203C706174682066696C6C3D22233435354136342220643D224D32342C31
      33632D362E362C302D31322C352E342D31322C313263302C362E362C352E342C
      31322C31322C31327331322D352E342C31322D31324333362C31382E342C3330
      2E362C31332C32342C31337A204D32342C333020632D322E382C302D352D322E
      322D352D3563302D322E382C322E322D352C352D3573352C322E322C352C3543
      32392C32372E382C32362E382C33302C32342C33307A222F3E0D0A3C2F737667
      3E0D0A0A000000630061006C00630075006C00610074006F0072004D0900003C
      7376672076657273696F6E3D22312220786D6C6E733D22687474703A2F2F7777
      772E77332E6F72672F323030302F737667222076696577426F783D2230203020
      34382034382220656E61626C652D6261636B67726F756E643D226E6577203020
      30203438203438223E0D0A202020203C706174682066696C6C3D222336313631
      36312220643D224D34302C3136483876323463302C322E322C312E382C342C34
      2C3468323463322E322C302C342D312E382C342D345631367A222F3E0D0A2020
      20203C706174682066696C6C3D22233432343234322220643D224D33362C3448
      313243392E382C342C382C352E382C382C38763968333256384334302C352E38
      2C33382E322C342C33362C347A222F3E0D0A202020203C706174682066696C6C
      3D22233943434336352220643D224D33362C3134483132632D302E362C302D31
      2D302E342D312D31563863302D302E362C302E342D312C312D3168323463302E
      362C302C312C302E342C312C3176354333372C31332E362C33362E362C31342C
      33362C31347A222F3E0D0A202020203C672066696C6C3D222333333639314522
      3E0D0A20202020202020203C7265637420783D2233332220793D223130222077
      696474683D223222206865696768743D2232222F3E0D0A20202020202020203C
      7265637420783D2232392220793D223130222077696474683D22322220686569
      6768743D2232222F3E0D0A202020203C2F673E0D0A202020203C706174682066
      696C6C3D22234646353235322220643D224D33362C3233682D33632D302E362C
      302D312D302E342D312D31762D3263302D302E362C302E342D312C312D316833
      63302E362C302C312C302E342C312C3176324333372C32322E362C33362E362C
      32332C33362C32337A222F3E0D0A202020203C672066696C6C3D222345304530
      4530223E0D0A20202020202020203C7061746820643D224D31352C3233682D33
      632D302E362C302D312D302E342D312D31762D3263302D302E362C302E342D31
      2C312D31683363302E362C302C312C302E342C312C3176324331362C32322E36
      2C31352E362C32332C31352C32337A222F3E0D0A20202020202020203C706174
      6820643D224D32322C3233682D33632D302E362C302D312D302E342D312D3176
      2D3263302D302E362C302E342D312C312D31683363302E362C302C312C302E34
      2C312C3176324332332C32322E362C32322E362C32332C32322C32337A222F3E
      0D0A20202020202020203C7061746820643D224D32392C3233682D33632D302E
      362C302D312D302E342D312D31762D3263302D302E362C302E342D312C312D31
      683363302E362C302C312C302E342C312C3176324333302C32322E362C32392E
      362C32332C32392C32337A222F3E0D0A20202020202020203C7061746820643D
      224D31352C3239682D33632D302E362C302D312D302E342D312D31762D326330
      2D302E362C302E342D312C312D31683363302E362C302C312C302E342C312C31
      76324331362C32382E362C31352E362C32392C31352C32397A222F3E0D0A2020
      2020202020203C7061746820643D224D32322C3239682D33632D302E362C302D
      312D302E342D312D31762D3263302D302E362C302E342D312C312D3168336330
      2E362C302C312C302E342C312C3176324332332C32382E362C32322E362C3239
      2C32322C32397A222F3E0D0A20202020202020203C7061746820643D224D3239
      2C3239682D33632D302E362C302D312D302E342D312D31762D3263302D302E36
      2C302E342D312C312D31683363302E362C302C312C302E342C312C3176324333
      302C32382E362C32392E362C32392C32392C32397A222F3E0D0A202020202020
      20203C7061746820643D224D31352C3335682D33632D302E362C302D312D302E
      342D312D31762D3263302D302E362C302E342D312C312D31683363302E362C30
      2C312C302E342C312C3176324331362C33342E362C31352E362C33352C31352C
      33357A222F3E0D0A20202020202020203C7061746820643D224D32322C333568
      2D33632D302E362C302D312D302E342D312D31762D3263302D302E362C302E34
      2D312C312D31683363302E362C302C312C302E342C312C3176324332332C3334
      2E362C32322E362C33352C32322C33357A222F3E0D0A20202020202020203C70
      61746820643D224D32392C3335682D33632D302E362C302D312D302E342D312D
      31762D3263302D302E362C302E342D312C312D31683363302E362C302C312C30
      2E342C312C3176324333302C33342E362C32392E362C33352C32392C33357A22
      2F3E0D0A20202020202020203C7061746820643D224D31352C3431682D33632D
      302E362C302D312D302E342D312D31762D3263302D302E362C302E342D312C31
      2D31683363302E362C302C312C302E342C312C3176324331362C34302E362C31
      352E362C34312C31352C34317A222F3E0D0A20202020202020203C7061746820
      643D224D32322C3431682D33632D302E362C302D312D302E342D312D31762D32
      63302D302E362C302E342D312C312D31683363302E362C302C312C302E342C31
      2C3176324332332C34302E362C32322E362C34312C32322C34317A222F3E0D0A
      20202020202020203C7061746820643D224D32392C3431682D33632D302E362C
      302D312D302E342D312D31762D3263302D302E362C302E342D312C312D316833
      63302E362C302C312C302E342C312C3176324333302C34302E362C32392E362C
      34312C32392C34317A222F3E0D0A202020203C2F673E0D0A202020203C672066
      696C6C3D2223424442444244223E0D0A20202020202020203C7061746820643D
      224D33362C3239682D33632D302E362C302D312D302E342D312D31762D326330
      2D302E362C302E342D312C312D31683363302E362C302C312C302E342C312C31
      76324333372C32382E362C33362E362C32392C33362C32397A222F3E0D0A2020
      2020202020203C7061746820643D224D33362C3335682D33632D302E362C302D
      312D302E342D312D31762D3263302D302E362C302E342D312C312D3168336330
      2E362C302C312C302E342C312C3176324333372C33342E362C33362E362C3335
      2C33362C33357A222F3E0D0A20202020202020203C7061746820643D224D3336
      2C3431682D33632D302E362C302D312D302E342D312D31762D3263302D302E36
      2C302E342D312C312D31683363302E362C302C312C302E342C312C3176324333
      372C34302E362C33362E362C34312C33362C34317A222F3E0D0A202020203C2F
      673E0D0A3C2F7376673E0D0A060000006C0061007900650072007300F4020000
      3C7376672076657273696F6E3D22312220786D6C6E733D22687474703A2F2F77
      77772E77332E6F72672F323030302F737667222076696577426F783D22302030
      2034382034382220656E61626C652D6261636B67726F756E643D226E65772030
      2030203438203438223E0D0A202020203C706174682066696C6C3D2223343535
      4136342220643D224D34322C3431483132632D322E322C302D342D312E382D34
      2D3456313763302D322E322C312E382D342C342D3468333063322E322C302C34
      2C312E382C342C347632304334362C33392E322C34342E322C34312C34322C34
      317A222F3E0D0A202020203C706174682066696C6C3D22233738393039432220
      643D224D33362C33364836632D322E322C302D342D312E382D342D3456313263
      302D322E322C312E382D342C342D3468333063322E322C302C342C312E382C34
      2C347632304334302C33342E322C33382E322C33362C33362C33367A222F3E0D
      0A202020203C636972636C652066696C6C3D2223343535413634222063783D22
      3236222063793D2232322220723D223130222F3E0D0A202020203C636972636C
      652066696C6C3D2223343241354635222063783D223236222063793D22323222
      20723D2237222F3E0D0A202020203C706174682066696C6C3D22233930434146
      392220643D224D32392E372C31392E37632D312D312E312D322E332D312E372D
      332E372D312E37732D322E382C302E362D332E372C312E37632D302E342C302E
      342D302E332C312C302E312C312E3463302E342C302E342C312C302E332C312E
      342D302E312063312E322D312E332C332E332D312E332C342E352C3063302E32
      2C302E322C302E352C302E332C302E372C302E3363302E322C302C302E352D30
      2E312C302E372D302E334333302E312C32302E372C33302E312C32302E312C32
      392E372C31392E377A222F3E0D0A202020203C7265637420783D22362220793D
      223132222066696C6C3D2223414444384642222077696474683D223622206865
      696768743D2233222F3E0D0A3C2F7376673E0D0A080000006300680065006300
      6B0062006F007800D20100003C7376672076657273696F6E3D22312220786D6C
      6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220
      76696577426F783D223020302034382034382220656E61626C652D6261636B67
      726F756E643D226E657720302030203438203438223E0D0A202020203C706F6C
      79676F6E2066696C6C3D22233842433334412220706F696E74733D2232342C33
      2032382E372C362E362033342E352C352E382033362E372C31312E332034322E
      322C31332E352034312E342C31392E332034352C32342034312E342C32382E37
      2034322E322C33342E352033362E372C33362E372033342E352C34322E322032
      382E372C34312E342032342C34352031392E332C34312E342031332E352C3432
      2E322031312E332C33362E3720352E382C33342E3520362E362C32382E372033
      2C323420362E362C31392E3320352E382C31332E352031312E332C31312E3320
      31332E352C352E382031392E332C362E36222F3E0D0A202020203C706F6C7967
      6F6E2066696C6C3D22234343464639302220706F696E74733D2233342E362C31
      342E362032312C32382E322031352E342C32322E362031322E362C32352E3420
      32312C33332E382033372E342C31372E34222F3E0D0A3C2F7376673E0D0A0400
      000068006F006D0065009C0200003C7376672076657273696F6E3D2231222078
      6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
      222076696577426F783D223020302034382034382220656E61626C652D626163
      6B67726F756E643D226E657720302030203438203438223E0D0A202020203C70
      6F6C79676F6E2066696C6C3D22234538454146362220706F696E74733D223432
      2C333920362C333920362C32332032342C362034322C3233222F3E0D0A202020
      203C672066696C6C3D2223433543414539223E0D0A20202020202020203C706F
      6C79676F6E20706F696E74733D2233392C32312033342C31362033342C392033
      392C39222F3E0D0A20202020202020203C7265637420783D22362220793D2233
      39222077696474683D22333622206865696768743D2235222F3E0D0A20202020
      3C2F673E0D0A202020203C706F6C79676F6E2066696C6C3D2223423731433143
      2220706F696E74733D2232342C342E3320342C32322E3920362C32352E312032
      342C382E342034322C32352E312034342C32322E39222F3E0D0A202020203C72
      65637420783D2231382220793D223238222066696C6C3D222344383433313522
      2077696474683D22313222206865696768743D223136222F3E0D0A202020203C
      7265637420783D2232312220793D223137222066696C6C3D2223303135373942
      222077696474683D223622206865696768743D2236222F3E0D0A202020203C70
      6174682066696C6C3D22234646384136352220643D224D32372E352C33352E35
      632D302E332C302D302E352C302E322D302E352C302E35763263302C302E332C
      302E322C302E352C302E352C302E355332382C33382E332C32382C3338762D32
      4332382C33352E372C32372E382C33352E352C32372E352C33352E357A222F3E
      0D0A3C2F7376673E0D0A0A00000062006100740074006500720079002D003400
      3000CD0100003C7376672076657273696F6E3D22312220786D6C6E733D226874
      74703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F
      783D223020302034382034382220656E61626C652D6261636B67726F756E643D
      226E657720302030203438203438223E0D0A202020203C672066696C6C3D2223
      434644384443223E0D0A20202020202020203C7061746820643D224D33342C34
      34483134632D312E312C302D322D302E392D322D32563863302D312E312C302E
      392D322C322D3268323063312E312C302C322C302E392C322C32763334433336
      2C34332E312C33352E312C34342C33342C34347A222F3E0D0A20202020202020
      203C7061746820643D224D32382C3133682D38632D302E362C302D312D302E34
      2D312D31563563302D302E362C302E342D312C312D31683863302E362C302C31
      2C302E342C312C3176374332392C31322E362C32382E362C31332C32382C3133
      7A222F3E0D0A202020203C2F673E0D0A202020203C706174682066696C6C3D22
      233842433334412220643D224D33342C3434483134632D312E312C302D322D30
      2E392D322D325632336832347631394333362C34332E312C33352E312C34342C
      33342C34347A222F3E0D0A3C2F7376673E0D0A07000000700061006C00650074
      0074006500DA0500003C3F786D6C2076657273696F6E3D22312E302220656E63
      6F64696E673D2269736F2D383835392D31223F3E0D0A3C212D2D2047656E6572
      61746F723A2041646F626520496C6C7573747261746F722031382E302E302C20
      535647204578706F727420506C75672D496E202E205356472056657273696F6E
      3A20362E3030204275696C6420302920202D2D3E0D0A3C21444F435459504520
      737667205055424C494320222D2F2F5733432F2F4454442053564720312E312F
      2F454E222022687474703A2F2F7777772E77332E6F72672F4772617068696373
      2F5356472F312E312F4454442F73766731312E647464223E0D0A3C7376672076
      657273696F6E3D22312E31222069643D22436170615F312220786D6C6E733D22
      687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E
      733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F
      786C696E6B2220783D223070782220793D22307078220D0A092076696577426F
      783D2230203020353820353822207374796C653D22656E61626C652D6261636B
      67726F756E643A6E6577203020302035382035383B2220786D6C3A7370616365
      3D227072657365727665223E0D0A3C673E0D0A093C70617468207374796C653D
      2266696C6C3A233535363038303B2220643D224D32392C304331322E3938342C
      302C302C31322E3938342C302C323963302C31362E3031362C31322E3938342C
      32392C32392C32396332362E3638382C302D302E3230332D31362E3034332C35
      2D32310D0A090963352E3534352D352E3238322C32342C322E3638382C32342D
      384335382C31322E3938342C34352E3031362C302C32392C307A204D33332E33
      382C33322E303038632D312E3433392C302E3030392D332E3538312C302E3135
      362D342E33382C302E3931380D0A0909632D312E3238362C312E3232362D312E
      3338322C322E38332D312E3033382C342E31363263302E3232372C302E383738
      2D302E3634372C312E3630372D312E3437332C312E323333632D322E3236372D
      312E3032362D332E3737372D332E3433382D332E3434322D362E3134390D0A09
      0963302E33322D322E3538352C322E3339312D342E3731382C342E3936372D35
      2E31303363322E37392D302E3431372C352E3238392C312E3132372C362E3332
      342C332E3435394333342E3634342C33312E3231372C33342E3133352C33322E
      3030332C33332E33382C33322E3030387A222F3E0D0A093C636972636C652073
      74796C653D2266696C6C3A234443363931443B222063783D223239222063793D
      22382220723D2234222F3E0D0A093C636972636C65207374796C653D2266696C
      6C3A234637453641313B222063783D223239222063793D2235302220723D2234
      222F3E0D0A093C636972636C65207374796C653D2266696C6C3A233236423939
      413B222063783D223530222063793D2232372220723D2234222F3E0D0A093C63
      6972636C65207374796C653D2266696C6C3A234542424131363B222063783D22
      38222063793D2232392220723D2234222F3E0D0A093C636972636C6520737479
      6C653D2266696C6C3A234544384131393B222063783D2231342E313531222063
      793D2231342E3135312220723D2234222F3E0D0A093C636972636C6520737479
      6C653D2266696C6C3A233733383342463B222063783D223432222063793D2231
      342E3135312220723D2234222F3E0D0A093C636972636C65207374796C653D22
      66696C6C3A234546434534413B222063783D2231342E313531222063793D2234
      332E3834392220723D2234222F3E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D
      0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E
      0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F67
      3E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F
      673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C
      2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C2F737667
      3E0D0A0A0000006100720072006F0077002D006C00650066007400FD0000003C
      7376672076657273696F6E3D22312220786D6C6E733D22687474703A2F2F7777
      772E77332E6F72672F323030302F737667222076696577426F783D2230203020
      34382034382220656E61626C652D6261636B67726F756E643D226E6577203020
      30203438203438223E0D0A202020203C672066696C6C3D222333463531423522
      3E0D0A20202020202020203C706F6C79676F6E20706F696E74733D22342C3234
      2031382C31322E332031382C33352E37222F3E0D0A20202020202020203C7265
      637420783D2231352220793D223230222077696474683D223237222068656967
      68743D2238222F3E0D0A202020203C2F673E0D0A3C2F7376673E0D0A04000000
      70006C0061007900260100003C7376672076657273696F6E3D22312220786D6C
      6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220
      76696577426F783D223020302034382034382220656E61626C652D6261636B67
      726F756E643D226E657720302030203438203438223E0D0A202020203C706174
      682066696C6C3D22234634343333362220643D224D33382C3432483130632D32
      2E322C302D342D312E382D342D3456313063302D322E322C312E382D342C342D
      3468323863322E322C302C342C312E382C342C347632384334322C34302E322C
      34302E322C34322C33382C34327A222F3E0D0A202020203C706F6C79676F6E20
      66696C6C3D22236666662220706F696E74733D2233312C32342032302C313620
      32302C3332222F3E0D0A3C2F7376673E0D0A04000000660069006E0064004C02
      00003C7376672076657273696F6E3D22312220786D6C6E733D22687474703A2F
      2F7777772E77332E6F72672F323030302F737667222076696577426F783D2230
      20302034382034382220656E61626C652D6261636B67726F756E643D226E6577
      20302030203438203438223E0D0A202020203C672066696C6C3D222333463531
      4235223E0D0A20202020202020203C706F6C79676F6E20706F696E74733D2231
      372E382C31382E312031302E342C32352E3420362E322C32312E3320342C3233
      2E352031302E342C32392E392032302C32302E33222F3E0D0A20202020202020
      203C706F6C79676F6E20706F696E74733D2231372E382C352E312031302E342C
      31322E3420362E322C382E3320342C31302E352031302E342C31362E39203230
      2C372E33222F3E0D0A20202020202020203C706F6C79676F6E20706F696E7473
      3D2231372E382C33312E312031302E342C33382E3420362E322C33342E332034
      2C33362E352031302E342C34322E392032302C33332E33222F3E0D0A20202020
      3C2F673E0D0A202020203C672066696C6C3D2223393043414639223E0D0A2020
      2020202020203C7265637420783D2232342220793D223232222077696474683D
      22323022206865696768743D2234222F3E0D0A20202020202020203C72656374
      20783D2232342220793D2239222077696474683D22323022206865696768743D
      2234222F3E0D0A20202020202020203C7265637420783D2232342220793D2233
      35222077696474683D22323022206865696768743D2234222F3E0D0A20202020
      3C2F673E0D0A3C2F7376673E0D0A0400000066006F006E007400C60400003C3F
      786D6C2076657273696F6E3D22312E302220656E636F64696E673D2269736F2D
      383835392D31223F3E0D0A3C212D2D2047656E657261746F723A2041646F6265
      20496C6C7573747261746F722031392E302E302C20535647204578706F727420
      506C75672D496E202E205356472056657273696F6E3A20362E3030204275696C
      6420302920202D2D3E0D0A3C7376672076657273696F6E3D22312E3122206964
      3D224C617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E
      6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
      2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
      20793D22307078220D0A092076696577426F783D223020302035313220353132
      22207374796C653D22656E61626C652D6261636B67726F756E643A6E65772030
      203020353132203531323B2220786D6C3A73706163653D227072657365727665
      223E0D0A3C673E0D0A093C673E0D0A09093C7061746820643D224D3435302E37
      38332C3230372E3136357631342E303432632D31352E3235362D31322E323532
      2D33342E3630372D31392E3630372D35352E3635322D31392E363037632D3439
      2E3039392C302D38392E3034332C33392E3934352D38392E3034332C38392E30
      34330D0A0909097333392E3934352C38392E3034332C38392E3034332C38392E
      3034336332312E3034352C302C34302E3339362D372E3335352C35352E363532
      2D31392E3630377631342E3034326833332E333931563230372E313635483435
      302E3738337A204D3339352E31332C3334362E3239350D0A090909632D33302E
      3638372C302D35352E3635322D32342E3936362D35352E3635322D35352E3635
      3263302D33302E3638382C32342E3936362D35352E3635322C35352E3635322D
      35352E3635327335352E3635322C32342E3936362C35352E3635322C35352E36
      35320D0A090909433435302E3738332C3332312E33332C3432352E3831372C33
      34362E3239352C3339352E31332C3334362E3239357A222F3E0D0A093C2F673E
      0D0A3C2F673E0D0A3C673E0D0A093C673E0D0A09093C7265637420793D223431
      332E303734222077696474683D2235313222206865696768743D2233332E3339
      31222F3E0D0A093C2F673E0D0A3C2F673E0D0A3C673E0D0A093C673E0D0A0909
      3C7061746820643D224D3136362E3935372C36352E3533344C33312E31382C33
      37342E3132316833362E3437396C34362E3532362D3130352E37333968313035
      2E3534336C34362E3532362C3130352E3733396833362E3437394C3136362E39
      35372C36352E3533347A204D3132382E3837372C3233342E3939310D0A090909
      6C33382E3037392D38362E3534356C33382E3037392C38362E35343548313238
      2E3837377A222F3E0D0A093C2F673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E
      0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F67
      3E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F
      673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C
      2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A
      3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C673E0D0A3C2F673E0D0A3C2F7376
      673E0D0A09000000640061007300680062006F006100720064007F0100003C73
      76672076657273696F6E3D22312220786D6C6E733D22687474703A2F2F777777
      2E77332E6F72672F323030302F737667222076696577426F783D223020302034
      382034382220656E61626C652D6261636B67726F756E643D226E657720302030
      203438203438223E0D0A202020203C7265637420783D22342220793D22372220
      66696C6C3D2223424244454642222077696474683D2234302220686569676874
      3D223334222F3E0D0A202020203C7265637420783D22392220793D2231322220
      66696C6C3D2223334635314235222077696474683D2233302220686569676874
      3D2235222F3E0D0A202020203C672066696C6C3D2223323139364633223E0D0A
      20202020202020203C7265637420783D22392220793D22323122207769647468
      3D22313322206865696768743D223136222F3E0D0A20202020202020203C7265
      637420783D2232362220793D223231222077696474683D223133222068656967
      68743D223136222F3E0D0A202020203C2F673E0D0A3C2F7376673E0D0A050000
      0063006800650063006B00D00000003C7376672076657273696F6E3D22312220
      786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376
      67222076696577426F783D223020302034382034382220656E61626C652D6261
      636B67726F756E643D226E657720302030203438203438223E0D0A202020203C
      706F6C79676F6E2066696C6C3D22233433413034372220706F696E74733D2234
      302E362C31322E312031372C33352E3720372E342C32362E3120342E362C3239
      2031372C34312E332034332E342C31342E39222F3E0D0A3C2F7376673E0D0A07
      0000007000690063007400750072006500950100003C7376672076657273696F
      6E3D22312220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F32
      3030302F737667222076696577426F783D223020302034382034382220656E61
      626C652D6261636B67726F756E643D226E657720302030203438203438223E0D
      0A202020203C706174682066696C6C3D22234635374330302220643D224D3430
      2C34314838632D322E322C302D342D312E382D342D3456313163302D322E322C
      312E382D342C342D3468333263322E322C302C342C312E382C342C3476323643
      34342C33392E322C34322E322C34312C34302C34317A222F3E0D0A202020203C
      636972636C652066696C6C3D2223464646394334222063783D22333522206379
      3D2231362220723D2233222F3E0D0A202020203C706F6C79676F6E2066696C6C
      3D22233934324130392220706F696E74733D2232302C313620392C3332203331
      2C3332222F3E0D0A202020203C706F6C79676F6E2066696C6C3D222342463336
      30432220706F696E74733D2233312C32322032332C33322033392C3332222F3E
      0D0A3C2F7376673E0D0A0500000061006C00650072007400B90100003C737667
      2076657273696F6E3D22312220786D6C6E733D22687474703A2F2F7777772E77
      332E6F72672F323030302F737667222076696577426F783D2230203020343820
      34382220656E61626C652D6261636B67726F756E643D226E6577203020302034
      38203438223E0D0A202020203C706174682066696C6C3D222346464331303722
      20643D224D32312E322C34342E386C2D31382D3138632D312E362D312E362D31
      2E362D342E312C302D352E376C31382D313863312E362D312E362C342E312D31
      2E362C352E372C306C31382C313863312E362C312E362C312E362C342E312C30
      2C352E376C2D31382C3138204332352E332C34362E342C32322E372C34362E34
      2C32312E322C34342E387A222F3E0D0A202020203C672066696C6C3D22233337
      34373446223E0D0A20202020202020203C636972636C652063783D2232342220
      63793D2232342220723D2232222F3E0D0A20202020202020203C636972636C65
      2063783D223332222063793D2232342220723D2232222F3E0D0A202020202020
      20203C636972636C652063783D223136222063793D2232342220723D2232222F
      3E0D0A202020203C2F673E0D0A3C2F7376673E0D0A050000006500720072006F
      007200B70200003C7376672076657273696F6E3D22312220786D6C6E733D2268
      7474703A2F2F7777772E77332E6F72672F323030302F73766722207669657742
      6F783D223020302034382034382220656E61626C652D6261636B67726F756E64
      3D226E657720302030203438203438223E0D0A202020203C706174682066696C
      6C3D22234634343333362220643D224D32312E322C34342E386C2D31382D3138
      632D312E362D312E362D312E362D342E312C302D352E376C31382D313863312E
      362D312E362C342E312D312E362C352E372C306C31382C313863312E362C312E
      362C312E362C342E312C302C352E376C2D31382C3138204332352E332C34362E
      342C32322E372C34362E342C32312E322C34342E387A222F3E0D0A202020203C
      706174682066696C6C3D22236666662220643D224D32312E362C33322E376330
      2D302E332C302E312D302E362C302E322D302E3963302E312D302E332C302E33
      2D302E352C302E352D302E3763302E322D302E322C302E352D302E342C302E38
      2D302E3573302E362D302E322C312D302E322073302E372C302E312C312C302E
      3263302E332C302E312C302E362C302E332C302E382C302E3563302E322C302E
      322C302E342C302E342C302E352C302E3763302E312C302E332C302E322C302E
      362C302E322C302E39732D302E312C302E362D302E322C302E39732D302E332C
      302E352D302E352C302E3720632D302E322C302E322D302E352C302E342D302E
      382C302E35632D302E332C302E312D302E362C302E322D312C302E32732D302E
      372D302E312D312D302E32732D302E352D302E332D302E382D302E35632D302E
      322D302E322D302E342D302E342D302E352D302E375332312E362C33332E312C
      32312E362C33322E377A204D32352E382C32382E31682D332E364C32312E372C
      313368342E364C32352E382C32382E317A222F3E0D0A3C2F7376673E0D0A0B00
      000069006E0066006F0072006D006100740069006F006E00600100003C737667
      2076657273696F6E3D22312220786D6C6E733D22687474703A2F2F7777772E77
      332E6F72672F323030302F737667222076696577426F783D2230203020343820
      34382220656E61626C652D6261636B67726F756E643D226E6577203020302034
      38203438223E0D0A202020203C706174682066696C6C3D222332313936463322
      20643D224D33372C34304831316C2D362C3656313263302D332E332C322E372D
      362C362D3668323663332E332C302C362C322E372C362C367632324334332C33
      372E332C34302E332C34302C33372C34307A222F3E0D0A202020203C67206669
      6C6C3D2223666666223E0D0A20202020202020203C7265637420783D22323222
      20793D223230222077696474683D223422206865696768743D223131222F3E0D
      0A20202020202020203C636972636C652063783D223234222063793D22313522
      20723D2232222F3E0D0A202020203C2F673E0D0A3C2F7376673E0D0A07000000
      7700610072006E0069006E0067001B0100003C7376672076657273696F6E3D22
      312220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F32303030
      2F737667222076696577426F783D223020302034382034382220656E61626C65
      2D6261636B67726F756E643D226E657720302030203438203438223E0D0A2020
      20203C636972636C652066696C6C3D2223323139364633222063783D22323422
      2063793D2232342220723D223231222F3E0D0A202020203C7265637420783D22
      32322220793D223232222066696C6C3D2223666666222077696474683D223422
      206865696768743D223131222F3E0D0A202020203C636972636C652066696C6C
      3D2223666666222063783D223234222063793D2231362E352220723D22322E35
      222F3E0D0A3C2F7376673E0D0A04000000680065006C007000000300003C7376
      672076657273696F6E3D22312220786D6C6E733D22687474703A2F2F7777772E
      77332E6F72672F323030302F737667222076696577426F783D22302030203438
      2034382220656E61626C652D6261636B67726F756E643D226E65772030203020
      3438203438223E0D0A202020203C672066696C6C3D2223464643433830223E0D
      0A20202020202020203C636972636C652063783D223338222063793D22323622
      20723D2234222F3E0D0A20202020202020203C636972636C652063783D223130
      222063793D2232362220723D2234222F3E0D0A20202020202020203C70617468
      20643D224D33392C313963302D31322E372D33302D382E332D33302C3063302C
      312E382C302C382E322C302C313063302C382E332C362E372C31352C31352C31
      357331352D362E372C31352D31354333392C32372E322C33392C32302E382C33
      392C31397A222F3E0D0A20202020202020203C7061746820643D224D32342C34
      4331352E322C342C382C31312E322C382C323063302C312E322C302C332E352C
      302C332E356C322E312C302E365631396C31392E352D362E336C382E322C362E
      3376352E316C322E312D302E3663302C302C302D322E332C302D332E35204334
      302C31322E352C33342E362C342C32342C347A222F3E0D0A202020203C2F673E
      0D0A202020203C706174682066696C6C3D22233032373742442220643D224D32
      312E382C32392E3663302D362E362C352E312D362E322C352E312D31302E3263
      302D312D302E332D332D322E392D33632D322E382C302D332C322E332D332C32
      2E38682D332E3863302D312C302E342D362C362E382D362063362E352C302C36
      2E372C352E312C362E372C3663302C342E392D352E342C352E362D352E342C31
      302E334832312E387A204D32312E352C33342E3563302D302E332C302E312D32
      2E312C322E312D322E3163322C302C322E322C312E382C322E322C322E316330
      2C302E362D302E332C322D322E322C32204332312E382C33362E352C32312E35
      2C33352E312C32312E352C33342E357A222F3E0D0A3C2F7376673E0D0A}
  end
end
