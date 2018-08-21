object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Visualizador de DataSet'
  ClientHeight = 284
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    523
    284)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 101
    Height = 13
    Caption = 'Selecione um arquivo'
  end
  object Button1: TButton
    Left = 432
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 52
    Width = 507
    Height = 224
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 343
    Top = 21
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 23
    Width = 299
    Height = 21
    TabOrder = 3
  end
  object btArquivo: TButton
    Left = 313
    Top = 21
    Width = 24
    Height = 25
    Caption = '...'
    TabOrder = 4
    OnClick = btArquivoClick
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 224
    object ClientDataSet1nome: TStringField
      FieldName = 'nome'
    end
    object ClientDataSet1codigo: TIntegerField
      FieldName = 'codigo'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 48
    Top = 168
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Left = 48
    Top = 224
  end
end
