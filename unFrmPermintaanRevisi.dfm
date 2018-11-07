inherited frmPermintaanRevisi: TfrmPermintaanRevisi
  Left = 320
  Top = 195
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Permintaan Revisi'
  ClientHeight = 368
  ClientWidth = 734
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 734
    inherited lblJudul: TLabel
      Width = 149
      Caption = 'Permintaan Revisi'
    end
  end
  inherited pnlTengah: TPanel
    Width = 734
    Height = 252
    object Label1: TLabel
      Left = 402
      Top = 189
      Width = 314
      Height = 13
      Alignment = taRightJustify
      Caption = 
        'Note : Sebutkan dengan jelas jenis transaksi, nomor transaksi da' +
        'n '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 447
      Top = 204
      Width = 266
      Height = 13
      Alignment = taRightJustify
      Caption = 'Identitas lain yang diperlukan untuk mempermudah revisi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 39
      Caption = 'Deskripsi'
    end
    object cxmDesk: TcxMemo
      Left = 75
      Top = 40
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Height = 141
      Width = 641
    end
    object btnAttach1: TButton
      Left = 75
      Top = 184
      Width = 83
      Height = 25
      Caption = 'Attachment 1'
      TabOrder = 3
      OnClick = btnAttach1Click
    end
    object btnAttach2: TButton
      Left = 75
      Top = 210
      Width = 83
      Height = 25
      Caption = 'Attachment 2'
      TabOrder = 4
      OnClick = btnAttach2Click
    end
    object Edit1: TEdit
      Left = 420
      Top = 89
      Width = 261
      Height = 21
      TabOrder = 5
      Visible = False
    end
    object Edit2: TEdit
      Left = 420
      Top = 114
      Width = 371
      Height = 21
      TabOrder = 6
      Visible = False
    end
    object cxtAttach1: TcxTextEdit
      Left = 161
      Top = 186
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 220
    end
    object cxtAttach2: TcxTextEdit
      Left = 161
      Top = 212
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 220
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 14
      Caption = 'Aplikasi'
    end
    object cxCmbAplikasi: TcxComboBox
      Left = 75
      Top = 13
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 0
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Left = 495
    Top = 361
    Align = alNone
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 318
    Width = 734
    Height = 52
    Align = alTop
    TabOrder = 3
    object btnSimpan2: TButton
      Left = 15
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = btnSimpan2Click
    end
    object btnBatal2: TButton
      Left = 92
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 1
      OnClick = btnBatal2Click
    end
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 430
    Top = 25
  end
  object OpenDlg: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 360
    Top = 19
  end
end
