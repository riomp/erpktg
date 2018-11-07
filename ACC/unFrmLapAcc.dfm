object frmLapAcc: TfrmLapAcc
  Left = 631
  Top = 309
  Width = 1052
  Height = 608
  Caption = 'frmLapAcc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 15
    Width = 22
    Height = 13
    Caption = 'COA'
  end
  object Label7: TLabel
    Left = 140
    Top = 5
    Width = 28
    Height = 13
    Caption = 'Jurnal'
  end
  object Label30: TLabel
    Left = 14
    Top = 104
    Width = 83
    Height = 13
    Caption = 'NERACA SALDO'
  end
  object Label2: TLabel
    Left = 284
    Top = 37
    Width = 44
    Height = 13
    Caption = 'NERACA'
  end
  object Label3: TLabel
    Left = 169
    Top = 109
    Width = 103
    Height = 13
    Caption = 'ACCOUNT PAYABLE'
  end
  object rptCoa: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 42131.555042974500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 10
    Top = 30
    Datasets = <
      item
        DataSet = fdbCoaH
        DataSetName = 'fdbCoaH'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo8: TfrxMemoView
          Top = 7.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DAFTAR AKUN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 778.205227000000000000
        DataSet = fdbCoaH
        DataSetName = 'fdbCoaH'
        RowCount = 0
        object fdbCoaHnoakun: TfrxMemoView
          Left = 30.236240000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'noakun'
          DataSet = fdbCoaH
          DataSetName = 'fdbCoaH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbCoaH."noakun"]')
          ParentFont = False
        end
        object fdbCoaHnama: TfrxMemoView
          Left = 90.708720000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = fdbCoaH
          DataSetName = 'fdbCoaH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlue
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<fdbCoaH."induk">='#39'0'#39
          Highlight.FillType = ftBrush
          Memo.UTF8 = (
            '[fdbCoaH."nama"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object fdbCoaHtipe: TfrxMemoView
          Left = 495.118430000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'tipe'
          DataSet = fdbCoaH
          DataSetName = 'fdbCoaH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbCoaH."tipe"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 79.370130000000000000
        Width = 778.205227000000000000
        object Line1: TfrxLineView
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 25.677180000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Akun')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Akun')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 495.118430000000000000
          Top = 3.779530000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tipe Akun')
          ParentFont = False
        end
      end
    end
  end
  object zqrCoaH: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select noakun, '
      
        'if(jml_anak = 0,concat('#39'        '#39', nama), if(induk <> '#39'0'#39',concat' +
        '('#39'    '#39',nama), nama)) nama,'
      'f_aktif, b.tipe, induk'
      'from '
      '('
      '  select noakun, nama, induk, f_aktif, tipe,'
      
        '  (select count(induk) from tbl_coa where induk = a.noakun) jml_' +
        'anak'
      '  from tbl_coa a'
      '  order by noakun, nama'
      ') a'
      'left join tbl_tipe_akun b ON a.tipe = b.id'
      'where f_aktif = 1')
    Params = <>
    Left = 40
    Top = 29
  end
  object dsCoaH: TDataSource
    DataSet = zqrCoaH
    Left = 70
    Top = 29
  end
  object fdbCoaH: TfrxDBDataset
    UserName = 'fdbCoaH'
    CloseDataSource = False
    FieldAliases.Strings = (
      'noakun=noakun'
      'nama=nama'
      'f_aktif=f_aktif'
      'tipe=tipe'
      'induk=induk')
    DataSource = dsCoaH
    BCDToCurrency = False
    Left = 100
    Top = 30
  end
  object dsCoaD: TDataSource
    DataSet = zqrCoaD
    Left = 75
    Top = 59
  end
  object zqrCoaD: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_coa '
      'WHERE induk = 0')
    Params = <>
    Left = 45
    Top = 59
  end
  object rptJurnal: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 42348.724670208300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  saldo: real;                                          '
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  saldo := 0;                                                '
      'end;'
      ''
      'begin'
      
        '                                                                ' +
        '              '
      'end.')
    Left = 140
    Top = 23
    Datasets = <
      item
        DataSet = fdbJurnal
        DataSetName = 'fdbJurnal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDash
      VGuides.Strings = (
        '763,46506')
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 771.024120000000000000
        object mmHeader: TfrxMemoView
          Width = 498.897960000000000000
          Height = 60.472480000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'mmNamaPrsh')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 4.929190000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DAFTAR JURNAL')
          ParentFont = False
        end
        object mmPeriode: TfrxMemoView
          Top = 23.826840000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Periode')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 771.024120000000000000
        object Memo2: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Width = 956.221090000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 18.897650000000000000
          Width = 956.221090000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 548.031850000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Debet')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 464.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Kredit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 71.811070000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Jurnal')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 771.024120000000000000
        DataSet = fdbJurnal
        DataSetName = 'fdbJurnal'
        RowCount = 0
        Stretched = True
        object fdbJurnalakun: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'akun'
          DataSet = fdbJurnal
          DataSetName = 'fdbJurnal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbJurnal."akun"]')
          ParentFont = False
        end
        object fdbJurnalket_detail: TfrxMemoView
          Left = 548.031850000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ket_detail'
          DataSet = fdbJurnal
          DataSetName = 'fdbJurnal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbJurnal."ket_detail"]')
          ParentFont = False
        end
        object fdbJurnaldebet: TfrxMemoView
          Left = 381.732530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'debet'
          DataSet = fdbJurnal
          DataSetName = 'fdbJurnal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[fdbJurnal."debet"]')
          ParentFont = False
        end
        object fdbJurnalkredit: TfrxMemoView
          Left = 464.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'kredit'
          DataSet = fdbJurnal
          DataSetName = 'fdbJurnal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[fdbJurnal."kredit"]')
          ParentFont = False
        end
        object fdbJurnalnama_akun: TfrxMemoView
          Left = 71.811070000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'nama_akun'
          DataSet = fdbJurnal
          DataSetName = 'fdbJurnal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbJurnal."nama_akun"]')
          ParentFont = False
        end
        object fdbJurnalno_jurnal: TfrxMemoView
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'no_jurnal'
          DataSet = fdbJurnal
          DataSetName = 'fdbJurnal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbJurnal."no_jurnal"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 18.897650000000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 771.024120000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'fdbJurnal."no_jurnal"'
        object fdbJurnaltanggal: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbJurnal
          DataSetName = 'fdbJurnal'
          DisplayFormat.FormatStr = 'dd/MM/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbJurnal."tanggal"]')
          ParentFont = False
        end
        object fdbJurnalketerangan: TfrxMemoView
          Left = 71.811070000000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          DataField = 'keterangan'
          DataSet = fdbJurnal
          DataSetName = 'fdbJurnal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbJurnal."keterangan"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 268.346630000000000000
        Visible = False
        Width = 771.024120000000000000
        object Line3: TfrxLineView
          Width = 956.221090000000000000
          Color = clBlack
          Frame.Color = clSilver
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 291.023810000000000000
        Width = 771.024120000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 381.732530000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<fdbJurnal."debet">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 464.882190000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<fdbJurnal."kredit">,MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL : ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object zqrJurnal: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT DISTINCT a.akun noakun, b.*'
      'FROM v_lap_jurnal a'
      
        'INNER JOIN v_lap_jurnal b ON a.no_jurnal = b.no_jurnal and a.aku' +
        'n = b.akun'
      '-- baris 3'
      'ORDER BY no_jurnal, id')
    Params = <>
    Left = 170
    Top = 23
  end
  object dsJurnal: TDataSource
    DataSet = zqrJurnal
    Left = 200
    Top = 23
  end
  object fdbJurnal: TfrxDBDataset
    UserName = 'fdbJurnal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_jurnal=no_jurnal'
      'tanggal=tanggal'
      'keterangan=keterangan'
      'no_invoice=no_invoice'
      'no_trans=no_trans'
      'akun=akun'
      'debet=debet'
      'kredit=kredit'
      'ket_detail=ket_detail'
      'tipe=tipe'
      'id=id'
      'nama_akun=nama_akun')
    DataSource = dsJurnal
    BCDToCurrency = False
    Left = 230
    Top = 23
  end
  object rptNeraca: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 42443.513843333300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  tot: real;                              '
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  tot := 0;                                        '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  if <fdbNeraca."jml_anak"> = 0 then'
      
        '    tot := tot + <fdbNeraca."saldo">;                           ' +
        '                             '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo7.Text := FormatFloat('#39'#,#0.00'#39',tot);                     ' +
        '                                         '
      'end;'
      ''
      'begin'
      
        '                                                                ' +
        '              '
      'end.')
    Left = 275
    Top = 65
    Datasets = <
      item
        DataSet = fdbNeraca
        DataSetName = 'fdbNeraca'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Style = fsDash
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Visible = False
        Width = 771.024120000000000000
        object Memo1: TfrxMemoView
          Left = 793.701300000000000000
          Top = 30.236240000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Visible = False
          DataField = 'kredit'
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeraca."kredit"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 332.598640000000000000
        Width = 771.024120000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = fdbNeraca
        DataSetName = 'fdbNeraca'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15329769
        end
        object fdbNeracanoakun: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'noakun2'
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbNeraca."noakun2"]')
          ParentFont = False
        end
        object fdbNeracanama: TfrxMemoView
          Left = 94.488250000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbNeraca."nama"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 650.079160000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'saldo'
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeraca."saldo"]')
          ParentFont = False
        end
        object fdbNeracajml_anak: TfrxMemoView
          Left = 857.953310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Visible = False
          DataField = 'jml_anak'
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeraca."jml_anak"]')
          ParentFont = False
        end
        object fdbNeracadebet: TfrxMemoView
          Left = 430.866420000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'debet'
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeraca."debet"]')
          ParentFont = False
        end
        object fdbNeracadebet1: TfrxMemoView
          Left = 536.693260000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'debet'
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeraca."debet"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 264.567100000000000000
        Width = 771.024120000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'fdbNeraca."jenis"'
        StartNewPage = True
        object Memo4: TfrxMemoView
          Top = 24.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Akun')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 21.000000000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 43.677180000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 94.488250000000000000
          Top = 24.779530000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Deskripsi Akun')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 642.520100000000000000
          Top = 24.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'SALDO')
          ParentFont = False
        end
        object fdbNeracajenis: TfrxMemoView
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbNeraca."jenis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 430.866420000000000000
          Top = 24.677180000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'DEBET')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 536.693260000000000000
          Top = 24.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'KREDIT')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 374.173470000000000000
        Width = 771.024120000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Memo10: TfrxMemoView
          Top = 3.779530000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsUnderline]
          Highlight.Condition = '1=1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15263976
        end
        object SysMemo1: TfrxSysMemoView
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbNeraca."saldo">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL [fdbNeraca."jenis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 498.897960000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 112.267780000000000000
        Top = 128.504020000000000000
        Width = 771.024120000000000000
        object Picture1: TfrxPictureView
          Left = 540.472790000000000000
          Top = 9.338590000000000000
          Width = 45.354360000000000000
          Height = 26.456710000000000000
          Visible = False
          Picture.Data = {
            0A544A504547496D61676520470000FFD8FFE000104A46494600010101012B01
            2B0000FFE13222687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
            2E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
            4D304D7043656869487A7265537A4E54637A6B633964223F3E0A3C783A786D70
            6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
            786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
            362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
            2020202020223E0A2020203C7264663A52444620786D6C6E733A7264663D2268
            7474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D
            73796E7461782D6E7323223E0A2020202020203C7264663A4465736372697074
            696F6E207264663A61626F75743D22220A202020202020202020202020786D6C
            6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
            312E302F223E0A2020202020202020203C786D703A43726561746F72546F6F6C
            3E41646F62652046697265776F726B7320435336202857696E646F7773293C2F
            786D703A43726561746F72546F6F6C3E0A2020202020202020203C786D703A43
            7265617465446174653E323031362D30312D32345430373A32303A30325A3C2F
            786D703A437265617465446174653E0A2020202020202020203C786D703A4D6F
            64696679446174653E323031362D30312D32345430373A32313A34315A3C2F78
            6D703A4D6F64696679446174653E0A2020202020203C2F7264663A4465736372
            697074696F6E3E0A2020202020203C7264663A4465736372697074696F6E2072
            64663A61626F75743D22220A202020202020202020202020786D6C6E733A6463
            3D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E
            312F223E0A2020202020202020203C64633A666F726D61743E696D6167652F6A
            7065673C2F64633A666F726D61743E0A2020202020203C2F7264663A44657363
            72697074696F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D706D65
            74613E0A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            0A20202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020200A2020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020200A202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020200A20202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020200A2020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020200A202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020200A20
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020200A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020200A2020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020200A202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020200A20202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020200A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            202020202020202020202020202020202020200A3C3F787061636B657420656E
            643D2277223F3EFFDB0043000604040405040605050609060506090B08060608
            0B0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B
            1B1C20202020202020202020FFDB0043010707070D0C0D181010181A1511151A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020FFC000110800530091030111000211
            01031101FFC4001C000002030101010100000000000000000000070506080402
            0301FFC4004C1000010302020408070C08050500000000010203040005061107
            1221311322324151718191081423425561A1161724335262729394B1B2D11518
            53638292A2D2344384D3F0447383C1E1FFC4001B010002020301000000000000
            00000000000005030401020607FFC40038110001030203040706060203000000
            000001000203041105213112134151061415536171912232425292A11623B1D1
            E1F081C1334372FFDA000C03010002110311003F00D534211421142114211421
            7E2D68424AD6A094276A94760142153AFBA5DC03672A43B724CA7D3BD9883873
            9F46B27883B5556E3A195FC2DE6A0754302A34FF0008B5BEEF0161B138FB8AE4
            17D59A8FFE3682BF155E6E156F79CA0359C82F9B7887C20EFBB61DB85B595EE2
            5943390FF5254AACEEA919A9BFF7C1636E67782E84601D38CF19CEC4E98A0EF4
            A5E733EE69094FB6B5EB34C346DD677529E2BE4F681B164C1F0EC56A773DE149
            75CFC4E0AC8C4D83462C75471E2B993E0E57860EBC6C4284AFA432B47B42CD6D
            DACD3AB563A91E6BDAF459A62B68CED98938603720497D07B960A7DB58EBB4EE
            D5BF659DC4A342A3A55FF4FD86735CE43F263A394B534DC96F2F5ADB048EFA90
            454B269FB2D0BE66AEDB2F848CB4108BE5A52B1B94EC45141FAB735BF1569261
            23E13EAB66D6F3099D86349583B1214B76E9C94CA57FD1BFE49EEC49D8AFE126
            96CD49247A8C95B64ED768AD15594A8A108A108A108A108A10B96E775B6DAE22
            E65C64B7122A394EBAA091D5B779F556CC6171B0CCAC1701AA50E2CF08988C95
            C7C3313C655BBC7A4E696FAD2DEC51ED23AA9B41851F8CAA52567CAA9912D5A5
            8D24B9C2BEF3CAB728FC73E780863E82120057F0A4D5C2F829FCFEEA00D925F2
            4C4C35E0F786A0843B7B7DCBA48DE5A4E6CB1DC93AE7F9A97CD8A3CFBB92B2CA
            368D734C8B5586CB696B82B641621B7D0CA128CFAC8DA7B6973E473B537569AD
            0345DF5A2D91421142114211421142154F1668BF0862542952E208F34F26746C
            9B773F9D96C5FF0010AB5056491E87250C9035CB3DE3CD1ADFF06CA0E3BF08B6
            AD5F06B8B40819F3058F315FF053FA6AB6CA3C7925B2C059E4AC5A3ED38DDECE
            E35031029770B5EC489078D2191D39FF009891D076F474557AAC39AECD99152C
            354464730B43409F0EE10D99B09E4C88B21216CBC839A5493481CD2D363AA640
            DD7456AB28A108A10977A44D31D9B0BF0902084DC2F6361641F24C9FDEA873FC
            D1B7AA9852D03A4CCE4D55A6A90DCB8A43CAB8634C7D7D434B53B729CE1F231D
            3B1B6D3CF92792848E73DF4F036381BC825E4BA43CD38F07685B0D61B8A2EF8A
            DE6654A6805AC3C4261B3D7AD9059CF9D5B3D5496AB1327DDF65A98D350126D6
            DA71E015EC638C10848426F701294EC09121AC80EFA53BF67309BF6555776FFA
            4A3DDEE09F4EC1FB437F9D637CCE6167B2AABBB7FA15ED18DF06AF937C81F696
            BFBAB3BE6730B5385D4F76FF00A4A918575B5CECFC4A6332B2DFC0B8973F0935
            B8703A2AD241233DE696F98B2EAACA89142173CCB840848E126496A337F2DE5A
            5B1DEA22B05C06AA48E17BF26827CB351671D60B07237D81F686BF3AD37CCE61
            5BECAAAEEDFF00495E7DDEE09F4EC1FB437F9D637ECE6167B26ABBB7FA147BBC
            C15E9D83F686FF003A37CCE611D9555DDBFE92BDFE91C2589E349B5225C5BA32
            EB64498ED389738876667549CB6EE3D352C53E7769CC2AF51432C6DFCC61683C
            C5965CC7D845FC298964DA964AD8F8D86F1F3D95F24F58CB23EB15D6534FBD66
            D2E7668F61D6572D0563C7AD77B461D98E136CB92B28FADB9A927765EA7371F5
            E555312A6DA6ED8D47E8A7A596C6DC0AD195CF2668A10935A5ED302E02DEC3D8
            75DCA60CD13E7A3FCAE96DB3F2FA4F375EE6F4341B5EDBF4E0151A8A9B641277
            0AE17BBE2ABDB76DB7A75DE738EFBEAE4B68CF8CE2CFFCCCD379A66C6DB954A3
            6179B05A770DE15B0603C3EE78A32E3EE253AD2A421B2E497D7D0129CCEFE4A4
            6C1DE6B97AAAA7486E7D13BA4A5B90C16B9E27248BD29E30C597BB8259BA447E
            D56E1C7856E752A46633CB845E796B2BD839A9054CAE71CF20BD5302C3A9E065
            E37091FC5C3F4F054C816F9D709298D063B92A42B32965A495A8E5B4EC155834
            9D13C966646369E43478A917306E2D6F97669A3FD3B9F956FBA7722AB0C4A9CF
            FD8CFA828B93164C574B52595B0E8DEDB89285771C8D684595B63DAE1769B85E
            A14E9B064A25427D71E4B6736DD6D452A07AC50091A2C4B13646ECB85C15AA74
            698A64625C2312E32B2F1C054C4A23602B6CE5AD97CE191A794F26DB6EBC931B
            A114B5258DF7751FE555F4ADA5BF73EB5596C852BBC11F089078C98E0EE196E2
            B236EDD82A0A9AAD9C86A9AE01D1EEB1F9B2FF00C7C07CDFC2424A9B78BD4FE1
            24BAF4F9AF1D9AC54E2D44F301B7B852B24B8F32BD0A38E38596680C68FF000A
            40604C684662C73B2FFB0E7E55BEE5FC8AAFDAB4BDE33D42FDF7058DBD053BEA
            1CFCA8DCBF9158ED5A5EF19EA14961ED15632BBDCDB86E5BDEB7B076BD2E4B6A
            42109E7DF96B1E802B76533DC74B2AB598F53431ED07079E0015A3F09E11B361
            7B5A605B5ACB9DF7D5F18EAFE52CFDC370A6F144182C1799E21884B5526DBFFC
            0E012BBC252DCD18965B881E552E3B1D47A52A0163B8A4D3DC21D9B82475A342
            91D164391A53321A3938CAD2E20F4149CC7DD4E88B84BC14FF00FD606CDFB33D
            C690F65B932EB614EE98F1EAB0BE1F11E12F56EF72D66E3286F6D0396EF58CF2
            4FAFAAA1A0A6DE3B3F742DEA65D91E25661425E7DE08482E3CEAB2037A94A51F
            6926BA5D12A5ABB4638123E12C3CDB2B483749403B717BE7F3360FC946EF6D72
            D5953BD7F80D138822D81E2AE15514CB28693312FBA1C653E6215AD15A578BC4
            E8E09AD808FA473576D23A89369F75EBD8251757A66B7E2399F33FDB262F83BE
            1AC9B9F889E4ED57C12213D03253A47F48EFAB7411FC4B9AE9856E6D807FE8FF
            00A4EAA62B86544D33D92DD3F034E96FB69F1A8094BD15FCB8C93AC0119F4281
            CB2AAD56C059E4BA0E8D553E3AB6B47BAFC88598692AF545A2704CBF71FA1A17
            67C7952DB92DB41E75BCAD56476F169B427770DD79B6271F5CC4F7634B81E9AF
            FB59F25CB913253B2A4ACBB21F5A9C75C56F52947324F6D2A26EBD1A38C31A1A
            DC804E2D04CBC156CB74C9F719D1A35E94EF063C65696D49635465C1EBE5CA39
            E79530A22C02E755C5F4AA3AA95ED631AE315B8679F8A6B7BB8C1BE9C81F696B
            FBAAF6F99CC2E43B2EABBB7FD257540C4787EE2EF0502E51653BFB365E42D5DC
            924D6448D3A1514B473462EF639A3C415235BAAC8A10923E129726F82B2DB01F
            29ACEC958E8190427BF8D4E70867BC550AD3A0494B7C3766CE8F0DA19BB25D43
            481EB5AB547DF4E9CEB0BAA005D698F797C2DFB24F75737DA0F4D7AB352534C1
            7E72F18F6E2AD6D66212BC4E38E6096B62BBD7AC69CD045B110F1CD51A97DDEB
            B341B606EED8ED879E4EB316C6D52C8E6D74E496FB94A07B2B4C465D98BCF259
            A565DFE4B5057349B2A9694F127E80C173A4A15AB2A40F1589D3C23BB331F453
            9ABB2A0A9936589C60545D62A9ADF84667C82CAEC30EC87DB619495BCEA821B4
            0DE54A3901DA69180BD69CE0D173A05AFF0009D85AB061C81696F2F82B412E28
            79CE1E338AED5126BA0899B2DB2F19C42ACD44CE90FC47EDC3ECA5AB754D2CF4
            F58859838445A92BF855D1C4A4239F8268EBAD5DE00AA75AFB36DCD753D13A33
            254EF3E160FB948BC1F8724623C450AD2CE793EBF2CB1E6349DAE2BB13EDA591
            47B6EB2EFB11AC14D0BA43C34F3E0B45E9470BCEBA60372D5666759D8E592C45
            4ECD643472D419ECD83EEA6F53192CB05E698157362ABDE4A7237B9F3486F7AB
            D217A1247F47F752BEAD2725E83DBD47DE05F9EF5BA41F41C8EE4FE747569392
            CF6ED1F78D5CB72C038CADB0DC9B3AD12188AD6D75E29D890766672CEB5742F1
            990A68716A695DB2C7B4B8A8361F7E3BC87D8714D3CD9D66DC41D55248DC4115
            102AF39A1C2C73056C6B0C9912AC76E9327FC43F19971EFA6A6C157B4D742C37
            0178AD5B0365735BA071FD575BEFB31D871F7D61B65A495B8E2B604A5233249F
            50ADC0BAAEB23E913162B1462B977419F8AE7C0C249E665BD89FE6DAA3D75D5D
            2C1BB601C5259A4DA75D5BF409831CB9E2137F928F805A8F912772E491C503E8
            03ADD79554C4EA3659B2353FA29E923B9BF25A36B9E4CD629BAB52DAB9CB6A66
            D9687969907F781475BDB5D9308B0B68913B54D8F06C537FA6EF293F18633653
            D417B7EF14AB17F7479AB945A94FEA4498ACF9E103897C7310C7B232BCD9B623
            5DE03F6EF0CFFA51977D2AAE92EEB725E8DD11A2D884CA757E9E43F9548C0D79
            B45971344BADD5976447864B8DB2CEA925D03884EB148C81DB55A1706BAE53EC
            529A49E031C6402EE7CB8A717EB1785BD1B3BB9AFEFA61D7DBC8AE2BF06D47CE
            CFBFECB92E7E11B6D118FE8BB53CB9479264A92840F59D42A27AB656AEAF1C02
            9A0E86BF6BF31E367C3F949DBFE20BCE23BAAA7DC9D3225BB925090362479A84
            246E1B7752F7BCBCDCAED692922A68F6182CD1FDB94FBD10E031856CAF5E2F01
            2C5CA5A359DE13678BC74F1B5544EE2794AFFE534A587605CEABCF3A458AF5B9
            4471E6C69FA8FF00745CF33C21308B129D65A892E4B6DA8A52FA03612B03CE01
            4A0723EB15835CDF152C7D10A973412E683CB3FD97CBF58BC2BE8E9DDCCFFB95
            8EBEDE456DF83AA3E767DFF65FBFAC5614F474EEE67FDCA3AFB79147E0EA8F99
            9F7FD943E2CD3D596E787A7DB605BA407E6B2B635E47061090E0D52AE2A96490
            0ECA8E5AD05B6015DA0E8A4B14CD7BDEDB34DF2BF04BCD1D60F7F14E268F0B50
            F88B443B3DDE64B493B467D2BE48AA9045B6EB705D2631888A580BBE23937CFF
            0085AC1294A521291925232006E0053D5E404A41E9AB4A8DCFE130CD8DED6869
            395C65A0EC7540FC5208DE9079479FAB7BDC3E8B67DB76BC12EA99EFEC84BDC1
            1826ED8B6F0881093AACA7254C964711A6FA4F493E68E7A615150D89B72AB451
            1795ABB0FD86DD61B447B55B9BE0E2C64E43A547CE5A8F3A94769AE5A590BDDB
            4754E18C0D160A46A35B2CC5A71C2CF59F193D3D28F80DDFE10D2F9B84DCEA7A
            F5B8DDB5D261D36D476E2D4AAAA3B3AFCD44E8B315B786B19449B215AB05FCE3
            4C3D0DB9E77F0A8035356C3BC8C8E2B4824D972D5B264F050DD92DA152351B2E
            21B6B8CA5E433011D24F3572A724EA36ED380D2EB2DDDB056916E97395719363
            985F96EA9E73C92B7ACE79765237452137B15EB306274513031B236CD16D5727
            BDBE3CF414CFAA358DC3F915376CD2778DF547BDBE3CF414CFAA346E1FC8A3B6
            693BC6FAA98B368531EDC56385869B7B277BB29607F427597ECA91B48F3E0A95
            4F49A8E3D1DB67C3FB64DFC0BA1FB061871135F3FA46EC9DA990E0C90D9FDD23
            6E47E71DBD557E1A56B33D4AE3315E914D55EC8F623E5CFCCAAA6966E98F2FEB
            5D96CB659E9B2B6727DF0C2C192A1D9F1639BA77D4152E7BB200D937E8FC1494
            E37B2C8CDEF0171ECFF2961EF7B8E7D033BEA17F9552DC3F915D5F6BD2778CF5
            08F7BEC73E819DF50BFCA8DC3F91476BD2778CF50BF3DEFB1C7A0A77D42FF2A3
            70FE451DAF49DE33D429CC35A17C6977909F1A8C6D50F3F28FCAD8ACBE6B5CA2
            7B87AEA58E91EEF0542B7A4B4B08F64EDBB90FDF44F9B1D8F0BE03C3CA425C44
            58ADF1E5CE7C80A717F2947EE48ECA6F4F4F6F65B995E7189625254BF7921F21
            C024D69334D926F4876D3878AE2DA95C57E59E2BCF8E703E420F79F56EAE8A8F
            0E0CF69F995CFCF55B590D157F47FA29BF62C752F90615981F29396395D2194F
            9C7D7B854F555AD8BC5CA3869CBFC9694C37866CF872D6DDB6D4C065846D52B7
            AD6AE75AD5CEA35CECB33A4377268C6068B052B512DD142142630C256BC53657
            6D77019255C661F4F2DA7072569FFD8E715341398DDB41692461E2C5658C6182
            6F9852E4A87726BC9927C5E5A7E29D4F4A4F4F48DE2BA782A1B28B84A2488B0E
            6987A28D33A2D6C3361C46B260A32443B86D25A1CC8739CA0731E6EADCBEB70F
            DAF699AF25669EA6D9393EE3498F2984488CEA5E61D1ACDBAD90A4A81E7046C3
            48C8B6A9882BE95842284228422842284228422842F84C9D0A0C75489AFB71A3
            A36A9D7541091DAAC8565AD2745826C9618B7C2030F5B82E3D85B37597BB8639
            A23A4F5F297D9DF4CE0C2DEEF7B20AA49560699A55B9EF93A4BB885EA3B35B49
            E2E438286CF5679207E2A67F934E397EAAA7B7294D2C13A03B35B0A2662158B9
            CC1B4461988C93EBCF6B9DB90F552CA8C4DCEC9990FBAB715201AE69ACDB686D
            096DB484210324A1232000DC00A56AE2F542114211421142171DD6D16CBB425C
            1B94644B88E729A70663AC7411D22B663CB4DC64561CD07549CC59E0EA0A9723
            0C4CD5076F88CB272EA43A33FEA1DB4E20C57E70A8C947F2AA5C44E96747AF28
            B6C4A8B1B3CD68D5E1E22BD7B3591DA083571DB89F91FD5403791ABA58FC2451
            AA945F2D242B9DF86AD9F56E7F75539309F94FAA9DB5BCC2B9C0D37E8E6581AD
            705C551F36432E0F6A42D3EDAA6EC3A61C2EA7154C2A59BD25E0070669BF431F
            49D09FC59545D525F94ADF7ECE6BD2F49380903337F85D8F24FDD9D63AA4BF29
            46F99CD474CD32E8E228DB774BA7E4B2DBABFB9397B6A46D04C782D4D4B39AAD
            DCFC2330B3398B7C195315CC57A8CA7BF359F65596612FE240511AD6F0500EE9
            534B588FC9E1DB198AD2B73CDB2A748CFF007AE80DFB2A7145047EFBAEA3DFC8
            ED02F835A1AD256257D327145D0319EDF2EE192E27E8A107831FCD59ED0863C9
            8163AB3DDEF157BC39A0BC116929765B4BBB491E74AF8BCFD4D2724FF36754A5
            C4A476992B0CA568F14C1658658692CB0DA5A690324368012903D406CAA04DD5
            95EEB084508450845084508450845084508450851171C1F856E4499D69892147
            7AD6CA35BF9B2CEA56CEF6E84AD0C6D3C15371368B300351D4E35686DB5FCC5B
            A9F605E55721AD979A81F033924462FB5C0B7CC2DC46B83467BB352BF1134F20
            7970CD2F91B65358170D592E7A9E3D1B86CF7F1D69FC2A15054CCE6E8A48980A
            7659F453A3D0CA566CAD2D590E5A9C5FE251A4D256CBF32BCDA7672565818530
            CDBF2F11B5448E46E536CA02BBF2CEABBA67BB5254A2368E0A56A25BA2842284
            2284228422842284228422842FFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object mmHeader: TfrxMemoView
          Width = 478.220780000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Perusahaan')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Top = 59.574830000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NERACA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 82.031540000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Periode : ')
          ParentFont = False
        end
        object fdbNeracakredit: TfrxMemoView
          Left = 642.520100000000000000
          Top = 34.015770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Visible = False
          DataField = 'debet'
          DataSet = fdbNeraca
          DataSetName = 'fdbNeraca'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeraca."debet"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 600.945270000000000000
          Top = 68.031540000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'DEBET')
          ParentFont = False
        end
      end
    end
  end
  object zqrNeraca: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT * FROM _tmp_j')
    Params = <>
    Left = 305
    Top = 63
  end
  object dsNeraca: TDataSource
    DataSet = zqrNeraca
    Left = 335
    Top = 58
  end
  object fdbNeraca: TfrxDBDataset
    UserName = 'fdbNeraca'
    CloseDataSource = False
    FieldAliases.Strings = (
      'noakun=noakun'
      'nama=nama'
      'debet=debet'
      'kredit=kredit'
      'saldo=saldo'
      'induk=induk'
      'jml_anak=jml_anak'
      'jenis=jenis'
      'noakun2=noakun2')
    DataSource = dsNeraca
    BCDToCurrency = False
    Left = 360
    Top = 68
  end
  object zqrNeracaSaldo: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'select f.noakun,f.nama,'
      
        'IFNULL((SELECT sum(debet) from tbl_jurnal_det where akun=f.noaku' +
        'n and tanggal < :tgl1),0)- '
      
        'IFNULL((SELECT sum(kredit) from tbl_jurnal_det where akun=f.noak' +
        'un and tanggal <:tgl1),0) sawal,'
      
        'IFNULL((select SUM(a.debet) from tbl_jurnal_det a left join tbl_' +
        'jurnal b on a.no_jurnal=b.no_jurnal where a.akun=f.noakun and (b' +
        '.tanggal BETWEEN :tgl1 AND :tgl2)),0)debet,'
      
        'IFNULL((select SUM(a.kredit) from tbl_jurnal_det a left join tbl' +
        '_jurnal b on a.no_jurnal=b.no_jurnal where a.akun=f.noakun and (' +
        'b.tanggal BETWEEN :tgl1 AND :tgl2)),0)kredit,'
      
        'IFNULL((SELECT sum(debet) from tbl_jurnal_det where akun=f.noaku' +
        'n and tanggal < :tgl1),0)- '
      
        'IFNULL((SELECT sum(kredit) from tbl_jurnal_det where akun=f.noak' +
        'un and tanggal <:tgl1),0) + '
      
        '(IFNULL((select SUM(a.debet) from tbl_jurnal_det a left join tbl' +
        '_jurnal b on a.no_jurnal=b.no_jurnal where a.akun=f.noakun and (' +
        'b.tanggal BETWEEN :tgl1 AND :tgl2)),0)-'
      
        'IFNULL((select SUM(a.kredit) from tbl_jurnal_det a left join tbl' +
        '_jurnal b on a.no_jurnal=b.no_jurnal where a.akun=f.noakun and (' +
        'b.tanggal BETWEEN :tgl1 AND :tgl2)),0)) sakhir '
      
        'from tbl_coa f where (SELECT COUNT(noakun) FROM tbl_coa WHERE in' +
        'duk = f.noakun) = 0'
      'order by f.noakun asc')
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
    Left = 20
    Top = 125
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
  object dsNeracaSaldo: TDataSource
    DataSet = zqrNeracaSaldo
    Left = 50
    Top = 125
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fdbNeracaSaldo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'noakun=noakun'
      'nama=nama'
      'sawal=sawal'
      'debet=debet'
      'kredit=kredit'
      'sakhir=sakhir')
    DataSource = dsNeracaSaldo
    BCDToCurrency = False
    Left = 85
    Top = 123
  end
  object rptNeracaSaldo: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 42131.555042974500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 120
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'fdbNeracaSaldo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo8: TfrxMemoView
          Left = 222.992270000000000000
          Top = 19.236240000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'NERACA SALDO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 222.992270000000000000
          Top = 45.354360000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 778.205227000000000000
        DataSet = frxDBDataset1
        DataSetName = 'fdbNeracaSaldo'
        RowCount = 0
        Stretched = True
        object fdbNeracaSaldonoakun: TfrxMemoView
          Left = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'noakun'
          DataSet = frxDBDataset1
          DataSetName = 'fdbNeracaSaldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbNeracaSaldo."noakun"]')
          ParentFont = False
        end
        object fdbNeracaSaldonama: TfrxMemoView
          Left = 79.370130000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'nama'
          DataSet = frxDBDataset1
          DataSetName = 'fdbNeracaSaldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbNeracaSaldo."nama"]')
          ParentFont = False
        end
        object fdbNeracaSaldosawal: TfrxMemoView
          Left = 328.819110000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'sawal'
          DataSet = frxDBDataset1
          DataSetName = 'fdbNeracaSaldo'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeracaSaldo."sawal"]')
          ParentFont = False
        end
        object fdbNeracaSaldodebet: TfrxMemoView
          Left = 445.984540000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'debet'
          DataSet = frxDBDataset1
          DataSetName = 'fdbNeracaSaldo'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeracaSaldo."debet"]')
          ParentFont = False
        end
        object fdbNeracaSaldokredit: TfrxMemoView
          Left = 563.149970000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'kredit'
          DataSet = frxDBDataset1
          DataSetName = 'fdbNeracaSaldo'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeracaSaldo."kredit"]')
          ParentFont = False
        end
        object fdbNeracaSaldosakhir: TfrxMemoView
          Left = 665.197280000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'sakhir'
          DataSet = frxDBDataset1
          DataSetName = 'fdbNeracaSaldo'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbNeracaSaldo."sakhir"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 778.205227000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Akun')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 79.370130000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Akun')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 332.598640000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Saldo Awal')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 445.984540000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Debet')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 566.929500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kredit')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 665.197280000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Saldo Akhir')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 763.465060000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 332.598640000000000000
        Width = 778.205227000000000000
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Halaman :')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Width = 763.465060000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 778.205227000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 328.819110000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbNeracaSaldo."sawal">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 445.984540000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbNeracaSaldo."debet">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 566.929500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbNeracaSaldo."kredit">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 668.976810000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbNeracaSaldo."sakhir">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 7.559060000000000000
          Width = 767.244590000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrAP: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      
        'SELECT a.kode_supp,a.nama,a.total,sf_tempoap(a.kode_supp,:tgl1,(' +
        '-100),0) belum,'
      'sf_tempoap(a.kode_supp,:tgl1,1,30) t30,'
      'sf_tempoap(a.kode_supp,:tgl1,31,60) t60,'
      'sf_tempoap(a.kode_supp,:tgl1,61,90) t90,'
      'sf_tempoap(a.kode_supp,:tgl1,91,120) t120,'
      'sf_tempoap(a.kode_supp,:tgl1,121,1000) t121 from'
      '(SELECT a.kode_supp,a.nama,sum(total) total from'
      
        '(select a.tanggal,a.no_bukti,a.kode_supp,b.nama,(a.total - IFNUL' +
        'L((select sum(total_invoice) FROM tbl_trspelunasan_det where no_' +
        'invoice=a.no_bukti),0))total'
      
        'from tbl_trsinvoice_head a join tbl_supplier b on a.kode_supp=b.' +
        'kode'
      'where a.jenis='#39'PI'#39') a'
      'group by a.kode_supp,a.nama) a'
      'order by a.nama')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end>
    Left = 170
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end>
  end
  object dsAP: TDataSource
    DataSet = zqrAP
    Left = 200
    Top = 125
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'fdbAP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode_supp=kode_supp'
      'nama=nama'
      'total=total'
      'belum=belum'
      't30=t30'
      't60=t60'
      't90=t90'
      't120=t120'
      't121=t121')
    DataSource = dsAP
    BCDToCurrency = False
    Left = 235
    Top = 123
  end
  object rptAP: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 42131.555042974500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 270
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'fdbAP'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 390.000000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 1436.221400000000000000
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Top = 19.236240000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Memo.UTF8 = (
            'DAFTAR VENDOR AGING (ACCOUNT PAYABLE)')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Top = 45.354360000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1436.221400000000000000
        DataSet = frxDBDataset2
        DataSetName = 'fdbAP'
        RowCount = 0
        Stretched = True
        object fdbAPnama: TfrxMemoView
          Left = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'nama'
          DataSet = frxDBDataset2
          DataSetName = 'fdbAP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbAP."nama"]')
          ParentFont = False
        end
        object fdbAPtotal: TfrxMemoView
          Left = 389.291590000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'total'
          DataSet = frxDBDataset2
          DataSetName = 'fdbAP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbAP."total"]')
          ParentFont = False
        end
        object fdbAPbelum: TfrxMemoView
          Left = 532.913730000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'belum'
          DataSet = frxDBDataset2
          DataSetName = 'fdbAP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbAP."belum"]')
          ParentFont = False
        end
        object fdbAPt30: TfrxMemoView
          Left = 684.094930000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 't30'
          DataSet = frxDBDataset2
          DataSetName = 'fdbAP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbAP."t30"]')
          ParentFont = False
        end
        object fdbAPt60: TfrxMemoView
          Left = 831.496600000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 't60'
          DataSet = frxDBDataset2
          DataSetName = 'fdbAP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbAP."t60"]')
          ParentFont = False
        end
        object fdbAPt90: TfrxMemoView
          Left = 978.898270000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 't90'
          DataSet = frxDBDataset2
          DataSetName = 'fdbAP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbAP."t90"]')
          ParentFont = False
        end
        object fdbAPt120: TfrxMemoView
          Left = 1126.299940000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 't120'
          DataSet = frxDBDataset2
          DataSetName = 'fdbAP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbAP."t120"]')
          ParentFont = False
        end
        object fdbAPt121: TfrxMemoView
          Left = 1273.701610000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 't121'
          DataSet = frxDBDataset2
          DataSetName = 'fdbAP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbAP."t121"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 1436.221400000000000000
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Vendor')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 389.291590000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Invoice')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 532.913730000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Belum Jatuh Tempo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 684.094930000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1 - 30')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 831.496600000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '31 - 60')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 978.898270000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '61 - 90')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 1126.299940000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '91 - 120')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1273.701610000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '> 120')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 1436.221400000000000000
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Halaman :')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Width = 1417.323750000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 1436.221400000000000000
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 389.291590000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbAP."total">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 532.913730000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbAP."belum">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 684.094930000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbAP."t30">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 831.496600000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbAP."t60">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 978.898270000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbAP."t90">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 1126.299940000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbAP."t120">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 1273.701610000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbAP."t121">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
