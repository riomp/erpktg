inherited frmTrsSJU: TfrmTrsSJU
  Left = 257
  Top = 128
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Surat Jalan Umum'
  ClientHeight = 529
  ClientWidth = 967
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 967
    Height = 51
    inherited lblJudul: TLabel
      Top = 16
      Width = 149
      Caption = 'Surat Jalan Umum'
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 703
      Top = 15
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end
        item
          Caption = 'Tujuan'
          FieldName = 'kepada'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoBukti
      TabOrder = 0
      Width = 251
    end
    object btnEdit2: TButton
      Left = 624
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 1
      OnClick = btnEdit2Click
    end
  end
  inherited pnlTengah: TPanel
    Top = 51
    Width = 967
    Height = 419
    object Label5: TLabel
      Left = 799
      Top = 391
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 13
      Caption = 'No. Transaksi'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 11
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object btnCariPO: TButton
      Left = 222
      Top = 11
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 9
      OnClick = btnCariPOClick
    end
    object nxGrd: TNextGrid
      Left = 11
      Top = 242
      Width = 940
      Height = 139
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 12
      TabStop = True
      WantReturns = True
      WantTabs = True
      OnAfterEdit = nxGrdAfterEdit
      OnCellDblClick = nxGrdCellDblClick
      StartRowCount = 1
      object nxNoUrut: TNxIncrementColumn
        DefaultWidth = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Options = [coCanClick, coCanInput, coPublicUsing]
        Position = 0
        SortType = stAlphabetic
        Width = 30
      end
      object nxColHapus: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 48
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 1
        SortType = stNumeric
        Width = 48
        Images = frmUtama.ImageList1
      end
      object nxColJml: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Jumlah'
        Options = [coCanClick, coCanInput, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColSat: TNxComboBoxColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 3
        SortType = stAlphabetic
        AutoDropDown = True
        AutoComplete = True
      end
      object nxColNamaBrg: TNxTextColumn
        DefaultWidth = 304
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Nama Barang'
        Header.Caption = 'Nama Barang'
        InplaceEdit = NxEdit1
        Options = [coCanClick, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 4
        SortType = stAlphabetic
        Width = 304
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 374
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = NxEdit1
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 5
        SortType = stAlphabetic
        Width = 374
      end
    end
    object NxEdit1: TNxEdit
      Left = 139
      Top = 330
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 13
      Text = 'NXEDIT1'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 852
      Top = 388
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 14
      Width = 99
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 38
      Caption = 'Tgl. Kirim'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 99
      Top = 36
      Properties.ReadOnly = True
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 63
      Caption = 'Kepada'
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 88
      Caption = 'Alamat'
    end
    object cxLabel4: TcxLabel
      Left = 490
      Top = 13
      Caption = 'Pengirim'
    end
    object cxtPengirim: TcxTextEdit
      Tag = 1
      Left = 589
      Top = 11
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 7
      Width = 277
    end
    object cxtKepada: TcxTextEdit
      Left = 98
      Top = 61
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 3
      Width = 383
    end
    object cxmAlamat: TcxMemo
      Left = 98
      Top = 86
      Properties.CharCase = ecUpperCase
      TabOrder = 4
      Height = 58
      Width = 383
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 150
      Caption = 'Kota'
    end
    object cxtKota: TcxTextEdit
      Left = 98
      Top = 148
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 5
      Width = 383
    end
    object cxtSopir: TcxTextEdit
      Tag = 1
      Left = 589
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 8
      Width = 277
    end
    object cxLabel8: TcxLabel
      Left = 490
      Top = 38
      Caption = 'Sopir Pengirim'
    end
    object cxLabel5: TcxLabel
      Left = 490
      Top = 63
      Caption = 'Jenis Kendaraan'
    end
    object cxLabel9: TcxLabel
      Left = 490
      Top = 88
      Caption = 'No. Polisi'
    end
    object cxtNopol: TcxTextEdit
      Tag = 1
      Left = 589
      Top = 86
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 11
      Width = 112
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 175
      Caption = 'Catatan'
    end
    object cxmCatatan: TcxMemo
      Left = 98
      Top = 173
      Properties.CharCase = ecUpperCase
      TabOrder = 6
      Height = 58
      Width = 383
    end
    object chkApproval: TcxCheckBox
      Left = 248
      Top = 12
      Caption = 'Sudah Approval'
      Properties.ReadOnly = True
      TabOrder = 24
      Width = 121
    end
    object cxCmbJenis: TcxComboBox
      Left = 589
      Top = 61
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 10
      Width = 196
    end
  end
  inherited pnlBawah: TPanel
    Top = 470
    Width = 967
    Height = 60
    inherited btnKeluar: TButton
      Left = 164
      Top = 16
    end
    inherited btnEdit: TButton
      Left = 325
    end
    inherited btnHapus: TButton
      Left = 400
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 250
      Top = 25
    end
    inherited btnSimpan: TButton
      Left = 11
      Top = 16
    end
    object btnCetak: TButton
      Left = 88
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Cetak'
      TabOrder = 6
      OnClick = btnCetakClick
    end
  end
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, kepada '
      'FROM tbl_trssju_head '
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 21
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 745
    Top = 90
  end
end
