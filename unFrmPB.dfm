inherited frmPenerimaanBarang: TfrmPenerimaanBarang
  Left = 345
  Top = 153
  Width = 1319
  Height = 699
  BorderIcons = [biSystemMenu]
  Caption = 'Penerimaan Barang'
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1303
    inherited lblJudul: TLabel
      Width = 161
      Caption = 'Penerimaan Barang'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1303
    Height = 518
    Align = alClient
    object cxlbl1: TcxLabel
      Left = 10
      Top = 12
      Caption = 'No. Bukti'
    end
    object cxtNoBukti: TcxTextEdit
      Left = 112
      Top = 11
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 146
    end
    object cxlbl5: TcxLabel
      Left = 10
      Top = 39
      Caption = 'Nama Supplier'
    end
    object cxlSupp: TcxLookupComboBox
      Left = 112
      Top = 38
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Supplier'
          FieldName = 'nama'
        end>
      Properties.ListSource = dsSupp
      TabOrder = 1
      OnExit = cxlSuppExit
      Width = 396
    end
    object cxChkPBTanpaPO: TcxCheckBox
      Left = 264
      Top = 11
      Caption = 'Penerimaan Barang Tanpa PO'
      TabOrder = 2
      OnClick = cxChkPBTanpaPOClick
      Width = 177
    end
    object cxlbl6: TcxLabel
      Left = 10
      Top = 66
      Caption = 'Alamat'
    end
    object cxtAlamat: TcxTextEdit
      Left = 112
      Top = 65
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 396
    end
    object cxlbl4: TcxLabel
      Left = 8
      Top = 94
      Caption = 'Tgl. Kedatangan'
    end
    object cxdTglDatang: TcxDateEdit
      Left = 112
      Top = 93
      TabOrder = 4
      Width = 146
    end
    object cxlbl7: TcxLabel
      Left = 10
      Top = 121
      Caption = 'Nopol'
    end
    object cxtNopol: TcxTextEdit
      Left = 112
      Top = 120
      Properties.CharCase = ecUpperCase
      TabOrder = 5
      Width = 113
    end
    object cxlbl8: TcxLabel
      Left = 234
      Top = 121
      Caption = 'Sopir'
    end
    object cxtSopir: TcxTextEdit
      Left = 268
      Top = 120
      Properties.CharCase = ecUpperCase
      TabOrder = 7
      Width = 198
    end
    object cxlbl14: TcxLabel
      Left = 10
      Top = 149
      Caption = 'Keterangan'
    end
    object cxtKeterangan: TcxTextEdit
      Left = 112
      Top = 148
      Properties.CharCase = ecUpperCase
      TabOrder = 9
      Width = 464
    end
    object cxLabel3: TcxLabel
      Left = 266
      Top = 95
      Caption = 'SJ Supplier'
    end
    object cxtNoSJ: TcxTextEdit
      Left = 333
      Top = 93
      Properties.CharCase = ecUpperCase
      TabOrder = 11
      Width = 121
    end
    object btnPilihPO: TButton
      Left = 514
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Pilih PO'
      TabOrder = 12
      OnClick = btnPilihPOClick
    end
    object cxlbl3: TcxLabel
      Left = 600
      Top = 149
      Caption = 'Tanggal PO'
      Visible = False
    end
    object cxdTglPO: TcxDateEdit
      Left = 702
      Top = 148
      TabOrder = 19
      Visible = False
      Width = 146
    end
    object cxChkPosting: TcxCheckBox
      Left = 444
      Top = 8
      Caption = 'Posting'
      TabOrder = 20
      Width = 72
    end
    object cxPageControl1: TcxPageControl
      Left = 10
      Top = 185
      Width = 1266
      Height = 326
      ActivePage = cxTabSheet1
      Color = clGradientInactiveCaption
      ParentColor = False
      TabOrder = 21
      ClientRectBottom = 326
      ClientRectRight = 1266
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Detail Transaksi'
        ImageIndex = 0
        DesignSize = (
          1266
          302)
        object cxgrdPP: TcxGrid
          Left = 10
          Top = 4
          Width = 1246
          Height = 293
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          object cxtbPB: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Append.Visible = False
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            OnCellDblClick = cxtbPBCellDblClick
            OnFocusedRecordChanged = cxtbPBFocusedRecordChanged
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##.00'
                Kind = skSum
                Column = cxColQtyPO
              end
              item
                Format = '#,##.00'
                Kind = skSum
                Column = cxColTotal
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsData.Inserting = False
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cxColNo: TcxGridColumn
              Caption = 'No'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = False
              Visible = False
              Width = 32
            end
            object cxColKodeBrg: TcxGridColumn
              Caption = 'Kode Brg'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 115
            end
            object cxColDeskripsi: TcxGridColumn
              Caption = 'Deskripsi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 295
            end
            object cxColNoPO: TcxGridColumn
              Caption = 'No. PO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 96
            end
            object cxColTglPO: TcxGridColumn
              Caption = 'Tgl. PO'
              DataBinding.ValueType = 'DateTime'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ReadOnly = True
              Width = 81
            end
            object cxColQtyPO: TcxGridColumn
              Caption = 'Qty. PO'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
            end
            object cxColQtyTerima: TcxGridColumn
              Caption = 'Qty. Sudah Terima'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Width = 108
            end
            object cxColQtyDatang: TcxGridColumn
              Caption = 'Qty. Datang'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ReadOnly = False
              Properties.ValueType = vtFloat
              Options.Editing = False
              Width = 83
            end
            object cxColSatuan: TcxGridColumn
              Caption = 'Satuan'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 82
            end
            object cxColHarga: TcxGridColumn
              Caption = 'Harga'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Visible = False
              Width = 88
            end
            object cxColGdg: TcxGridColumn
              Caption = 'Gudang'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  Caption = 'Gudang'
                  FieldName = 'nama'
                end>
              Properties.ListSource = dsGdg
              Width = 133
            end
            object cxColPPn: TcxGridColumn
              Caption = 'PPN'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'NON PPN'
                'PPN')
              Properties.ReadOnly = True
              Visible = False
            end
            object cxColValuta: TcxGridColumn
              Caption = 'Valuta'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'IDR'
                'USD')
              Visible = False
              Width = 61
            end
            object cxColKeterangan: TcxGridColumn
              Caption = 'Keterangan'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 200
            end
            object cxColTotal: TcxGridColumn
              Caption = 'Total'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Visible = False
              Width = 112
            end
            object cxColIdSatuan: TcxGridColumn
              DataBinding.ValueType = 'Integer'
              Visible = False
            end
            object cxColIdBrg: TcxGridColumn
              Visible = False
            end
            object cxColIdGdg: TcxGridColumn
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxSpinEditProperties'
              Visible = False
            end
            object cxColIdPO: TcxGridColumn
              Visible = False
            end
            object cxColCurr: TcxGridColumn
              Visible = False
            end
            object cxColRate: TcxGridColumn
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.ValueType = vtFloat
              Visible = False
            end
          end
          object cxgrdlvl1Grid1Level1: TcxGridLevel
            GridView = cxtbPB
          end
        end
        object cxGrdPB2: TcxGrid
          Left = 9
          Top = 4
          Width = 1150
          Height = 293
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          object cxtbPB2: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Append.Visible = True
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            OnFocusedRecordChanged = cxtbPB2FocusedRecordChanged
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##.00'
                Kind = skSum
              end
              item
                Format = '#,##.00'
                Kind = skSum
                Column = cxColKodeBrg22
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnBeforePost = cxtbPB2DataControllerBeforePost
            DataController.OnRecordChanged = cxtbPB2DataControllerRecordChanged
            OptionsBehavior.FocusCellOnTab = True
            OptionsData.Appending = True
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cxColKodeBrg2: TcxGridColumn
              Caption = 'Kode Brg'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  Caption = 'Kode'
                  FieldName = 'kode'
                end
                item
                  Caption = 'Deskripsi'
                  FieldName = 'deskripsi'
                end>
              Properties.ListSource = dsBarang
              Width = 95
            end
            object cxColDeskripsi2: TcxGridColumn
              Caption = 'Deskripsi'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  Caption = 'Deskripsi'
                  FieldName = 'deskripsi'
                end
                item
                  Caption = 'Kode'
                  FieldName = 'kode'
                end>
              Properties.ListSource = dsBarang
              Width = 219
            end
            object cxColQtyDatang2: TcxGridColumn
              Caption = 'Qty. Datang'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 85
            end
            object cxColSatuan2: TcxGridColumn
              Caption = 'Satuan'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 82
            end
            object cxGridColumn10: TcxGridColumn
              Caption = 'Harga'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##.00'
              Properties.ReadOnly = True
              Visible = False
              Width = 88
            end
            object cxColCurr2: TcxGridColumn
              Caption = 'Curr'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'IDR'
                'USD'
                'EUR')
              Width = 69
            end
            object cxColRate2: TcxGridColumn
              Caption = 'Rate'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 75
            end
            object cxColHarga2: TcxGridColumn
              Caption = 'Harga'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 73
            end
            object cxColPPN2: TcxGridColumn
              Caption = 'PPN'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'PPN'
                'NON PPN')
              Width = 85
            end
            object cxColGdg2: TcxGridColumn
              Caption = 'Gudang'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  Caption = 'Gudang'
                  FieldName = 'nama'
                end>
              Properties.ListSource = dsGdg
              Width = 146
            end
            object cxColKeterangan2: TcxGridColumn
              Caption = 'Keterangan'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 200
            end
            object cxColKodeBrg22: TcxGridColumn
              Caption = 'Total'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##.00'
              Properties.ReadOnly = False
              Visible = False
              Options.Editing = False
              Width = 112
            end
            object cxColIdGdg22: TcxGridColumn
              DataBinding.ValueType = 'Integer'
              Visible = False
            end
            object cxColIdSatuan22: TcxGridColumn
              Visible = False
            end
            object cxColSubtotal2: TcxGridColumn
              Caption = 'Subtotal'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 92
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxtbPB2
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Detail LOT'
        ImageIndex = 1
        DesignSize = (
          1266
          302)
        object Label1: TLabel
          Left = 17
          Top = 15
          Width = 62
          Height = 13
          Caption = 'Kode Barang'
        end
        object cxGrid9: TcxGrid
          Left = 15
          Top = 41
          Width = 566
          Height = 235
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          object cxTblLot: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxColQty
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cxCollot: TcxGridColumn
              Caption = 'No.LOT'
              Width = 285
            end
            object cxColQty: TcxGridColumn
              Caption = 'Qty'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 122
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxTblLot
          end
        end
        object cxtKode: TcxTextEdit
          Left = 95
          Top = 11
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 131
        end
        object Button1: TButton
          Left = 235
          Top = 7
          Width = 148
          Height = 28
          Caption = 'Simpan LOT'
          TabOrder = 2
          OnClick = Button1Click
        end
        object cxtsatuan: TcxTextEdit
          Left = 400
          Top = 6
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 3
          Visible = False
          Width = 131
        end
        object cxtgudang: TcxTextEdit
          Left = 535
          Top = 6
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 4
          Visible = False
          Width = 131
        end
        object cxsqty: TcxSpinEdit
          Left = 675
          Top = 5
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 5
          Visible = False
          Width = 121
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 584
    Width = 1303
    Align = alBottom
  end
  object zqrSupp: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_supplier'
      'ORDER BY nama')
    Params = <>
    Properties.Strings = (
      
        'select kode, deskripsi, satuan from tbl_barang order by deskrips' +
        'i')
    Left = 748
    Top = 82
  end
  object zqrPO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT  a.no_bukti, a.tanggal,a.kode_supp, b.nama nama_supplier'
      'FROM tbl_po_head a'
      'LEFT JOIN tbl_supplier b ON b.kode = a.kode_supp'
      
        'WHERE f_completed = 0 AND a.kode_supp = :id_supplier AND a.f_com' +
        'pleted = 0'
      'ORDER BY tanggal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_supplier'
        ParamType = ptUnknown
      end>
    Left = 669
    Top = 78
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_supplier'
        ParamType = ptUnknown
      end>
  end
  object zqrBarang: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'select  kode, deskripsi from tbl_barang where left(kode,1)<>'#39'B'#39
      'order by deskripsi asc')
    Params = <>
    Properties.Strings = (
      
        'select kode, deskripsi, satuan from tbl_barang order by deskrips' +
        'i')
    Left = 822
    Top = 86
  end
  object dsBarang: TDataSource
    DataSet = zqrBarang
    Left = 854
    Top = 85
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 783
    Top = 81
  end
  object zqrGdg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_gudang')
    Params = <>
    Left = 900
    Top = 87
  end
  object dsGdg: TDataSource
    DataSet = zqrGdg
    Left = 933
    Top = 90
  end
  object dsPO: TDataSource
    DataSet = zqrPO
    Left = 707
    Top = 79
  end
end
