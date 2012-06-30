object FrmMain: TFrmMain
  AlignWithMargins = True
  Left = 49
  Top = 55
  Caption = 'Artificial Intelligence - CUP'
  ClientHeight = 576
  ClientWidth = 1179
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object lblResult: TLabel
    Left = 504
    Top = 4
    Width = 276
    Height = 78
    Caption = 'lblResult'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object btnResetA: TButton
    Left = 504
    Top = 504
    Width = 75
    Height = 25
    Caption = 'Reset A'
    TabOrder = 0
  end
  object btnResetB: TButton
    Left = 624
    Top = 504
    Width = 75
    Height = 25
    Caption = 'Reset B'
    TabOrder = 1
  end
  object btnStart: TButton
    Left = 504
    Top = 543
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 2
  end
  object btnBreak: TButton
    Left = 624
    Top = 543
    Width = 75
    Height = 25
    Caption = 'Pause'
    TabOrder = 3
  end
end
