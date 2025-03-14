object ViewTodoList: TViewTodoList
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 376
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 380
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 11457198
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 413
    object lblTitle: TLabel
      Left = 14
      Top = 9
      Width = 127
      Height = 16
      Caption = 'Todo Application <3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
    end
    object btnClose: TSpeedButton
      AlignWithMargins = True
      Left = 360
      Top = 0
      Width = 20
      Height = 20
      Cursor = crHandPoint
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 10
      Caption = #10006
      ImageIndex = 0
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnCloseClick
    end
  end
  object pnlFunctions: TPanel
    Left = 0
    Top = 33
    Width = 380
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 31
    ExplicitWidth = 392
    object detailLine: TShape
      Left = 14
      Top = 41
      Width = 195
      Height = 1
      ParentShowHint = False
      Pen.Color = clWhite
      ShowHint = False
    end
    object buttonRemove: TSpeedButton
      Left = 304
      Top = 19
      Width = 65
      Height = 28
      Cursor = crHandPoint
      Caption = 'Remover'
      ImageIndex = 0
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      OnClick = ButtonRemoveClick
    end
    object buttonAdd: TSpeedButton
      Left = 233
      Top = 19
      Width = 65
      Height = 28
      Cursor = crHandPoint
      Caption = 'Adicionar'
      ImageIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      OnClick = ButtonAddClick
    end
    object EditTask: TEdit
      Left = 14
      Top = 21
      Width = 195
      Height = 20
      BevelInner = bvNone
      BorderStyle = bsNone
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'System'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Digite sua tarefa...'
      OnKeyPress = EditTaskKeyPress
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 360
    Width = 380
    Height = 16
    Align = alBottom
    BevelOuter = bvNone
    Color = 11457198
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 362
  end
  object ListBoxTasks: TListBox
    Left = 0
    Top = 105
    Width = 380
    Height = 255
    Margins.Bottom = 5
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5263440
    Font.Height = -12
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu
    TabOrder = 3
  end
  object PopupMenu: TPopupMenu
    Left = 320
    Top = 120
    object Deletar: TMenuItem
      Caption = 'Deletar'
      OnClick = DeletarClick
    end
  end
end
