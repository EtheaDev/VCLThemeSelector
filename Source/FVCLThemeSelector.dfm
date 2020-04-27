object VCLThemeSelectorForm: TVCLThemeSelectorForm
  Left = 0
  Top = 0
  Hint = 'Select theme by clicking on the name'
  Caption = 'Select Light or Dark theme'
  ClientHeight = 661
  ClientWidth = 948
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object paButtons: TPanel
    Left = 0
    Top = 623
    Width = 948
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object StyleLabel: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 746
      Height = 32
      Align = alClient
      Alignment = taRightJustify
      BevelOuter = bvNone
      Caption = 'New selected theme: %s'
      TabOrder = 1
    end
    object paRight: TPanel
      Left = 752
      Top = 0
      Width = 196
      Height = 38
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btApply: TButton
        Left = 7
        Top = 4
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
  object ScrollBox: TScrollBox
    Left = 0
    Top = 0
    Width = 948
    Height = 623
    Align = alClient
    TabOrder = 1
    OnMouseWheel = ScrollBoxMouseWheel
    object fpClient: TFlowPanel
      Left = 0
      Top = 0
      Width = 927
      Height = 819
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
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
