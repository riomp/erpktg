inherited frmDaftarDisposisi: TfrmDaftarDisposisi
  Left = 125
  Top = 19
  HorzScrollBar.Visible = False
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Daftar Disposisi'
  ClientHeight = 638
  ClientWidth = 1139
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1139
    Height = 38
    inherited lblJudul: TLabel
      Top = 8
      Width = 128
      Caption = 'Daftar Disposisi'
    end
  end
  inherited pnlTengah: TPanel
    Top = 38
    Width = 1139
    Height = 558
    object cxGrdD: TcxGrid
      Left = 15
      Top = 194
      Width = 766
      Height = 112
      TabOrder = 0
      object cxTblD: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxTblDno_bukti: TcxGridDBColumn
          DataBinding.FieldName = 'no_bukti'
          Visible = False
        end
        object cxTblDno_spmb: TcxGridDBColumn
          Caption = 'No. SPMB'
          DataBinding.FieldName = 'no_spmb'
          Width = 100
        end
        object cxTblDberat_total: TcxGridDBColumn
          Caption = 'Berat SPMB'
          DataBinding.FieldName = 'berat_total'
          Width = 105
        end
        object cxTblDberat_packing: TcxGridDBColumn
          Caption = 'Berat Packing'
          DataBinding.FieldName = 'berat_packing'
          Width = 114
        end
        object cxTblDColumn1: TcxGridDBColumn
          Caption = 'Nama Customer'
          DataBinding.FieldName = 'nama'
          Width = 397
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxTblD
      end
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 143
      Caption = 'Detail'
    end
    object cxGrdH: TcxGrid
      Left = 15
      Top = 46
      Width = 1106
      Height = 126
      TabOrder = 2
      object cxTblH: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnEditValueChanged = cxTblHEditValueChanged
        OnFocusedRecordChanged = cxTblHFocusedRecordChanged
        DataController.DataSource = dsH
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxTblHno_bukti: TcxGridDBColumn
          Caption = 'No. Disposisi'
          DataBinding.FieldName = 'no_bukti'
          Width = 95
        end
        object cxTblHtgl_input: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tgl_input'
          Width = 84
        end
        object cxTblHColumn2: TcxGridDBColumn
          Caption = 'App. Staff QAC'
          DataBinding.FieldName = 'app_staff_qac'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 83
        end
        object cxTblHapp_qac: TcxGridDBColumn
          Caption = 'App. QAC'
          DataBinding.FieldName = 'app_qac'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 57
        end
        object cxTblHapp_whl: TcxGridDBColumn
          Caption = 'App. WHL'
          DataBinding.FieldName = 'app_whl'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 63
        end
        object cxTblHapp_mgmt: TcxGridDBColumn
          Caption = 'App. MGMT'
          DataBinding.FieldName = 'app_mgmt'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 67
        end
        object cxTblHColumn1: TcxGridDBColumn
          Caption = 'Berat SPMB'
          DataBinding.FieldName = 'berat_spmb'
          Width = 73
        end
        object cxTblHberat_packing: TcxGridDBColumn
          Caption = 'Berat Packing'
          DataBinding.FieldName = 'berat_packing'
          Width = 76
        end
        object cxTblHberat_lain: TcxGridDBColumn
          Caption = 'Berat Lain'
          DataBinding.FieldName = 'berat_lain'
        end
        object cxTblHberat_spmb: TcxGridDBColumn
          Caption = 'Berat Total'
          DataBinding.FieldName = 'berat_total'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 74
        end
        object cxTblHberat_bersih_truk: TcxGridDBColumn
          Caption = 'Berat Bersih Armada'
          DataBinding.FieldName = 'berat_bersih'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 109
        end
        object cxTblHselisih: TcxGridDBColumn
          Caption = 'Selisih'
          DataBinding.FieldName = 'selisih'
        end
        object cxTblHpersentase: TcxGridDBColumn
          Caption = 'Persentase'
          DataBinding.FieldName = 'persentase'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 63
        end
        object cxTblHColumn5: TcxGridDBColumn
          Caption = 'Persentase Lama'
          DataBinding.FieldName = 'persentase_lama'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 90
        end
        object cxTblHnopol: TcxGridDBColumn
          DataBinding.FieldName = 'nopol'
          Visible = False
        end
        object cxTblHberat_timbangan: TcxGridDBColumn
          DataBinding.FieldName = 'berat_timbangan'
          Visible = False
        end
        object cxTblHberat_bersih: TcxGridDBColumn
          DataBinding.FieldName = 'berat_bersih'
          Visible = False
        end
        object cxTblHuser_qac: TcxGridDBColumn
          DataBinding.FieldName = 'user_qac'
          Visible = False
        end
        object cxTblHColumn3: TcxGridDBColumn
          Caption = 'Staff QAC'
          DataBinding.FieldName = 'user_staff_qac'
        end
        object cxTblHColumn4: TcxGridDBColumn
          Caption = 'Mgr. QAC'
          DataBinding.FieldName = 'user_qac'
        end
        object cxTblHtgljam_app_qac: TcxGridDBColumn
          DataBinding.FieldName = 'tgljam_app_qac'
          Visible = False
        end
        object cxTblHuser_whl: TcxGridDBColumn
          Caption = 'WHL'
          DataBinding.FieldName = 'user_whl'
        end
        object cxTblHtgljam_app_whl: TcxGridDBColumn
          DataBinding.FieldName = 'tgljam_app_whl'
          Visible = False
        end
        object cxTblHuser_mgmt: TcxGridDBColumn
          Caption = 'MGMT'
          DataBinding.FieldName = 'user_mgmt'
        end
        object cxTblHtgljam_app_mgmt: TcxGridDBColumn
          DataBinding.FieldName = 'tgljam_app_mgmt'
          Visible = False
        end
      end
      object cxGrdHLevel1: TcxGridLevel
        GridView = cxTblH
      end
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 310
      Caption = 'Deskripsi Keterangan dan Tindak Lanjut Ketidaksesuaian'
    end
    object cxmDeskripsi: TcxMemo
      Left = 15
      Top = 331
      Properties.ReadOnly = True
      TabOrder = 4
      Height = 56
      Width = 641
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 389
      Caption = 'Akar Masalah'
    end
    object cxmAkarMasalah: TcxMemo
      Left = 15
      Top = 408
      Properties.ReadOnly = True
      TabOrder = 6
      Height = 56
      Width = 641
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 467
      Caption = 'Keterangan Tambahan'
    end
    object cxmKetTambahan: TcxMemo
      Left = 15
      Top = 488
      Properties.ReadOnly = True
      TabOrder = 8
      Height = 56
      Width = 641
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 15
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 13
      TabOrder = 10
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 190
      Top = 15
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 219
      Top = 13
      TabOrder = 12
      Width = 121
    end
    object btnProses: TButton
      Left = 346
      Top = 11
      Width = 76
      Height = 25
      Caption = 'Proses'
      TabOrder = 13
      OnClick = btnProsesClick
    end
  end
  inherited pnlBawah: TPanel
    Top = 596
    Width = 1139
    Height = 43
    inherited btnKeluar: TButton
      Left = 862
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 785
      Visible = False
    end
    object btnCetak: TButton
      Left = 15
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 6
      OnClick = btnCetakClick
    end
    object btnKeluar2: TButton
      Left = 95
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 7
      OnClick = btnKeluar2Click
    end
    object btnRefresh: TButton
      Left = 175
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Refresh'
      TabOrder = 8
      OnClick = btnRefreshClick
    end
  end
  object zqrH: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select *, berat_spmb + berat_packing + berat_lain berat_total '
      'from tbl_disposisi_head '
      'where tgl_input between :tgl1 and :tgl2'
      '-- ')
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
    Left = 320
    Top = 10
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
  object dsH: TDataSource
    DataSet = zqrH
    Left = 350
    Top = 10
  end
  object zqrD: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select a.*, c.nama'
      'from tbl_disposisi_det a'
      'left join tbl_spmb_head b on b.no_bukti = a.no_spmb'
      'left join tbl_customer c on c.kode = b.kode_customer'
      'where a.no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 380
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsD: TDataSource
    DataSet = zqrD
    Left = 410
    Top = 10
  end
  object rptDisposisi: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 42607.458452592590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  total, total1, total2, total3: integer;'
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   if strtofloat(trim(memo9.text)) <= 0.5 then begin'
      '       memo10.visible := true;'
      '   end;'
      ''
      
        '   if (strtofloat(trim(memo9.text)) > 0.5) and (strtofloat(trim(' +
        'memo9.text)) <= 2) then begin'
      '       memo11.visible := true;'
      '   end;    '
      ''
      '   if strtofloat(trim(memo9.text)) > 2 then begin'
      '       memo12.visible := true;'
      '   end;'
      '    '
      'end;'
      ''
      'begin'
      
        '                                                                ' +
        '              '
      'end.')
    Left = 455
    Top = 8
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 172.000000000000000000
      PaperHeight = 214.000000000000000000
      PaperSize = 256
      LeftMargin = 6.000000000000000000
      RightMargin = 6.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDash
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        Height = 733.228820000000000000
        Top = 18.897650000000000000
        Width = 604.724800000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 287.244094490000000000
          Top = 79.590526770000000000
          Width = 309.921460000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SPMB/H16/0001')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 170.078740160000000000
          Top = 100.826754570000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 170.078850000000000000
          Top = 124.724392360000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 423.307086610000000000
          Top = 103.826840000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 423.307086610000000000
          Top = 124.724477790000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 68.031478980000000000
          Top = 200.315090000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 215.433051340000000000
          Top = 200.315090000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 359.055105910000000000
          Top = 200.315090000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 491.338570470000000000
          Top = 200.315090000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 50.913383390000000000
          Top = 283.464552280000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'X')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 171.858265280000000000
          Top = 283.464750000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'X')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 297.582672280000000000
          Top = 283.464750000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'X')
          ParentFont = False
        end
      end
    end
  end
end
