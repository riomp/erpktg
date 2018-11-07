inherited frmMonitorTargetSPVPRD: TfrmMonitorTargetSPVPRD
  Left = 271
  Top = 83
  Width = 963
  Height = 638
  VertScrollBar.Visible = False
  Caption = 'Monitoring Target SPV PRD'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 947
    inherited lblJudul: TLabel
      Width = 225
      Caption = 'Monitoring Target SPV PRD'
    end
  end
  inherited pnlTengah: TPanel
    Width = 947
    Height = 535
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 64
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxdTgl2: TcxDateEdit
      Left = 212
      Top = 8
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 186
      Top = 10
      Caption = 'S/D'
    end
    object btnProses: TButton
      Left = 338
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
    object cxGrdH: TcxGrid
      Left = 20
      Top = 45
      Width = 910
      Height = 195
      TabOrder = 5
      object cxTblH: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblHFocusedRecordChanged
        DataController.DataSource = dsMonSPV
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsView.GroupByBox = False
        Styles.OnGetContentStyle = cxTblHStylesGetContentStyle
        object cxTblHtanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Width = 88
        end
        object cxTblHmesin: TcxGridDBColumn
          Caption = 'Mesin'
          DataBinding.FieldName = 'mesin'
          Width = 84
        end
        object cxTblHshift2: TcxGridDBColumn
          Caption = 'Shift'
          DataBinding.FieldName = 'shift2'
          Width = 62
        end
        object cxTblHjam_efektif: TcxGridDBColumn
          Caption = 'Jam Efektif'
          DataBinding.FieldName = 'jam_efektif'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Properties.SpinButtons.Visible = False
          Width = 93
        end
        object cxTblHColumn1: TcxGridDBColumn
          Caption = 'Jam Kerja'
          DataBinding.FieldName = 'jam_kerja'
          Width = 79
        end
        object cxTblColPencapaian: TcxGridDBColumn
          Caption = 'Pencapaian (%)'
          DataBinding.FieldName = 'pencapaian'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Properties.SpinButtons.Visible = False
          Width = 113
        end
        object cxTblHColumn2: TcxGridDBColumn
          Caption = 'SPV'
          DataBinding.FieldName = 'spv_prd'
          Width = 100
        end
        object cxTblHColumn3: TcxGridDBColumn
          Caption = 'Laporan'
          DataBinding.FieldName = 'f_lap'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
      end
      object cxGrdHLevel1: TcxGridLevel
        GridView = cxTblH
      end
    end
    object cxGrid1: TcxGrid
      Left = 20
      Top = 294
      Width = 910
      Height = 87
      TabOrder = 6
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDet
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGridDBTableView1no_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
          Width = 103
        end
        object cxGridDBTableView1kode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
          Width = 82
        end
        object cxGridDBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 287
        end
        object cxGridDBTableView1qty_prod: TcxGridDBColumn
          Caption = 'Qty. Prod'
          DataBinding.FieldName = 'qty_prod'
          Width = 98
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'Qty. Prod (KG)'
          DataBinding.FieldName = 'qty_prod_kg'
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = 'Qty. Reject (KG)'
          DataBinding.FieldName = 'qty_reject'
        end
        object cxGridDBTableView1user: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'user'
          Width = 117
        end
        object cxGridDBTableView1user_dept: TcxGridDBColumn
          DataBinding.FieldName = 'user_dept'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object btnInputKet: TButton
      Left = 20
      Top = 499
      Width = 141
      Height = 25
      Caption = 'Input Keterangan'
      TabOrder = 7
      OnClick = btnInputKetClick
    end
    object btnKeluar2: TButton
      Left = 164
      Top = 499
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 9
      OnClick = btnKeluar2Click
    end
    object cxLabel10: TcxLabel
      Left = 20
      Top = 274
      Caption = 'Detail Hasil Produksi'
    end
    object Button1: TButton
      Left = 20
      Top = 245
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 11
      OnClick = Button1Click
    end
    object cxChkNoTarget: TcxCheckBox
      Left = 421
      Top = 9
      Caption = 'Hanya Yang Tidak Mencapai Target'
      TabOrder = 12
      Width = 220
    end
    object cxGrid2: TcxGrid
      Left = 20
      Top = 406
      Width = 910
      Height = 87
      TabOrder = 13
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsKet
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 379
        end
        object cxGrid2DBTableView1jam1: TcxGridDBColumn
          Caption = 'J. Awal'
          DataBinding.FieldName = 'jam1'
          Width = 145
        end
        object cxGrid2DBTableView1jam2: TcxGridDBColumn
          Caption = 'J. AKhir'
          DataBinding.FieldName = 'jam2'
          Width = 141
        end
        object cxGrid2DBTableView1Column1: TcxGridDBColumn
          Caption = 'Durasi'
          DataBinding.FieldName = 'durasi'
          Width = 100
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object cxLabel12: TcxLabel
      Left = 20
      Top = 386
      Caption = 'Keterangan Kendala Mesin'
    end
    object Panel1: TPanel
      Left = 180
      Top = 75
      Width = 644
      Height = 351
      TabOrder = 8
      Visible = False
      object cxLabel3: TcxLabel
        Left = 10
        Top = 15
        Caption = 'Tanggal'
      end
      object cxdTglKet: TcxDateEdit
        Left = 102
        Top = 13
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 1
        Width = 121
      end
      object cxLabel4: TcxLabel
        Left = 10
        Top = 40
        Caption = 'Mesin'
      end
      object btnClosePanel: TButton
        Left = 614
        Top = 4
        Width = 27
        Height = 21
        Caption = 'X'
        TabOrder = 3
        OnClick = btnClosePanelClick
      end
      object cxLabel5: TcxLabel
        Left = 10
        Top = 65
        Caption = 'Shift'
      end
      object cxLabel6: TcxLabel
        Left = 10
        Top = 141
        Caption = 'Keterangan'
      end
      object nxGrd: TNextGrid
        Left = 13
        Top = 220
        Width = 618
        Height = 88
        Options = [goGrid, goHeader]
        TabOrder = 6
        TabStop = True
        OnCellDblClick = nxGrdCellDblClick
        object NxIncrementColumn1: TNxIncrementColumn
          DefaultWidth = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'No.'
          Position = 0
          SortType = stAlphabetic
          Width = 28
        end
        object nxColHapus: TNxImageColumn
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Hapus'
          Position = 1
          SortType = stNumeric
          Width = 40
          Images = frmUtama.ImageList1
        end
        object nxColKet: TNxTextColumn
          DefaultWidth = 282
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Keterangan'
          Position = 2
          SortType = stAlphabetic
          Width = 282
        end
        object nxColJam1: TNxTimeColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'J. Awal'
          Position = 3
          SortType = stDate
        end
        object nxColJam2: TNxTimeColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'J. Akhir'
          Position = 4
          SortType = stDate
        end
        object NxTimeColumn1: TNxTimeColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Durasi'
          Position = 5
          SortType = stDate
        end
        object nxColTgl1: TNxDateColumn
          DefaultValue = '01/06/2016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = 6
          SortType = stDate
          Visible = False
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
        object nxColTgl2: TNxDateColumn
          DefaultValue = '01/06/2016'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = 7
          SortType = stDate
          Visible = False
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
      end
      object cxLabel7: TcxLabel
        Left = 10
        Top = 165
        Caption = 'Jam'
      end
      object cxtMesin: TcxTextEdit
        Left = 102
        Top = 38
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 8
        Width = 121
      end
      object cxtShift: TcxTextEdit
        Left = 102
        Top = 63
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 9
        Width = 121
      end
      object cxLabel8: TcxLabel
        Left = 10
        Top = 115
        Caption = 'Pencapaian (%)'
      end
      object cxsPencapaian: TcxSpinEdit
        Left = 102
        Top = 113
        Properties.DisplayFormat = '#,#0.00000000'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        Style.Color = clMoneyGreen
        TabOrder = 11
        Width = 121
      end
      object cxtKeterangan: TcxTextEdit
        Left = 102
        Top = 138
        Properties.CharCase = ecUpperCase
        TabOrder = 12
        OnKeyPress = cxtKeteranganKeyPress
        Width = 389
      end
      object cxtmJam1: TcxTimeEdit
        Left = 102
        Top = 163
        EditValue = 0d
        Properties.TimeFormat = tfHourMin
        TabOrder = 13
        OnKeyPress = cxtmJam1KeyPress
        Width = 79
      end
      object btnBatalKet: TButton
        Left = 91
        Top = 313
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 14
        OnClick = btnBatalKetClick
      end
      object Button4: TButton
        Left = 102
        Top = 188
        Width = 75
        Height = 25
        Caption = 'Tambah'
        TabOrder = 15
        OnClick = Button4Click
      end
      object cxLabel9: TcxLabel
        Left = 10
        Top = 90
        Caption = 'Jam Efektif'
      end
      object cxsJamEfektif: TcxSpinEdit
        Left = 102
        Top = 88
        Properties.DisplayFormat = '#,#0.00000000'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        Style.Color = clMoneyGreen
        TabOrder = 17
        Width = 121
      end
      object cxtmJam2: TcxTimeEdit
        Left = 210
        Top = 163
        EditValue = 0d
        Properties.TimeFormat = tfHourMin
        TabOrder = 18
        Width = 79
      end
      object cxLabel11: TcxLabel
        Left = 183
        Top = 165
        Caption = 'S/D'
      end
      object cxtId_Ref: TcxTextEdit
        Left = 225
        Top = 15
        TabOrder = 20
        Text = 'cxtId_Ref'
        Visible = False
        Width = 121
      end
      object btnSimpan2: TButton
        Left = 13
        Top = 313
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 21
        OnClick = btnSimpan2Click
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 601
    Width = 947
    Height = 49
    Visible = False
    inherited btnKeluar: TButton
      Left = 22
      Top = 10
    end
    inherited btnSimpan: TButton
      Left = 455
      Top = 15
      Visible = False
    end
  end
  object zqrMonSPV: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      '')
    Params = <>
    Left = 490
    Top = 21
  end
  object dsMonSPV: TDataSource
    DataSet = zqrMonSPV
    Left = 520
    Top = 20
  end
  object zqrDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT '
      'a.no_spk, '
      'b.kode_brg, '
      'c.deskripsi,'
      'sum(a.qty_prod) qty_prod, '
      'sum(a.qty_prod * e.berat_per_unit_b) qty_prod_kg,'
      
        '(SELECT SUM(qty) FROM tbl_reject WHERE no_spk = b.no_spk) qty_re' +
        'ject,'
      'a.user, '
      'a.user_dept'
      'FROM '
      'tbl_hsl_prd a '
      'LEFT JOIN tbl_spk b ON a.no_spk = b.no_spk '
      'LEFT JOIN tbl_barang c ON b.kode_brg = c.kode '
      'LEFT JOIN tbl_barang e ON e.kode = b.kode_brg'
      'WHERE '
      'a.tanggal = :tanggal AND '
      'a.mesin = :mesin AND'
      'a.shift2 = :shift'
      'GROUP BY '
      'a.no_spk, '
      'b.kode_brg, '
      'c.deskripsi,'
      'a.user, '
      'a.user_dept')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mesin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
    Left = 550
    Top = 21
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mesin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
  end
  object dsDet: TDataSource
    DataSet = zqrDet
    Left = 580
    Top = 20
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 75
    Top = 211
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clRed
    end
  end
  object zqrKet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_det_laptargetspv'
      'WHERE tanggal = :tanggal AND mesin = :mesin AND shift = :shift;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mesin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
    Left = 615
    Top = 21
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mesin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end>
  end
  object dsKet: TDataSource
    DataSet = zqrKet
    Left = 645
    Top = 20
  end
end
