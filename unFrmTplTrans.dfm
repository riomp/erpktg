object frmTplTrans: TfrmTplTrans
  Left = 295
  Top = 181
  Width = 828
  Height = 447
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
    Width = 812
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
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 66
    Width = 812
    Height = 265
    Align = alTop
    TabOrder = 1
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 331
    Width = 812
    Height = 76
    Align = alTop
    TabOrder = 2
    object btnKeluar: TButton
      Left = 92
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 2
      OnClick = btnKeluarClick
    end
    object btnBaru: TButton
      Left = 555
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Baru'
      TabOrder = 3
      Visible = False
      OnClick = btnBaruClick
    end
    object btnEdit: TButton
      Left = 630
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Edit'
      TabOrder = 4
      Visible = False
      OnClick = btnEditClick
    end
    object btnHapus: TButton
      Left = 705
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Hapus'
      TabOrder = 5
      Visible = False
    end
    object btnBatal: TButton
      Left = 570
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 0
      Visible = False
      OnClick = btnBatalClick
    end
    object btnSimpan: TButton
      Left = 15
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
  end
end
