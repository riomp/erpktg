object frmCariSPK: TfrmCariSPK
  Left = 301
  Top = 243
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cari SPK'
  ClientHeight = 314
  ClientWidth = 924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object nxGrdSODet: TNextGrid
    Left = 480
    Top = 16
    Width = 891
    Height = 156
    Options = [goGrid, goHeader]
    TabOrder = 8
    TabStop = True
    Visible = False
    OnAfterEdit = nxGrdSODetAfterEdit
    object NxCheckBoxColumn1: TNxCheckBoxColumn
      Alignment = taCenter
      DefaultWidth = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Pilih'
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      Position = 0
      SortType = stBoolean
      Width = 33
    end
    object nxColKdBrg: TNxTextColumn
      DefaultWidth = 79
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Kode Brg.'
      Position = 1
      SortType = stAlphabetic
      Width = 79
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 330
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi'
      Position = 2
      SortType = stAlphabetic
      Width = 330
    end
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Dipesan'
      Header.Alignment = taRightJustify
      Position = 3
      SortType = stNumeric
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn3: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Terkirim'
      Header.Alignment = taRightJustify
      Position = 4
      SortType = stNumeric
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColSPMB: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Stok (G02)'
      Header.Alignment = taRightJustify
      Position = 5
      SortType = stNumeric
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn4: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'SPMB'
      Header.Alignment = taRightJustify
      Position = 6
      SortType = stNumeric
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn3: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Satuan'
      Position = 7
      SortType = stAlphabetic
    end
  end
  object cxdTgl1: TcxDateEdit
    Left = 65
    Top = 25
    TabOrder = 0
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 15
    Top = 27
    Caption = 'Tanggal'
  end
  object cxdTgl2: TcxDateEdit
    Left = 218
    Top = 25
    TabOrder = 1
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 190
    Top = 27
    Caption = 'S/D'
  end
  object btnProses: TButton
    Left = 348
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 2
    OnClick = btnProsesClick
  end
  object cxGrid1: TcxGrid
    Left = 15
    Top = 56
    Width = 891
    Height = 208
    TabOrder = 3
    object tblView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = tblViewCellDblClick
      OnFocusedRecordChanged = tblViewFocusedRecordChanged
      DataController.DataSource = dsSOHead
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      object tblViewno_spk: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Options.Editing = False
        Options.Moving = False
        Width = 99
      end
      object tblViewno_mo: TcxGridDBColumn
        Caption = 'No. MO'
        DataBinding.FieldName = 'no_mo'
        Width = 106
      end
      object tblViewno_so: TcxGridDBColumn
        DataBinding.FieldName = 'no_so'
      end
      object tblViewtanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 80
      end
      object tblViewkode_brg: TcxGridDBColumn
        DataBinding.FieldName = 'kode_brg'
        Width = 69
      end
      object tblViewdeskripsi: TcxGridDBColumn
        DataBinding.FieldName = 'deskripsi'
      end
      object tblViewqty: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
      end
      object tblViewjenis_spk: TcxGridDBColumn
        DataBinding.FieldName = 'jenis_spk'
      end
      object tblViewjam: TcxGridDBColumn
        DataBinding.FieldName = 'jam'
      end
      object tblViewkode_mesin: TcxGridDBColumn
        DataBinding.FieldName = 'kode_mesin'
      end
      object tblViewnama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
      end
      object tblViewtanggal_so: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal_so'
      end
      object tblViewketerangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
      object tblViewf_app_prd: TcxGridDBColumn
        DataBinding.FieldName = 'f_app_prd'
      end
      object tblViewnama_mesin: TcxGridDBColumn
        DataBinding.FieldName = 'nama_mesin'
      end
      object tblViewsatuan: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
      end
      object tblViewkategori: TcxGridDBColumn
        DataBinding.FieldName = 'kategori'
      end
      object tblViewsubkategori: TcxGridDBColumn
        DataBinding.FieldName = 'subkategori'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tblView
    end
  end
  object btnPilih: TButton
    Left = 15
    Top = 276
    Width = 75
    Height = 25
    Caption = 'Pilih'
    TabOrder = 4
    OnClick = btnPilihClick
  end
  object btnBatal: TButton
    Left = 95
    Top = 276
    Width = 75
    Height = 25
    Caption = '&Keluar'
    TabOrder = 5
    OnClick = btnBatalClick
  end
  object zqrSOhead: TZReadOnlyQuery
    Connection = dm.zConn
    AfterScroll = zqrSOheadAfterScroll
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_spk WHERE tanggal BETWEEN :tgl1 AND :tgl2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 80
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsSOHead: TDataSource
    DataSet = zqrSOhead
    Left = 110
    Top = 104
  end
  object zqrSODet: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_so_det '
      'WHERE no_bukti = :no_bukti AND f_completed = 0')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 585
    Top = 195
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsSODet: TDataSource
    DataSet = zqrSODet
    Left = 615
    Top = 195
  end
end
