object frmFuncionario: TfrmFuncionario
  Left = 0
  Top = 0
  Caption = 'frmFuncionario'
  ClientHeight = 98
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Button1: TButton
    Left = 416
    Top = 28
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 8
    Width = 74
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 72
    Top = 35
    Width = 305
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Button2: TButton
    Left = 416
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 3
    OnClick = Button2Click
  end
end
