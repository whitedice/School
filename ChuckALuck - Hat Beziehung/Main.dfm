object Form1: TForm1
  Left = 192
  Top = 125
  Width = 1048
  Height = 527
  Caption = 'Chuck A Luck'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 40
    Top = 30
    Width = 281
    Height = 326
    Caption = '   W'#252'rfel   '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object pw1: TPanel
      Left = 20
      Top = 35
      Width = 241
      Height = 61
      TabOrder = 0
    end
    object pw2: TPanel
      Left = 20
      Top = 135
      Width = 241
      Height = 61
      TabOrder = 1
    end
    object pw3: TPanel
      Left = 20
      Top = 235
      Width = 241
      Height = 61
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 760
    Top = 30
    Width = 231
    Height = 326
    Caption = '   Konto   '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object pKonto: TPanel
      Left = 20
      Top = 35
      Width = 191
      Height = 41
      TabOrder = 0
    end
  end
  object rgSpielbrett: TRadioGroup
    Left = 361
    Top = 30
    Width = 361
    Height = 326
    Hint = 'test'
    BiDiMode = bdRightToLeftReadingOnly
    Caption = '   Spielfeld   '
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Open Sans'
    Font.Style = []
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
  end
  object btStart: TButton
    Left = 321
    Top = 385
    Width = 440
    Height = 71
    Caption = 'PLAY'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Open Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btStartClick
  end
end
