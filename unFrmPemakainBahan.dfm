inherited frmPemakaianBahan: TfrmPemakaianBahan
  Left = 395
  Top = 227
  VertScrollBar.Range = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Pemakaian Bahan Baku'
  ClientHeight = 612
  ClientWidth = 1270
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1270
    inherited lblJudul: TLabel
      Width = 183
      Caption = 'Pemakain Bahan Baku'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1270
    Height = 470
    Align = alClient
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1268
      Height = 468
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 468
      ClientRectRight = 1268
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Inventory Card'
        ImageIndex = 0
        DesignSize = (
          1268
          444)
        object cxLabel1: TcxLabel
          Left = 15
          Top = 14
          Caption = 'Tanggal'
        end
        object cxdTgl1: TcxDateEdit
          Left = 65
          Top = 12
          TabOrder = 1
          Width = 121
        end
        object cxLabel2: TcxLabel
          Left = 190
          Top = 14
          Caption = 'S/D'
        end
        object cxdTgl2: TcxDateEdit
          Left = 218
          Top = 12
          TabOrder = 3
          Width = 121
        end
        object btnProses: TButton
          Left = 343
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 4
          OnClick = btnProsesClick
        end
        object cxGrid2: TcxGrid
          Left = 8
          Top = 48
          Width = 1241
          Height = 390
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 5
          object cxTblG01: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsG01
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,##'
                Kind = skCount
                FieldName = 'status'
                DisplayText = 'Total'
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skCount
                FieldName = 'nip'
                DisplayText = 'Total Karyawan'
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxTblG01kode: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kode'
              Width = 117
            end
            object cxTblG01deskripsi: TcxGridDBColumn
              Caption = 'Deskripsi Bahan Baku'
              DataBinding.FieldName = 'deskripsi'
              Width = 391
            end
            object cxTblG01saldo_awal: TcxGridDBColumn
              Caption = 'Saldo Awal'
              DataBinding.FieldName = 'saldo_awal'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = False
              Properties.ValueType = vtFloat
              Width = 89
            end
            object cxTblG01stok_in: TcxGridDBColumn
              Caption = 'Masuk'
              DataBinding.FieldName = 'stok_in'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = False
              Properties.ValueType = vtFloat
              Width = 86
            end
            object cxTblG01stok_out: TcxGridDBColumn
              Caption = 'Keluar'
              DataBinding.FieldName = 'stok_out'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = False
              Properties.ValueType = vtFloat
              Width = 85
            end
            object cxTblG01stok_trans: TcxGridDBColumn
              Caption = 'Transfer'
              DataBinding.FieldName = 'stok_trans'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = False
              Properties.ValueType = vtFloat
              Width = 88
            end
            object cxTblG01plot_spk: TcxGridDBColumn
              Caption = 'Plot SPK'
              DataBinding.FieldName = 'plot_spk'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = False
            end
            object cxTblG01end_stokplot: TcxGridDBColumn
              Caption = 'Saldo Af.Plot'
              DataBinding.FieldName = 'end_stokplot'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = False
              Width = 79
            end
            object cxTblG01end_stok: TcxGridDBColumn
              Caption = 'Saldo Akhir'
              DataBinding.FieldName = 'end_stok'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = False
              Properties.ValueType = vtFloat
              Width = 99
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxTblG01
          end
        end
        object Button1: TButton
          Left = 420
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Export Excel'
          TabOrder = 6
          OnClick = Button1Click
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Rincian Pemakaian Bahan'
        ImageIndex = 1
        DesignSize = (
          1268
          444)
        object cxLabel3: TcxLabel
          Left = 15
          Top = 14
          Caption = 'Tanggal'
        end
        object cxdTgl3: TcxDateEdit
          Left = 65
          Top = 12
          TabOrder = 1
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 190
          Top = 14
          Caption = 'S/D'
        end
        object cxdTgl4: TcxDateEdit
          Left = 218
          Top = 12
          TabOrder = 3
          Width = 121
        end
        object btnProses1: TButton
          Left = 344
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Proses'
          TabOrder = 4
          OnClick = btnProses1Click
        end
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 16
          Top = 48
          Width = 1225
          Height = 384
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dsRekap
          Groups = <>
          OptionsView.ColumnFields = False
          OptionsView.DataFields = False
          OptionsView.FilterFields = False
          OptionsView.RowFields = False
          TabOrder = 5
          object cxDBPivotGrid1id: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'id'
            Visible = True
          end
          object cxDBPivotGrid1no_bukti: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'no_bukti'
            Visible = True
          end
          object cxDBPivotGrid1tanggal: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'tanggal'
            Visible = True
          end
          object cxDBPivotGrid1jam: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'jam'
            Visible = True
          end
          object cxDBPivotGrid1kode_brg: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'kode_brg'
            Visible = True
          end
          object cxDBPivotGrid1tipe: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'tipe'
            Visible = True
          end
          object cxDBPivotGrid1harga: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'harga'
            Visible = True
          end
          object cxDBPivotGrid1qty: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Properties.ReadOnly = False
            Visible = True
          end
          object cxDBPivotGrid1qty_baik: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'qty_baik'
            Visible = True
          end
          object cxDBPivotGrid1qty_afkir: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'qty_afkir'
            Visible = True
          end
          object cxDBPivotGrid1qty_retur: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'qty_retur'
            Visible = True
          end
          object cxDBPivotGrid1satuan: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'satuan'
            Visible = True
          end
          object cxDBPivotGrid1gudang: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'gudang'
            Visible = True
          end
          object cxDBPivotGrid1referensi: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'referensi'
            Visible = True
          end
          object cxDBPivotGrid1keterangan: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'keterangan'
            Visible = True
          end
          object cxDBPivotGrid1user: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'user'
            Visible = True
          end
          object cxDBPivotGrid1user_dept: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'user_dept'
            Visible = True
          end
          object cxDBPivotGrid1no_so: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'no_so'
            Visible = True
          end
          object cxDBPivotGrid1no_spk: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'no_spk'
            Visible = True
          end
          object cxDBPivotGrid1no_spmb: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'no_spmb'
            Visible = True
          end
          object cxDBPivotGrid1no_ccr: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'no_ccr'
            Visible = True
          end
          object cxDBPivotGrid1no_lkm: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'no_lkm'
            Visible = True
          end
          object cxDBPivotGrid1no_sj: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'no_sj'
            Visible = True
          end
          object cxDBPivotGrid1no_po: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'no_po'
            Visible = True
          end
          object cxDBPivotGrid1no_trial: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'no_trial'
            Visible = True
          end
          object cxDBPivotGrid1tgl_input: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'tgl_input'
            Visible = True
          end
          object cxDBPivotGrid1dept: TcxDBPivotGridField
            AreaIndex = 23
            DataBinding.FieldName = 'dept'
            Visible = True
          end
          object cxDBPivotGrid1divisi: TcxDBPivotGridField
            AreaIndex = 24
            DataBinding.FieldName = 'divisi'
            Visible = True
          end
          object cxDBPivotGrid1f_poe: TcxDBPivotGridField
            AreaIndex = 25
            DataBinding.FieldName = 'f_poe'
            Visible = True
          end
          object cxDBPivotGrid1hpp: TcxDBPivotGridField
            AreaIndex = 26
            DataBinding.FieldName = 'hpp'
            Visible = True
          end
          object cxDBPivotGrid1unit_ktg: TcxDBPivotGridField
            AreaIndex = 27
            DataBinding.FieldName = 'unit_ktg'
            Visible = True
          end
          object cxDBPivotGrid1deskripsi: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'deskripsi'
            Visible = True
            Width = 113
          end
        end
        object Button2: TButton
          Left = 425
          Top = 10
          Width = 75
          Height = 25
          Caption = '&Export Excel'
          TabOrder = 6
          OnClick = Button2Click
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Rekap Pemakaian Bahan'
        ImageIndex = 2
        DesignSize = (
          1268
          444)
        object cxDBPivotGrid2: TcxDBPivotGrid
          Left = 16
          Top = 48
          Width = 1225
          Height = 384
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dsRinci
          Groups = <>
          OptionsView.ColumnFields = False
          OptionsView.DataFields = False
          OptionsView.FilterFields = False
          OptionsView.RowFields = False
          TabOrder = 0
          object cxDBPivotGridField1: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'id'
            Visible = True
          end
          object cxDBPivotGridField2: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'no_bukti'
            Visible = True
          end
          object cxDBPivotGridField3: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'tanggal'
            Visible = True
          end
          object cxDBPivotGridField4: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'jam'
            Visible = True
          end
          object cxDBPivotGridField5: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'kode_brg'
            Visible = True
          end
          object cxDBPivotGridField6: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'tipe'
            Visible = True
          end
          object cxDBPivotGridField7: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'harga'
            Visible = True
          end
          object cxDBPivotGridField8: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'qty'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Properties.ReadOnly = False
            Visible = True
          end
          object cxDBPivotGridField9: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'qty_baik'
            Visible = True
          end
          object cxDBPivotGridField10: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'qty_afkir'
            Visible = True
          end
          object cxDBPivotGridField11: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'qty_retur'
            Visible = True
          end
          object cxDBPivotGridField12: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'satuan'
            Visible = True
          end
          object cxDBPivotGridField13: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'gudang'
            Visible = True
          end
          object cxDBPivotGridField14: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'referensi'
            Visible = True
          end
          object cxDBPivotGridField15: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'keterangan'
            Visible = True
          end
          object cxDBPivotGridField16: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'user'
            Visible = True
          end
          object cxDBPivotGridField17: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'user_dept'
            Visible = True
          end
          object cxDBPivotGridField18: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'no_so'
            Visible = True
          end
          object cxDBPivotGridField19: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'no_spk'
            Visible = True
          end
          object cxDBPivotGridField20: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'no_spmb'
            Visible = True
          end
          object cxDBPivotGridField21: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'no_ccr'
            Visible = True
          end
          object cxDBPivotGridField22: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'no_lkm'
            Visible = True
          end
          object cxDBPivotGridField23: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'no_sj'
            Visible = True
          end
          object cxDBPivotGridField24: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'no_po'
            Visible = True
          end
          object cxDBPivotGridField25: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'no_trial'
            Visible = True
          end
          object cxDBPivotGridField26: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'tgl_input'
            Visible = True
          end
          object cxDBPivotGridField27: TcxDBPivotGridField
            AreaIndex = 23
            DataBinding.FieldName = 'dept'
            Visible = True
          end
          object cxDBPivotGridField28: TcxDBPivotGridField
            AreaIndex = 24
            DataBinding.FieldName = 'divisi'
            Visible = True
          end
          object cxDBPivotGridField29: TcxDBPivotGridField
            AreaIndex = 25
            DataBinding.FieldName = 'f_poe'
            Visible = True
          end
          object cxDBPivotGridField30: TcxDBPivotGridField
            AreaIndex = 26
            DataBinding.FieldName = 'hpp'
            Visible = True
          end
          object cxDBPivotGridField31: TcxDBPivotGridField
            AreaIndex = 27
            DataBinding.FieldName = 'unit_ktg'
            Visible = True
          end
          object cxDBPivotGridField32: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'deskripsi'
            Visible = True
            Width = 113
          end
        end
        object cxLabel5: TcxLabel
          Left = 15
          Top = 14
          Caption = 'Tanggal'
        end
        object cxdTgl5: TcxDateEdit
          Left = 65
          Top = 12
          TabOrder = 2
          Width = 121
        end
        object cxLabel6: TcxLabel
          Left = 190
          Top = 14
          Caption = 'S/D'
        end
        object cxdTgl6: TcxDateEdit
          Left = 218
          Top = 12
          TabOrder = 4
          Width = 121
        end
        object btnProsesRinci: TButton
          Left = 350
          Top = 10
          Width = 75
          Height = 25
          Caption = '&Proses'
          TabOrder = 5
          OnClick = btnProsesRinciClick
        end
        object Button3: TButton
          Left = 430
          Top = 10
          Width = 75
          Height = 25
          Caption = '&Export Excel'
          TabOrder = 6
          OnClick = Button3Click
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'RM In'
        ImageIndex = 3
        DesignSize = (
          1268
          444)
        object cxDBPivotGrid3: TcxDBPivotGrid
          Left = 15
          Top = 50
          Width = 1241
          Height = 383
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dsRMIn
          Groups = <>
          OptionsView.ColumnFields = False
          OptionsView.DataFields = False
          OptionsView.FilterFields = False
          OptionsView.RowFields = False
          TabOrder = 0
          object cxDBPivotGrid3id: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'id'
            Visible = True
          end
          object cxDBPivotGrid3no_bukti: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'no_bukti'
            Visible = True
          end
          object cxDBPivotGrid3tanggal: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'tanggal'
            Visible = True
          end
          object cxDBPivotGrid3jam: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'jam'
            Visible = True
          end
          object cxDBPivotGrid3kode_brg: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'kode_brg'
            Visible = True
          end
          object cxDBPivotGrid3tipe: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'tipe'
            Visible = True
          end
          object cxDBPivotGrid3harga: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'harga'
            Visible = True
          end
          object cxDBPivotGrid3qty: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'qty'
            Visible = True
          end
          object cxDBPivotGrid3qty_baik: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'qty_baik'
            Visible = True
          end
          object cxDBPivotGrid3qty_afkir: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'qty_afkir'
            Visible = True
          end
          object cxDBPivotGrid3qty_retur: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'qty_retur'
            Visible = True
          end
          object cxDBPivotGrid3satuan: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'satuan'
            Visible = True
          end
          object cxDBPivotGrid3gudang: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'gudang'
            Visible = True
          end
          object cxDBPivotGrid3referensi: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'referensi'
            Visible = True
          end
          object cxDBPivotGrid3keterangan: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'keterangan'
            Visible = True
          end
          object cxDBPivotGrid3user: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'user'
            Visible = True
          end
          object cxDBPivotGrid3user_dept: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'user_dept'
            Visible = True
          end
          object cxDBPivotGrid3no_so: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'no_so'
            Visible = True
          end
          object cxDBPivotGrid3no_spk: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'no_spk'
            Visible = True
          end
          object cxDBPivotGrid3no_spmb: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'no_spmb'
            Visible = True
          end
          object cxDBPivotGrid3no_ccr: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'no_ccr'
            Visible = True
          end
          object cxDBPivotGrid3no_lkm: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'no_lkm'
            Visible = True
          end
          object cxDBPivotGrid3no_sj: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'no_sj'
            Visible = True
          end
          object cxDBPivotGrid3no_po: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'no_po'
            Visible = True
          end
          object cxDBPivotGrid3no_trial: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'no_trial'
            Visible = True
          end
          object cxDBPivotGrid3tgl_input: TcxDBPivotGridField
            AreaIndex = 23
            DataBinding.FieldName = 'tgl_input'
            Visible = True
          end
          object cxDBPivotGrid3dept: TcxDBPivotGridField
            AreaIndex = 24
            DataBinding.FieldName = 'dept'
            Visible = True
          end
          object cxDBPivotGrid3divisi: TcxDBPivotGridField
            AreaIndex = 25
            DataBinding.FieldName = 'divisi'
            Visible = True
          end
          object cxDBPivotGrid3f_poe: TcxDBPivotGridField
            AreaIndex = 26
            DataBinding.FieldName = 'f_poe'
            Visible = True
          end
          object cxDBPivotGrid3hpp: TcxDBPivotGridField
            AreaIndex = 27
            DataBinding.FieldName = 'hpp'
            Visible = True
          end
          object cxDBPivotGrid3unit_ktg: TcxDBPivotGridField
            AreaIndex = 28
            DataBinding.FieldName = 'unit_ktg'
            Visible = True
          end
          object cxDBPivotGrid3deskripsi: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'deskripsi'
            Visible = True
          end
        end
        object cxLabel7: TcxLabel
          Left = 15
          Top = 14
          Caption = 'Tanggal'
        end
        object cxdTgl7: TcxDateEdit
          Left = 65
          Top = 12
          TabOrder = 2
          Width = 121
        end
        object cxLabel8: TcxLabel
          Left = 190
          Top = 14
          Caption = 'S/D'
        end
        object cxdTgl8: TcxDateEdit
          Left = 218
          Top = 12
          TabOrder = 4
          Width = 121
        end
        object btnRMIn: TButton
          Left = 345
          Top = 10
          Width = 75
          Height = 25
          Caption = '&Proses'
          TabOrder = 5
          OnClick = btnRMInClick
        end
        object Button4: TButton
          Left = 425
          Top = 10
          Width = 75
          Height = 25
          Caption = '&Export Excel'
          TabOrder = 6
          OnClick = Button4Click
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'RM Transfer'
        ImageIndex = 4
        DesignSize = (
          1268
          444)
        object cxDBPivotGrid4: TcxDBPivotGrid
          Left = 15
          Top = 45
          Width = 1241
          Height = 388
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dsRMTrans
          Groups = <>
          OptionsView.ColumnFields = False
          OptionsView.DataFields = False
          OptionsView.FilterFields = False
          OptionsView.RowFields = False
          TabOrder = 0
          object cxDBPivotGridField33: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'id'
            Visible = True
          end
          object cxDBPivotGridField34: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'no_bukti'
            Visible = True
          end
          object cxDBPivotGridField35: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'tanggal'
            Visible = True
          end
          object cxDBPivotGridField36: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'jam'
            Visible = True
          end
          object cxDBPivotGridField37: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'kode_brg'
            Visible = True
          end
          object cxDBPivotGridField38: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'tipe'
            Visible = True
          end
          object cxDBPivotGridField39: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'harga'
            Visible = True
          end
          object cxDBPivotGridField40: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'qty'
            Visible = True
          end
          object cxDBPivotGridField41: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'qty_baik'
            Visible = True
          end
          object cxDBPivotGridField42: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'qty_afkir'
            Visible = True
          end
          object cxDBPivotGridField43: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'qty_retur'
            Visible = True
          end
          object cxDBPivotGridField44: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'satuan'
            Visible = True
          end
          object cxDBPivotGridField45: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'gudang'
            Visible = True
          end
          object cxDBPivotGridField46: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'referensi'
            Visible = True
          end
          object cxDBPivotGridField47: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'keterangan'
            Visible = True
          end
          object cxDBPivotGridField48: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'user'
            Visible = True
          end
          object cxDBPivotGridField49: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'user_dept'
            Visible = True
          end
          object cxDBPivotGridField50: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'no_so'
            Visible = True
          end
          object cxDBPivotGridField51: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'no_spk'
            Visible = True
          end
          object cxDBPivotGridField52: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'no_spmb'
            Visible = True
          end
          object cxDBPivotGridField53: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'no_ccr'
            Visible = True
          end
          object cxDBPivotGridField54: TcxDBPivotGridField
            AreaIndex = 19
            DataBinding.FieldName = 'no_lkm'
            Visible = True
          end
          object cxDBPivotGridField55: TcxDBPivotGridField
            AreaIndex = 20
            DataBinding.FieldName = 'no_sj'
            Visible = True
          end
          object cxDBPivotGridField56: TcxDBPivotGridField
            AreaIndex = 21
            DataBinding.FieldName = 'no_po'
            Visible = True
          end
          object cxDBPivotGridField57: TcxDBPivotGridField
            AreaIndex = 22
            DataBinding.FieldName = 'no_trial'
            Visible = True
          end
          object cxDBPivotGridField58: TcxDBPivotGridField
            AreaIndex = 23
            DataBinding.FieldName = 'tgl_input'
            Visible = True
          end
          object cxDBPivotGridField59: TcxDBPivotGridField
            AreaIndex = 24
            DataBinding.FieldName = 'dept'
            Visible = True
          end
          object cxDBPivotGridField60: TcxDBPivotGridField
            AreaIndex = 25
            DataBinding.FieldName = 'divisi'
            Visible = True
          end
          object cxDBPivotGridField61: TcxDBPivotGridField
            AreaIndex = 26
            DataBinding.FieldName = 'f_poe'
            Visible = True
          end
          object cxDBPivotGridField62: TcxDBPivotGridField
            AreaIndex = 27
            DataBinding.FieldName = 'hpp'
            Visible = True
          end
          object cxDBPivotGridField63: TcxDBPivotGridField
            AreaIndex = 28
            DataBinding.FieldName = 'unit_ktg'
            Visible = True
          end
          object cxDBPivotGridField64: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'deskripsi'
            Visible = True
          end
        end
        object cxLabel9: TcxLabel
          Left = 15
          Top = 14
          Caption = 'Tanggal'
        end
        object cxdTgl9: TcxDateEdit
          Left = 65
          Top = 12
          TabOrder = 2
          Width = 121
        end
        object cxLabel10: TcxLabel
          Left = 190
          Top = 14
          Caption = 'S/D'
        end
        object cxdTgl10: TcxDateEdit
          Left = 218
          Top = 12
          TabOrder = 4
          Width = 121
        end
        object btnRMTrans: TButton
          Left = 345
          Top = 10
          Width = 75
          Height = 25
          Caption = '&Proses'
          TabOrder = 5
          OnClick = btnRMTransClick
        end
        object Button5: TButton
          Left = 425
          Top = 10
          Width = 75
          Height = 25
          Caption = '&Export Excel'
          TabOrder = 6
          OnClick = Button5Click
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 536
    Width = 1270
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 12
    end
    inherited btnSimpan: TButton
      Left = 95
      Visible = False
    end
  end
  object zqrG01: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'select kode, deskripsi, sf_getstokawal2(kode,'#39'G01'#39',:tgl1-1) as s' +
        'aldo_awal,'
      '`sf_getstok_in`(kode,'#39'G01'#39',:tgl1,:tgl2) as stok_in,'
      '`sf_getstok_out`(kode,'#39'G01'#39',:tgl1,:tgl2) as stok_out,'
      
        '`sf_getstok_trans`(kode,'#39'G01'#39',:tgl1,:tgl2) as stok_trans,sf_getb' +
        'omspk(kode,:tgl1,:tgl2) as plot_spk,'
      
        '(sf_getstokawal2(kode,'#39'G01'#39',:tgl1-1)+`sf_getstok_in`(kode,'#39'G01'#39',' +
        ':tgl1,:tgl2)'
      
        '+`sf_getstok_trans`(kode,'#39'G01'#39',:tgl1,:tgl2))-`sf_getstok_out`(ko' +
        'de,'#39'G01'#39',:tgl1,:tgl2) as end_stok,(sf_getstokawal2(kode,'#39'G01'#39',:t' +
        'gl1-1)+`sf_getstok_in`(kode,'#39'G01'#39',:tgl1,:tgl2)'
      
        '+`sf_getstok_trans`(kode,'#39'G01'#39',:tgl1,:tgl2))-`sf_getstok_out`(ko' +
        'de,'#39'G01'#39',:tgl1,:tgl2)-sf_getbomspk(kode,:tgl1,:tgl2) as end_stok' +
        'plot  '
      'from tbl_barang where left(kode,1)='#39'C'#39)
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
    Left = 235
    Top = 16
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
  object dsG01: TDataSource
    DataSet = zqrG01
    Left = 265
    Top = 18
  end
  object zqRekap: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.*,b.deskripsi from tbl_history as a join tbl_barang as ' +
        'b on a.kode_brg=b.kode '
      
        'WHERE a.tipe='#39'OUT_'#39' and left(a.kode_brg,1)='#39'C'#39' and tanggal betwe' +
        'en :tgl3 and :tgl4')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl4'
        ParamType = ptUnknown
      end>
    Left = 299
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl4'
        ParamType = ptUnknown
      end>
  end
  object dsRekap: TDataSource
    DataSet = zqRekap
    Left = 330
    Top = 18
  end
  object zqRinci: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'select a.tanggal,a.no_spk,c.deskripsi,sum(b.qty) as qty'
      'from tbl_spk a join tbl_history b on a.no_spk=b.no_spk '
      'join tbl_barang c on b.kode_brg=c.kode'
      
        'WHERE b.tipe='#39'OUT_'#39' and left(b.kode_brg,1)='#39'C'#39' and a.tanggal bet' +
        'ween :tgl5 and :tgl6'
      'group by a.tanggal,a.no_spk,c.deskripsi')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl6'
        ParamType = ptUnknown
      end>
    Left = 359
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl6'
        ParamType = ptUnknown
      end>
  end
  object dsRinci: TDataSource
    DataSet = zqRinci
    Left = 390
    Top = 18
  end
  object zqRMIn: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.*,b.deskripsi from tbl_history as a join tbl_barang as ' +
        'b on a.kode_brg=b.kode '
      
        'WHERE a.tipe='#39'IN_'#39'  and left(a.kode_brg,3)='#39'C70'#39' and LEFT(a.no_b' +
        'ukti,3)='#39'PB/'#39' a.tanggal between :tgl7 and :tgl8'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl7'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl8'
        ParamType = ptUnknown
      end>
    Left = 424
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl7'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl8'
        ParamType = ptUnknown
      end>
  end
  object dsRMIn: TDataSource
    DataSet = zqRMIn
    Left = 455
    Top = 18
  end
  object zqRMTrans: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.*,b.deskripsi from tbl_history as a join tbl_barang as ' +
        'b on a.kode_brg=b.kode '
      
        'WHERE a.tipe='#39'IN_'#39'  and left(a.kode_brg,3)='#39'C70'#39' and LEFT(a.no_b' +
        'ukti,3)='#39'IN/'#39'  and a.tanggal between :tgl9 and :tgl10'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl10'
        ParamType = ptUnknown
      end>
    Left = 484
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl10'
        ParamType = ptUnknown
      end>
  end
  object dsRMTrans: TDataSource
    DataSet = zqRMTrans
    Left = 515
    Top = 18
  end
end
