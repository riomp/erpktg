object frmUploadImageRK: TfrmUploadImageRK
  Left = 331
  Top = 95
  Width = 570
  Height = 565
  Caption = 'Upload Image'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 284
    Width = 50
    Height = 13
    Caption = 'Nama File '
  end
  object Panel1: TPanel
    Left = 15
    Top = 15
    Width = 530
    Height = 256
    TabOrder = 6
    object image: TImage
      Left = 1
      Top = 1
      Width = 528
      Height = 254
      Align = alClient
      Stretch = True
    end
  end
  object cxtNamaFile: TcxTextEdit
    Left = 71
    Top = 279
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 448
  end
  object btnBrowse: TButton
    Left = 520
    Top = 279
    Width = 25
    Height = 21
    Caption = '...'
    TabOrder = 1
    OnClick = btnBrowseClick
  end
  object btnTambah: TButton
    Left = 71
    Top = 305
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 2
    OnClick = btnTambahClick
  end
  object cxLstBox: TcxListBox
    Left = 15
    Top = 336
    Width = 532
    Height = 151
    ItemHeight = 13
    TabOrder = 3
  end
  object Button1: TButton
    Left = 94
    Top = 494
    Width = 75
    Height = 25
    Caption = '&Simpan'
    TabOrder = 4
    OnClick = Button1Click
  end
  object btnBatal: TButton
    Left = 174
    Top = 494
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 5
    OnClick = btnBatalClick
  end
  object btnHapus: TButton
    Left = 15
    Top = 494
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = btnHapusClick
  end
  object OpenDlg: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 275
    Top = 194
  end
end
