object frmTplTrans2: TfrmTplTrans2
  Left = 283
  Top = 232
  Width = 823
  Height = 444
  VertScrollBar.Visible = False
  Caption = 'frmTplTrans'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 807
    Height = 66
    Align = alTop
    TabOrder = 0
    object lblJudul: TLabel
      Left = 15
      Top = 21
      Width = 43
      Height = 19
      Caption = 'Judul'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxlCari: TcxLookupComboBox
      Left = 508
      Top = 25
      Properties.ListColumns = <>
      TabOrder = 0
      Width = 256
    end
    object btnProsesEdit: TButton
      Left = 428
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 1
      Visible = False
    end
    object btnCariEdit: TButton
      Left = 766
      Top = 25
      Width = 22
      Height = 20
      Caption = '...'
      TabOrder = 2
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 66
    Width = 807
    Height = 265
    Align = alTop
    TabOrder = 1
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 331
    Width = 807
    Height = 76
    Align = alTop
    TabOrder = 2
    object btnKeluar: TButton
      Left = 719
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 0
      OnClick = btnKeluarClick
    end
    object btnBaru: TButton
      Left = 20
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Baru'
      TabOrder = 1
      OnClick = btnBaruClick
    end
    object btnEdit: TButton
      Left = 95
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Edit'
      TabOrder = 2
      OnClick = btnEditClick
    end
    object btnHapus: TButton
      Left = 245
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Hapus'
      TabOrder = 3
    end
    object btnBatal: TButton
      Left = 170
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 4
      OnClick = btnBatalClick
    end
    object btnSimpan: TButton
      Left = 642
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 5
      OnClick = btnSimpanClick
    end
    object btnPrint: TButton
      Left = 321
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Cetak'
      TabOrder = 6
    end
  end
end
