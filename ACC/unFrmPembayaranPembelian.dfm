inherited frmPembayaranPembelian: TfrmPembayaranPembelian
  Left = 427
  Top = 182
  Width = 1041
  Height = 659
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Pembayaran Pembelian'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1025
    Height = 56
    inherited lblJudul: TLabel
      Top = 15
      Width = 193
      Caption = 'Pembayaran Pembelian'
    end
  end
  inherited pnlTengah: TPanel
    Top = 56
    Width = 1025
    Height = 495
    Visible = False
    object cxLabel1: TcxLabel
      Left = 15
      Top = 62
      Caption = 'Supplier'
    end
    object cxlSupplier: TcxLookupComboBox
      Left = 88
      Top = 60
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama'
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSupp
      Properties.OnChange = cxlSupplierPropertiesChange
      TabOrder = 7
      Width = 446
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 86
      Caption = 'Pembayaran'
    end
    object cxGrid1: TcxGrid
      Left = 15
      Top = 130
      Width = 994
      Height = 211
      TabOrder = 15
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxTbl: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnAfterPost = cxTblDataControllerAfterPost
        DataController.OnRecordChanged = cxTblDataControllerRecordChanged
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.GroupByBox = False
        object cxColNoInvoice: TcxGridColumn
          Caption = 'No. Invoice'
          Width = 110
        end
        object cxColTgl: TcxGridColumn
          Caption = 'Tanggal'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Width = 92
        end
        object cxColTotInvoice: TcxGridColumn
          Caption = 'Total Invoice'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 109
        end
        object cxColTerbayar: TcxGridColumn
          Caption = 'Sudah Terbayar'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 125
        end
        object cxColSisa: TcxGridColumn
          Caption = 'Sisa'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 119
        end
        object cxColDibayar: TcxGridColumn
          Caption = 'Dibayar'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.OnChange = cxColDibayarPropertiesChange
          HeaderAlignmentHorz = taRightJustify
          Width = 147
        end
        object cxColCair: TcxGridColumn
          Caption = 'Cair'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Bukti'
    end
    object cxtNoTrans: TcxTextEdit
      Left = 88
      Top = 8
      TabOrder = 0
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 823
      Top = 10
      Caption = 'Tgl. Invoice'
      Visible = False
    end
    object cxdTglInvoice: TcxDateEdit
      Left = 893
      Top = 8
      TabOrder = 2
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 840
      Top = 37
      Caption = 'Ship Via'
      Visible = False
    end
    object cxComboBox1: TcxComboBox
      Left = 893
      Top = 35
      TabOrder = 5
      Text = 'cxComboBox1'
      Visible = False
      Width = 121
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 349
      Caption = 'Keterangan'
    end
    object cxmKeterangan: TcxMemo
      Left = 79
      Top = 352
      Lines.Strings = (
        '')
      Properties.CharCase = ecUpperCase
      TabOrder = 20
      Height = 46
      Width = 447
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 36
      Caption = 'Tanggal'
    end
    object cxdTanggal: TcxDateEdit
      Left = 88
      Top = 34
      TabOrder = 4
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 100
      Caption = 'Dari'
    end
    object cxlAkunPembayaran: TcxLookupComboBox
      Left = 88
      Top = 86
      Properties.KeyFieldNames = 'noakun'
      Properties.ListColumns = <
        item
          Caption = 'Nama'
          FieldName = 'nama'
        end
        item
          Caption = 'No. Akun'
          FieldName = 'noakun'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsAkun
      Properties.OnChange = cxlAkunPembayaranPropertiesChange
      TabOrder = 10
      Width = 303
    end
    object cxtNoAkun: TcxTextEdit
      Left = 395
      Top = 86
      Properties.ReadOnly = True
      TabOrder = 11
      Width = 121
    end
    object cxChkPosting: TcxCheckBox
      Left = 210
      Top = 8
      Caption = 'Posting'
      State = cbsChecked
      TabOrder = 1
      Visible = False
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 725
      Top = 348
      Caption = 'Total Jumlah Pembayaran'
    end
    object cxsTotJmlPembayaran: TcxSpinEdit
      Left = 865
      Top = 345
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 16
      Width = 144
    end
    object cxtAkunSupp: TcxTextEdit
      Left = 895
      Top = 65
      TabOrder = 8
      Visible = False
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Top = 551
    Width = 1025
    Height = 71
    inherited btnKeluar: TButton
      Left = 930
      Top = 20
      TabOrder = 5
    end
    inherited btnBaru: TButton
      Left = 15
      Top = 20
      TabOrder = 0
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 92
      Top = 20
      TabOrder = 1
      Visible = True
    end
    inherited btnHapus: TButton
      Left = 169
      Top = 20
      TabOrder = 2
      Visible = True
    end
    inherited btnBatal: TButton
      Left = 246
      Top = 20
      TabOrder = 3
      Visible = True
    end
    inherited btnSimpan: TButton
      Left = 853
      Top = 20
      TabOrder = 4
    end
  end
  object zqrSupp: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_supplier'
      'WHERE f_aktif = 1'
      'ORDER BY nama ')
    Params = <>
    Left = 360
    Top = 20
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 330
    Top = 20
  end
  object zqrPO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti FROM v_po_head'
      'WHERE kode_supp = :kode_supp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
    Properties.Strings = (
      'SELECT no_bukti '
      'FROM tbl_po_head '
      'WHERE kode_supp = :kode_supp')
    Left = 420
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
  end
  object dsPO: TDataSource
    DataSet = zqrPO
    Left = 390
    Top = 20
  end
  object dsAkun: TDataSource
    DataSet = zqrAkun
    Left = 451
    Top = 20
  end
  object zqrAkun: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.noakun, a.nama FROM tbl_coa a WHERE f_aktif = 1'
      'AND (SELECT COUNT(*) FROM tbl_coa WHERE induk = a.noakun) = 0'
      'AND tipe = 1'
      'ORDER BY a.nama')
    Params = <>
    Properties.Strings = (
      'SELECT no_bukti '
      'FROM tbl_po_head '
      'WHERE kode_supp = :kode_supp')
    Left = 481
    Top = 20
  end
end
