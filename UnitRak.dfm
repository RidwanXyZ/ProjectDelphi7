object Form1: TForm1
  Left = 346
  Top = 192
  Width = 852
  Height = 498
  Caption = 'Rak'
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 304
    Width = 36
    Height = 13
    Caption = 'ID RAK'
  end
  object Label2: TLabel
    Left = 32
    Top = 400
    Width = 44
    Height = 13
    Caption = 'ID BUKU'
  end
  object Label3: TLabel
    Left = 32
    Top = 368
    Width = 63
    Height = 13
    Caption = 'LOKASI RAK'
  end
  object Label4: TLabel
    Left = 32
    Top = 336
    Width = 56
    Height = 13
    Caption = 'NAMA RAK'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 24
    Width = 777
    Height = 241
    DataSource = dm.DsRak
    FixedColor = clCream
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Button1: TButton
    Left = 424
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 424
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 424
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = Button3Click
  end
  object id_rak: TEdit
    Left = 128
    Top = 304
    Width = 265
    Height = 21
    Color = clWhite
    TabOrder = 4
  end
  object nama_rak: TEdit
    Left = 128
    Top = 336
    Width = 265
    Height = 21
    Color = clWhite
    TabOrder = 5
  end
  object id_buku: TEdit
    Left = 128
    Top = 400
    Width = 265
    Height = 21
    Color = clWhite
    TabOrder = 6
  end
  object lokasi_rak: TEdit
    Left = 128
    Top = 368
    Width = 265
    Height = 21
    Color = clWhite
    TabOrder = 7
  end
  object GroupBox1: TGroupBox
    Left = 528
    Top = 304
    Width = 265
    Height = 113
    Caption = 'Cari Data'
    Color = clActiveCaption
    ParentColor = False
    TabOrder = 8
    object cari: TEdit
      Left = 16
      Top = 16
      Width = 132
      Height = 21
      TabOrder = 0
    end
    object btnCari: TButton
      Left = 176
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cari Data'
      TabOrder = 1
      OnClick = btnCariClick
    end
  end
end
