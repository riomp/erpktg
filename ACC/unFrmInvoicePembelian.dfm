inherited frmInvoicePembelian: TfrmInvoicePembelian
  Left = 408
  Top = 120
  Width = 808
  Height = 650
  Caption = 'Invoice Pembelian'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 792
    Height = 56
    inherited lblJudul: TLabel
      Top = 15
      Width = 150
      Caption = 'Invoice Pembelian'
    end
    inherited cxlCari: TcxLookupComboBox
      Left = 498
      Top = 19
    end
    inherited btnProsesEdit: TButton
      Left = 418
      Top = 17
    end
    inherited btnCariEdit: TButton
      Left = 756
      Top = 19
    end
  end
  inherited pnlTengah: TPanel
    Top = 56
    Width = 792
    Height = 480
    object cxLabel1: TcxLabel
      Left = 15
      Top = 64
      Caption = 'Supplier'
    end
    object cxlSupp: TcxLookupComboBox
      Left = 88
      Top = 62
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
      Properties.ListSource = dsCust
      Properties.OnChange = cxlCustomerPropertiesChange
      TabOrder = 7
      Width = 446
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 90
      Caption = 'Alamat Kirim'
    end
    object cxmAlmKirim: TcxMemo
      Left = 88
      Top = 90
      Lines.Strings = (
        '')
      TabOrder = 12
      Height = 46
      Width = 447
    end
    object cxGrid1: TcxGrid
      Left = 15
      Top = 204
      Width = 761
      Height = 200
      TabOrder = 17
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxTbl: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        object cxColKodeBrg: TcxGridColumn
          Caption = 'Kode Brg.'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 89
        end
        object cxColDesk: TcxGridColumn
          Caption = 'Deskripsi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 356
        end
        object cxColQty: TcxGridColumn
          Caption = 'Qty.'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taRightJustify
        end
        object cxColHarga: TcxGridColumn
          Caption = 'Harga'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taRightJustify
          Width = 101
        end
        object cxColSubTotal: TcxGridColumn
          Caption = 'Subtotal'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taRightJustify
          Width = 123
        end
        object cxColPPn: TcxGridColumn
          Caption = 'PPn'
          DataBinding.ValueType = 'Float'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Invoice'
    end
    object cxtNoTrans: TcxTextEdit
      Left = 88
      Top = 8
      TabOrder = 2
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 603
      Top = 5
      Caption = 'Tgl. Invoice'
      Visible = False
    end
    object cxdTglInvoice: TcxDateEdit
      Left = 673
      Top = 3
      TabOrder = 0
      Visible = False
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 175
      Caption = 'No. LPB'
    end
    object cxlNoLPB: TcxLookupComboBox
      Left = 88
      Top = 172
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          FieldName = 'no_bukti'
        end>
      Properties.ListSource = dsLPB
      TabOrder = 15
      Width = 446
    end
    object btnProses: TButton
      Left = 540
      Top = 169
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 14
      OnClick = btnProsesClick
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 412
      Caption = 'Keterangan'
    end
    object cxmKet: TcxMemo
      Left = 83
      Top = 412
      Lines.Strings = (
        '')
      TabOrder = 22
      Height = 46
      Width = 398
    end
    object cxdTanggal: TcxDateEdit
      Left = 88
      Top = 35
      TabOrder = 5
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 34
      Caption = 'Tanggal'
    end
    object cxChkPosting: TcxCheckBox
      Left = 214
      Top = 8
      Caption = 'Posting'
      State = cbsChecked
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object cxsTotal: TcxSpinEdit
      Left = 629
      Top = 409
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 18
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 560
      Top = 411
      Caption = 'Total'
    end
    object cxtAkunSupp: TcxTextEdit
      Left = 678
      Top = 79
      TabOrder = 9
      Visible = False
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 605
      Top = 54
      Caption = 'Akun Supplier'
      Visible = False
    end
    object cxlAkunSupp: TcxLookupComboBox
      Left = 678
      Top = 54
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
      Properties.OnChange = cxlAkunSuppPropertiesChange
      TabOrder = 6
      Visible = False
      Width = 446
    end
    object cxtNoJurnal: TcxTextEdit
      Left = 678
      Top = 104
      TabOrder = 13
      Visible = False
      Width = 121
    end
    object cxsTotalPPn: TcxSpinEdit
      Left = 629
      Top = 434
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 23
      Width = 121
    end
    object cxlblPPn: TcxLabel
      Left = 560
      Top = 436
      Caption = 'Total PPn'
    end
  end
  inherited pnlBawah: TPanel
    Top = 536
    Width = 792
    inherited btnKeluar: TButton
      Left = 701
    end
    inherited btnBaru: TButton
      Left = 15
    end
    inherited btnEdit: TButton
      Left = 92
    end
    inherited btnHapus: TButton
      Left = 248
    end
    inherited btnSimpan: TButton
      Left = 624
    end
    inherited btnPrint: TButton
      Left = 325
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
  object dsCust: TDataSource
    DataSet = zqrSupp
    Left = 330
    Top = 20
  end
  object zqrPO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti FROM tbl_po_head'
      'WHERE kode_supp = :kode_supp;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
  end
  object dsSO: TDataSource
    DataSet = zqrPO
    Left = 330
    Top = 70
  end
  object zqrEdit: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti FROM tbl_so_head'
      'WHERE kode_customer = :kode_customer;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
    Left = 495
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
  end
  object dsEdit: TDataSource
    DataSet = zqrEdit
    Left = 465
    Top = 70
  end
  object zqrAkun: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT noakun, nama, '
      
        '(SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_a' +
        'nak '
      'FROM tbl_coa a'
      
        'WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun)' +
        ' = 0;')
    Params = <>
    Left = 300
    Top = 20
  end
  object dsAkun: TDataSource
    DataSet = zqrAkun
    Left = 270
    Top = 20
  end
  object zqrLPB: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.no_bukti'
      'FROM tbl_spbb_head a '
      'LEFT JOIN tbl_supplier b ON a.kode_supp = b.kode '
      'WHERE no_penerimaan IS NOT NULL AND a.kode_supp = :kode_supp '
      '-- and a.f_inv = 0')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
    Left = 405
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
  end
  object dsLPB: TDataSource
    DataSet = zqrLPB
    Left = 435
    Top = 70
  end
end
