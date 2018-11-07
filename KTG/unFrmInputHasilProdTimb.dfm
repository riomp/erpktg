inherited frmInputHasilProdTimb: TfrmInputHasilProdTimb
  Left = 393
  Top = 171
  Width = 1059
  Height = 595
  Caption = 'Input Hasil Produksi - Timbangan'
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1043
    Height = 56
    inherited lblJudul: TLabel
      Left = 14
      Top = 17
      Width = 273
      Caption = 'Input Hasil Produksi - Timbangan'
    end
  end
  inherited pnlTengah: TPanel
    Top = 56
    Width = 1043
    Height = 500
    object cxGrid1: TcxGrid
      Left = 20
      Top = 45
      Width = 1001
      Height = 212
      TabOrder = 0
      object cxTblSPK: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSPK
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsView.GroupByBox = False
        object cxTblSPKno_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
          Width = 139
        end
        object cxTblSPKno_so: TcxGridDBColumn
          Caption = 'No. SO '
          DataBinding.FieldName = 'no_so'
          Width = 105
        end
        object cxTblSPKkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
          Width = 119
        end
        object cxTblSPKdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 345
        end
        object cxTblSPKqty_prod: TcxGridDBColumn
          Caption = 'Total Hasil Prod.'
          DataBinding.FieldName = 'qty_prod'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 98
        end
        object cxTblSPKqty_reject: TcxGridDBColumn
          Caption = 'Total Reject'
          DataBinding.FieldName = 'qty_reject'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Properties.EditFormat = '#,#0.00'
          Width = 73
        end
        object cxTblSPKqty_terima: TcxGridDBColumn
          Caption = 'Total Serah Terima'
          DataBinding.FieldName = 'qty_terima'
          Width = 97
        end
        object cxTblSPKjenis_spk: TcxGridDBColumn
          DataBinding.FieldName = 'jenis_spk'
          Visible = False
        end
        object cxTblSPKtanggal: TcxGridDBColumn
          DataBinding.FieldName = 'tanggal'
          Visible = False
        end
        object cxTblSPKjam: TcxGridDBColumn
          DataBinding.FieldName = 'jam'
          Visible = False
        end
        object cxTblSPKqty: TcxGridDBColumn
          DataBinding.FieldName = 'qty'
          Visible = False
        end
        object cxTblSPKkode_mesin: TcxGridDBColumn
          DataBinding.FieldName = 'kode_mesin'
          Visible = False
        end
        object cxTblSPKf_completed: TcxGridDBColumn
          DataBinding.FieldName = 'f_completed'
          Visible = False
        end
        object cxTblSPKno_trsplusminus: TcxGridDBColumn
          DataBinding.FieldName = 'no_trsplusminus'
          Visible = False
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
        object cxTblSPKsatuan: TcxGridDBColumn
          DataBinding.FieldName = 'satuan'
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
        object cxTblSPKrouting: TcxGridDBColumn
          DataBinding.FieldName = 'routing'
          Visible = False
        end
        object cxTblSPKno_spk_induk: TcxGridDBColumn
          DataBinding.FieldName = 'no_spk_induk'
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
        object cxTblSPKlain_lain: TcxGridDBColumn
          DataBinding.FieldName = 'lain_lain'
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
        object cxTblSPKno_urut_routing: TcxGridDBColumn
          DataBinding.FieldName = 'no_urut_routing'
          Visible = False
        end
        object cxTblSPKjml_bb: TcxGridDBColumn
          DataBinding.FieldName = 'jml_bb'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTblSPK
      end
    end
    object cxLabel1: TcxLabel
      Left = 14
      Top = 11
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 9
      TabOrder = 2
      Width = 121
    end
    object cxdTgl2: TcxDateEdit
      Left = 228
      Top = 9
      TabOrder = 3
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 194
      Top = 11
      Caption = 'S/D'
    end
    object btnProses: TButton
      Left = 357
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 5
      OnClick = btnProsesClick
    end
    object Button1: TButton
      Left = 20
      Top = 265
      Width = 196
      Height = 25
      Caption = 'Input Hasil Produksi + Reject'
      TabOrder = 6
      OnClick = Button1Click
    end
    object cxtHPHide: TcxTextEdit
      Left = 820
      Top = 290
      TabOrder = 8
      Visible = False
      Width = 121
    end
    object Button2: TButton
      Left = 219
      Top = 265
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Panel1: TPanel
      Left = 20
      Top = 11
      Width = 710
      Height = 450
      TabOrder = 7
      Visible = False
      object GroupBox1: TGroupBox
        Left = 17
        Top = 165
        Width = 256
        Height = 94
        Caption = 'Hasil Produksi'
        TabOrder = 0
        object Label1: TLabel
          Left = 141
          Top = 30
          Width = 15
          Height = 13
          Caption = 'KG'
        end
        object btnTimbang1: TButton
          Left = 15
          Top = 55
          Width = 75
          Height = 25
          Caption = 'Timbang'
          TabOrder = 0
          OnClick = btnTimbang1Click
        end
        object btnSimpanHP: TButton
          Left = 94
          Top = 55
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 1
          OnClick = btnSimpanHPClick
        end
        object cxsInputHP: TcxSpinEdit
          Left = 15
          Top = 26
          Properties.DisplayFormat = '#,#0.00'
          Properties.EditFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 2
          Width = 121
        end
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 259
        Width = 610
        Height = 145
        Caption = 'Reject'
        TabOrder = 1
        object Label2: TLabel
          Left = 141
          Top = 30
          Width = 15
          Height = 13
          Caption = 'KG'
        end
        object btnTimbang2: TButton
          Left = 15
          Top = 107
          Width = 75
          Height = 25
          Caption = 'Timbang'
          TabOrder = 0
          OnClick = btnTimbang2Click
        end
        object btnSimpanReject: TButton
          Left = 94
          Top = 107
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 1
          OnClick = btnSimpanRejectClick
        end
        object cxsInputReject: TcxSpinEdit
          Left = 16
          Top = 26
          Properties.DisplayFormat = '#,#0.00'
          Properties.EditFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 2
          Width = 121
        end
        object cxLabel10: TcxLabel
          Left = 15
          Top = 55
          Caption = 'Kategori'
        end
        object cxlKatAfal: TcxLookupComboBox
          Left = 76
          Top = 53
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kategori'
          Properties.ListColumns = <
            item
              Caption = 'Kategori'
              FieldName = 'kategori'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsKatAfal
          Properties.OnChange = cxlKatAfalPropertiesChange
          TabOrder = 4
          Width = 383
        end
        object cxlKetMesin: TcxLookupComboBox
          Left = 76
          Top = 78
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'jenis'
          Properties.ListColumns = <
            item
              Caption = 'Ket. Mesin'
              FieldName = 'jenis'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsKetMesin
          TabOrder = 5
          Width = 383
        end
        object cxLabel11: TcxLabel
          Left = 15
          Top = 80
          Caption = 'Ket. Mesin'
        end
      end
      object cxLabel3: TcxLabel
        Left = 15
        Top = 15
        Caption = 'No. SPK'
      end
      object cxtNoSPK: TcxTextEdit
        Left = 87
        Top = 14
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 169
      end
      object cxLabel4: TcxLabel
        Left = 15
        Top = 40
        Caption = 'Kode / Desk.'
      end
      object cxtKodeBrg: TcxTextEdit
        Left = 87
        Top = 39
        Properties.ReadOnly = True
        TabOrder = 5
        Width = 169
      end
      object cxtDeskripsi: TcxTextEdit
        Left = 259
        Top = 39
        Properties.ReadOnly = True
        TabOrder = 6
        Width = 433
      end
      object Button6: TButton
        Left = 491
        Top = 170
        Width = 75
        Height = 25
        Caption = 'Cetak'
        TabOrder = 7
        Visible = False
      end
      object Button7: TButton
        Left = 16
        Top = 410
        Width = 75
        Height = 25
        Caption = 'Keluar'
        TabOrder = 8
        OnClick = Button7Click
      end
      object cxLabel5: TcxLabel
        Left = 15
        Top = 65
        Caption = 'Mesin'
      end
      object cxlMesin: TcxLookupComboBox
        Left = 87
        Top = 64
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'kode'
        Properties.ListColumns = <
          item
            Caption = 'Mesin'
            FieldName = 'kode'
          end
          item
            Caption = 'Nama Mesin'
            FieldName = 'nama'
          end>
        Properties.ListSource = dsMesin
        TabOrder = 10
        Width = 154
      end
      object cxLabel6: TcxLabel
        Left = 15
        Top = 90
        Caption = 'Jam'
      end
      object cxd1: TcxDateEdit
        Left = 87
        Top = 89
        Properties.Kind = ckDateTime
        TabOrder = 12
        Width = 154
      end
      object cxLabel7: TcxLabel
        Left = 245
        Top = 90
        Caption = 'S/D'
      end
      object cxd2: TcxDateEdit
        Left = 273
        Top = 89
        Properties.Kind = ckDateTime
        TabOrder = 14
        Width = 154
      end
      object cxLabel8: TcxLabel
        Left = 15
        Top = 115
        Caption = 'Operator'
      end
      object cxtOperator: TcxTextEdit
        Left = 87
        Top = 114
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        TabOrder = 16
        Width = 341
      end
      object cxLabel9: TcxLabel
        Left = 15
        Top = 140
        Caption = 'Shift'
      end
      object cxCmbShift: TcxComboBox
        Left = 87
        Top = 139
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          '1'
          '2'
          '3')
        TabOrder = 18
        Width = 121
      end
    end
    object cxtRejectHide: TcxTextEdit
      Left = 820
      Top = 315
      TabOrder = 10
      Visible = False
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Left = 975
    Top = 406
    Width = 1041
    Align = alNone
    Visible = False
    inherited btnKeluar: TButton
      Visible = False
    end
    inherited btnSimpan: TButton
      Visible = False
    end
  end
  object CP: TComPort
    BaudRate = br9600
    Port = 'COM2'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    Left = 325
    Top = 21
  end
  object zqrSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, IFNULL(b.no,0) no_urut_routing,'
      
        'IFNULL((SELECT COUNT(*) FROM tbl_bom_det WHERE no_spk = a.no_spk' +
        ' AND LEFT(kode_brg,1) <> '#39'B'#39'),0) jml_bb,'
      
        'IFNULL((SELECT SUM(qty_prod) FROM tbl_hsl_prd WHERE no_spk = a.n' +
        'o_spk),0) qty_prod'
      'FROM v_spk a '
      
        'LEFT JOIN (SELECT DISTINCT no, kode_brg FROM tbl_routing) b ON a' +
        '.kode_brg = b.kode_brg'
      'WHERE a.tanggal '
      'BETWEEN :tgl1 AND :tgl2')
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
    Left = 465
    Top = 56
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
    Left = 495
    Top = 56
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_mesin'
      'WHERE f_aktif = 1')
    Params = <>
    Left = 525
    Top = 56
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 555
    Top = 56
  end
  object tmr: TTimer
    Enabled = False
    OnTimer = tmrTimer
    Left = 355
    Top = 25
  end
  object tmr2: TTimer
    Enabled = False
    OnTimer = tmr2Timer
    Left = 385
    Top = 25
  end
  object zqrKatAfal: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_kategori_afdown'
      'ORDER BY kategori')
    Params = <>
    Left = 585
    Top = 56
  end
  object dsKatAfal: TDataSource
    DataSet = zqrKatAfal
    Left = 615
    Top = 56
  end
  object zqrKetMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT jenis '
      'FROM tbl_ket_mesin '
      'WHERE kategori = :kategori')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kategori'
        ParamType = ptUnknown
      end>
    Left = 645
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kategori'
        ParamType = ptUnknown
      end>
  end
  object dsKetMesin: TDataSource
    DataSet = zqrKetMesin
    Left = 675
    Top = 56
  end
end
