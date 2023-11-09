object Form2: TForm2
  Left = 125
  Top = 63
  Width = 988
  Height = 507
  Caption = 'Form2'
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 248
    Width = 44
    Height = 13
    Caption = 'ID BUKU'
  end
  object Label2: TLabel
    Left = 88
    Top = 344
    Width = 87
    Height = 13
    Caption = 'PENERBIT BUKU'
  end
  object Label3: TLabel
    Left = 88
    Top = 312
    Width = 79
    Height = 13
    Caption = 'PENULIS BUKU'
  end
  object Label4: TLabel
    Left = 88
    Top = 280
    Width = 68
    Height = 13
    Caption = 'JUDUL BUKU'
  end
  object Label5: TLabel
    Left = 88
    Top = 376
    Width = 95
    Height = 13
    Caption = 'TAHUN PENERBIT'
  end
  object Label6: TLabel
    Left = 88
    Top = 400
    Width = 29
    Height = 13
    Caption = 'STOK'
  end
  object Button1: TButton
    Left = 496
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 496
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 496
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 2
    OnClick = Button3Click
  end
  object penulis_book: TEdit
    Left = 200
    Top = 304
    Width = 265
    Height = 22
    Color = clWhite
    TabOrder = 3
  end
  object penerbit_book: TEdit
    Left = 200
    Top = 336
    Width = 265
    Height = 22
    Color = clWhite
    TabOrder = 4
  end
  object stock: TEdit
    Left = 200
    Top = 400
    Width = 265
    Height = 22
    Color = clWhite
    TabOrder = 5
  end
  object tahun_terbit: TEdit
    Left = 200
    Top = 368
    Width = 265
    Height = 22
    Color = clWhite
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 608
    Top = 264
    Width = 273
    Height = 121
    Caption = 'Cari Data'
    Color = clActiveCaption
    ParentColor = False
    TabOrder = 7
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
  object DBGrid1: TDBGrid
    Left = 80
    Top = 24
    Width = 800
    Height = 185
    DataSource = dm.dsbuku
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object judul_book: TEdit
    Left = 200
    Top = 272
    Width = 265
    Height = 22
    TabOrder = 9
  end
  object id_book: TEdit
    Left = 200
    Top = 240
    Width = 265
    Height = 22
    TabOrder = 10
  end
end
