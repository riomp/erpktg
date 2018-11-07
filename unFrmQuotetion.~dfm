inherited frmQuotetion: TfrmQuotetion
  Left = 446
  Top = 218
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Quotation'
  ClientHeight = 564
  ClientWidth = 893
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 893
    inherited lblJudul: TLabel
      Width = 81
      Caption = 'Quotation'
    end
    object btnEdit2: TButton
      Left = 486
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      Visible = False
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 566
      Top = 18
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'no_quote'
      Properties.ListColumns = <
        item
          FieldName = 'no_quote'
        end
        item
          FieldName = 'tgl_trans'
        end
        item
          FieldName = 'kode_customer'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsQuote
      TabOrder = 1
      Visible = False
      Width = 251
    end
    object Button1: TButton
      Left = 150
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
      Visible = False
      OnClick = Button1Click
    end
  end
  inherited pnlTengah: TPanel
    Width = 893
    Height = 423
    object Label1: TLabel
      Left = 16
      Top = 400
      Width = 32
      Height = 13
      Caption = 'Label1'
      Visible = False
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Quote'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 102
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 35
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 102
      Top = 33
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 3
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 59
      Caption = 'Tgl. Expired'
    end
    object cxdTglExp: TcxDateEdit
      Left = 102
      Top = 57
      Properties.ReadOnly = False
      TabOrder = 5
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 84
      Caption = 'Customer'
    end
    object cxlCust: TcxLookupComboBox
      Left = 102
      Top = 82
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 500
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama Customer'
          Width = 150
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          Width = 50
          FieldName = 'kode'
        end
        item
          Caption = 'Alamat'
          Width = 100
          FieldName = 'alamat'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCust
      TabOrder = 7
      Width = 299
    end
    object cxLabel3: TcxLabel
      Left = 423
      Top = 10
      Caption = 'Shipping Metode'
    end
    object cxLabel4: TcxLabel
      Left = 655
      Top = 10
      Caption = 'Shipping Term'
    end
    object cxLabel5: TcxLabel
      Left = 423
      Top = 36
      Caption = 'Delivery Date'
    end
    object cxLabel7: TcxLabel
      Left = 423
      Top = 59
      Caption = 'Payment Terms'
    end
    object cxmPayment: TcxMemo
      Left = 536
      Top = 57
      TabOrder = 12
      Height = 40
      Width = 281
    end
    object cxLabel9: TcxLabel
      Left = 655
      Top = 34
      Caption = 'Tax'
    end
    object cxComboTax: TcxComboBox
      Left = 728
      Top = 33
      Properties.Items.Strings = (
        'INCLUDE'
        'EXCLUDE')
      Properties.OnChange = cxComboTaxPropertiesChange
      TabOrder = 14
      Text = 'INCLUDE'
      Width = 89
    end
    object cxLabel11: TcxLabel
      Left = 625
      Top = 363
      Caption = 'Sales Tax'
    end
    object cxLabel12: TcxLabel
      Left = 625
      Top = 389
      Caption = 'Grand Total'
    end
    object cxsTax: TcxSpinEdit
      Left = 714
      Top = 361
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      Style.HotTrack = True
      TabOrder = 17
      Width = 161
    end
    object cxsGrand: TcxSpinEdit
      Left = 714
      Top = 387
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      Style.HotTrack = True
      TabOrder = 18
      Width = 161
    end
    object cxtShipMethode: TcxTextEdit
      Left = 731
      Top = 108
      Properties.CharCase = ecUpperCase
      TabOrder = 19
      Visible = False
      Width = 105
    end
    object cxtShipping: TcxTextEdit
      Left = 823
      Top = 83
      Properties.CharCase = ecUpperCase
      TabOrder = 20
      Visible = False
      Width = 89
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 109
      Caption = 'Sales'
    end
    object cxlSales: TcxLookupComboBox
      Left = 102
      Top = 107
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 500
      Properties.KeyFieldNames = 'kode_sales'
      Properties.ListColumns = <
        item
          Width = 100
          FieldName = 'nama'
        end
        item
          Width = 60
          FieldName = 'kode_sales'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSales
      TabOrder = 22
      Width = 299
    end
    object cxGrid1: TcxGrid
      Left = 9
      Top = 136
      Width = 872
      Height = 217
      TabOrder = 23
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1TableView1: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = cxColTotal
          end
          item
            Kind = skSum
            Column = cxColTotal
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###'
            Kind = skSum
            Column = cxColTotal
            DisplayText = 'Total'
          end
          item
            Format = '#,###'
            Kind = skSum
            Column = cxColTotal2
            VisibleForCustomization = False
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnAfterDelete = cxGrid1TableView1DataControllerAfterDelete
        DataController.OnBeforePost = cxGrid1TableView1DataControllerBeforePost
        DataController.OnRecordChanged = cxGrid1TableView1DataControllerRecordChanged
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        object cxColNo: TcxGridColumn
          Caption = 'No.'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.UseCtrlIncrement = True
          OnGetDisplayText = cxColNoGetDisplayText
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 51
        end
        object cxColKode: TcxGridColumn
          Caption = 'Kode'
          Width = 73
        end
        object cxColItem: TcxGridColumn
          Caption = 'Deskripsi'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'deskripsi'
            end
            item
              FieldName = 'kode'
            end>
          Properties.ListSource = dsBrg
          HeaderAlignmentHorz = taCenter
          Width = 221
        end
        object cxColDelivery: TcxGridColumn
          Caption = 'Delivery'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Width = 71
        end
        object cxColQty: TcxGridColumn
          Caption = 'Qty'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxColSatuan: TcxGridColumn
          Caption = 'Unit'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'description'
          Properties.ListColumns = <
            item
              FieldName = 'description'
            end>
          Properties.ListSource = dsUnit
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxColQty2: TcxGridColumn
          Caption = 'Qty'
          DataBinding.ValueType = 'Float'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxColSatuan2: TcxGridColumn
          Caption = 'Satuan'
          Visible = False
          Options.Editing = False
        end
        object cxColPrice: TcxGridColumn
          Caption = 'Unit Price'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxColTotal: TcxGridColumn
          Caption = 'Line Total'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxColTotal2: TcxGridColumn
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,###'
          Properties.ValueType = vtFloat
          Visible = False
          FooterAlignmentHorz = taRightJustify
          GroupSummaryAlignment = taRightJustify
          HeaderAlignmentHorz = taRightJustify
          HeaderGlyphAlignmentHorz = taRightJustify
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1TableView1
      end
    end
    object cxdDel: TcxDateEdit
      Left = 536
      Top = 33
      Properties.ReadOnly = False
      TabOrder = 24
      Width = 103
    end
    object cxLabel13: TcxLabel
      Left = 423
      Top = 107
      Caption = 'Currency'
    end
    object cxcCurr: TcxComboBox
      Left = 536
      Top = 104
      Properties.Items.Strings = (
        'IDR'
        'USD')
      Properties.OnEditValueChanged = cxcCurrPropertiesEditValueChanged
      TabOrder = 26
      Text = 'IDR'
      Width = 49
    end
    object cxsKurs: TcxSpinEdit
      Left = 592
      Top = 104
      Properties.DisplayFormat = '#,###'
      Properties.ValueType = vtFloat
      TabOrder = 27
      Width = 121
    end
    object cxsGrand2: TcxSpinEdit
      Left = 314
      Top = 387
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      Style.HotTrack = True
      TabOrder = 28
      Visible = False
      Width = 161
    end
    object cxsTax2: TcxSpinEdit
      Left = 314
      Top = 361
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      Style.HotTrack = True
      TabOrder = 29
      Visible = False
      Width = 161
    end
    object cxcShipMethode: TcxComboBox
      Left = 535
      Top = 10
      Properties.Items.Strings = (
        'LOCCO'
        'FRANCO'
        'FREE ON BOARD'
        'CIF')
      TabOrder = 30
      Width = 116
    end
    object cxcShipping: TcxComboBox
      Left = 730
      Top = 10
      Properties.Items.Strings = (
        'SEAFREIGHT'
        'AIRFREIGHT'
        'FCL'
        'LCL'
        'DOOR TO DOOR'
        'PORT TO PORT'
        'DOOR TO PORT'
        'PORT TO DOOR')
      TabOrder = 31
      Width = 116
    end
  end
  inherited pnlBawah: TPanel
    Top = 489
    Width = 893
    inherited btnBaru: TButton
      Left = 315
    end
    inherited btnHapus: TButton
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 474
      Top = 29
    end
    object btnCetak: TButton
      Left = 178
      Top = 29
      Width = 113
      Height = 25
      Caption = '&Cetak Quotetion'
      TabOrder = 6
      Visible = False
      OnClick = btnCetakClick
    end
  end
  object zqrCust: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_customer'
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Properties.Strings = (
      'SELECT kode,nama,alamat FROM tbl_customer')
    Left = 296
    Top = 21
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 326
    Top = 21
  end
  object zBrg: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi FROM tbl_barang '
      ' where left(kode,1)='#39'A'#39)
    Params = <>
    Left = 365
    Top = 20
  end
  object dsBrg: TDataSource
    DataSet = zBrg
    Left = 395
    Top = 20
  end
  object zDet: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_quote,tgl_trans,kode_customer FROM tbl_quote_head')
    Params = <>
    Left = 469
    Top = 148
  end
  object dsDet: TDataSource
    DataSet = zDet
    Left = 499
    Top = 148
  end
  object zQuote: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_quote,tgl_trans,kode_customer FROM tbl_quote_head')
    Params = <>
    Left = 229
    Top = 28
  end
  object dsQuote: TDataSource
    DataSet = zQuote
    Left = 259
    Top = 20
  end
  object zqrSales: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_sales')
    Params = <>
    Properties.Strings = (
      'SELECT * FROM tbl_sales')
    Left = 296
    Top = 85
  end
  object dsSales: TDataSource
    DataSet = zqrSales
    Left = 326
    Top = 85
  end
  object zqrUnit: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unit'
      'ORDER BY description')
    Params = <>
    Properties.Strings = (
      'SELECT * FROM tbl_sales')
    Left = 356
    Top = 85
  end
  object dsUnit: TDataSource
    DataSet = zqrUnit
    Left = 386
    Top = 85
  end
end
