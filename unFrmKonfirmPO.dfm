inherited frmKonfirmasiPO: TfrmKonfirmasiPO
  Left = 464
  Top = 76
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Konfirmasi Purchase Order'
  ClientHeight = 635
  ClientWidth = 827
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 827
    inherited lblJudul: TLabel
      Width = 259
      Caption = 'Konfirmasi Purchase Order (PO)'
    end
    object btnEdit2: TButton
      Left = 470
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      Visible = False
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 553
      Top = 24
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'no_kpo'
      Properties.ListColumns = <
        item
          FieldName = 'no_kpo'
        end
        item
          FieldName = 'tgl_kpo'
        end
        item
          FieldName = 'kode_customer'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsKPO
      TabOrder = 1
      Visible = False
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Width = 827
    Height = 495
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Konfirmasi'
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
      Caption = 'Tgl. Konfirmasi'
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
      Left = 405
      Top = 35
      Caption = 'Estimasi Kirim'
    end
    object cxdTglExp: TcxDateEdit
      Left = 478
      Top = 33
      Properties.ReadOnly = False
      TabOrder = 5
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Customer'
    end
    object cxlCust: TcxLookupComboBox
      Left = 102
      Top = 83
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 3000
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama Customer'
          Width = 500
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end
        item
          Caption = 'Alamat'
          Width = 300
          FieldName = 'alamat'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCust
      TabOrder = 7
      Width = 235
    end
    object cxLabel3: TcxLabel
      Left = 405
      Top = 10
      Caption = 'No. PO'
    end
    object cxLabel4: TcxLabel
      Left = 637
      Top = 11
      Caption = 'Tgl. PO'
    end
    object cxtPO: TcxTextEdit
      Left = 478
      Top = 8
      Properties.CharCase = ecUpperCase
      TabOrder = 10
      Width = 153
    end
    object cxdTglPO: TcxDateEdit
      Left = 680
      Top = 8
      Properties.ReadOnly = False
      TabOrder = 11
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 615
      Top = 36
      Caption = 'Lebar Jalan'
    end
    object cxLabel7: TcxLabel
      Left = 405
      Top = 61
      Caption = 'Angkutan'
    end
    object cxtLebar: TcxTextEdit
      Left = 680
      Top = 33
      Properties.CharCase = ecUpperCase
      TabOrder = 14
      Width = 121
    end
    object cxtAngkutan: TcxTextEdit
      Left = 478
      Top = 58
      Properties.CharCase = ecUpperCase
      TabOrder = 15
      Width = 153
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 60
      Caption = 'No.Quotetion'
    end
    object cxlQuote: TcxLookupComboBox
      Left = 102
      Top = 58
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
      Properties.OnChange = cxlQuotePropertiesChange
      TabOrder = 17
      OnKeyPress = cxlQuoteKeyPress
      Width = 185
    end
    object cxGrid1: TcxGrid
      Left = 16
      Top = 176
      Width = 769
      Height = 209
      TabOrder = 18
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1TableView1: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
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
            Format = '#,##0.00'
            Kind = skSum
            Column = cxColTotal
            DisplayText = 'Total'
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxColDiscAmount
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxColPPN
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxColNet
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnRecordChanged = cxGrid1TableView1DataControllerRecordChanged
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
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 51
        end
        object cxColItem: TcxGridColumn
          Caption = 'Kode Barang'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
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
          Options.Editing = False
          Width = 221
        end
        object cxColQty: TcxGridColumn
          Caption = 'Qty'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxColSatuan: TcxGridColumn
          Caption = 'Unit'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
        end
        object cxColPrice: TcxGridColumn
          Caption = 'Unit Price'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,###'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 116
        end
        object cxColTotal: TcxGridColumn
          Caption = 'Gross Amount'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,###'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 116
        end
        object cxColQty2: TcxGridColumn
          Visible = False
        end
        object cxColSatuan2: TcxGridColumn
          Visible = False
        end
        object cxColDisc: TcxGridColumn
          Caption = 'Disc (%)'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,###'
          Properties.ValueType = vtFloat
        end
        object cxColDiscAmount: TcxGridColumn
          Caption = 'Disc Amount'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,###'
          Properties.ValueType = vtFloat
          Width = 71
        end
        object cxColDPP: TcxGridColumn
          Caption = 'DPP'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0,00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          Width = 97
        end
        object cxColPPN: TcxGridColumn
          Caption = 'PPN'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0,00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          Width = 93
        end
        object cxColNet: TcxGridColumn
          Caption = 'Net Amount'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0,00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          Width = 115
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1TableView1
      end
    end
    object cxLabel11: TcxLabel
      Left = 540
      Top = 442
      Caption = 'PPN'
    end
    object cxsTax: TcxSpinEdit
      Left = 629
      Top = 440
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      Style.HotTrack = True
      TabOrder = 20
      Width = 161
    end
    object cxLabel12: TcxLabel
      Left = 540
      Top = 462
      Caption = 'Total Price'
    end
    object cxsGrand: TcxSpinEdit
      Left = 629
      Top = 466
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      Style.HotTrack = True
      TabOrder = 22
      Width = 161
    end
    object cxLabel10: TcxLabel
      Left = 542
      Top = 394
      Caption = 'Gross'
    end
    object cxsGross: TcxSpinEdit
      Left = 629
      Top = 392
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      Style.HotTrack = True
      TabOrder = 24
      Width = 161
    end
    object cxLabel13: TcxLabel
      Left = 539
      Top = 418
      Caption = 'Discount'
    end
    object cxsSAD: TcxSpinEdit
      Left = 629
      Top = 416
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      Style.HotTrack = True
      TabOrder = 26
      Width = 161
    end
    object cxLabel14: TcxLabel
      Left = 15
      Top = 112
      Caption = 'Alamat Kirim'
    end
    object cxLabel15: TcxLabel
      Left = 15
      Top = 137
      Caption = 'Nama PIC'
    end
    object cxLabel16: TcxLabel
      Left = 295
      Top = 137
      Caption = 'Telp PIC'
    end
    object cxtAlamatKirim: TcxTextEdit
      Left = 102
      Top = 108
      Properties.CharCase = ecUpperCase
      TabOrder = 30
      Width = 297
    end
    object cxtPIC: TcxTextEdit
      Left = 102
      Top = 133
      Properties.CharCase = ecUpperCase
      TabOrder = 31
      Width = 185
    end
    object cxtTlpPIC: TcxTextEdit
      Left = 344
      Top = 133
      Properties.CharCase = ecUpperCase
      TabOrder = 32
      Width = 129
    end
    object cxtNote: TcxMemo
      Left = 16
      Top = 408
      Lines.Strings = (
        
          '- Biaya kirim disediakan oleh distributor. (Segala bentuk mobil ' +
          'tidak standar & resikonya bukan '
        'menjadi tanggung jawab   PT. Kencana Tiara Gemilang)'
        
          '- Purchase Order dianggap sah untuk dilanjutkan ke proses selanj' +
          'utnya jika sudah diapprove '
        'oleh pembeli.')
      TabOrder = 33
      Height = 77
      Width = 457
    end
    object cxLabel17: TcxLabel
      Left = 17
      Top = 389
      Caption = 'Note :'
    end
    object cxLabel18: TcxLabel
      Left = 405
      Top = 85
      Caption = 'TOP'
    end
    object cxlTop: TcxLookupComboBox
      Left = 478
      Top = 83
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          MinWidth = 15
          FieldName = 'kode'
        end
        item
          MinWidth = 30
          FieldName = 'deskripsi'
        end>
      Properties.ListSource = dTop
      Properties.OnChange = cxlTopPropertiesChange
      TabOrder = 36
      Width = 89
    end
    object cxtOthers: TcxTextEdit
      Left = 568
      Top = 83
      Properties.CharCase = ecUpperCase
      TabOrder = 37
      Width = 199
    end
  end
  inherited pnlBawah: TPanel
    Top = 561
    Width = 827
    Height = 69
    inherited btnHapus: TButton
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 474
      Top = 29
    end
    object btnCetak: TButton
      Left = 168
      Top = 25
      Width = 113
      Height = 25
      Caption = 'Cetak'
      TabOrder = 6
      Visible = False
      OnClick = btnCetakClick
    end
  end
  object zQuote: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.no_quote,a.tgl_trans,a.kode_customer'
      'FROM tbl_quote_head a')
    Params = <>
    Left = 285
    Top = 20
  end
  object dsQuote: TDataSource
    DataSet = zQuote
    Left = 315
    Top = 20
  end
  object zBrg: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi FROM tbl_barang ')
    Params = <>
    Left = 349
    Top = 20
  end
  object dsBrg: TDataSource
    DataSet = zBrg
    Left = 379
    Top = 20
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
    Top = 77
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 326
    Top = 77
  end
  object zKPO: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_kpo,tgl_kpo,kode_customer FROM tbl_kpo_head ')
    Params = <>
    Left = 298
    Top = 106
  end
  object dsKPO: TDataSource
    DataSet = zKPO
    Left = 328
    Top = 106
  end
  object zTop: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi FROM tbl_top')
    Params = <>
    Left = 546
    Top = 202
  end
  object dTop: TDataSource
    DataSet = zTop
    Left = 584
    Top = 202
  end
end
