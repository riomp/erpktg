inherited frmSettingFotoBrg: TfrmSettingFotoBrg
  Left = 232
  Top = 105
  Caption = 'Setting Foto Barang'
  ClientHeight = 527
  ClientWidth = 1102
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1102
    inherited lblJudul: TLabel
      Width = 163
      Caption = 'Setting Foto Barang'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 1102
    Height = 416
    object Shape1: TShape [0]
      Left = 705
      Top = 11
      Width = 381
      Height = 301
      Brush.Color = clBtnFace
    end
    object image: TImage [1]
      Left = 705
      Top = 11
      Width = 381
      Height = 301
      Stretch = True
    end
    object cxGrdBrg: TcxGrid [2]
      Left = 13
      Top = 11
      Width = 680
      Height = 390
      TabOrder = 1
      object cxTblViewBrg: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblViewBrgFocusedRecordChanged
        DataController.DataSource = dsBrg
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxTblViewBrgColumn1: TcxGridDBColumn
          Caption = 'Foto'
          DataBinding.FieldName = 'f_image'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 37
        end
        object cxTblViewBrgkode: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode'
        end
        object cxTblViewBrgdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 330
        end
        object cxTblViewBrgtipe: TcxGridDBColumn
          Caption = 'Tipe'
          DataBinding.FieldName = 'tipe'
          Width = 135
        end
        object cxTblViewBrgkategori: TcxGridDBColumn
          Caption = 'Kategori'
          DataBinding.FieldName = 'kategori'
          Width = 129
        end
        object cxTblViewBrgsubkategori: TcxGridDBColumn
          Caption = 'Sub Kategori'
          DataBinding.FieldName = 'subkategori'
          Width = 174
        end
      end
      object cxGrdBrgLevel1: TcxGridLevel
        GridView = cxTblViewBrg
      end
    end
    object btnBrowse: TButton [3]
      Left = 782
      Top = 318
      Width = 75
      Height = 25
      Caption = 'Browse'
      TabOrder = 2
      OnClick = btnBrowseClick
    end
    object btnWebcam: TButton [4]
      Left = 860
      Top = 318
      Width = 75
      Height = 25
      Caption = 'Webcam'
      TabOrder = 3
      OnClick = btnWebcamClick
    end
    inherited pg: TPageControl
      Left = 235
      Top = 115
      Width = 183
      Height = 49
      Align = alNone
      Visible = False
    end
    object btnLihatFoto: TButton
      Left = 704
      Top = 318
      Width = 75
      Height = 25
      Caption = 'Lihat Foto'
      TabOrder = 4
      OnClick = btnLihatFotoClick
    end
    object cxtNamaFile: TcxTextEdit
      Left = 749
      Top = 210
      TabOrder = 5
      Visible = False
      Width = 121
    end
    object btnSimpanFoto: TButton
      Left = 939
      Top = 318
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 6
      OnClick = btnSimpanFotoClick
    end
  end
  inherited pnlBawah: TPanel
    Top = 482
    Width = 1102
    Height = 46
    inherited btnKeluar: TButton
      Left = 10
      Top = 10
    end
    inherited btnTambah: TButton
      Left = 625
      Top = 20
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 700
      Top = 20
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 775
      Top = 20
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 910
      Top = 20
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 835
      Top = 20
      Visible = False
    end
  end
  object zqrBrg: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT kode, deskripsi, tipe, kategori, subkategori,'
      'IF(ISNULL(image),0,1) f_image'
      'FROM tbl_barang '
      'WHERE f_aktif = 1'
      'ORDER BY deskripsi')
    Params = <>
    Left = 425
    Top = 20
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 455
    Top = 20
  end
  object OpenDlg: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 970
    Top = 304
  end
  object OpenDlg2: TOpenDialog
    Filter = 'PDF|*.pdf'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 985
    Top = 314
  end
end
