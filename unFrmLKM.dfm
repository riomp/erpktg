inherited frmLKM: TfrmLKM
  Left = 138
  Top = 26
  Width = 1212
  Height = 618
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Laporan Ketidaksesuaikan Mutu'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1196
    inherited lblJudul: TLabel
      Width = 251
      Caption = 'Laporan Ketidaksesuaian Mutu'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
      Visible = False
    end
  end
  inherited pnlTengah: TPanel
    Width = 1196
    Height = 465
    Anchors = [akLeft, akTop, akRight, akBottom]
    object Panel1: TPanel [0]
      Left = 10
      Top = 405
      Width = 261
      Height = 56
      BevelOuter = bvNone
      TabOrder = 7
      object btnLKMBaru: TButton
        Left = -1
        Top = 17
        Width = 75
        Height = 25
        Caption = 'LKM Baru'
        TabOrder = 0
        Visible = False
        OnClick = btnLKMBaruClick
      end
      object btnLihat: TButton
        Left = 158
        Top = 17
        Width = 75
        Height = 25
        Caption = 'Lihat'
        TabOrder = 1
        OnClick = btnLihatClick
      end
    end
    inherited pg: TPageControl
      Left = 840
      Top = 120
      Width = 445
      Height = 159
      Align = alNone
      Visible = False
      inherited TabSheet1: TTabSheet
        Caption = 'Daftar LKM'
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Edit LKM'
        inherited Label1: TLabel
          Left = 931
          Top = 200
          Visible = False
        end
        inherited cxGrd: TcxGrid
          Left = 930
          Top = 60
          Visible = False
        end
      end
    end
    object cxGrdLkm: TcxGrid
      Left = 10
      Top = 36
      Width = 1175
      Height = 366
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      object cxTblViewLKM: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsLKM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        Styles.OnGetContentStyle = cxTblViewLKMStylesGetContentStyle
        object cxTblViewLKMno_bukti: TcxGridDBColumn
          Caption = 'No. LKM'
          DataBinding.FieldName = 'no_bukti'
          Width = 85
        end
        object cxTblViewLKMtanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTblViewLKMColumn1: TcxGridDBColumn
          Caption = 'No. Retur'
          DataBinding.FieldName = 'no_retur'
          Width = 77
        end
        object cxTblViewLKMtujuan_dept: TcxGridDBColumn
          Caption = 'Dept. Tujuan'
          DataBinding.FieldName = 'dept_terkait'
          Width = 70
        end
        object cxColStatus: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'status'
          Width = 47
        end
        object cxTblViewLKMketerangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Visible = False
        end
        object cxTblViewLKMkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTblViewLKMdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 250
        end
        object cxTblViewLKMket_tambahan: TcxGridDBColumn
          Caption = 'Keputusan'
          DataBinding.FieldName = 'ket_tambahan'
          Width = 200
        end
        object cxTblViewLKMapp2: TcxGridDBColumn
          Caption = 'App. Dept Terkait'
          DataBinding.FieldName = 'app2'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 94
        end
        object cxTblViewLKMapp1: TcxGridDBColumn
          Caption = 'App. Manager QAC'
          DataBinding.FieldName = 'app1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 106
        end
        object cxTblViewLKMapp3: TcxGridDBColumn
          Caption = 'App. Management'
          DataBinding.FieldName = 'app3'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 102
        end
        object cxTblViewLKMno_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
          Width = 80
        end
        object cxTblViewLKMkode_supp: TcxGridDBColumn
          DataBinding.FieldName = 'kode_supp'
          Visible = False
        end
        object cxTblViewLKMkode_cust: TcxGridDBColumn
          DataBinding.FieldName = 'kode_cust'
          Visible = False
        end
        object cxTblViewLKMnama: TcxGridDBColumn
          Caption = 'Nama Cust / Supp'
          DataBinding.FieldName = 'kode_cust'
          Width = 130
        end
        object cxTblViewLKMshift: TcxGridDBColumn
          Caption = 'Shift'
          DataBinding.FieldName = 'shift'
          Width = 50
        end
        object cxTblViewLKMno_mesin: TcxGridDBColumn
          DataBinding.FieldName = 'no_mesin'
          Visible = False
        end
        object cxTblViewLKMkode_produksi: TcxGridDBColumn
          DataBinding.FieldName = 'kode_produksi'
          Visible = False
          Width = 83
        end
        object cxTblViewLKMno_tag_produksi: TcxGridDBColumn
          DataBinding.FieldName = 'no_tag_produksi'
          Visible = False
        end
        object cxTblViewLKMalokasi_barang: TcxGridDBColumn
          Caption = 'Alokasi Brg.'
          DataBinding.FieldName = 'alokasi_barang'
          Width = 78
        end
        object cxTblViewLKMdeskripsi_ks: TcxGridDBColumn
          Caption = 'Deskripsi Ketidaksesuaian'
          DataBinding.FieldName = 'deskripsi_ks'
          Width = 300
        end
        object cxTblViewLKMjenis_ks: TcxGridDBColumn
          Caption = 'Jenis Ketidaksesuaian'
          DataBinding.FieldName = 'jenis_ks'
          Width = 150
        end
        object cxTblViewLKMakar_masalah: TcxGridDBColumn
          DataBinding.FieldName = 'akar_masalah'
          Visible = False
        end
        object cxTblViewLKMjenis_tp: TcxGridDBColumn
          DataBinding.FieldName = 'jenis_tp'
          Visible = False
        end
        object cxTblViewLKMdeskripsi_tp: TcxGridDBColumn
          DataBinding.FieldName = 'deskripsi_tp'
          Visible = False
        end
        object cxTblViewLKMjenis_ket: TcxGridDBColumn
          Caption = 'Jenis Ket.'
          DataBinding.FieldName = 'jenis_ket'
          Width = 95
        end
        object cxTblViewLKMjam: TcxGridDBColumn
          DataBinding.FieldName = 'jam'
          Visible = False
        end
        object cxTblViewLKMtanggal_selesai: TcxGridDBColumn
          Caption = 'Tgl. Selesai'
          DataBinding.FieldName = 'tanggal_selesai'
          Width = 87
        end
        object cxTblViewLKMuser: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'user'
          Width = 47
        end
        object cxTblViewLKMuser_dept: TcxGridDBColumn
          Caption = 'User Dept.'
          DataBinding.FieldName = 'user_dept'
          Width = 60
        end
        object cxTblViewLKMqty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
          Width = 54
        end
        object cxTblViewLKMhost: TcxGridDBColumn
          DataBinding.FieldName = 'host'
          Visible = False
        end
        object cxTblViewLKMsatuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 45
        end
        object cxTblViewLKMjenis_input: TcxGridDBColumn
          Caption = 'Jenis Input'
          DataBinding.FieldName = 'jenis_input'
          Width = 50
        end
        object cxTblViewNoRef: TcxGridDBColumn
          Caption = 'No. SPK / Mutasi'
          DataBinding.FieldName = 'no_ref'
          Width = 98
        end
      end
      object cxGrdLkmLevel1: TcxGridLevel
        GridView = cxTblViewLKM
      end
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 9
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 58
      Top = 7
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 183
      Top = 9
      Caption = 'S / D '
    end
    object cxdTgl2: TcxDateEdit
      Left = 213
      Top = 7
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 339
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
    object Panel2: TPanel
      Left = 275
      Top = 409
      Width = 311
      Height = 56
      BevelOuter = bvNone
      TabOrder = 8
      object Button3: TButton
        Left = 106
        Top = 17
        Width = 75
        Height = 25
        Caption = 'Lihat'
        TabOrder = 0
        OnClick = Button3Click
      end
      object Button2: TButton
        Left = 184
        Top = 17
        Width = 75
        Height = 25
        Caption = 'Cetak Excel'
        TabOrder = 1
        OnClick = Button2Click
      end
      object btnTindakLanjutLKM: TButton
        Left = -1
        Top = 17
        Width = 104
        Height = 25
        Caption = 'Tindak Lanjut LKM'
        TabOrder = 2
        OnClick = btnTindakLanjutLKMClick
      end
    end
    object Panel3: TPanel
      Left = 600
      Top = 409
      Width = 486
      Height = 56
      BevelOuter = bvNone
      TabOrder = 9
      object Button1: TButton
        Left = -1
        Top = 17
        Width = 104
        Height = 25
        Caption = 'Tutup LKM'
        TabOrder = 1
        OnClick = Button1Click
      end
      object btnCetakLKM: TButton
        Left = 106
        Top = 17
        Width = 75
        Height = 25
        Caption = 'Cetak'
        TabOrder = 0
        OnClick = btnCetakLKMClick
      end
      object btnEditLKM: TButton
        Left = 183
        Top = 17
        Width = 75
        Height = 25
        Caption = '&Edit'
        TabOrder = 2
        OnClick = btnEditLKMClick
      end
      object btnAppManagerQAC: TButton
        Left = 260
        Top = 17
        Width = 136
        Height = 25
        Caption = 'Approval Manager QAC'
        TabOrder = 3
        OnClick = btnAppManagerQACClick
      end
    end
    object pnlSPK: TPanel
      Left = 320
      Top = 185
      Width = 331
      Height = 107
      TabOrder = 10
      Visible = False
      object btnCloseDetSPK: TButton
        Left = 306
        Top = 4
        Width = 21
        Height = 20
        Caption = 'X'
        TabOrder = 0
        OnClick = btnCloseDetSPKClick
      end
      object cxLabel28: TcxLabel
        Left = 11
        Top = 32
        Caption = 'No. SPK / MUTASI'
        Transparent = True
      end
      object btnSimpanDet: TButton
        Left = 17
        Top = 70
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 2
        OnClick = btnSimpanDetClick
      end
      object btnBatalDet: TButton
        Left = 94
        Top = 70
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 3
        OnClick = btnBatalDetClick
      end
      object cxtNoMutasi: TcxTextEdit
        Tag = 1
        Left = 110
        Top = 31
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 181
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 531
    Width = 1196
    Height = 50
    Anchors = [akLeft, akTop, akRight, akBottom]
    inherited btnKeluar: TButton
      Left = 830
      Top = 10
      Visible = False
    end
    inherited btnTambah: TButton
      Left = 455
      Top = 10
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 530
      Top = 10
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 605
      Top = 10
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 755
      Top = 10
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 680
      Top = 10
      Visible = False
    end
    object btnKeluar2: TButton
      Left = 14
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 6
      OnClick = btnKeluar2Click
    end
  end
  object zqrLKM: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lkm'
      'WHERE tanggal BETWEEN :tgl1 AND :tgl2'
      '-- WHERE tanggal BETWEEN :tgl1 AND :tgl2')
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
    Left = 425
    Top = 20
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
  object dsLKM: TDataSource
    DataSet = zqrLKM
    Left = 455
    Top = 20
  end
  object zqrDept: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT bagian FROM tbl_bagian ORDER BY bagian')
    Params = <>
    Left = 485
    Top = 20
  end
  object dsDept: TDataSource
    DataSet = zqrDept
    Left = 515
    Top = 20
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 625
    Top = 30
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 780
    Top = 196
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clTeal
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
  end
end
