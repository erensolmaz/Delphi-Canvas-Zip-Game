object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 503
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClick = OnClick
  PixelsPerInch = 96
  TextHeight = 13
  object x: TShape
    Left = 64
    Top = 383
    Width = 17
    Height = 17
    Brush.Color = clActiveCaption
    Shape = stCircle
  end
  object engel: TShape
    Left = 360
    Top = 168
    Width = 1
    Height = 32
  end
  object son: TShape
    Left = 800
    Top = 22
    Width = 8
    Height = 473
    Visible = False
  end
  object engel2: TShape
    Left = 457
    Top = 168
    Width = 1
    Height = 32
  end
  object engel3: TShape
    Left = 367
    Top = 168
    Width = 1
    Height = 32
  end
  object engel4: TShape
    Left = 0
    Top = 320
    Width = 817
    Height = 10
    Visible = False
  end
  object Button1: TButton
    Left = 336
    Top = 143
    Width = 145
    Height = 73
    Caption = 'Oyna'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 544
    Top = 16
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 240
    Top = 16
  end
end
