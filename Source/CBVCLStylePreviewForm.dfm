object CBVCLPreviewForm: TCBVCLPreviewForm
  Left = 0
  Top = 0
  ClientHeight = 106
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TabControl: TTabControl
    Left = 0
    Top = 0
    Width = 304
    Height = 106
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'Page1'
      'Page2'
      'Page3')
    TabIndex = 0
    ExplicitHeight = 33
    object FTextEdit: TEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'FTextEdit'
    end
    object FButtonNormal: TButton
      Left = 8
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Normal'
      TabOrder = 1
      OnMouseDown = FButtonNormalMouseDown
      OnMouseEnter = FButtonNormalMouseEnter
      OnMouseLeave = FButtonNormalMouseLeave
      OnMouseUp = FButtonNormalMouseUp
    end
    object FButtonDisabled: TButton
      Left = 89
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Disabled'
      Enabled = False
      TabOrder = 2
    end
  end
  object MainMenu: TMainMenu
    Left = 216
    Top = 24
    object FMenu1: TMenuItem
      Caption = 'File'
    end
    object FMenu2: TMenuItem
      Caption = 'Edit'
    end
    object FMenu3: TMenuItem
      Caption = 'View'
    end
    object FMenu4: TMenuItem
      Caption = 'Help'
    end
  end
end
