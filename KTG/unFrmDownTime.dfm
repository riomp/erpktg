inherited frmDownTime: TfrmDownTime
  Left = 473
  Top = 115
  Width = 1192
  Height = 735
  VertScrollBar.Visible = False
  Caption = 'Input Hasil Produksi + Downtime + Pengambilan BOM'
  OldCreateOrder = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1176
    Height = 43
    inherited lblJudul: TLabel
      Top = 10
      Width = 442
      Caption = 'Input Hasil Produksi + Downtime + Pengambilan BOM'
    end
  end
  inherited pnlTengah: TPanel
    Left = 984
    Top = 140
    Width = 1090
    Height = 429
    Align = alNone
    Visible = False
    object cxGrid1: TcxGrid
      Left = 281
      Top = 6
      Width = 1102
      Height = 164
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsHP
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
        DataController.DataSource = dsOpr
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
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 1176
    Height = 37
    Align = alTop
    TabOrder = 3
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
      TabOrder = 3
      Width = 101
    end
    object btnProses: TButton
      Left = 319
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  object cxGrid2: TcxGrid
    Left = 960
    Top = 291
    Width = 1104
    Height = 135
    TabOrder = 4
    Visible = False
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsRej
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
    TabOrder = 5
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
    Width = 1176
    Height = 534
    ActivePage = cxTabSheet4
    Align = alClient
    Style = 7
    TabOrder = 6
    ClientRectBottom = 533
    ClientRectLeft = 1
    ClientRectRight = 1175
    ClientRectTop = 21
    object cxTabSheet1: TcxTabSheet
      Caption = 'Detail SPK'
      ImageIndex = 0
      object cxGrdSPK: TcxGrid
        Left = 0
        Top = 0
        Width = 1174
        Height = 512
        Align = alClient
        TabOrder = 0
        object cxTblSPK: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnEditChanged = cxTblSPKEditChanged
          DataController.DataSource = dsSPK
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsView.GroupByBox = False
          object cxColNoSPK0: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 129
          end
          object cxColKodeBrg0: TcxGridDBColumn
            Caption = 'Kode Brg.'
            DataBinding.FieldName = 'kode_brg'
            Width = 121
          end
          object cxTblSPKdeskripsi: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'deskripsi'
            Width = 497
          end
          object cxTblSPKno_so: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 140
          end
          object cxColNoRouting: TcxGridDBColumn
            Caption = 'No. Routing'
            DataBinding.FieldName = 'no_urut_routing'
          end
          object cxTblSPKrouting: TcxGridDBColumn
            Caption = 'Routing'
            DataBinding.FieldName = 'routing'
            Width = 88
          end
          object cxTblSPKlain_lain: TcxGridDBColumn
            DataBinding.FieldName = 'lain_lain'
            Visible = False
          end
          object cxTblSPKjenis_spk: TcxGridDBColumn
            DataBinding.FieldName = 'jenis_spk'
            Visible = False
          end
          object cxColJmlBB1: TcxGridDBColumn
            Caption = 'Jml. BB'
            DataBinding.FieldName = 'jml_bb'
            Width = 50
          end
          object cxTblSPKtanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxTblSPKjam: TcxGridDBColumn
            DataBinding.FieldName = 'jam'
            Visible = False
          end
          object cxTblSPKkode_mesin: TcxGridDBColumn
            Caption = 'Mesin'
            DataBinding.FieldName = 'kode_mesin'
            Width = 76
          end
          object cxTblSPKqty: TcxGridDBColumn
            Caption = 'Qty. SPK'
            DataBinding.FieldName = 'qty'
          end
          object cxTblSPKqty_prod: TcxGridDBColumn
            Caption = 'Qty. Hasil Prod.'
            DataBinding.FieldName = 'qty_prod'
            Width = 79
          end
          object cxTblSPKqty_reject: TcxGridDBColumn
            Caption = 'Qty. Reject'
            DataBinding.FieldName = 'qty_reject'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Width = 77
          end
          object cxTblSPKqty_terima: TcxGridDBColumn
            Caption = 'Qty. Serah Terima'
            DataBinding.FieldName = 'qty_terima'
            Width = 95
          end
          object cxTblSPKsatuan: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan'
            Visible = False
            Width = 70
          end
          object cxTblSPKf_completed: TcxGridDBColumn
            DataBinding.FieldName = 'f_completed'
            Visible = False
          end
          object cxTblSPKno_trsplusminus: TcxGridDBColumn
            DataBinding.FieldName = 'no_trsplusminus'
            Visible = False
            Width = 68
          end
          object cxTblSPKnama: TcxGridDBColumn
            DataBinding.FieldName = 'nama'
            Visible = False
          end
          object cxTblSPKtanggal_so: TcxGridDBColumn
            DataBinding.FieldName = 'tanggal_so'
            Visible = False
          end
          object cxTblSPKketerangan: TcxGridDBColumn
            DataBinding.FieldName = 'keterangan'
            Visible = False
          end
          object cxTblSPKf_app_prd: TcxGridDBColumn
            DataBinding.FieldName = 'f_app_prd'
            Visible = False
          end
          object cxTblSPKnama_mesin: TcxGridDBColumn
            DataBinding.FieldName = 'nama_mesin'
            Visible = False
          end
          object cxTblSPKf_wip: TcxGridDBColumn
            DataBinding.FieldName = 'f_wip'
            Visible = False
          end
          object cxTblSPKf_wip_awal: TcxGridDBColumn
            DataBinding.FieldName = 'f_wip_awal'
            Visible = False
          end
          object cxTblSPKf_wip_akhir: TcxGridDBColumn
            DataBinding.FieldName = 'f_wip_akhir'
            Visible = False
          end
          object cxTblSPKkategori: TcxGridDBColumn
            DataBinding.FieldName = 'kategori'
            Visible = False
          end
          object cxTblSPKsubkategori: TcxGridDBColumn
            DataBinding.FieldName = 'subkategori'
            Visible = False
          end
          object cxTblSPKqty_baik: TcxGridDBColumn
            DataBinding.FieldName = 'qty_baik'
            Visible = False
          end
          object cxTblSPKqty_afkir: TcxGridDBColumn
            DataBinding.FieldName = 'qty_afkir'
            Visible = False
          end
          object cxTblSPKqty_retur: TcxGridDBColumn
            DataBinding.FieldName = 'qty_retur'
            Visible = False
          end
          object cxTblSPKtoleransi: TcxGridDBColumn
            DataBinding.FieldName = 'toleransi'
            Visible = False
          end
          object cxTblSPKtgl_p_mulai: TcxGridDBColumn
            DataBinding.FieldName = 'tgl_p_mulai'
            Visible = False
          end
          object cxTblSPKtgl_p_selesai: TcxGridDBColumn
            DataBinding.FieldName = 'tgl_p_selesai'
            Visible = False
          end
          object cxTblSPKColumn1: TcxGridDBColumn
            Visible = False
          end
          object cxTblSPKket_ppic: TcxGridDBColumn
            DataBinding.FieldName = 'ket_ppic'
            Visible = False
          end
          object cxTblSPKberat_per_unit: TcxGridDBColumn
            DataBinding.FieldName = 'berat_per_unit'
            Visible = False
          end
          object cxTblSPKs_berat: TcxGridDBColumn
            DataBinding.FieldName = 's_berat'
            Visible = False
          end
          object cxTblSPKs_panjang: TcxGridDBColumn
            DataBinding.FieldName = 's_panjang'
            Visible = False
          end
          object cxTblSPKpanjang: TcxGridDBColumn
            DataBinding.FieldName = 'panjang'
            Visible = False
          end
          object cxTblSPKlebar: TcxGridDBColumn
            DataBinding.FieldName = 'lebar'
            Visible = False
          end
          object cxTblSPKs_lebar: TcxGridDBColumn
            DataBinding.FieldName = 's_lebar'
            Visible = False
          end
          object cxTblSPKdiameter_dalam: TcxGridDBColumn
            DataBinding.FieldName = 'diameter_dalam'
            Visible = False
          end
          object cxTblSPKdiameter_luar: TcxGridDBColumn
            DataBinding.FieldName = 'diameter_luar'
            Visible = False
          end
          object cxTblSPKs_diameter_dalam: TcxGridDBColumn
            DataBinding.FieldName = 's_diameter_dalam'
            Visible = False
          end
          object cxTblSPKs_diameter_luar: TcxGridDBColumn
            DataBinding.FieldName = 's_diameter_luar'
            Visible = False
          end
          object cxTblSPKsusut: TcxGridDBColumn
            DataBinding.FieldName = 'susut'
            Visible = False
          end
          object cxTblSPKkode_brg_input: TcxGridDBColumn
            DataBinding.FieldName = 'kode_brg_input'
            Visible = False
          end
          object cxTblSPKtgl_prd_check: TcxGridDBColumn
            DataBinding.FieldName = 'tgl_prd_check'
            Visible = False
          end
        end
        object cxGrdSPKLevel1: TcxGridLevel
          GridView = cxTblSPK
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Hasil Produksi'
      ImageIndex = 1
      DesignSize = (
        1174
        512)
      object cxGrid3: TcxGrid
        Left = 15
        Top = 20
        Width = 1138
        Height = 216
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxTblHP: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblHPFocusedRecordChanged
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnRecordChanged = cxTblHPDataControllerRecordChanged
          OptionsView.GroupByBox = False
          object cxColNoSPK1: TcxGridColumn
            Caption = 'No. SPK'
            Options.Editing = False
            Width = 116
          end
          object cxColKodeBrg1: TcxGridColumn
            Caption = 'Kode Brg.'
            Options.Editing = False
            Width = 109
          end
          object cxColDeskripsi1: TcxGridColumn
            Caption = 'Deskripsi'
            Options.Editing = False
            Width = 193
          end
          object cxColNoRouting1: TcxGridColumn
            Caption = 'No. Routing'
            Options.Editing = False
            Width = 67
          end
          object cxColRouting1: TcxGridColumn
            Caption = 'Routing'
            Options.Editing = False
            Width = 97
          end
          object cxColTglSPK1: TcxGridColumn
            Caption = 'Tgl. SPK'
            DataBinding.ValueType = 'DateTime'
            Options.Editing = False
            Width = 100
          end
          object cxColQtySPK1: TcxGridColumn
            Caption = 'Qty. SPK'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Options.Editing = False
            Width = 87
          end
          object cxColQtyHslProd: TcxGridColumn
            Caption = 'Total Hsl. Prod'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Options.Editing = False
            Styles.Content = cxStyle2
            Width = 89
          end
          object cxColTglHP: TcxGridColumn
            Caption = 'Tgl. Produksi'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 75
          end
          object cxColJam1: TcxGridColumn
            Caption = 'Start'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Width = 114
          end
          object cxColJam2: TcxGridColumn
            Caption = 'Finish'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Width = 107
          end
          object cxColShift: TcxGridColumn
            Caption = 'Shift'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              '1'
              '2'
              '3')
            Width = 45
          end
          object cxColSatSPK1: TcxGridColumn
            Caption = 'Sat'
            Options.Editing = False
            Width = 41
          end
          object cxColQtyHP: TcxGridColumn
            Caption = 'Hasil Produksi'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Width = 79
          end
          object cxColSat1: TcxGridColumn
            Caption = 'Sat1'
            Width = 42
          end
          object cxColQtyHslProd1: TcxGridColumn
            Caption = 'Hasi Produksi1'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Width = 101
          end
          object cxColQtyReject: TcxGridColumn
            Caption = 'Qty. Reject'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Width = 78
          end
          object cxColMesin: TcxGridColumn
            Caption = 'Mesin'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'kode'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMesin
            Width = 91
          end
          object cxColOperator: TcxGridColumn
            Caption = 'Operator 1'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'nama'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsKaryawan
            Width = 114
          end
          object cxColOperator1: TcxGridColumn
            Caption = 'Operator 2'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'nama'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsKaryawan
            Width = 103
          end
          object cxColOperator_2: TcxGridColumn
            Caption = 'Operator 3'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'nama'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsKaryawan
            Width = 122
          end
          object cxColOperator4: TcxGridColumn
            Caption = 'Operator 4'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'nama'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsKaryawan
            Width = 114
          end
          object cxColOperator5: TcxGridColumn
            Caption = 'Operator 5'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'nama'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsKaryawan
            Width = 105
          end
          object cxColOperator6: TcxGridColumn
            Caption = 'Operator 6'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'nama'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsKaryawan
            Width = 104
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxTblHP
        end
      end
      object btnSimpanHP: TButton
        Left = 15
        Top = 490
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
        OnClick = btnSimpanHPClick
      end
      object btnBatalHP: TButton
        Left = 93
        Top = 490
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 2
        OnClick = btnBatalHPClick
      end
      object cxLabel7: TcxLabel
        Left = 16
        Top = 248
        Caption = 'Detail Afval dan Downtime'
      end
      object cxtspk: TcxTextEdit
        Left = 152
        Top = 248
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 161
      end
      object cxGrid4: TcxGrid
        Left = 15
        Top = 272
        Width = 1138
        Height = 204
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        object cxTblDT: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnRecordChanged = cxTblDTDataControllerRecordChanged
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          object cxColNoSPK2: TcxGridColumn
            Caption = 'No. SPK'
            Visible = False
            Options.Editing = False
            Width = 116
          end
          object cxColKodeBrg2: TcxGridColumn
            Caption = 'Kode Brg.'
            Visible = False
            Options.Editing = False
            Width = 101
          end
          object cxColDeskripsi2: TcxGridColumn
            Caption = 'Deskripsi'
            Visible = False
            Options.Editing = False
            Width = 185
          end
          object cxColRouting2: TcxGridColumn
            Caption = 'Routing'
            Visible = False
            Options.Editing = False
            Width = 97
          end
          object cxColTglSPK2: TcxGridColumn
            Caption = 'Tgl. SPK'
            DataBinding.ValueType = 'DateTime'
            Visible = False
            Options.Editing = False
            Width = 100
          end
          object cxColQtySPK2: TcxGridColumn
            Caption = 'Qty. SPK'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Visible = False
            Options.Editing = False
            Width = 87
          end
          object cxColKategoriDown2: TcxGridColumn
            Caption = 'Kategori'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kategori'
            Properties.ListColumns = <
              item
                Caption = 'Kategori'
                FieldName = 'kategori'
              end>
            Properties.ListSource = dsKategoriDown
            Width = 262
          end
          object cxColJenisDowntime: TcxGridColumn
            Caption = 'Jenis Afval / Downtime'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'jenis'
            Properties.ListColumns = <
              item
                FieldName = 'jenis'
              end>
            Properties.ListSource = dsKetMesin
            Width = 252
          end
          object cxColTglHP2: TcxGridColumn
            Caption = 'Tgl. Produksi'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
            Width = 75
          end
          object cxGridColumn8: TcxGridColumn
            Caption = 'Hasil Produksi'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 79
          end
          object cxColQtyReject2: TcxGridColumn
            Caption = 'Qty.Af/DT'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Width = 83
          end
          object cxColMesin2: TcxGridColumn
            Caption = 'Mesin'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'kode'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMesin
            Visible = False
            Width = 91
          end
          object cxColSatSPK2: TcxGridColumn
            Caption = 'Sat'
            Options.Editing = False
            Width = 57
          end
          object cxColKetMesin2: TcxGridColumn
            Caption = 'Keterangan Downtime'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 343
          end
          object cxColShift2: TcxGridColumn
            Caption = 'Shift'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              '1'
              '2'
              '3')
            Visible = False
            Width = 45
          end
          object cxColJam2_1: TcxGridColumn
            Caption = 'Jam 1'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 114
          end
          object cxColJam2_2: TcxGridColumn
            Caption = 'Jam 2'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 107
          end
          object cxColOperator2: TcxGridColumn
            Caption = 'Operator'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Visible = False
            Width = 114
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxTblDT
        end
      end
      object cxtrouting: TcxTextEdit
        Left = 320
        Top = 248
        Properties.ReadOnly = True
        TabOrder = 6
        Visible = False
        Width = 161
      end
      object Button8: TButton
        Left = 490
        Top = 245
        Width = 171
        Height = 25
        Caption = 'Simpan Afval/Downtime'
        TabOrder = 7
        Visible = False
        OnClick = Button8Click
      end
      object cxtTrans: TEdit
        Left = 695
        Top = 245
        Width = 121
        Height = 21
        TabOrder = 8
        Text = 'cxtTrans'
        Visible = False
      end
      object cxdTglTrans: TcxDateEdit
        Left = 850
        Top = 245
        TabOrder = 9
        Visible = False
        Width = 121
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Downtime'
      ImageIndex = 2
      object btnSimpanDT: TButton
        Left = 15
        Top = 242
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 0
        OnClick = btnSimpanDTClick
      end
      object btnBatalDowntime: TButton
        Left = 93
        Top = 242
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 1
        OnClick = btnBatalDowntimeClick
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Afalan'
      ImageIndex = 4
      TabVisible = False
      DesignSize = (
        1174
        512)
      object cxGrid7: TcxGrid
        Left = 15
        Top = 20
        Width = 1138
        Height = 216
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxGridTableView1: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxColNoSPK3: TcxGridColumn
            Caption = 'No. SPK'
            Options.Editing = False
            Width = 116
          end
          object cxColKodeBrg3: TcxGridColumn
            Caption = 'Kode Brg.'
            Options.Editing = False
            Width = 101
          end
          object cxColDeskripsi3: TcxGridColumn
            Caption = 'Deskripsi'
            Options.Editing = False
            Width = 185
          end
          object cxColRouting3: TcxGridColumn
            Caption = 'Routing'
            Options.Editing = False
            Width = 97
          end
          object cxColTglSPK3: TcxGridColumn
            Caption = 'Tgl. SPK'
            DataBinding.ValueType = 'DateTime'
            Options.Editing = False
            Width = 100
          end
          object cxColQtySPK3: TcxGridColumn
            Caption = 'Qty. SPK'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Options.Editing = False
            Width = 87
          end
          object cxColSatSPK3: TcxGridColumn
            Caption = 'Sat'
            Options.Editing = False
            Width = 41
          end
          object cxColTglHP3: TcxGridColumn
            Caption = 'Tgl. Produksi'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 75
          end
          object cxGridColumn10: TcxGridColumn
            Caption = 'Hasil Produksi'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 79
          end
          object cxColQtyReject3: TcxGridColumn
            Caption = 'Qty. Reject'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Width = 80
          end
          object cxColMesin3: TcxGridColumn
            Caption = 'Mesin'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'kode'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMesin
            Width = 91
          end
          object cxColKategoriDown3: TcxGridColumn
            Caption = 'Kategori'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'kategori'
            Properties.ListColumns = <
              item
                Caption = 'Kategori'
                FieldName = 'kategori'
              end>
            Properties.ListSource = dsKategoriDown
            Width = 200
          end
          object cxColKetMesin3: TcxGridColumn
            Caption = 'Keterangan Downtime'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'jenis'
            Properties.ListColumns = <
              item
                FieldName = 'jenis'
              end>
            Properties.ListSource = dsKetMesin
            Width = 176
          end
          object cxColShift3: TcxGridColumn
            Caption = 'Shift'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              '1'
              '2'
              '3')
            Width = 45
          end
          object cxColJam3_1: TcxGridColumn
            Caption = 'Jam 1'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Width = 114
          end
          object cxColJam3_2: TcxGridColumn
            Caption = 'Jam 2'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Width = 107
          end
          object cxColOperator3: TcxGridColumn
            Caption = 'Operator'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 114
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridTableView1
        end
      end
      object Button3: TButton
        Left = 15
        Top = 242
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
        OnClick = btnSimpanDTClick
      end
      object Button4: TButton
        Left = 93
        Top = 242
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 2
        OnClick = btnBatalDowntimeClick
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Pengambilan Bahan Baku'
      ImageIndex = 3
      DesignSize = (
        1174
        512)
      object cxGrid6: TcxGrid
        Left = 15
        Top = 242
        Width = 1091
        Height = 143
        TabOrder = 0
        object cxTblPBDet: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Enabled = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Append.Enabled = False
          NavigatorButtons.Append.Visible = False
          NavigatorButtons.Edit.Enabled = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Inserting = False
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          object cxColKodePB: TcxGridColumn
            Caption = 'Kode Brg.'
            Options.Editing = False
            Width = 166
          end
          object cxColDeskPB: TcxGridColumn
            Caption = 'Dekripsi'
            Options.Editing = False
            Width = 402
          end
          object cxColQtyBomPB: TcxGridColumn
            Caption = 'Qty. BOM'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Options.Editing = False
            Width = 86
          end
          object cxColBomSdhDiambil: TcxGridColumn
            Caption = 'Sdh. Diambil'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Options.Editing = False
            Width = 76
          end
          object cxColTanggalPB: TcxGridColumn
            Caption = 'Tanggal Ambil'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Width = 102
          end
          object cxColSatPB: TcxGridColumn
            Caption = 'Satuan'
            Options.Editing = False
          end
          object cxColQtyAmbilPB: TcxGridColumn
            Caption = 'Qty. Pengambilan'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.SpinButtons.Visible = False
            Properties.ValueType = vtFloat
            Width = 120
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxTblPBDet
        end
      end
      object cxGrid5: TcxGrid
        Left = 15
        Top = 20
        Width = 1138
        Height = 216
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        object cxTblPB: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblPBFocusedRecordChanged
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxColNoSPK4: TcxGridColumn
            Caption = 'No. SPK'
            Options.Editing = False
            Width = 116
          end
          object cxColKodeBrg4: TcxGridColumn
            Caption = 'Kode Brg.'
            Width = 113
          end
          object cxColDeskripsi4: TcxGridColumn
            Caption = 'Deskripsi'
            Width = 291
          end
          object cxColRouting4: TcxGridColumn
            Caption = 'Routing'
            Options.Editing = False
            Width = 97
          end
          object cxColTglSPK4: TcxGridColumn
            Caption = 'Tgl. SPK'
            DataBinding.ValueType = 'DateTime'
            Options.Editing = False
            Width = 100
          end
          object cxColQtySPK4: TcxGridColumn
            Caption = 'Qty. SPK'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Options.Editing = False
            Width = 87
          end
          object cxColSatSPK4: TcxGridColumn
            Caption = 'Sat'
            Options.Editing = False
            Width = 41
          end
          object cxGridColumn19: TcxGridColumn
            Caption = 'Tgl. Produksi'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
            Width = 75
          end
          object cxGridColumn20: TcxGridColumn
            Caption = 'Hasil Produksi'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 79
          end
          object cxGridColumn21: TcxGridColumn
            Caption = 'Qty. Reject'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 78
          end
          object cxGridColumn22: TcxGridColumn
            Caption = 'Mesin'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'kode'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMesin
            Visible = False
            Width = 91
          end
          object cxGridColumn23: TcxGridColumn
            Caption = 'Shift'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              '1'
              '2'
              '3')
            Visible = False
            Width = 45
          end
          object cxGridColumn24: TcxGridColumn
            Caption = 'Jam 1'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 114
          end
          object cxGridColumn25: TcxGridColumn
            Caption = 'Jam 2'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 107
          end
          object cxGridColumn26: TcxGridColumn
            Caption = 'Operator'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Visible = False
            Width = 114
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxTblPB
        end
      end
      object btnSimpanPB: TButton
        Left = 15
        Top = 390
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 2
        OnClick = btnSimpanPBClick
      end
      object btnBatalPengambilanBOM: TButton
        Left = 93
        Top = 390
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 3
        OnClick = btnBatalPengambilanBOMClick
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Pengembalian Bahan Baku'
      ImageIndex = 5
      DesignSize = (
        1174
        512)
      object cxGrid8: TcxGrid
        Left = 15
        Top = 20
        Width = 1138
        Height = 216
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxTblPengembalianBom: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblPengembalianBomFocusedRecordChanged
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxColNoSPK5: TcxGridColumn
            Caption = 'No. SPK'
            Options.Editing = False
            Width = 116
          end
          object cxColKodeBrg5: TcxGridColumn
            Caption = 'Kode Brg.'
            Width = 99
          end
          object cxColDeskripsi5: TcxGridColumn
            Caption = 'Deskripsi'
            Width = 221
          end
          object cxColRouting5: TcxGridColumn
            Caption = 'Routing'
            Options.Editing = False
            Width = 97
          end
          object cxColTglSPK5: TcxGridColumn
            Caption = 'Tgl. SPK'
            DataBinding.ValueType = 'DateTime'
            Options.Editing = False
            Width = 100
          end
          object cxColQtySPK5: TcxGridColumn
            Caption = 'Qty. SPK'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Options.Editing = False
            Width = 87
          end
          object cxColSatSPK5: TcxGridColumn
            Caption = 'Sat'
            Options.Editing = False
            Width = 41
          end
          object cxGridColumn45: TcxGridColumn
            Caption = 'Tgl. Produksi'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
            Width = 75
          end
          object cxGridColumn46: TcxGridColumn
            Caption = 'Hasil Produksi'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 79
          end
          object cxGridColumn47: TcxGridColumn
            Caption = 'Qty. Reject'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 78
          end
          object cxGridColumn48: TcxGridColumn
            Caption = 'Mesin'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'kode'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMesin
            Visible = False
            Width = 91
          end
          object cxGridColumn49: TcxGridColumn
            Caption = 'Shift'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              '1'
              '2'
              '3')
            Visible = False
            Width = 45
          end
          object cxGridColumn50: TcxGridColumn
            Caption = 'Jam 1'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 114
          end
          object cxGridColumn51: TcxGridColumn
            Caption = 'Jam 2'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 107
          end
          object cxGridColumn52: TcxGridColumn
            Caption = 'Operator'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Visible = False
            Width = 114
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxTblPengembalianBom
        end
      end
      object cxGrid9: TcxGrid
        Left = 15
        Top = 242
        Width = 956
        Height = 121
        TabOrder = 1
        object cxTblPengembalianBomDet: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxColKodePB2: TcxGridColumn
            Caption = 'Kode Brg.'
            Options.Editing = False
            Width = 73
          end
          object cxGridColumn54: TcxGridColumn
            Caption = 'Dekripsi'
            Options.Editing = False
            Width = 431
          end
          object cxGridColumn55: TcxGridColumn
            Caption = 'Qty. BOM'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Options.Editing = False
            Width = 86
          end
          object cxTblPengembalianBomDetColumn1: TcxGridColumn
            Caption = 'Sdh. Diambil'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Options.Editing = False
            Width = 74
          end
          object cxColTanggal: TcxGridColumn
            Caption = 'Tanggal'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cxColSatPB2: TcxGridColumn
            Caption = 'Satuan'
            Options.Editing = False
          end
          object cxColQtyAmbilPB2: TcxGridColumn
            Caption = 'Qty. Pengembalian'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Width = 120
          end
        end
        object cxGridLevel7: TcxGridLevel
          GridView = cxTblPengembalianBomDet
        end
      end
      object Button2: TButton
        Left = 15
        Top = 366
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button6: TButton
        Left = 93
        Top = 366
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 3
        OnClick = btnBatalPengambilanBOMClick
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'Permintaan Penambahan Bom'
      ImageIndex = 5
      object cxLabel3: TcxLabel
        Left = 20
        Top = 20
        Caption = 'No. SPK'
      end
      object cxtNoSPK: TcxTextEdit
        Left = 95
        Top = 18
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 121
      end
      object cxLabel4: TcxLabel
        Left = 20
        Top = 46
        Caption = 'Kode Barang'
      end
      object cxtKodeBrg: TcxTextEdit
        Left = 95
        Top = 44
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 20
        Top = 72
        Caption = 'Deskripsi'
      end
      object cxtDeskripsi: TcxTextEdit
        Left = 95
        Top = 70
        Properties.ReadOnly = True
        TabOrder = 5
        Width = 391
      end
      object cxLabel6: TcxLabel
        Left = 20
        Top = 98
        Caption = 'Qty. SPK'
      end
      object cxsQtySPK: TcxSpinEdit
        Left = 95
        Top = 96
        Properties.DisplayFormat = '#,##0.00'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        TabOrder = 7
        Width = 121
      end
      object cxGrid10: TcxGrid
        Left = 22
        Top = 128
        Width = 1049
        Height = 191
        TabOrder = 8
        object cxTblBomDet: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxColKodeBrg: TcxGridColumn
            Caption = 'Kode Brg.'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 94
          end
          object cxColDeskripsi: TcxGridColumn
            Caption = 'Deskripsi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 262
          end
          object cxColSatuan: TcxGridColumn
            Caption = 'Satuan'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 72
          end
          object cxColQtyBom: TcxGridColumn
            Caption = 'Qty. BOM'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0.00'
            Properties.ReadOnly = True
            Properties.ValueType = vtFloat
            Width = 102
          end
          object cxColQtyAmbil: TcxGridColumn
            Caption = 'Qty. Pengambilan'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0.00'
            Properties.ReadOnly = True
            Properties.ValueType = vtFloat
            Width = 104
          end
          object cxColJmlTambah: TcxGridColumn
            Caption = 'Qty. Penambahan'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Width = 143
          end
          object cxColKetTambah: TcxGridColumn
            Caption = 'Keterangan'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 237
          end
        end
        object cxGrid10Level1: TcxGridLevel
          GridView = cxTblBomDet
        end
      end
      object btnSimpanTambBOM: TButton
        Left = 22
        Top = 325
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 9
        OnClick = btnSimpanTambBOMClick
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = 'Pemakaian Bahan Baku'
      ImageIndex = 6
      DesignSize = (
        1174
        512)
      object cxGrid11: TcxGrid
        Left = 15
        Top = 20
        Width = 1138
        Height = 216
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxTblPakaiBB: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblPakaiBBFocusedRecordChanged
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridColumn1: TcxGridColumn
            Caption = 'No. SPK'
            Options.Editing = False
            Width = 116
          end
          object cxColNoHP: TcxGridColumn
            Caption = 'No. Produksi'
            Width = 116
          end
          object cxColTglProd: TcxGridColumn
            Caption = 'Tgl. Prod'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Width = 109
          end
          object cxGridColumn2: TcxGridColumn
            Caption = 'Kode Brg.'
            Width = 113
          end
          object cxGridColumn3: TcxGridColumn
            Caption = 'Deskripsi'
            Width = 232
          end
          object cxGridColumn4: TcxGridColumn
            Caption = 'Routing'
            Options.Editing = False
            Width = 97
          end
          object cxGridColumn5: TcxGridColumn
            Caption = 'Tgl. SPK'
            DataBinding.ValueType = 'DateTime'
            Options.Editing = False
            Width = 100
          end
          object cxGridColumn6: TcxGridColumn
            Caption = 'Qty. SPK'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Options.Editing = False
            Width = 87
          end
          object cxColQtyProd1: TcxGridColumn
            Caption = 'Qty. Prod'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.ReadOnly = True
          end
          object cxGridColumn7: TcxGridColumn
            Caption = 'Sat'
            Options.Editing = False
            Width = 68
          end
          object cxGridColumn9: TcxGridColumn
            Caption = 'Tgl. Produksi'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
            Width = 75
          end
          object cxGridColumn11: TcxGridColumn
            Caption = 'Hasil Produksi'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 79
          end
          object cxGridColumn12: TcxGridColumn
            Caption = 'Qty. Reject'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 78
          end
          object cxGridColumn13: TcxGridColumn
            Caption = 'Mesin'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'kode'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMesin
            Visible = False
            Width = 91
          end
          object cxGridColumn14: TcxGridColumn
            Caption = 'Shift'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              '1'
              '2'
              '3')
            Visible = False
            Width = 45
          end
          object cxGridColumn15: TcxGridColumn
            Caption = 'Jam 1'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 114
          end
          object cxGridColumn16: TcxGridColumn
            Caption = 'Jam 2'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 107
          end
          object cxGridColumn17: TcxGridColumn
            Caption = 'Operator'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Visible = False
            Width = 114
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxTblPakaiBB
        end
      end
      object cxGrid12: TcxGrid
        Left = 15
        Top = 242
        Width = 1139
        Height = 143
        TabOrder = 1
        object cxTblPakaiBBDet: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Enabled = False
          NavigatorButtons.Append.Enabled = False
          NavigatorButtons.Edit.Enabled = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          object cxGridColumn18: TcxGridColumn
            Caption = 'Kode Brg.'
            Options.Editing = False
            Width = 73
          end
          object cxGridColumn27: TcxGridColumn
            Caption = 'Dekripsi'
            Options.Editing = False
            Width = 431
          end
          object cxGridColumn28: TcxGridColumn
            Caption = 'Qty. BOM'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Options.Editing = False
            Width = 86
          end
          object cxGridColumn29: TcxGridColumn
            Caption = 'Sdh. Diambil'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Options.Editing = False
            Width = 76
          end
          object cxGridColumn31: TcxGridColumn
            Caption = 'Qty. Pengambilan'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.SpinButtons.Visible = False
            Properties.ValueType = vtFloat
            Width = 120
          end
          object cxColLayer1: TcxGridColumn
            Caption = 'Layer 1'
          end
          object cxColLayer2: TcxGridColumn
            Caption = 'Layer 2'
          end
          object cxColLayer3: TcxGridColumn
            Caption = 'Layer 3'
          end
          object cxGridColumn30: TcxGridColumn
            Caption = 'Satuan'
          end
        end
        object cxGridLevel9: TcxGridLevel
          GridView = cxTblPakaiBBDet
        end
      end
      object Button10: TButton
        Left = 15
        Top = 390
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 2
        OnClick = btnSimpanPBClick
      end
      object Button11: TButton
        Left = 93
        Top = 390
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 3
        OnClick = btnBatalPengambilanBOMClick
      end
    end
    object cxTabSheet9: TcxTabSheet
      Caption = 'Penambahan Bahan diluar BOM'
      ImageIndex = 7
      DesignSize = (
        1174
        512)
      object Label73: TLabel
        Left = 17
        Top = 192
        Width = 38
        Height = 13
        Caption = 'No.SPK'
      end
      object cxGrid13: TcxGrid
        Left = 15
        Top = 20
        Width = 1138
        Height = 156
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxTblBom1: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblBom1FocusedRecordChanged
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxColBomSPK: TcxGridColumn
            Caption = 'No. SPK'
            Options.Editing = False
            Width = 116
          end
          object cxColBomKode: TcxGridColumn
            Caption = 'Kode Brg.'
            Width = 99
          end
          object cxColBomBarang: TcxGridColumn
            Caption = 'Deskripsi'
            Width = 221
          end
          object cxColBomRouting: TcxGridColumn
            Caption = 'Routing'
            Options.Editing = False
            Width = 97
          end
          object cxColBomTglSPK: TcxGridColumn
            Caption = 'Tgl. SPK'
            DataBinding.ValueType = 'DateTime'
            Options.Editing = False
            Width = 100
          end
          object cxColBomQty: TcxGridColumn
            Caption = 'Qty. SPK'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Options.Editing = False
            Width = 87
          end
          object cxColBomSatuan: TcxGridColumn
            Caption = 'Sat'
            Options.Editing = False
            Width = 41
          end
          object cxGridColumn39: TcxGridColumn
            Caption = 'Tgl. Produksi'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Visible = False
            Width = 75
          end
          object cxGridColumn40: TcxGridColumn
            Caption = 'Hasil Produksi'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 79
          end
          object cxGridColumn41: TcxGridColumn
            Caption = 'Qty. Reject'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Visible = False
            Width = 78
          end
          object cxGridColumn42: TcxGridColumn
            Caption = 'Mesin'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'kode'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMesin
            Visible = False
            Width = 91
          end
          object cxGridColumn43: TcxGridColumn
            Caption = 'Shift'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              '1'
              '2'
              '3')
            Visible = False
            Width = 45
          end
          object cxGridColumn44: TcxGridColumn
            Caption = 'Jam 1'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 114
          end
          object cxGridColumn53: TcxGridColumn
            Caption = 'Jam 2'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Kind = ckDateTime
            Visible = False
            Width = 107
          end
          object cxGridColumn56: TcxGridColumn
            Caption = 'Operator'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Visible = False
            Width = 114
          end
        end
        object cxGridLevel10: TcxGridLevel
          GridView = cxTblBom1
        end
      end
      object cxGrid14: TcxGrid
        Left = 15
        Top = 217
        Width = 1136
        Height = 164
        TabOrder = 1
        object cxTblBom1Det: TcxGridTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnRecordChanged = cxTblBom1DetDataControllerRecordChanged
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          object cxColBomDetKode: TcxGridColumn
            Caption = 'Kode Brg.'
            Options.Editing = False
            Width = 235
          end
          object cxColBomDetBarang: TcxGridColumn
            Caption = 'Dekripsi'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'deskripsi'
              end
              item
                FieldName = 'kode'
              end>
            Properties.ListSource = dsBrgBom
            Width = 431
          end
          object cxColBomDetTgl: TcxGridColumn
            Caption = 'Tanggal'
            DataBinding.ValueType = 'DateTime'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object cxColBomDetSatuan: TcxGridColumn
            Caption = 'Satuan'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'GR'
              'PCS'
              'ROLL'
              'M')
          end
          object cxColBomDetQty: TcxGridColumn
            Caption = 'Qty. Penambahan'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.SpinButtons.Visible = False
            Properties.ValueType = vtFloat
            Width = 120
          end
        end
        object cxGridLevel11: TcxGridLevel
          GridView = cxTblBom1Det
        end
      end
      object cxtAlt: TcxTextEdit
        Left = 65
        Top = 187
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 236
      end
      object btnSimpanBom1: TButton
        Left = 15
        Top = 390
        Width = 75
        Height = 25
        Caption = '&Simpan'
        TabOrder = 3
        OnClick = btnSimpanBom1Click
      end
      object btnBatalBom1: TButton
        Left = 95
        Top = 390
        Width = 75
        Height = 25
        Caption = '&Batal'
        TabOrder = 4
        OnClick = btnBatalBom1Click
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 614
    Width = 1176
    Height = 82
    Align = alBottom
    TabOrder = 7
    object Button1: TButton
      Left = 1090
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Cetak Excel'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object btnKeluar2: TButton
      Left = 880
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = btnKeluar2Click
    end
    object btnAfalan: TButton
      Left = 896
      Top = 64
      Width = 105
      Height = 25
      Caption = 'Afalan'
      Enabled = False
      TabOrder = 2
      Visible = False
      OnClick = btnPengambilanBOMClick
    end
    object btnDowntime: TButton
      Left = 804
      Top = 64
      Width = 91
      Height = 25
      Caption = 'Downtime / Afval'
      TabOrder = 3
      Visible = False
      OnClick = btnDowntimeClick
    end
    object btnHP: TButton
      Left = 714
      Top = 64
      Width = 91
      Height = 25
      Caption = 'Hasil Produksi'
      TabOrder = 4
      Visible = False
      OnClick = btnHPClick
    end
    object Button12: TButton
      Left = 675
      Top = 19
      Width = 196
      Height = 25
      Caption = 'Penambahan Bahan di Luar BOM'
      TabOrder = 5
      OnClick = Button12Click
    end
    object Button9: TButton
      Left = 491
      Top = 19
      Width = 180
      Height = 25
      Caption = 'Pemakaian Bahan Baku'
      TabOrder = 6
      OnClick = Button9Click
    end
    object Button7: TButton
      Left = 306
      Top = 19
      Width = 180
      Height = 25
      Caption = 'Permintaan Penambahan BOM'
      TabOrder = 7
      OnClick = Button7Click
    end
    object Button5: TButton
      Left = 160
      Top = 19
      Width = 142
      Height = 25
      Caption = 'Pengembalian Bahan Baku'
      TabOrder = 8
      OnClick = Button5Click
    end
    object btnPengambilanBOM: TButton
      Left = 14
      Top = 19
      Width = 142
      Height = 25
      Caption = 'Pengambilan Bahan Baku'
      TabOrder = 9
      OnClick = btnPengambilanBOMClick
    end
  end
  object zqrHP: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*, b.kode_brg, c.deskripsi, d.jam_kerja * e.target targ' +
        'et2, if(e.target_kg IS NULL or e.target_kg=0,0,1) f_target, f.no' +
        '_so'
      'FROM tbl_hsl_prd a'
      'LEFT JOIN tbl_spk b ON b.no_spk = a.no_spk'
      'LEFT JOIN tbl_barang c ON c.kode = b.kode_brg'
      
        'LEFT JOIN tbl_jadwal_mesin d ON d.tanggal = a.tanggal AND d.kode' +
        '_mesin = a.mesin'
      
        'LEFT JOIN tbl_kapasitas_mesin e ON e.kode_mesin = a.mesin AND e.' +
        'kode_brg = b.kode_brg'
      'LEFT JOIN tbl_mo f ON f.no_spk = a.no_spk'
      'WHERE a.tanggal BETWEEN :tgl1 AND :tgl2'
      '-- WHERE a.tanggal BETWEEN '#39'2016-05-01'#39' AND curdate()'
      '')
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
    Left = 530
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
  object dsHP: TDataSource
    DataSet = zqrHP
    Left = 560
    Top = 30
  end
  object zqrRej: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.kode_brg, c.deskripsi, d.no_so FROM tbl_reject a'
      'LEFT JOIN tbl_spk b ON b.no_spk = a.no_spk '
      'LEFT JOIN tbl_barang c ON c.kode = b.kode_brg '
      'LEFT JOIN tbl_mo d ON d.no_spk = b.no_spk'
      'WHERE a.tanggal BETWEEN :tgl1 AND :tgl2')
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
  object dsRej: TDataSource
    DataSet = zqrRej
    Left = 625
    Top = 30
  end
  object zqrOpr: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.* '
      'FROM tbl_hsl_prd_operator a'
      'LEFT JOIN tbl_hsl_prd b ON a.no_bukti = b.no_bukti'
      '-- WHERE b.tanggal BETWEEN '#39'2016-05-01'#39' AND curdate()'
      'WHERE b.tanggal BETWEEN :tgl1 AND :tgl2')
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
  object dsOpr: TDataSource
    DataSet = zqrOpr
    Left = 685
    Top = 30
  end
  object zqrSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, IFNULL(b.no,0) no_urut_routing,'
      
        'IFNULL((SELECT COUNT(*) FROM tbl_bom_det WHERE no_spk = a.no_spk' +
        ' AND LEFT(kode_brg,1) <> '#39'B'#39'),0) jml_bb'
      'FROM v_spk a '
      
        'LEFT JOIN (SELECT DISTINCT no, kode_brg FROM tbl_routing) b ON a' +
        '.kode_brg = b.kode_brg'
      'WHERE a.tanggal '
      'BETWEEN :tgl1 AND :tgl2'
      '')
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
    Left = 470
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
  object dsSPK: TDataSource
    DataSet = zqrSPK
    Left = 500
    Top = 30
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_mesin'
      '')
    Params = <>
    Left = 715
    Top = 30
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 745
    Top = 30
  end
  object zqrKetMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_ket_mesin'
      'WHERE (left(mesin,3)= :mesin) and (kategori = :kategori)'
      'ORDER BY jenis'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'mesin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kategori'
        ParamType = ptUnknown
      end>
    Left = 775
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mesin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kategori'
        ParamType = ptUnknown
      end>
  end
  object dsKetMesin: TDataSource
    DataSet = zqrKetMesin
    Left = 805
    Top = 30
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 761
    Top = 251
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
  object zqrKategoriDown: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_kategori_afdown'
      'ORDER BY kategori')
    Params = <>
    Left = 835
    Top = 30
  end
  object dsKategoriDown: TDataSource
    DataSet = zqrKategoriDown
    Left = 865
    Top = 30
  end
  object zqrKaryawan: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nama FROM tbl_karyawan_ktg'
      'where left(jabatan,8)='#39'OPERATOR'#39' '
      'ORDER BY nama ASC')
    Params = <>
    Left = 899
    Top = 30
  end
  object dsKaryawan: TDataSource
    DataSet = zqrKaryawan
    Left = 929
    Top = 30
  end
  object zqrBrgBom: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1 and LEFT(kode,1) in ('#39'B'#39','#39'C'#39','#39'D'#39','#39'F'#39')'
      'ORDER BY deskripsi')
    Params = <>
    Left = 962
    Top = 30
  end
  object dsBrgBom: TDataSource
    DataSet = zqrBrgBom
    Left = 992
    Top = 30
  end
end
