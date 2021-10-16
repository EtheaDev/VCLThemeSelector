object VCLThemeSelectorForm: TVCLThemeSelectorForm
  Left = 0
  Top = 0
  Hint = 'Select theme by clicking on the name'
  Caption = 'Select Light or Dark theme'
  ClientHeight = 502
  ClientWidth = 1065
  Color = clBtnFace
  ParentFont = True
  Position = poScreenCenter
  ShowHint = True
  OnAfterMonitorDpiChanged = FormAfterMonitorDpiChanged
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 25
  object paButtons: TPanel
    Left = 0
    Top = 464
    Width = 1065
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object StyleLabel: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 863
      Height = 32
      Align = alClient
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = 'New selected theme: %s'
      TabOrder = 1
    end
    object paRight: TPanel
      Left = 869
      Top = 0
      Width = 196
      Height = 38
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btApply: TButton
        Left = 3
        Top = 5
        Width = 88
        Height = 29
        Action = acApplyStyle
        Default = True
        TabOrder = 0
      end
      object btCancel: TButton
        Left = 97
        Top = 4
        Width = 88
        Height = 29
        Action = acCancel
        Cancel = True
        TabOrder = 1
      end
    end
  end
  object LeftScrollBox: TScrollBox
    Left = 0
    Top = 25
    Width = 537
    Height = 439
    Align = alLeft
    TabOrder = 1
    OnMouseWheel = ScrollBoxMouseWheel
    object LeftFlowPanel: TFlowPanel
      Left = 0
      Top = 0
      Width = 533
      Height = 400
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
    end
  end
  object RightScrollBox: TScrollBox
    Left = 537
    Top = 25
    Width = 528
    Height = 439
    Align = alClient
    TabOrder = 2
    OnMouseWheel = ScrollBoxMouseWheel
    object RightFlowPanel: TFlowPanel
      Left = 0
      Top = 0
      Width = 524
      Height = 400
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
    end
  end
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1065
    Height = 25
    Align = alTop
    TabOrder = 3
    object LightPanel: TPanel
      Left = 1
      Top = 1
      Width = 536
      Height = 23
      Align = alLeft
      BevelOuter = bvLowered
      Caption = 'Light Themes'
      TabOrder = 0
    end
    object DarkPanel: TPanel
      Left = 537
      Top = 1
      Width = 527
      Height = 23
      Align = alClient
      BevelOuter = bvLowered
      Caption = 'Dark Themes'
      TabOrder = 1
    end
  end
  object ActionListAppereance: TActionList
    Left = 488
    Top = 168
    object acApplyStyle: TAction
      Category = 'Settings'
      Caption = 'Apply'
      Hint = 'Apply selected Theme'
      ImageIndex = 71
      OnExecute = acApplyStyleExecute
      OnUpdate = acApplyStyleUpdate
    end
    object acCancel: TAction
      Category = 'Settings'
      Caption = 'Cancel'
      Hint = 'Cancel selection'
      ImageIndex = 10
      OnExecute = acCancelExecute
    end
  end
end
