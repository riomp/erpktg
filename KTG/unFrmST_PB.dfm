inherited frmST_PB: TfrmST_PB
  Left = 391
  Top = 147
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  Align = alClient
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Serah Terima Hasil Produksi + Pengiriman BOM'
  ClientHeight = 776
  ClientWidth = 1134
  OldCreateOrder = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1134
    Height = 43
    inherited lblJudul: TLabel
      Top = 10
      Width = 389
      Caption = 'Serah Terima Hasil Produksi + Pengiriman BOM'
    end
  end
  inherited pnlTengah: TPanel
    Left = 970
    Top = 140
    Width = 1104
    Height = 166
    Align = alNone
    TabOrder = 3
    Visible = False
    object cxGrid1: TcxGrid
      Left = 281
      Top = 6
      Width = 1102
      Height = 164
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        object cxTblno_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
          Width = 99
        end
        object cxTblColumn6: TcxGridDBColumn
          Caption = 'No. SO'
          DataBinding.FieldName = 'no_so'
          Width = 101
        end
        object cxTblColumn3: TcxGridDBColumn
          Caption = 'No. Bukti'
          DataBinding.FieldName = 'no_bukti'
        end
        object cxTblColumn1: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTblColumn2: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 273
        end
        object cxTblColumn5: TcxGridDBColumn
          Caption = 'Target?'
          DataBinding.FieldName = 'f_target'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 49
        end
        object cxTbltanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTblshift2: TcxGridDBColumn
          Caption = 'Shift'
          DataBinding.FieldName = 'shift2'
          Width = 54
        end
        object cxTbljam1: TcxGridDBColumn
          Caption = 'Jam 1'
          DataBinding.FieldName = 'jam1'
        end
        object cxTbljam2: TcxGridDBColumn
          Caption = 'Jam 2'
          DataBinding.FieldName = 'jam2'
        end
        object cxTblmesin: TcxGridDBColumn
          Caption = 'Mesin'
          DataBinding.FieldName = 'mesin'
        end
        object cxTblqty_prod: TcxGridDBColumn
          Caption = 'Qty. Prod'
          DataBinding.FieldName = 'qty_prod'
        end
        object cxTblqty_reject: TcxGridDBColumn
          Caption = 'Qty. Reject'
          DataBinding.FieldName = 'qty_reject'
        end
        object cxTblket_reject: TcxGridDBColumn
          Caption = 'Keterangan Reject'
          DataBinding.FieldName = 'ket_reject'
          Width = 277
        end
        object cxTblket_mesin: TcxGridDBColumn
          Caption = 'Keterangan Mesin'
          DataBinding.FieldName = 'ket_mesin'
          Width = 260
        end
        object cxTbluser: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'user'
        end
        object cxTbluser_dept: TcxGridDBColumn
          Caption = 'User Dept.'
          DataBinding.FieldName = 'user_dept'
        end
        object cxTbltgl_input: TcxGridDBColumn
          Caption = 'Tgl. Input'
          DataBinding.FieldName = 'tgl_input'
        end
        object cxTblColumn4: TcxGridDBColumn
          Caption = 'Target'
          DataBinding.FieldName = 'target2'
        end
      end
      object cxTblOpr: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'no_bukti'
        DataController.KeyFieldNames = 'no_bukti'
        DataController.MasterKeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxTblOprnik: TcxGridDBColumn
          Caption = 'NIK'
          DataBinding.FieldName = 'nik'
        end
        object cxTblOprnama: TcxGridDBColumn
          Caption = 'Nama Operator'
          DataBinding.FieldName = 'nama'
          Width = 180
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
        object cxGrid1Level2: TcxGridLevel
          GridView = cxTblOpr
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Left = 955
    Top = 476
    Width = 1076
    Align = alNone
    TabOrder = 6
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 1134
    Height = 37
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 15
      Top = 8
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 7
      TabOrder = 1
      Width = 101
    end
    object cxLabel2: TcxLabel
      Left = 175
      Top = 8
      Caption = 'S / D '
    end
    object cxdTgl2: TcxDateEdit
      Left = 213
      Top = 7
      TabOrder = 2
      Width = 101
    end
    object btnProses: TButton
      Left = 319
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 0
      OnClick = btnProsesClick
    end
  end
  object btnKeluar2: TButton
    Left = 10
    Top = 516
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 7
    Visible = False
    OnClick = btnKeluar2Click
  end
  object cxGrid2: TcxGrid
    Left = 960
    Top = 291
    Width = 1104
    Height = 135
    TabOrder = 5
    Visible = False
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 110
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Width = 95
      end
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 273
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shift2'
        Width = 54
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'Jam 1'
        DataBinding.FieldName = 'jam1'
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = 'Jam 2'
        DataBinding.FieldName = 'jam2'
      end
      object cxGridDBColumn6: TcxGridDBColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'mesin'
      end
      object cxGridDBColumn8: TcxGridDBColumn
        Caption = 'Qty. Reject'
        DataBinding.FieldName = 'qty'
      end
      object cxGridDBColumn9: TcxGridDBColumn
        Caption = 'Keterangan Reject'
        DataBinding.FieldName = 'ket_reject'
        Width = 277
      end
      object cxGridDBColumn10: TcxGridDBColumn
        Caption = 'Keterangan Mesin'
        DataBinding.FieldName = 'ket_mesin'
        Width = 260
      end
      object cxGridDBColumn11: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
      end
      object cxGridDBColumn12: TcxGridDBColumn
        Caption = 'User Dept.'
        DataBinding.FieldName = 'user_dept'
      end
      object cxGridDBColumn13: TcxGridDBColumn
        Caption = 'Tgl. Input'
        DataBinding.FieldName = 'tgl_input'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 1000
    Top = 180
    Width = 1104
    Height = 40
    TabOrder = 4
    Visible = False
    object btnExcel: TButton
      Left = 6
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Cetak Excel'
      TabOrder = 0
      OnClick = btnExcelClick
    end
  end
  object pg: TcxPageControl
    Left = 0
    Top = 80
    Width = 1134
    Height = 696
    ActivePage = cxTabSheet1
    Align = alClient
    Style = 7
    TabOrder = 2
    ClientRectBottom = 695
    ClientRectLeft = 1
    ClientRectRight = 1133
    ClientRectTop = 21
    object cxTabSheet1: TcxTabSheet
      Caption = 'Serah Terima Hasil Produksi'
      ImageIndex = 0
      object cxGrdSPK: TcxGrid
        Left = 15
        Top = 20
        Width = 1067
        Height = 216
        TabOrder = 0
        object cxTblST: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsST
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxColNoHP: TcxGridDBColumn
            Caption = 'No. Produksi'
            DataBinding.FieldName = 'no_bukti'
            Width = 91
          end
          object cxTblSTtanggal: TcxGridDBColumn
            Caption = 'Tgl. Produksi'
            DataBinding.FieldName = 'tanggal'
            Width = 74
          end
          object cxColNoSOST: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
          end
          object cxColNoSPKST: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 115
          end
          object cxColKodeBrgST: TcxGridDBColumn
            Caption = 'Kode Brg.'
            DataBinding.FieldName = 'kode_brg'
            Width = 123
          end
          object cxTblSTdeskripsi: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'deskripsi'
            Width = 241
          end
          object cxTblSTColumn1: TcxGridDBColumn
            Caption = 'Tot. Hasil Prod'
            DataBinding.FieldName = 'total_hp'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Width = 92
          end
          object cxColQtyProdST: TcxGridDBColumn
            Caption = 'Qty. Prod'
            DataBinding.FieldName = 'qty_prod'
            Width = 88
          end
          object cxColSatST: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'unitid'
            Width = 73
          end
          object cxTblSTshift: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            Width = 56
          end
          object cxTblSTjam: TcxGridDBColumn
            DataBinding.FieldName = 'jam'
            Visible = False
          end
          object cxTblSTqty_prod_kg: TcxGridDBColumn
            DataBinding.FieldName = 'qty_prod_kg'
            Visible = False
          end
          object cxTblSTqty_reject: TcxGridDBColumn
            DataBinding.FieldName = 'qty_reject'
            Visible = False
          end
          object cxTblSTqty_baik: TcxGridDBColumn
            DataBinding.FieldName = 'qty_baik'
            Visible = False
          end
          object cxTblSTqty_afkir: TcxGridDBColumn
            DataBinding.FieldName = 'qty_afkir'
            Visible = False
          end
          object cxTblSTqty_retur: TcxGridDBColumn
            DataBinding.FieldName = 'qty_retur'
            Visible = False
          end
          object cxTblSTtgl_prod_selesai: TcxGridDBColumn
            DataBinding.FieldName = 'tgl_prod_selesai'
            Visible = False
          end
          object cxTblSTuser: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Width = 83
          end
          object cxTblSTuser_dept: TcxGridDBColumn
            Caption = 'User Dept'
            DataBinding.FieldName = 'user_dept'
            Width = 74
          end
          object cxTblSTip_address: TcxGridDBColumn
            DataBinding.FieldName = 'ip_address'
            Visible = False
          end
          object cxTblSThostname: TcxGridDBColumn
            DataBinding.FieldName = 'hostname'
            Visible = False
          end
          object cxTblSTtgl_input: TcxGridDBColumn
            DataBinding.FieldName = 'tgl_input'
            Visible = False
          end
          object cxTblSTkg_sak: TcxGridDBColumn
            DataBinding.FieldName = 'kg_sak'
            Visible = False
          end
          object cxTblSTshift2: TcxGridDBColumn
            DataBinding.FieldName = 'shift2'
            Visible = False
            Width = 47
          end
          object cxTblSTjam1: TcxGridDBColumn
            Caption = 'Jam 1'
            DataBinding.FieldName = 'jam1'
            Width = 118
          end
          object cxTblSTjam2: TcxGridDBColumn
            Caption = 'Jam 2'
            DataBinding.FieldName = 'jam2'
            Width = 91
          end
          object cxTblSTmesin: TcxGridDBColumn
            DataBinding.FieldName = 'mesin'
            Visible = False
          end
          object cxTblSTket_reject: TcxGridDBColumn
            DataBinding.FieldName = 'ket_reject'
            Visible = False
          end
          object cxTblSTket_mesin: TcxGridDBColumn
            DataBinding.FieldName = 'ket_mesin'
            Visible = False
          end
          object cxTblSTbpu: TcxGridDBColumn
            DataBinding.FieldName = 'bpu'
            Visible = False
          end
          object cxTblSTnik: TcxGridDBColumn
            DataBinding.FieldName = 'nik'
            Visible = False
          end
          object cxTblSToperator: TcxGridDBColumn
            DataBinding.FieldName = 'operator'
            Visible = False
          end
          object cxTblSTjam1_: TcxGridDBColumn
            DataBinding.FieldName = 'jam1_'
            Visible = False
          end
          object cxTblSTjam2_: TcxGridDBColumn
            DataBinding.FieldName = 'jam2_'
            Visible = False
          end
          object cxTblSTtarget: TcxGridDBColumn
            DataBinding.FieldName = 'target'
            Visible = False
          end
          object cxTblSTtarget_kg: TcxGridDBColumn
            DataBinding.FieldName = 'target_kg'
            Visible = False
          end
          object cxTblSTid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
        end
        object cxGrdSPKLevel1: TcxGridLevel
          GridView = cxTblST
        end
      end
      object btnSimpanST: TButton
        Left = 15
        Top = 242
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
        OnClick = btnSimpanSTClick
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Pengiriman BOM'
      ImageIndex = 1
      DesignSize = (
        1132
        674)
      object cxGrid3: TcxGrid
        Left = 15
        Top = 20
        Width = 1096
        Height = 216
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxTblPB: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblPBFocusedRecordChanged
          DataController.DataSource = dsPB
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxColNoTrans: TcxGridDBColumn
            Caption = 'No. Transaksi'
            DataBinding.FieldName = 'no_bukti'
            Width = 90
          end
          object cxTblPBtanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxTblPBno_spk: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 72
          end
          object cxTblPBkode_brg: TcxGridDBColumn
            Caption = 'Kode Brg.'
            DataBinding.FieldName = 'kode_brg'
            Width = 85
          end
          object cxTblPBdeskripsi: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'deskripsi'
            Width = 335
          end
          object cxTblPBqty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
          end
          object cxTblPBsatuan: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan'
            Width = 62
          end
          object cxTblPBkode_gdg: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'kode_gdg'
            Visible = False
          end
          object cxTblPBno_so: TcxGridDBColumn
            DataBinding.FieldName = 'no_so'
            Visible = False
          end
          object cxTblPBfterima: TcxGridDBColumn
            DataBinding.FieldName = 'fterima'
            Visible = False
          end
          object cxTblPBfcons: TcxGridDBColumn
            DataBinding.FieldName = 'fcons'
            Visible = False
          end
          object cxTblPBid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxTblPB
        end
      end
      object btnSimpanPB: TButton
        Left = 15
        Top = 527
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
        OnClick = btnSimpanPBClick
      end
      object GroupBox1: TGroupBox
        Left = 15
        Top = 250
        Width = 581
        Height = 266
        Caption = 'No.Trans / Kode Barang'
        TabOrder = 2
        DesignSize = (
          581
          266)
        object cxGrid9: TcxGrid
          Left = 5
          Top = 26
          Width = 561
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
            DataController.OnRecordChanged = cxTblLotDataControllerRecordChanged
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cxCollot: TcxGridColumn
              Caption = 'No.LOT'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'lot'
              Properties.ListColumns = <
                item
                  FieldName = 'lot'
                end>
              Properties.ListSource = dsLot
              Width = 285
            end
            object cxColStock: TcxGridColumn
              Caption = 'Stock'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 121
            end
            object cxColQty: TcxGridColumn
              Caption = 'Qty'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 122
            end
            object cxColGudang: TcxGridColumn
              Visible = False
            end
            object cxColSatuan: TcxGridColumn
              Visible = False
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxTblLot
          end
        end
      end
      object cxtNoBukti: TcxTextEdit
        Left = 147
        Top = 246
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 146
      end
      object cxtKode: TcxTextEdit
        Left = 295
        Top = 246
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 131
      end
      object btn1: TButton
        Left = 430
        Top = 245
        Width = 75
        Height = 25
        Caption = 'Simpan LOT'
        TabOrder = 5
        OnClick = btn1Click
      end
      object cxsqty: TcxSpinEdit
        Left = 650
        Top = 290
        Properties.DisplayFormat = '#,##0.00'
        Properties.EditFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 6
        Visible = False
        Width = 121
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Penerimaan Pengembalian Bahan Baku'
      ImageIndex = 2
      DesignSize = (
        1132
        674)
      object cxGrid4: TcxGrid
        Left = 15
        Top = 20
        Width = 1096
        Height = 216
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxTblPenerimaanRetur: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsReturBOM
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'No. Transaksi'
            DataBinding.FieldName = 'no_bukti'
            Width = 90
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 72
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Kode Brg.'
            DataBinding.FieldName = 'kode_brg'
            Width = 85
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'deskripsi'
            Width = 335
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan'
            Width = 62
          end
          object cxGridDBColumn20: TcxGridDBColumn
            DataBinding.FieldName = 'kode_gdg'
            Visible = False
          end
          object cxGridDBColumn21: TcxGridDBColumn
            DataBinding.FieldName = 'no_so'
            Visible = False
          end
          object cxGridDBColumn22: TcxGridDBColumn
            DataBinding.FieldName = 'fterima'
            Visible = False
          end
          object cxGridDBColumn23: TcxGridDBColumn
            DataBinding.FieldName = 'fcons'
            Visible = False
          end
          object cxGridDBColumn24: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxTblPenerimaanRetur
        end
      end
      object btnSimpanReturBOM: TButton
        Left = 15
        Top = 242
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
        OnClick = btnSimpanReturBOMClick
      end
    end
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_mesin'
      '')
    Params = <>
    Left = 410
    Top = 30
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 440
    Top = 30
  end
  object zqrKetMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_ket_mesin'
      'ORDER BY jenis'
      '')
    Params = <>
    Left = 470
    Top = 30
  end
  object dsKetMesin: TDataSource
    DataSet = zqrKetMesin
    Left = 500
    Top = 30
  end
  object zqrST: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*,'
      'b.kode_brg,'
      'c.deskripsi,'
      'c.unitid,'
      'd.no_so,'
      
        'IFNULL((SELECT SUM(qty_prod) FROM tbl_hsl_prd WHERE no_spk = b.n' +
        'o_spk),0) total_hp'
      'FROM tbl_hsl_prd a'
      'LEFT JOIN tbl_spk b ON a.no_spk = b.no_spk'
      'LEFT JOIN tbl_barang c ON b.kode_brg = c.kode'
      'LEFT JOIN tbl_mo d ON d.no_mo = b.no_mo'
      
        'WHERE a.tanggal BETWEEN :tgl1 AND :tgl2 AND d.jenis = '#39'BJ'#39' AND a' +
        '.f_st = 0 AND '
      'LEFT(b.kode_brg,1)='#39'A'#39)
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
    Left = 535
    Top = 30
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
  object dsST: TDataSource
    DataSet = zqrST
    Left = 565
    Top = 30
  end
  object zqrPB: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.* ,'
      'b.deskripsi'
      'FROM tbl_trspengeluaranbb_det a'
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode'
      'WHERE a.tanggal BETWEEN :tgl1 and :tgl2 '
      'AND fkeluar = 0')
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
    Left = 595
    Top = 30
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
  object dsPB: TDataSource
    DataSet = zqrPB
    Left = 625
    Top = 30
  end
  object zqrReturBOM: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.* ,'
      'b.deskripsi'
      'FROM tbl_trsreturbppb_det a'
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode'
      'WHERE a.tanggal BETWEEN :tgl1 and :tgl2 AND fterima = 0')
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
    Left = 655
    Top = 30
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
  object dsReturBOM: TDataSource
    DataSet = zqrReturBOM
    Left = 685
    Top = 30
  end
  object dsLot: TDataSource
    DataSet = zqrLot
    Left = 647
    Top = 355
  end
  object zqrLot: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.lot'
      'FROM tbl_historybb_lot a where'
      
        '((SELECT IFNULL(SUM(qty),0) FROM tbl_historybb_lot WHERE tipe=1 ' +
        'and gudang in ('#39'G-BB'#39','#39'G-NPM'#39') and lot=a.lot and kode_brg=:kode)' +
        '-(SELECT IFNULL(SUM(qty),0) FROM tbl_historybb_lot WHERE tipe=0 ' +
        'and gudang='#39'G-PRD'#39' and lot=a.lot and kode_brg=:kode)) > 0'
      ' ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode'
        ParamType = ptUnknown
      end>
    Left = 677
    Top = 355
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode'
        ParamType = ptUnknown
      end>
  end
end
