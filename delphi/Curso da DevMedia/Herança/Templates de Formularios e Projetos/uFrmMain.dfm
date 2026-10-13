object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Projeto Modelo'
  ClientHeight = 467
  ClientWidth = 736
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TRibbon
    Left = 0
    Top = 0
    Width = 736
    Height = 143
    ActionManager = ActionManager1
    ApplicationMenu.Menu = RibbonApplicationMenuBar1
    Caption = 'Ribbon1'
    QuickAccessToolbar.ActionBar = RibbonQuickAccessToolbar1
    Tabs = <
      item
        Caption = 'Configura'#231#227'o'
        Page = RibbonPage1
      end>
    ExplicitLeft = 368
    ExplicitTop = 168
    ExplicitWidth = 0
    DesignSize = (
      736
      143)
    StyleName = 'Ribbon - Luna'
    object RibbonPage1: TRibbonPage
      Left = 0
      Top = 50
      Width = 735
      Height = 93
      Caption = 'Configura'#231#227'o'
      Index = 0
      ExplicitWidth = 719
      object RibbonGroup1: TRibbonGroup
        Left = 4
        Top = 3
        Width = 96
        Height = 86
        ActionManager = ActionManager1
        Caption = 'Ajuste'
        GroupIndex = 0
      end
    end
    object RibbonApplicationMenuBar1: TRibbonApplicationMenuBar
      ActionManager = ActionManager1
      OptionItems = <>
      RecentItems = <>
    end
    object RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar
      Left = 49
      Top = 1
      Width = 48
      Height = 24
      ActionManager = ActionManager1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 448
    Width = 736
    Height = 19
    Panels = <>
    ExplicitLeft = 368
    ExplicitTop = 232
    ExplicitWidth = 0
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Caption = 'ActionClientItem0'
              end>
            Caption = 'ActionClientItem0'
            KeyTip = 'F'
          end>
        ActionBar = RibbonApplicationMenuBar1
        AutoSize = False
      end
      item
        ActionBar = RibbonQuickAccessToolbar1
        AutoSize = False
      end
      item
        Items = <
          item
            Action = EditCut1
            ImageIndex = 0
            ShortCut = 16472
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            ShortCut = 16451
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            ShortCut = 16470
          end
          item
            Action = EditSelectAll1
            ShortCut = 16449
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            ShortCut = 16474
          end
          item
            Action = EditDelete1
            ImageIndex = 5
            ShortCut = 46
          end>
        ActionBar = RibbonGroup1
      end>
    Left = 352
    Top = 200
    StyleName = 'Ribbon - Luna'
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
  end
end
