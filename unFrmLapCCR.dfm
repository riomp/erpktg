object frmLapCCR: TfrmLapCCR
  Left = 508
  Top = 193
  Width = 418
  Height = 297
  Caption = 'frmLapCCR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object zqRK: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_rk')
    Params = <>
    Left = 85
    Top = 75
  end
  object dsRK: TDataSource
    DataSet = zqRK
    Left = 115
    Top = 75
  end
  object rptRK: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41416.592203946800000000
    ReportOptions.LastChange = 41836.455580381950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 50
    Top = 45
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'fdbRK'
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
      PaperSize = 256
      LeftMargin = 10.001250000000000000
      RightMargin = 10.001250000000000000
      TopMargin = 5.291666666666670000
      BottomMargin = 3.968750000000000000
      object MasterData1: TfrxMasterData
        Height = 1005.000000000000000000
        Top = 18.897650000000000000
        Width = 740.400478175000000000
        DataSet = frxDBDataset1
        DataSetName = 'fdbRK'
        RowCount = 0
        object Memo76: TfrxMemoView
          Left = 10.000000000000000000
          Top = 750.000000000000000000
          Width = 18.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Top = 743.000000000000000000
          Width = 371.000000000000000000
          Height = 70.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 10.000000000000000000
          Top = 774.000000000000000000
          Width = 18.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Top = 387.000000000000000000
          Width = 580.000000000000000000
          Height = 100.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 60.000000000000000000
          Width = 362.000000000000000000
          Height = 90.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 482.000000000000000000
          Width = 260.000000000000000000
          Height = 60.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Width = 482.000000000000000000
          Height = 60.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FORMULIR RESOLUSI KOMPLAIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 150.000000000000000000
          Top = 66.000000000000000000
          Width = 160.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'no'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Memo.UTF8 = (
            '[fdbRK."no"]')
        end
        object Memo3: TfrxMemoView
          Left = 485.000000000000000000
          Top = 1.000000000000000000
          Width = 94.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. Formulir')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 485.000000000000000000
          Top = 19.000000000000000000
          Width = 94.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Revisi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 485.000000000000000000
          Top = 37.000000000000000000
          Width = 94.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tgl. Terbit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 581.000000000000000000
          Top = 1.000000000000000000
          Width = 12.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 581.000000000000000000
          Top = 19.000000000000000000
          Width = 12.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 581.000000000000000000
          Top = 37.000000000000000000
          Width = 12.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 595.000000000000000000
          Top = 1.000000000000000000
          Width = 134.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FR/QAC-101-008')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 595.000000000000000000
          Top = 19.000000000000000000
          Width = 134.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '00')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 595.000000000000000000
          Top = 37.000000000000000000
          Width = 134.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '07-01-2013')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 8.000000000000000000
          Top = 66.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NO. FRK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 136.000000000000000000
          Top = 66.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 8.000000000000000000
          Top = 86.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DIBUAT OLEH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 136.000000000000000000
          Top = 86.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKdibuat_oleh: TfrxMemoView
          Left = 150.000000000000000000
          Top = 86.000000000000000000
          Width = 160.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'dibuat_oleh'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."dibuat_oleh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 8.000000000000000000
          Top = 106.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DIBERIKAN KPD.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 136.000000000000000000
          Top = 106.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKdiberikan_kepada: TfrxMemoView
          Left = 150.000000000000000000
          Top = 106.000000000000000000
          Width = 158.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'diberikan_kepada'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."diberikan_kepada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 362.000000000000000000
          Top = 60.000000000000000000
          Width = 380.000000000000000000
          Height = 90.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 368.000000000000000000
          Top = 66.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 496.000000000000000000
          Top = 66.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 368.000000000000000000
          Top = 86.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 496.000000000000000000
          Top = 86.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 368.000000000000000000
          Top = 106.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'KATEGORI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 496.000000000000000000
          Top = 106.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 368.000000000000000000
          Top = 126.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TGL. TARGET SLS.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 496.000000000000000000
          Top = 126.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKtanggal: TfrxMemoView
          Left = 510.000000000000000000
          Top = 66.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKstatus: TfrxMemoView
          Left = 510.000000000000000000
          Top = 86.000000000000000000
          Width = 160.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKkategori: TfrxMemoView
          Left = 510.000000000000000000
          Top = 106.000000000000000000
          Width = 160.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'kategori'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."kategori"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKtarget_selesai: TfrxMemoView
          Left = 510.000000000000000000
          Top = 126.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'target_selesai'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."target_selesai"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 151.000000000000000000
          Width = 742.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            ' DATA CUSTOMER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Top = 169.000000000000000000
          Width = 362.000000000000000000
          Height = 88.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 362.000000000000000000
          Top = 169.000000000000000000
          Width = 380.000000000000000000
          Height = 88.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 8.000000000000000000
          Top = 177.000000000000000000
          Width = 128.000000000000000000
          Height = 34.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NAMA / PERUSAHAAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 136.000000000000000000
          Top = 177.000000000000000000
          Width = 12.000000000000000000
          Height = 34.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKnama_cust: TfrxMemoView
          Left = 150.000000000000000000
          Top = 177.000000000000000000
          Width = 206.000000000000000000
          Height = 34.000000000000000000
          ShowHint = False
          DataField = 'nama_cust'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."nama_cust"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 8.000000000000000000
          Top = 213.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LOKASI PASANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 136.000000000000000000
          Top = 213.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKlokasi_pasang: TfrxMemoView
          Left = 150.000000000000000000
          Top = 213.000000000000000000
          Width = 206.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'lokasi_pasang'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."lokasi_pasang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 8.000000000000000000
          Top = 231.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TGL. PEMBELIAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 136.000000000000000000
          Top = 231.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKtgl_pembelian: TfrxMemoView
          Left = 150.000000000000000000
          Top = 231.000000000000000000
          Width = 160.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'tgl_pembelian'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."tgl_pembelian"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 368.000000000000000000
          Top = 177.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NO. SO / SJ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 496.000000000000000000
          Top = 177.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 368.000000000000000000
          Top = 197.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TGL. KOMPLAIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 496.000000000000000000
          Top = 197.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKno_so: TfrxMemoView
          Left = 510.000000000000000000
          Top = 177.000000000000000000
          Width = 160.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'no_so'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."no_so"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKtanggal1: TfrxMemoView
          Left = 510.000000000000000000
          Top = 197.000000000000000000
          Width = 160.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Top = 257.000000000000000000
          Width = 742.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            ' DATA BARANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Top = 275.000000000000000000
          Width = 362.000000000000000000
          Height = 94.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 362.000000000000000000
          Top = 275.000000000000000000
          Width = 380.000000000000000000
          Height = 94.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 8.000000000000000000
          Top = 285.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NAMA BARANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 136.000000000000000000
          Top = 285.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKnama_barang: TfrxMemoView
          Left = 152.000000000000000000
          Top = 285.000000000000000000
          Width = 204.000000000000000000
          Height = 40.000000000000000000
          ShowHint = False
          DataField = 'nama_barang'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."nama_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 8.000000000000000000
          Top = 328.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'WARNA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 136.000000000000000000
          Top = 328.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKwarna: TfrxMemoView
          Left = 152.000000000000000000
          Top = 329.000000000000000000
          Width = 204.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'warna'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."warna"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 8.000000000000000000
          Top = 347.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'BATCH PRODUKSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 136.000000000000000000
          Top = 347.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 368.000000000000000000
          Top = 286.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'JUMLAH ORDER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 496.000000000000000000
          Top = 286.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 368.000000000000000000
          Top = 305.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'JUMLAH KIRIM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 496.000000000000000000
          Top = 305.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 368.000000000000000000
          Top = 324.000000000000000000
          Width = 128.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'JML. KOMPLAIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 496.000000000000000000
          Top = 324.000000000000000000
          Width = 12.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKjml_order: TfrxMemoView
          Left = 512.000000000000000000
          Top = 286.000000000000000000
          Width = 158.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'jml_order'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[fdbRK."jml_order"]')
        end
        object Memo57: TfrxMemoView
          Left = 510.000000000000000000
          Top = 302.000000000000000000
          Width = 160.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'jml_order'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[fdbRK."jml_order"]')
        end
        object Memo58: TfrxMemoView
          Top = 369.000000000000000000
          Width = 580.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            ' Deskripsi Komplain')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKdeskripsi_komplain: TfrxMemoView
          Left = 10.000000000000000000
          Top = 396.000000000000000000
          Width = 560.000000000000000000
          Height = 84.000000000000000000
          ShowHint = False
          DataField = 'deskripsi_komplain'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."deskripsi_komplain"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 580.000000000000000000
          Top = 369.000000000000000000
          Width = 162.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' Di isi oleh,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 580.000000000000000000
          Top = 387.000000000000000000
          Width = 162.000000000000000000
          Height = 100.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Top = 487.000000000000000000
          Width = 580.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            ' Verifikasi Analisa Produk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 580.000000000000000000
          Top = 487.000000000000000000
          Width = 162.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' Di isi oleh,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 580.000000000000000000
          Top = 505.000000000000000000
          Width = 162.000000000000000000
          Height = 100.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Top = 505.000000000000000000
          Width = 580.000000000000000000
          Height = 100.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Top = 605.000000000000000000
          Width = 580.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8 = (
            ' Tindakan perbaikan yang dilakukan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Top = 623.000000000000000000
          Width = 580.000000000000000000
          Height = 100.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 580.000000000000000000
          Top = 605.000000000000000000
          Width = 162.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' Di isi oleh,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 580.000000000000000000
          Top = 623.000000000000000000
          Width = 162.000000000000000000
          Height = 100.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKverifikasi_analisa: TfrxMemoView
          Left = 10.000000000000000000
          Top = 512.000000000000000000
          Width = 560.000000000000000000
          Height = 84.000000000000000000
          ShowHint = False
          DataField = 'verifikasi_analisa'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."verifikasi_analisa"]')
          ParentFont = False
        end
        object fdbRKtindakan_perbaikan: TfrxMemoView
          Left = 4.000000000000000000
          Top = 626.000000000000000000
          Width = 571.338590000000000000
          Height = 91.559060000000000000
          ShowHint = False
          DataField = 'tindakan_perbaikan'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."tindakan_perbaikan"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Top = 723.000000000000000000
          Width = 371.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' Diketahui Oleh :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 371.000000000000000000
          Top = 723.000000000000000000
          Width = 371.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' Disetujui Oleh :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 371.000000000000000000
          Top = 743.000000000000000000
          Width = 371.000000000000000000
          Height = 70.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 32.000000000000000000
          Top = 750.000000000000000000
          Width = 180.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Manager Area ( Manager Area 1 )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 32.000000000000000000
          Top = 774.000000000000000000
          Width = 180.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Manager QAC ( Manager Area 2 )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 464.000000000000000000
          Top = 791.000000000000000000
          Width = 184.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Buss. & Oprntl. Dvlp Director')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Top = 829.000000000000000000
          Width = 371.000000000000000000
          Height = 62.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Top = 813.000000000000000000
          Width = 742.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Diisi oleh pihak SMG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 2.000000000000000000
          Top = 830.000000000000000000
          Width = 166.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Tindak lanjut komplain customer :')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKtindak_lanjut: TfrxMemoView
          Left = 2.000000000000000000
          Top = 850.000000000000000000
          Width = 366.000000000000000000
          Height = 38.000000000000000000
          ShowHint = False
          DataField = 'tindak_lanjut'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRK."tindak_lanjut"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 376.000000000000000000
          Top = 834.000000000000000000
          Width = 132.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'NO. SO Pengganti Retur : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 376.000000000000000000
          Top = 852.000000000000000000
          Width = 132.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'NO. SJ Pengganti Retur : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 376.000000000000000000
          Top = 870.000000000000000000
          Width = 236.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl. keputusan tindak lanjut komplain customer :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 371.000000000000000000
          Top = 829.000000000000000000
          Width = 371.000000000000000000
          Height = 62.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Top = 891.000000000000000000
          Width = 742.000000000000000000
          Height = 32.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 3.000000000000000000
          Top = 891.000000000000000000
          Width = 166.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Catatan / Penjelasan Tambahan :')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKcatatan_tambahan: TfrxMemoView
          Left = 174.000000000000000000
          Top = 891.000000000000000000
          Width = 562.000000000000000000
          Height = 32.000000000000000000
          ShowHint = False
          DataField = 'catatan_tambahan'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."catatan_tambahan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Top = 923.000000000000000000
          Width = 370.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' Dibuat Oleh :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 370.000000000000000000
          Top = 923.000000000000000000
          Width = 372.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' Disetujui Oleh :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Top = 941.000000000000000000
          Width = 370.000000000000000000
          Height = 64.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 370.000000000000000000
          Top = 941.000000000000000000
          Width = 372.000000000000000000
          Height = 64.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 8.000000000000000000
          Top = 973.000000000000000000
          Width = 354.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '( .................................... )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 8.000000000000000000
          Top = 989.000000000000000000
          Width = 354.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Departemen Sales dan Marketing')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 378.000000000000000000
          Top = 973.000000000000000000
          Width = 354.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '( .................................... )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 378.000000000000000000
          Top = 989.000000000000000000
          Width = 354.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sales & Accounting Director')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKdibuat_oleh1: TfrxMemoView
          Left = 590.000000000000000000
          Top = 398.000000000000000000
          Width = 140.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          DataField = 'dibuat_oleh'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRK."dibuat_oleh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 590.000000000000000000
          Top = 418.000000000000000000
          Width = 140.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Bagian CFT')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKdiberikan_kepada1: TfrxMemoView
          Left = 590.000000000000000000
          Top = 516.000000000000000000
          Width = 140.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'diberikan_kepada'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRK."diberikan_kepada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRKbagian: TfrxMemoView
          Left = 590.000000000000000000
          Top = 536.000000000000000000
          Width = 140.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'bagian'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRK."bagian"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 590.000000000000000000
          Top = 632.000000000000000000
          Width = 140.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'diberikan_kepada'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRK."diberikan_kepada"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 590.000000000000000000
          Top = 652.000000000000000000
          Width = 140.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'bagian'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRK."bagian"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object CheckBox1: TfrxCheckBoxView
          Left = 10.000000000000000000
          Top = 750.000000000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'f_mgr_area'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Expression = 'fdbRK."f_mgr_area" = 1'
        end
        object CheckBox2: TfrxCheckBoxView
          Left = 11.000000000000000000
          Top = 776.000000000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'f_mgr_qac'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Expression = 'fdbRK."f_mgr_qac" = 1'
        end
        object Memo100: TfrxMemoView
          Left = 442.000000000000000000
          Top = 791.000000000000000000
          Width = 18.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object CheckBox3: TfrxCheckBoxView
          Left = 441.000000000000000000
          Top = 792.000000000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'f_director'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Expression = 'fdbRK."f_director" = 1'
        end
        object fdbRKno_so_pengganti: TfrxMemoView
          Left = 512.000000000000000000
          Top = 834.000000000000000000
          Width = 140.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'no_so_pengganti'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."no_so_pengganti"]')
          ParentFont = False
        end
        object fdbRKno_sj_pengganti: TfrxMemoView
          Left = 512.000000000000000000
          Top = 852.000000000000000000
          Width = 140.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'no_sj_pengganti'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."no_sj_pengganti"]')
          ParentFont = False
        end
        object fdbRKtgl_keputusan: TfrxMemoView
          Left = 616.000000000000000000
          Top = 870.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'tgl_keputusan'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."tgl_keputusan"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 481.000000000000000000
          Top = 744.000000000000000000
          Width = 120.000000000000000000
          Height = 56.000000000000000000
          ShowHint = False
          Picture.Data = {
            0A544A504547496D616765C8440000FFD8FFE000104A46494600010101004800
            480000FFE1321D687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
            2E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
            4D304D7043656869487A7265537A4E54637A6B633964223F3E0A3C783A786D70
            6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
            786D70746B3D2241646F626520584D5020436F726520342E312D633033342034
            362E3237323937362C20536174204A616E20323720323030372032323A33373A
            33372020202020202020223E0A2020203C7264663A52444620786D6C6E733A72
            64663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F3232
            2D7264662D73796E7461782D6E7323223E0A2020202020203C7264663A446573
            6372697074696F6E207264663A61626F75743D22220A20202020202020202020
            2020786D6C6E733A7861703D22687474703A2F2F6E732E61646F62652E636F6D
            2F7861702F312E302F223E0A2020202020202020203C7861703A43726561746F
            72546F6F6C3E41646F62652046697265776F726B73204353333C2F7861703A43
            726561746F72546F6F6C3E0A2020202020202020203C7861703A437265617465
            446174653E323031332D30362D32355430313A32343A32315A3C2F7861703A43
            7265617465446174653E0A2020202020202020203C7861703A4D6F6469667944
            6174653E323031332D30362D32355430313A32363A31395A3C2F7861703A4D6F
            64696679446174653E0A2020202020203C2F7264663A4465736372697074696F
            6E3E0A2020202020203C7264663A4465736372697074696F6E207264663A6162
            6F75743D22220A202020202020202020202020786D6C6E733A64633D22687474
            703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F223E0A
            2020202020202020203C64633A666F726D61743E696D6167652F6A7065673C2F
            64633A666F726D61743E0A2020202020203C2F7264663A446573637269707469
            6F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D706D6574613E0A20
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
            20202020202020202020202020200A3C3F787061636B657420656E643D227722
            3F3EFFDB00430001010101010101010101010101010101010101010101010101
            0101010201010101010102020202020202020202020202020202020202020202
            02020202020202FFDB0043010101010101010202020202020202020202020202
            0202020202020202020202020202020202020202020202020202020202020202
            020202020202020202020202FFC0001108006400B703011100021101031101FF
            C4001E00010002020203010000000000000000000008090107060A02030504FF
            C400321000000602010402010205030500000000010203040506000708091112
            131421311522162324324118265134426181F0FFC40014010100000000000000
            000000000000000000FFC40014110100000000000000000000000000000000FF
            DA000C03010002110311003F00EFF180C06030180C06030180C0D65B976ED1B4
            1EA9D83BA7664A2D0D40D635498B95AE45AB0792CF51888568676E138E8A8E2A
            8E1D3957B022D9AA043ACE1C289A29144E700C0A6DD45D477A8CED58A86E51B5
            E9C51F17C0BB443CD5CE15CCBEE48E84E5DB5D5116D959169B41F6A290486396
            34832445F47D7117A47AE9BA88FAE43F9C87B82EFEA96486B8D5EB76EAE3F4E5
            6BF6A8087B241CA25E3EB91879C8F4E4E31FA7E3F5D964552281DBEBB1B03906
            030180C06030180C06030180C06030180C06030181EB21C0E0220060EC7393F7
            90C411121BC444007FC7FC0FE043EC3EB02B0BA9CCC41CE45F11B8FB352C845B
            3E45F30354D466C1E2AA03090A65581D5D2CD0EFDA90480E0922768CA2888996
            444ABC822E533FB9BA60213F7683B8C80D51B11F3A2A6D21A135EDB5D382244F
            520DA3236B6BACB1534DB9444A52244100290822001D8A41FA0C0D0DC67B1C3E
            A1E10F1E27F6E5A20E9D1556D01A87F89EC3669063070B062B542399B76AFA41
            D1C882609A8AA4CC82262828A780103B9C0B812ECA6030018A2062983B808761
            030087D080E0796030180C06030180C06030180C06030180C060301814E1CBF4
            226DBD593A555427A4E3528FAAD6B979B3E3E0E42385E8CEDA1A5023E120CADB
            CD4F5828D0A672F88A191F26CAB54CE438A8720A412FB9F766998BE35DA28F53
            21D6BC6F798AD71FA9ADC8455550D27B6A54959977A445059039BE0C39E4E40D
            E2A00015A08A9FCB03E0430EB8D18E6ADD2A766D7EB4E9945210F67E2F56D055
            C21E6C518A479035286224768AA81E69F8F801923AC1E44010138FF90B946055
            4AC5915732475CAD1B9563A298A289D4044A0A1914444C25288F712944C61287
            D771FCE07ECC06030180C06030180C060781FCFEBC3C7F3FB847BFD07FE00303
            C83BFF0091EF819C06030180C06040294DE76DA87529AD682B1D84E7D75B8F8A
            32775D710276BE96CCB63EB0D8A66D75F07DD801559E44CA335413113A854D90
            8801081F611F397887A7AAFF004987ED9BB4070E6079BB1AF9E1DB905C9A349A
            A225D26D48BA81FE171298850FDE0065848240F67986F3859B90E47F3865D568
            D583DD29C2F8D7F0084B0383AE59FE4E5EE3510970682D8FEA502AB007558AE4
            543CDAC94AAE024F6113144347F5E15906DD2C7930F1C9DBA683171A624143BA
            131514C8C37CD61D9D4378FF00C0104403EBB8F60EE1F9C0B6F8D50AAC73054A
            60315464D542983F0629902980C181FBB0180C06071F3D923065178364B7EA93
            2C8EC4B271EC0535D68745FF008A88B99637702B62992115D322A62A8E1321BE
            311510ED81C830180C06030180C06030180C060302A83A8D3A8ED45B9FA7E72C
            1EA2E88C359F248BA66E3289A6618C86A372521BF819F4D4FAC4EDEB6ED5FA0C
            3D4637728BA5D34FFB942E0474EAFF007CBE69CE4DF4BFDABAD205ADA7602FB4
            3901A675F578E05F9123B07746A32566A22B2870378B141C105CBD3000F8A688
            088903F9840D95C26B358F8D1CC59DE9B930FC6CF1109C4EA5F2512B9A6C88A4
            8DAF6E5AF614836DFD70B3CE3E53E6AC32D2EFDB291A9090C9B666815B8FACE9
            89D70D83D71E0BF883A50F35D00050C78BD504B39089A49AC26354ED51D63281
            CAAFD787F4DDCE60EC62900443EC30278F1A2C2BDB78E3C7FB53A02839B3E93D
            536171EB38A89FBE6688C2496022863184C1E4A0F611318443EFB8FE70377603
            03826C9D9BAFB4F5366360ECFB7C151A975F441796B1585F26C5836031BC1240
            863FEE55754DD9341B22551C38544124525143014422552F69ED7E613119BD5A
            959F4371E1D2BE86BB26C902B446E8DAD1CA21E4690D6F589C484B5D8858A728
            B69B93456927699816611ED3F6B9C099752A941D1E018D6EBCD4EDA398260503
            B872E64245F3810FEA24A5E51E99470EDDAE21E6E1D385145D75044EA1CC61C0
            E4B80C06030180C06030180C0603018116F9AFA975D6F3E276FDD61B5A5DB576
            8B62D67655266D4ED566D93A7AB08C867E2AE00E5F80A491E29E3541F9143876
            299BFE4303A9ED5B6DEE2E5CE8CE16F551DDF6040BFE8E3997C74D0EC2870FF3
            50858EA9B1B433A46D3DD57844EA2AE5393B0483E87583C4A64918F281C888A6
            A262985B1725EED61D2DD58F6D6D18B41434934E917B96D34B408991C1A6A7E8
            378425E31AB54C86013992708AC63A4612985311393BE07D2D5967D85CAFE82D
            BDA4F6A5BE42D77ABE71E7985172169B22E8A8EDDBB8F7F686B109A8E4FE01EB
            47D28B66C631BBA48A69001FB10BD827EF4B6B792F7D38B83F672B923A33DE30
            E9D66BAA4515540AF21296D609F371516EC6114566C744DE41DC0C410C09EB81
            5DFCBBEA21AEF8DD6BAE68AA05666B911CBAD8A1EAD77C72D70B357162ECB17B
            A766D892A61142BD0688082AE1FBEEC3EAFDE44FD5E6B261C7B46F0F36AEC09C
            8DDE7D426E30BB976B22F5697A3E8E82493538DBA14AE7FE912AD555D20509C9
            D6E91BD2AD8263E6AC43F7F84240022E21660000500294000003B0007D00007E
            000303380C06030180C06030180C06030181E85D741B20B3972B24DDBB748EBB
            870B9CA922DD148BEC55659553B14A529404C6318400A01DC70292ED960B2757
            1D8EE356500F2707D34F585B552EDBDBCC1659AA9CCDBDD2E5BE2ADA7F5AB921
            D3F2A34748A4A0CFCE2645D19974C8ACA355224417260D45CA1E3B45527925BB
            78971A2D691A03AA968C986DAE516C8963AADAFF009B1A4A041F440C526D9106
            AC1298868E877446C4324AB979147F8BF640226119AC5CB389DADB03A45F2AAE
            AF23E9D71AE724365F4DAE56561D793516971D81AF5C56A522A6D93D3FB18347
            72B18BBC6422AA9E6CDDA0B02E2A76040354F03B725CB4D68DEA51C346D3ABCC
            EA4A3E8BE51ECCD0C9C9C43724ED5D5AC5CE5354DF6A8DE55E09D1748AD26645
            DB34DDA4559259601313BAE6F605A5740ABF354FA6751B5FDA64462A778BF6FD
            A3A576192C6F5BB55AB7254FB3AF3CE13955561215045BB79021014504A5F044
            C6110EC2050F83B1FA82EFCE736C0B6F1A3A4C215C7B095778E2B3BB39FB768D
            7D25A4F553D317D6FA1351344400B6BB1A44EE2DC5231A3C8A00282706C29BEC
            09D5C27E9F3A5F84F156596AF3DB2ED5DEDB31DFEB3BA3927B55F7F11EDCDA53
            CAF63AE7909A71E42C630870FE8E1D918AD1B1009EC172E7CDCA813C70180C06
            030180C06030180C06030181A7F796FED35C69D7933B5B7BEC7AB6B0A0C0A275
            1F586D5268B0454540A274E3E31B0F75DE3B57B76459B449672B1BE934CC3814
            FD2927C87EB18837AF40426CEE2574D674B94F6EB55999AF4BE45731A35B4915
            5257E990E06F9356A2BF6E5EEE251C0A72B2A99C1341106E758A40BB0D7DAFE9
            5AA69157D6DAE2B10F4BA1D26158576A956AFB349843C1C2C6A2083362C9AA5F
            400500EE630F73A871328A18EA1CE610849D50B4A496E3E1FDFA52A28B72ED8D
            0EF60F92BA624D537A1CC4EC8D1EFC2F11BF09E94C99D13BE6AD9E4618C55132
            9937A72286F589B020FECFE945C36EA8150AB7321A3ED9FA6EF7BF75CD1367FF
            00B0AC7F029E8ED44A008E6A1B32D74321489494EC01D670D8174DEB523D032C
            670758E72AE0108B933C249BE9FCEB4AB58CB07C8E21A3A6A0A9BCBCE50DFA4E
            B55C90631F11C9B67BC76A49DAFE227F3967D70481A40C3474603A78E9438360
            3AC66C273842FE26552EDD5439C5CABD24E6FDB978BFD3C790B70539CD17A8DF
            43175FECEE58D0672491AB95EC1CB3021BF4FAC3F7CD4AEDC9D376BFCA44BE6C
            9155C8292A88774DD45A7F55E82A056F52697A155F596BAA9B23B4ADD329D10D
            E1A0E31B8ABEE7274DB3600032AAAA715575D513AEE1639D659451439CE21B33
            0180C06030180C0603031819C0603034B6E7E46E84E3B402B67DEFB935AEA384
            4DAAEECAEEFF007183AD1DE20DC3BADFA5B293588BBC387E0126A92CA987E8A4
            11FAC0A51DCFD7A602F1EEA174C3E326EFE7A6D1917CFA063AE55FD7775ABF1F
            AB52680025FA8CFDE651924B3C49250C063A2DD26A8AA880A81249904863868A
            D0BC7DE4E5CADD03CA2EA17C32E4DF343920DDEB694A854AE76FE3ED3F8E3A0C
            5C2E2ED069A9F4AA96851BF9B4104C15939C41CC8A8AA447446C83A013885B02
            BCDBE4943C7A412BD32B9428BF0595644635DB668DB2C71050505345723F8B9F
            0315B093C0E0A1DAA670011211139C9E221CE2B5CB7DEF360D567FD3F392D5F6
            4E4C3E6BC958F45FC86E9897BA6AAD185B38390EFF008120A60A17FEE207E303
            5ADD2C7CE9E52C0D9753C3E828FE266BBBA464A552D1B53685CA9FB1EF2956E6
            A2D5464C6AFAE6A0E0ED4AE1644DF0FBBD7AA26999C1CE4120A20A00730DF7C9
            CE25F492E26510367D9D5AED0B5CD46B9ACB5652E3CA335B0F62C856E1D1898A
            80ABC1263EE7AF57F04CCE5C1BC1BA4A2DE6E164FD8981C2B6F43F0CB915D51F
            64C3F313AA8D564A85A1EBF2E9CFF143A73BC77DEBD07165709BC86D97C968E0
            00FD4E69C1134D44E0DE10BE90318B2482090FE9240979D4D34A6C6A8B5D2DCE
            BE30C0BF91DCDC2B912C84BEB4AA324135B70F1A9F2846DB53543364DCA1DD66
            F1DEE7F108A653F8289B845B202E1C22240B0BE3C72075772934E51B7A69AB2B
            5B4EBFBFC3212D12FDB8891C34587F9723072ED0FD946CF98AE0A3676DD4294E
            92C9983ECBD8C21B7DE3F631C915C483C6CC503AC83722AF1C24D9333874B020
            D5B94EB08009D439808993BF91CE60214044403034ABFE415322F616B1D73231
            1776323B7DC4F30A1CBBDAB3B670927295AAE3BB6CBC739F96623E6C64E3D9AA
            B82EBB22333792697C9F72809E06F6C06030180C06030180C0C6056272778C1C
            EAE466ED76C2AFCD57BC5FE253582A9364EB3A3AAF106DE97694505CAF7B34C6
            C6B33357F4202A84629471E37E6117687724708B65404EB87D8D61D257823ADE
            7E3AF12BA5DA6E9D98C1BB748766F21E625B765B9CBA6E6328127FEFA55D47B5
            7026318C2760C1A000FF00694000302C421E121ABD1CDA220226320E25926545
            945C3B06B191CD1220762A4D58B229134CA1FE0A5280607D3C0CE030299F9F3D
            596378FF00B163F889C46D6729CBBE7B5D1B0840697A47F5709AE10580A425AF
            6FCEA274D08E68DFCC8B2EDD574D8516FD977EE5820745458349714BA36DAADF
            BA6339C3D54F680F29F962DA41BCF5135E307EF93E3E6803A4BA7251B1D50AD8
            95023F771EA90089ABEA6F16512994060E573FCC10EC0B81E85DB20E4080BA45
            53D4A9174847B81925931EE4552397ECA60FC77010FA110FC0886053CDBF801C
            86E366E1B76F6E985B335AEBA63B5ED216EDE3C49DEADACAAF1C6F7655C0E597
            BAD16469A8BA91A7CCBC0128BA18E64B3378B24899622689051386D6B2ECFEAC
            063B38CAFF001038840BBA5D029ACCFB95B759D82833A6405557EEA194A2443E
            5C9E5DD348ADC7DA061050C0052F89839D71878B7BA6B9B3ACBC97E5EEE186DC
            3C82B0408D32A95EA0C0BAABE8CD094255645E4AD5B52414CAAE6496732AE504
            97999F925C1FC911066DBE33341B7A8E13F301819C06030180C06030180C0603
            031FFDFF00BC0CE075F2E76751BDE7BC773CDF4D4E94F1A174E4AB92338FDF3C
            9C4C3E5EA3E2255A41651ACCBC9A9F408A2269F226512229A6651C22B88B6608
            2F26073C68581F4F6E9C3A33A7C6B11AF51DB8DE7725BFB4C6F2E465B5A22EF6
            96E5BABB37CA98979D9C702B38423FE409C63E2137076AC52EDDC5C3A3B976B8
            5856030180C06030180C06030180C0606303380C0606303381F99DBB6AC1AB97
            CF9CB764C593759DBC78ED64DBB568D5BA62B3872E5C2C204226420098E73081
            4A501318400303AF5F22B975C8DEA5DB4E73851D2E6ECA5034F4446A44E52F51
            06D112AA57A94CA4CC242EBBE3DC91C5B166AC0E902A822FA3CE66E914C45139
            06AD805CAE16B5C23E0C71E7A7EE9663A4B8F15671151077A69EB9DBEC0F8F3B
            B07675C9C372A12375D83697000ABE7CB010A521401268CD0023560D9AB54C88
            804C3C06030180C06030180C06030180C06030180C06030181C72DD53AEDFAA5
            67A35BE2D19BAA5D2BB3354B3C32EA3845096AFD8639489998C5956874D52917
            6EB28918C9A845000C224394DD870380E87D09A938CDAC2BBA6747539BD0F5A5
            453591AFD65B49CECC91826E15F7ADDE52CAE9EBD5844C3FDCBB954C01D8A020
            5280006E1C06030180C06030180C06030180C0607FFFD9}
          HightQuality = True
          Transparent = True
          TransparentColor = clWhite
        end
        object Memo80: TfrxMemoView
          Left = 115.000000000000000000
          Top = 966.000000000000000000
          Width = 140.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          DataField = 'dibuat_oleh'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRK."dibuat_oleh"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 524.000000000000000000
          Top = 938.000000000000000000
          Width = 72.000000000000000000
          Height = 66.000000000000000000
          ShowHint = False
          Picture.Data = {
            0A544A504547496D616765124D0000FFD8FFE000104A46494600010101004800
            480000FFE1321D687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
            2E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
            4D304D7043656869487A7265537A4E54637A6B633964223F3E0A3C783A786D70
            6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
            786D70746B3D2241646F626520584D5020436F726520342E312D633033342034
            362E3237323937362C20536174204A616E20323720323030372032323A33373A
            33372020202020202020223E0A2020203C7264663A52444620786D6C6E733A72
            64663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F3232
            2D7264662D73796E7461782D6E7323223E0A2020202020203C7264663A446573
            6372697074696F6E207264663A61626F75743D22220A20202020202020202020
            2020786D6C6E733A7861703D22687474703A2F2F6E732E61646F62652E636F6D
            2F7861702F312E302F223E0A2020202020202020203C7861703A43726561746F
            72546F6F6C3E41646F62652046697265776F726B73204353333C2F7861703A43
            726561746F72546F6F6C3E0A2020202020202020203C7861703A437265617465
            446174653E323031332D30362D32355430313A32303A30355A3C2F7861703A43
            7265617465446174653E0A2020202020202020203C7861703A4D6F6469667944
            6174653E323031332D30362D32355430313A32313A30395A3C2F7861703A4D6F
            64696679446174653E0A2020202020203C2F7264663A4465736372697074696F
            6E3E0A2020202020203C7264663A4465736372697074696F6E207264663A6162
            6F75743D22220A202020202020202020202020786D6C6E733A64633D22687474
            703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F223E0A
            2020202020202020203C64633A666F726D61743E696D6167652F6A7065673C2F
            64633A666F726D61743E0A2020202020203C2F7264663A446573637269707469
            6F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D706D6574613E0A20
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
            20202020202020202020202020200A3C3F787061636B657420656E643D227722
            3F3EFFDB00430001010101010101010101010101010101010101010101010101
            0101010201010101010102020202020202020202020202020202020202020202
            02020202020202FFDB0043010101010101010202020202020202020202020202
            0202020202020202020202020202020202020202020202020202020202020202
            020202020202020202020202FFC00011080084008003011100021101031101FF
            C4001D000100020301010101000000000000000000080906070A0405020BFFC4
            0028100001040301000202020203010000000004020305060107080009131214
            111516212223240AFFC400190101000301010000000000000000000000000103
            040205FFC4003611000201020305060502060300000000000001020311213141
            04125161711322328191A14252B1C1F072E12362B2D1D2F11482C2FFDA000C03
            010002110311003F00EFE3C03C03C03C03C03C03C03C03C03C03C03C03C03C03
            C03C03C03C03C03C03C03C07864E4E36163642666640289888908B939595932D
            802363234061451D2120714A4B4CB0CB49538EBAE29286D0952D6AC2719CF998
            29FE4FA7BE4CBA72DECD9BE3F74A732D3F95870324C06F4EDE7B6E45C9F4334F
            210446D9F4A6BFD56EB5291F5935A5A1D8B9F9F17289901D6E563C558EA65923
            5F65B3C23DF9BDED63049DB3CDE0B3CF1BF2D49BC7775BFA13DB8E7A561FB079
            9F52747C255E529236CC8030D36A32E68F28556EC3013A5D4AD70CC4C88869B3
            C46250031B02452C0DFD88381CDC88265FC8CD67A9074E6D7023024C7B803C03
            C03C03C03C03C03C03C03C03C03C03C055EF5F4CBBD53BC69BF1CD4CB0CC45D7
            4988AFEF3EE098AECA171994F32B7304C64373C912F06F8B20319B424C6CC7C8
            A423832C7A5853AA7B0E8D2A3B44E9A7051A6E6FA47F53D7CB17CED627426A6F
            3D8709CDFCE1B8B6B8919151D5CD0BA4760EC31A1D80BF5610184D5D442EC8CC
            6331D17F5FD62B4C038692C8FF0087E0D63086BF1FE13FC5305DA5549EB257E3
            8B20D4DF1EBA48DE73E1DE55D31303C90965A4E90A13174166339CC88F7F9884
            6EC7B059270B6DA527299B30FC250E23ED423F143AA5B8952D5D579F695A4F9F
            D30432263FAA03C03C03C03C03C03C03C03C03C03C03C0611B3361D5B51EB8D8
            1B5EF272E3295AC6936BD87709268774B763EAD4B827EC96039B158FE56EA9A1
            0675CC368C654BCA7F14FF00BCFA631DE925C5D810BFE38A992E4E9492E9ED87
            0AA8FDD9DAD6527A32FEEC8363AE6A1A996647D3CFFABD45291FB6C8555A3261
            23DB8B21F7F00CAB936FA3EB74F253ED1B55954DD5943BBE7F179DF06F5B108D
            79F28F1A7EE3AB733F15C29B84BBD85D3741AC6CA8C68E4459E5F34E9D4BDBD3
            A15F1249E42D08FB23204486FABF171663B36C06A65C15F294DB667B9294FE58
            BB7EA782F53AB3B1695ECC40F00F00F00F00F00F00F00F00F00F00F00F015A9F
            2220B5B9A4395F899D40E5427536F20E5370464825C4C64D737F3A838DCBB6EB
            459427FEA6FF00BD304AED6FFF00365A52999A7F0E14C358561CD3B3F754E7F2
            AC3F54B05FBFD01657ECC0AB4D256163A6FE49FA4F6B8E3ACDD6FC3B438AE3ED
            6F26FA3123107EF5D9048BB5BA8A6A09D7928FEBCE8A044A3D60B4250E10EA5B
            2D7FB2908B6DB7B4CAF4F674BE7EF3E8B24F93CFA8D4B4BF6603C03C03C0557D
            9FADF7075D5B2F3A53E388EAB811FADACA8AA6EAEDDD8F5A3EC9A4A8F2A82902
            CC51F9EA0C6FE07D8F74071F7BF20CE4A06AB0481D86A5659654BC6B0AD4E82A
            293A9AABC61AF59705EFE8D1393C4963CB1CCA3F32D3EC9106EDEDC7BDAF7B06
            D1FE77B33696E8B891639FB55C1504156B0FC4C10A962260E386023C20008D8A
            0D84B40862A0C7E40B6D66BB4D4A9DA3C945705F9FB722093FEAC0F00F00F00F
            00F00F01579A5C49ADC3F291D6FB9DF749C5179734BEB3E32A2BC2292457A72E
            7B1531BD2FBB9DC3FF0072BF1938A4BD4E8F3B0DB5F5290B1C7565B2C02D2BD5
            3B43658AD64F7FA5AE961C25C79117C4987D53D114FE4DE77DB9D137969C3207
            56540D9E6A10779439F6EB290EB70D49A1C3BC969EFC4FB04D131F091F9CB4B4
            FEE9EC7E49FC7F9F67845CE497124C17857434E739F2F6B3A05E1D6E436D4A0B
            2DB2B7B587F91C93AD1BDB6ACCBFB076CCD4ACBB0E9199077FB99028568D7492
            5C7431854E1E53686F09B2BCD54AAED964BA2FA5F3B73072BBF125F295D075C3
            7E15F942D16891B65237D6B4EA8B86F8B1DAD3FE5DB02DB3D6FEAFDB7ADB4E37
            9B6D9DF598D221A5AAC2256965E4B8E4612625D6C9FD40C76AF74FB58CE4FC4A
            FE4A293F7475395E4F03B5CF623930AD8BB1E83A869164D95B46E35CD7F40A84
            7AA56CF70B6CB87075F84030EA4743E7C99EA4368FB1D5B6CB28FE7F379F71A6
            194ADD710854C62E4ECB160ABD93A66C1F95601675BA4760E8EF8E626510D406
            BC146B06BBDDBDD3591B0A5BF77BBCE8E587314BD5F2AAFC1A848048A25AEDD1
            7F6CE4991011E6C388E68BFF00C69719FB41FDDF1D13E38A05A3EBFD7F49D534
            9ABEB7D6F5685A4D0E950C157AAB54AE82CC6C2C1C347B5F48A0822318C6129C
            63FDA959FE56E2F2A71C52DC5A959A273954936DDDBD41987B903C03C03C03C0
            3C03C079CB2C500524F3C91C20421DE2CC30B79B18510519BCBC412490F67086
            DB6D18CA96B567094A71952B38C63C49B60AEBF8B196136072B3FD06C0A58247
            566F6E8BE8F7A3CB2545663622FF00B96604D7D14DB8E8C2B9FF0092AA0408CF
            7DAD254A29A7D784B4DAD0C35A369C2A6EFCB18C7AE1FB835FF503903D69DC3C
            DFC5EC64299A57381315DD9D33F5E72FA0493A91ABADF2DEA73DF6B050DF6CDC
            E167DA2521E40661D220AB633CD12868E4365754BF854653D5F723E79BD32B60
            D6B9A2251B997708772DA3AA778FC87692BAD6EA75F98E36EA1375655DEAB7F6
            ADBD3BAAA5027D9A5CD5A8796249CAA55E32226944102FEA04EB391D96026D62
            BC497C56A4A9C20FE657FA3FB9DC92491C47708569EA9DE788F60C912434DF1D
            EE0E4367674D1251A6C3EB6D5365EF3DC74EB9E5E61195FE98864C59618FC21B
            65B63F68C563F87092DA708F5A54E1184BE69292F369E071BDBD6E67F41FDADD
            3FA57506A81B71CF5C81B0D52764C2AD6BE135FB8CDEAC9B76F93243A0D6B5AE
            A181AF2DE76C3609529874606323FED756B68875ECB228A590C78B1A7394ED93
            D6F859717C112D34436D59CEFB73ADAE54BE98EF1AFB95683A64F9F6AE76E162
            0AAFD8E81AB9C2A35C878AD9FD0B865A7C5B66C04B0E649896D6EB913455BAB5
            44B5FDDBE5963DEEA468AB43C594A69BBE7F0D9E0B9EBEED7BA2D27D9415CBDE
            3B5F604B48EAAE29D00EB4E6ECEA690283BD4DB1F710468CE4A882D88BDFBBD0
            CC82F34B08C4086B701507485B2D1B6A9311B1D6B7037909D14125DF79472E72
            D17E7D0161715151905191D09091C043C343801C5444445063C7C64546478E91
            008E8E0044A1A61861A425A65969296DB6D29421384E318F676EE0F7F8078078
            0780780780893DEF7946B5E22EB7BB7DAF365C1F39EE272152325F5945D94DA1
            9D1B558D0F03256BFB8B92785199CE31FC25D753956529C6558BB674E55E1FA9
            3F4C5FB10D5D1F3B58B956E14E0BD6B8DCF32057EBDCBBCC5450B66CD8E9616D
            B86EB6D7420369280606CFFEC3640E1DEFD6659CB84491E4B6D33F7104A30B4A
            F5ABBB63BD2C3A69E8BD82C11A9FE33F5ADB03D4171E9EDBD5D4C26FFEDEBFC8
            7456C564F1445D92AF499715111CFF00A88D96C65C2B2155698C458C34610FAD
            3152064C21084BE416E3DDED32EF282CA0B77CEF793D31BE0F8D888DDA2A4FE3
            86DB254AF9CFF927A91E6151959DEF25B67FA501E496CB53D79D0373AE4DA92A
            6329FC57F4445ECE2427B2AFE30D3A7FF19461F650E68DA2935B2C1F28BF2B5B
            EB63BBE07393B5EF3AC74D477CE3687BB5A9A08F7EC769D1BA7225D256CCEDDE
            5B52FC8309750408540BF72DB4263D2B28ACB99FC5A6455B397D4FA7FEDBFB4D
            E51E384BA27097F91DC7730F72C33996B966E3AE20F946EECD4F58A5D6F7A73E
            F52D2F5472B45C1CEB9B4F557383BBD66B58B9B7AA7AA2BBB0BF763F06E41BC3
            503216170351440CC961C6BC38A549A0EE2B2F0534EFBD76D638FCBF4785FAE8
            7539CA6ECF42D83E5CB7BDD355FC90F13DC29C68CD93C9FC51F279D51FD49385
            2C19B935729D923ABEA9B1DE7D0CBCD0875747FA5B561AFF008966E56463194A
            7146CF4A32A38EB38C5F4BC7FC99545AFA16F9C89D29237EF8FCD11D6BD09335
            7AE173FCC955DE7B76C314DE06ABC1099A1A2E36D9B58613A5E4640C3A5E7CB1
            52B5B82388786CB4DB8D658466A905DB351E38799045AF8C3A66C2DD33BB77E4
            C77A3258F75EB2C310BCE95095CBEB2F4E717D7669F93D5D58610EB4DB6CBB65
            7578B21CA056E812CC661A73091646464C645FB4C9422A92F85DE4F8CADEB863
            7C73C2D82213B96FDEC648F00F00F00F00F00F015DDF298E3A7F1F4E5000FA1D
            9EDCFB9F96F48D7A389CA52C4BC86D2E98A9D54D8E75C7B286528CC7BE6B8E7D
            EE36D29B6D4DE57F92D2956AD8F0AF7D22A4DF4B7EE0D59D5B2B03D83D7BA93E
            3C837E227B5D6B006B9D7BDAF09221373D59B0D2AB1636D8D0DCEF6909B53E23
            EE596C7862CF2D032EC34D115BAFB0FBBFB21C920339453A54DD4B3F922F2B36
            9E3E5CBA065B27B2838DAE85DF51BC75F32FB8365C05526B63D9E3BB4340D2A8
            FA0299628D0EEFB44FEBBF8F69280994C1B33AEAFF00161DBC315C7CD2178484
            23B90DACFD09747C2BD652EDB638C5FAF04A5E5A22716D70D4861AD39EEFB35F
            2C9F29BA03A7A8DAB25FA63A8F82FA37FC1ABDAF215365D7F59DFF00BFB53C36
            F08D7296F589AC98C1D0C38F271E8971DB7A45F90FB9F69E79B3564FA1A8ADD9
            41F76F157785E29EEE3CBADB0D110E29C1BB791AF755D33B167BE22F546D22A9
            51151E2DD3FBF87EB8DC3B24BBBD3AE93FD89727BA0EBBA4A3180A855A59F291
            205323C09992B17F94BA3E65A4D819C547E3FAA42DCBAF086D18BEFDB7776CF2
            B3967970E6379C74EA5A0FC896C389DAFD97F29DB2A9F3F5DB3C4681F8520341
            42910C4455862481BABADB1DB04DB94699F612CE5E7AB138E32D1C0E1195C448
            B796D7FC10DBAF51B3C52A30FD6DB5CD295BFA53EA89D096F72419B87E3BFE18
            7E3B60656C31CEF6C694E5F0F64CF42B9882345E65E78D0D58DA1BDD71B36FAD
            E223A58C6BFA60633F96DF6D6E16FB45ADC47FE33EAA4D42BD49E1DCDEB5EFE2
            6DA8E5E9F97211D10D5EB3014AACD769B548A1206AF528289ACD6E0E3DBFA808
            6808101B8A878A09AFF7F8B238ED36CB69FE7FD2118C7B0CA4E726DE6DDDF560
            FBBE803C03C03C03C03C03C053A7CD86EC473CF39E80DB6BABCB5E154AEE1E68
            B48B48825E5A98BACAD3A68FBB4154231FC3057D6FC99D18304D3BFAEEE5A71E
            4B896DC5A52856CD8A3BF392BDAF06BD5A0493F8EFE6CBFE83D2D276ADFE4434
            E75B744DB64F78751DAA2588FC8EE6C4B4FF00B8ED7F0F201E5ECAE16A319816
            02247496506C24525E8F5A062F08C71B55484EA5A1E08E11CFCDD9F1F276B5D5
            C5DB36175D759C272B54AAEB0A8173DDBB976ACF9749D17A0B59B23997DDA173
            1E15F9A215F5AFF3546D762996B05DA6CEE0E4855A8C57EF16CBCA50E3115D2A
            4EABCD24B36F04BCF207279D53A5764680F9087F65F485CE9DB87A96EFB6FE2F
            3ABE3EC35C86910699AEA102E95B3542DBA535FB92F9C4BA2B516542C3801A94
            B49535151A24ACCFEA1EF3C2B1EAECF1855A0D46E93EEE36BE1ED769FADF3216
            39E66F1EEEC95CF3FF00D2072E6F90D807F56C757E6936D67E7EB68482A66E4B
            3D9B8AEC569B0192396D96B00E4F0DA75CC7E481C73847FEC6DCC2B18AA8C555
            D89AE0A4BCFC4ADEA892687FF3D61404B725F6A724DEABD1B65ADE94ED5E88D2
            B3948B3C78562A7C8EBEB144478F23509184984AD824029F54D36604F8981091
            C9FF00B10F7EC3E9C53B76F46B295FA71BA77FB878901BAEF997407015E3E587
            43688A00BAFF005F6D6F8A080E8BAB55E1656D33888BC51374235C5BF2F4D5B8
            B24C4BD939E08964464825840B96518C8C84B02FB4C2BF69460DF8B7E49E095F
            B93E1864D11183C9137FE0E231CEAC3B5C776BC32A335F73DF0F681F8D9D2715
            2289159F6B9CD5B4980B8F426DE7032F2E04325BB4946D461A423DE513251D1B
            20990600CB6968BC75A5BB4F771BCE4E6FA5DD97DF1E1AE9CABEF6787DF89D29
            7B19D8F00F00F00F00F00F00F01CDB76F6D9BDF58774F2754E8E686BE3EE3AF9
            1CE6BA0EC491FEA7F27F64F693034EDDC88F87B009F7A9517AE400C08E3D9FBA
            331FE51662183C2956A3A38A07D2D9E9463464DF89D29C9728DAD8F56F0E9D48
            6DA2E7BAF3AB6B1C97AC87B619589FD9BB1EE7382D0F48E91A5E30EDEB72ED09
            7696B86A857DBC21ECB0C21285992D24A61F446463041381CC2702805E2A3467
            5A565D5B7925C59382CCD4FC9DC9B62AD5DA5FB03A80F6AEDDA7B66A11B01697
            992053B5FE80A40F2664B43E8AD0607E2E2E3624168A69A9A2F271CF58A7193A
            71C2538915B3EB2AD6EEEE43C17CF273E72F3CB2D2EB05614A7F3595C936BE4A
            38318FD86E2E3FA35BE7CD210A793828718CB6D2BB5ABF3C81DC2C661DCADB18
            4B43AEBB8FF9FEBADF1FFE0874A614ADBB14A2B676DFC32949AD6DBABFB31C4D
            91F27BA72B7D07F2C9CF3CC937387D35EEC3F8FF00DEFA4A36F71618D227526C
            FAD6EAEF4DEBDB7B51041427EFFF005537501CB5058790A79AFB596DF05C7932
            225142A3A5B3DFF9DFFE064CD97F02BACB68EA2B5FCA6D2F774CD267B6FA7BBA
            62CDB1E535C3B2AED1A46DD79A201749D91AC626860C868474A3DEFAC57066F2
            27E2A1BFE49692ACF3B5F8218DEF77EBBA4BC8DB9F30BF157B23E4107D796BE7
            FDA34BD47B5E1EB16DD25B0A4EF80CD195FB6E84D9460C458874E60C72C8FED6
            05D6483E14443620D24F9E48D232223691C861B2ED4A945C657DD6EF824DDFCE
            D9F5D32C429CE195BCCB93A151EB3AD29756D7F4D8A0E12AD4E838EAF4146001
            831E28B1F18324667091235A6584A95FC7E6E7D4D369538A5ABF1C7E5ECB52A4
            AACDC9E6DDFF00392D084AC65BEE00F00F00F00F00F00F015F5F22DD1575D3DA
            8E035468558B27D77D57676F47733D652A70990067A659C2EFBB92463639CC1C
            DC0506072558A6659B65D0A35D6A31A915B2DC836ACDD469EFCAEF08C716F4FC
            7C35D09457DF6D50F54FC637C7EF0FD36BD292D708FE59EBBE71BC4340952422
            366EEE9B6F64192FB49CACC53A43792A5A5489F969550AD7DEC8DF7652BFFA5B
            FB31A694E75AAD476F143770D2F65F44127278F9B270F2272EEC492D867771F6
            6C5079EBFBC411B58ABEB912640B350B927553A6AD21EAED68700E103932F223
            A5A2AD76169F7B059CF940C4A988D59AECC5156A251DC83EEE6DFCCF9F4E1E7C
            2DCD9377F42CA3D9C939EBF9BF83AE0DD0BF0BDB326A50015EA87C90EA6AE285
            2BF065D66BD6ABC56EC5376874D31850AC831845763BF796E90C3A8494D3CCA5
            6965E7C4D9B34AD4EA2E2BED222C99A6FE6860376C17C8EFC656E8D114591D9D
            7AD6756DDDB541D610273225BB6B5679F2C55ABBED6D75455252EBDFDC9F5997
            39B0C7430F3923853A08631E4B980099A10DFA2FBDBBBAF1FF00BA515F4FEE4D
            D2D09B5F119B3213A46E3F235D6D498EC45EB2DD9D882C06B84FF8A4A52DD9C8
            0D43A36AB522ADE4C14B210F7ECC81AE1389221DFF00B9E991A4F0E34CA5B6D1
            E6D7174E14E0EF7516DF9BB7D9F45625EE68EFCF9973DEC440F00F00F00F00F0
            0F00F01E3909002240365654D12322E30426424A4A409643023C00D9C9261A69
            84E52DB4CB4DA54B71C5A9284213952B38C6339F330511E84DD7AC2FD9E82F9C
            5E8B899184D3F5CAD1DA9788E325A2B32168ACF38D5A79DADCBEC3ADC232430D
            AACDB72DE5BA2C6B4747332C044B717100CD9107364BA56B709A6A947378CBAE
            6BD163CF0C2E896E324ADA5F1FCF43F5B2F8976E772F39743F47757D16420FA9
            6DBA836807C4DA2B3637646278EA11FA9A64B5EC5B31B1EDA042EFB649C08190
            BB4E10D966658446D723B1101C5AC355F46BC366AF08C6CE374AA49AF15DE38E
            8A2B2B5B1BDEE8E64948B49E30E9187EBDE57D19D250A262359DB1428B9F938A
            4A1486A1AD232D70B73831F0B71D565A0A5C5385696A716A71B652BCE7F957B0
            D5876751AE0FFD1249DF560E7A3E6839B6CDDC5BCF95F9735B4C1319B1AB9A1F
            B3FA2A18A11C363BFA8B4D3626A15AD36EC94DA72D8EC03296635B8B316E38A4
            B0CBAB71D47F391D0FEFD8E50A7094A595E2BDF1C33C13BF3B10D3CCC2EA5DAB
            AF7B63BEBE147635614289B023A9DF2474FDE7AD54C2DBB1E95DBD07A4A9ACDE
            2A3618A214E92136D1ECBCCC794FAB09344719CA5CCB8EADA4F0A9CA14AB66AD
            BBFD475BAF753D0E92FD8C81E01E01E01E01E01E01E01E0294BE5D7A398606D7
            DC331568128D1BD135DB45E3ACB6C3E73E037A278628868C26E7B4A8A1D5F934
            759D2FAEB10F8CB4560B5392412196CB783259DDB1D0552F278EEE51F99F0BE9
            A7AF21BD18E67B795F504FF626C7D57D55B1E8561D39C7FCFF00155E8BF8FCE4
            2B186EC482E62AD18441D6FAA36BEBA9042871A60705D40FAF835A32ED741693
            2E0BB97881650D55946845C5633978E5C2F9C57DF4CD6B68B35CBF3D8BA0F610
            540F3E913BC67F20DB7392671B489CE9D92AB4F5171E94D8E9446D5F7082CFF6
            9D5BA1D87474E3F0590B57F9D440586450018C5C921824D2DD2590F5D4FE3505
            2F8A3DD97D9E7FEDDF444E85BF7B21054FEA59846DFF0098AEB8B2063E44038F
            792B4273299933247EC4A5C3A0EC2474BCE48C32538C35FA8DC40B5B188CAFF2
            5FEDB58C34BCA70F21BD32EEECB1FE696F7A5D3FB026AD6B91397A99BCE7BA66
            A1A0753D577EDAA225216CDB62B9498384B8D8459D93C4BCE9535271AD37FB27
            1CFA5193649EC2E44B6DB69820A71869B6D35F6F59D3DCDE7BB861D32E765C32
            E4459122FD5123C03C03C03C03C03C03C03C073A3CF9F17BB9FA5FBBB7FF007E
            7C91D717011075FA2A1B9D392157B81BC5682D7DAB9E431ADAC9B59EA5125431
            C3A1C65332257F0FBEC3B3051721323A16AC84FEF957850A7BB4DDDB5E3B356E
            97D5F1D34C72E64B7ED7D343A2EF603A1E023375D731D63ADF47D8F514E4F4C5
            167D46455BB576DAA9FF00D17ED2BB6EA657F6942DADAFE598718282938B2B1F
            C65C08B049263DF3E33F71860F7F3EEE9CDD397B35C53D3F35040CADF507C9EE
            9582AFE9DD9FF1D161E9AD991433959AE6F9D29D09A7A0752EDB66B83A93FE75
            B117B29E8B92A49650A861F307263CE68E3DC231088716A4C58FA3B1D9E58F6A
            92D6F1C55F95F1B6BBB7B117FCFDC927F1EFCA964E6AD69B22D3B6735B33A5BA
            9375EC2E98E9091A9926C9D5A32FDB1A572445EB6A34B4CA3120E576A710D830
            916829C73F37183A45B4B399271A4D75E6A52B26DC63845BC2FCEDCFD6D6B937
            B93E7D401E01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E
            01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E01E03FF
            D9}
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fdbRK'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no=no'
      'dibuat_oleh=dibuat_oleh'
      'diberikan_kepada=diberikan_kepada'
      'bagian=bagian'
      'mgr_dept=mgr_dept'
      'mgr_email=mgr_email'
      'email=email'
      'tanggal=tanggal'
      'jam=jam'
      'status=status'
      'kategori=kategori'
      'target_selesai=target_selesai'
      'tgl_selesai=tgl_selesai'
      'no_so=no_so'
      'kode_cust=kode_cust'
      'nama_cust=nama_cust'
      'lokasi_pasang=lokasi_pasang'
      'tgl_pembelian=tgl_pembelian'
      'tgl_pengiriman=tgl_pengiriman'
      'kode_barang=kode_barang'
      'nama_barang=nama_barang'
      'warna=warna'
      'jml_order=jml_order'
      'deskripsi_komplain=deskripsi_komplain'
      'verifikasi_analisa=verifikasi_analisa'
      'tindakan_perbaikan=tindakan_perbaikan'
      'tindak_lanjut=tindak_lanjut'
      'tgl_keputusan=tgl_keputusan'
      'no_so_pengganti=no_so_pengganti'
      'no_sj_pengganti=no_sj_pengganti'
      'catatan_tambahan=catatan_tambahan'
      'jml_komplain=jml_komplain'
      'f_dept_terkait=f_dept_terkait'
      'f_mgr_area=f_mgr_area'
      'f_mgr_qac=f_mgr_qac'
      'f_director=f_director'
      'f_director2=f_director2'
      'f_cetak=f_cetak'
      'f_ganti=f_ganti'
      'ket_notapp=ket_notapp')
    DataSet = zqRK
    BCDToCurrency = False
    Left = 145
    Top = 75
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 175
    Top = 75
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 41444.816258680560000000
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 50
    Top = 75
  end
  object frxXLSExport1: TfrxXLSExport
    FileName = 'C:\rpt_list_rk2.xls'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 41468.368430798610000000
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 210
    Top = 75
  end
  object rptDaftarRK: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41416.592203946800000000
    ReportOptions.LastChange = 41517.562765821800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 50
    Top = 140
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'fdbRK'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 10.001250000000000000
      RightMargin = 10.001250000000000000
      TopMargin = 5.291666666666670000
      BottomMargin = 3.968750000000000000
      object MasterData1: TfrxMasterData
        Height = 47.000000000000000000
        Top = 166.299320000000000000
        Width = 980.400633175000000000
        DataSet = frxDBDataset1
        DataSetName = 'fdbRK'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 38.661410000000000000
          Top = 4.000000000000000000
          Width = 97.118120000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'no'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."no"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 2.220470000000000000
          Top = 4.000000000000000000
          Width = 34.220470000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object fdbRKno_so: TfrxMemoView
          Left = 137.000000000000000000
          Top = 4.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'no_so'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."no_so"]')
          ParentFont = False
        end
        object fdbRKnama_cust: TfrxMemoView
          Left = 234.000000000000000000
          Top = 4.000000000000000000
          Width = 268.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'nama_cust'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."nama_cust"]')
          ParentFont = False
        end
        object fdbRKdibuat_oleh: TfrxMemoView
          Left = 506.000000000000000000
          Top = 4.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'dibuat_oleh'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."dibuat_oleh"]')
          ParentFont = False
        end
        object fdbRKdiberikan_kepada: TfrxMemoView
          Left = 602.000000000000000000
          Top = 4.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'diberikan_kepada'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."diberikan_kepada"]')
          ParentFont = False
        end
        object fdbRKbagian: TfrxMemoView
          Left = 698.000000000000000000
          Top = 4.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'bagian'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."bagian"]')
          ParentFont = False
        end
        object fdbRKstatus: TfrxMemoView
          Left = 750.000000000000000000
          Top = 4.000000000000000000
          Width = 62.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRK."status"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 50.000000000000000000
          Top = 24.000000000000000000
          Width = 82.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dept. Terkait : ')
          ParentFont = False
        end
        object CheckBox1: TfrxCheckBoxView
          Left = 134.000000000000000000
          Top = 24.000000000000000000
          Width = 18.897650000000000000
          Height = 16.000000000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'f_dept_terkait'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Expression = 'fdbRK."f_dept_terkait" = 1'
        end
        object Memo12: TfrxMemoView
          Left = 158.000000000000000000
          Top = 24.000000000000000000
          Width = 82.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Mgr. Terkait : ')
          ParentFont = False
        end
        object CheckBox2: TfrxCheckBoxView
          Left = 242.000000000000000000
          Top = 24.000000000000000000
          Width = 18.897650000000000000
          Height = 16.000000000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'f_mgr_area'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Expression = 'fdbRK."f_mgr_area" = 1'
        end
        object Memo13: TfrxMemoView
          Left = 264.000000000000000000
          Top = 24.000000000000000000
          Width = 70.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Mgr. QAC : ')
          ParentFont = False
        end
        object CheckBox3: TfrxCheckBoxView
          Left = 337.000000000000000000
          Top = 24.000000000000000000
          Width = 18.897650000000000000
          Height = 16.000000000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'f_mgr_qac'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Expression = 'fdbRK."f_mgr_qac" = 1'
        end
        object Memo14: TfrxMemoView
          Left = 358.000000000000000000
          Top = 24.000000000000000000
          Width = 74.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dir. Busdev : ')
          ParentFont = False
        end
        object CheckBox4: TfrxCheckBoxView
          Left = 435.000000000000000000
          Top = 24.000000000000000000
          Width = 18.897650000000000000
          Height = 16.000000000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'f_director'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Expression = 'fdbRK."f_director" = 1'
        end
        object Memo15: TfrxMemoView
          Left = 458.000000000000000000
          Top = 24.000000000000000000
          Width = 70.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dir. Sales : ')
          ParentFont = False
        end
        object CheckBox5: TfrxCheckBoxView
          Left = 531.000000000000000000
          Top = 24.000000000000000000
          Width = 18.897650000000000000
          Height = 16.000000000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'f_director2'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Expression = 'fdbRK."f_director2" = 1'
        end
      end
      object Header1: TfrxHeader
        Height = 24.000000000000000000
        Top = 120.944960000000000000
        Width = 980.400633175000000000
        object Memo2: TfrxMemoView
          Left = 38.661410000000000000
          Top = 2.000000000000000000
          Width = 97.118120000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. RK')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.000000000000000000
          Width = 980.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 22.000000000000000000
          Width = 980.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 2.220470000000000000
          Top = 2.000000000000000000
          Width = 34.220470000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 137.000000000000000000
          Top = 2.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. SO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 234.000000000000000000
          Top = 2.000000000000000000
          Width = 268.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Customer')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 506.000000000000000000
          Top = 2.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dibuat Oleh')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 602.000000000000000000
          Top = 2.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ditujukan Kpd.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 698.000000000000000000
          Top = 2.000000000000000000
          Width = 48.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bagian')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 750.000000000000000000
          Top = 2.000000000000000000
          Width = 62.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 40.000000000000000000
        Top = 18.897650000000000000
        Width = 980.400633175000000000
        object Memo10: TfrxMemoView
          Left = 12.000000000000000000
          Top = 8.000000000000000000
          Width = 228.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Daftar Resolusi Komplain')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 38.000000000000000000
        Top = 234.330860000000000000
        Width = 980.400633175000000000
        object Line3: TfrxLineView
          Top = 2.000000000000000000
          Width = 980.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 224.000000000000000000
          Top = 10.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
        end
        object Memo16: TfrxMemoView
          Left = 50.000000000000000000
          Top = 10.000000000000000000
          Width = 172.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Jumlah Resolusi Komplain : ')
        end
      end
    end
  end
  object rptRekapRK: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41416.592203946800000000
    ReportOptions.LastChange = 41590.454186921300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 50
    Top = 175
    Datasets = <
      item
        DataSet = fdbRekapRK
        DataSetName = 'fdbRekapRK'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 420.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 8
      LeftMargin = 2.645833333333330000
      RightMargin = 2.645833333333330000
      TopMargin = 5.291666666666670000
      BottomMargin = 3.968750000000000000
      object MasterData1: TfrxMasterData
        Height = 18.000000000000000000
        Top = 166.299320000000000000
        Width = 1567.402587083333000000
        DataSet = fdbRekapRK
        DataSetName = 'fdbRekapRK'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 37.000000000000000000
          Top = 3.000000000000000000
          Width = 82.000000000000000000
          Height = 14.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."no"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 6.000000000000000000
          Top = 3.000000000000000000
          Width = 28.000000000000000000
          Height = 14.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object fdbRKnama_cust: TfrxMemoView
          Left = 119.000000000000000000
          Top = 3.000000000000000000
          Width = 194.000000000000000000
          Height = 14.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."nama_cust"]')
          ParentFont = False
        end
        object fdbRKdibuat_oleh: TfrxMemoView
          Left = 829.000000000000000000
          Top = 2.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."dibuat_oleh"]')
          ParentFont = False
        end
        object fdbRKdiberikan_kepada: TfrxMemoView
          Left = 998.000000000000000000
          Top = 2.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."diberikan_kepada"]')
          ParentFont = False
        end
        object fdbRKstatus: TfrxMemoView
          Left = 1246.000000000000000000
          Top = 2.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."status"]')
          ParentFont = False
        end
        object fdbRKkategori: TfrxMemoView
          Left = 724.000000000000000000
          Top = 2.000000000000000000
          Width = 102.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."kategori"]')
          ParentFont = False
        end
        object fdbRKtanggal: TfrxMemoView
          Left = 924.000000000000000000
          Top = 2.000000000000000000
          Width = 72.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."tanggal"]')
          ParentFont = False
        end
        object fdbRKdeskripsi_komplain1: TfrxMemoView
          Left = 315.000000000000000000
          Top = 2.000000000000000000
          Width = 406.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."deskripsi_komplain"]')
          ParentFont = False
        end
        object fdbRKtarget_selesai: TfrxMemoView
          Left = 1094.000000000000000000
          Top = 2.000000000000000000
          Width = 72.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."target_selesai"]')
          ParentFont = False
        end
        object fdbRKtanggal1: TfrxMemoView
          Left = 1328.000000000000000000
          Top = 2.000000000000000000
          Width = 58.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[YearOf(<fdbRekapRK."tanggal">)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 1388.000000000000000000
          Top = 2.000000000000000000
          Width = 66.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[MonthOf(<fdbRekapRK."tanggal">)]')
          ParentFont = False
        end
        object fdbRKbagian: TfrxMemoView
          Left = 1456.000000000000000000
          Top = 2.000000000000000000
          Width = 66.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRekapRK."bagian"]')
          ParentFont = False
        end
        object fdbRKtgl_selesai: TfrxMemoView
          Left = 1167.874770000000000000
          Width = 72.000000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'fdbRK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapRK."tgl_selesai"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 24.000000000000000000
        Top = 120.944960000000000000
        Width = 1567.402587083333000000
        object Memo2: TfrxMemoView
          Left = 37.000000000000000000
          Top = 2.000000000000000000
          Width = 82.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. RK')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.000000000000000000
          Width = 1562.692950000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 22.000000000000000000
          Width = 1562.692950000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 6.000000000000000000
          Top = 2.000000000000000000
          Width = 28.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 119.000000000000000000
          Top = 2.000000000000000000
          Width = 194.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Customer')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 829.000000000000000000
          Top = 2.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dibuat Oleh')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 998.000000000000000000
          Top = 2.000000000000000000
          Width = 92.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ditujukan Kpd.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1246.000000000000000000
          Top = 2.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 724.000000000000000000
          Top = 2.000000000000000000
          Width = 102.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kategori')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 924.000000000000000000
          Top = 2.000000000000000000
          Width = 72.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl. Dibuat')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 315.000000000000000000
          Top = 2.000000000000000000
          Width = 406.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 1094.000000000000000000
          Top = 2.000000000000000000
          Width = 72.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl. Target S.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 1328.000000000000000000
          Top = 2.000000000000000000
          Width = 58.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Year CCR')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 1388.000000000000000000
          Top = 2.000000000000000000
          Width = 66.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Month CCR')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 1456.000000000000000000
          Top = 2.000000000000000000
          Width = 66.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dept. Terkait')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 1167.874770000000000000
          Top = 2.000000000000000000
          Width = 72.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl. Selesai')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 40.000000000000000000
        Top = 18.897650000000000000
        Width = 1567.402587083333000000
        object Memo10: TfrxMemoView
          Left = 12.000000000000000000
          Top = 8.000000000000000000
          Width = 228.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Rekap Analisa CCR')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 38.000000000000000000
        Top = 207.874150000000000000
        Width = 1567.402587083333000000
        object Line3: TfrxLineView
          Top = 2.000000000000000000
          Width = 1562.692950000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 152.000000000000000000
          Top = 12.000000000000000000
          Width = 108.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 6.000000000000000000
          Top = 12.000000000000000000
          Width = 144.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Jumlah Resolusi Komplain : ')
          ParentFont = False
        end
      end
    end
  end
  object zqRekapRK: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_rk WHERE tanggal BETWEEN :tgl1 AND :tgl2')
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
    Left = 80
    Top = 175
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
  object fdbRekapRK: TfrxDBDataset
    UserName = 'fdbRekapRK'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no=no'
      'dibuat_oleh=dibuat_oleh'
      'diberikan_kepada=diberikan_kepada'
      'bagian=bagian'
      'mgr_dept=mgr_dept'
      'mgr_email=mgr_email'
      'email=email'
      'tanggal=tanggal'
      'jam=jam'
      'status=status'
      'kategori=kategori'
      'target_selesai=target_selesai'
      'tgl_selesai=tgl_selesai'
      'no_so=no_so'
      'kode_cust=kode_cust'
      'nama_cust=nama_cust'
      'lokasi_pasang=lokasi_pasang'
      'tgl_pembelian=tgl_pembelian'
      'tgl_pengiriman=tgl_pengiriman'
      'kode_barang=kode_barang'
      'nama_barang=nama_barang'
      'warna=warna'
      'jml_order=jml_order'
      'deskripsi_komplain=deskripsi_komplain'
      'verifikasi_analisa=verifikasi_analisa'
      'tindakan_perbaikan=tindakan_perbaikan'
      'tindakan_perbaikan_int=tindakan_perbaikan_int'
      'tindak_lanjut=tindak_lanjut'
      'tgl_keputusan=tgl_keputusan'
      'no_so_pengganti=no_so_pengganti'
      'no_sj_pengganti=no_sj_pengganti'
      'catatan_tambahan=catatan_tambahan'
      'jml_komplain=jml_komplain'
      'f_dept_terkait=f_dept_terkait'
      'f_mgr_area=f_mgr_area'
      'f_mgr_qac=f_mgr_qac'
      'f_director=f_director'
      'f_director2=f_director2'
      'f_cetak=f_cetak'
      'f_ganti=f_ganti'
      'ket_notapp=ket_notapp'
      'dt_dept_terkait=dt_dept_terkait'
      'dt_mgr_area=dt_mgr_area'
      'dt_mgr_qac=dt_mgr_qac'
      'dt_director=dt_director'
      'dt_director2=dt_director2'
      'dt_closed=dt_closed')
    DataSource = dsRekapRK
    BCDToCurrency = False
    Left = 145
    Top = 175
  end
  object dsRekapRK: TDataSource
    DataSet = zqRekapRK
    Left = 115
    Top = 175
  end
  object fdkRK: TfrxDBDataset
    UserName = 'fdbRK'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no=no'
      'dibuat_oleh=dibuat_oleh'
      'diberikan_kepada=diberikan_kepada'
      'bagian=bagian'
      'mgr_dept=mgr_dept'
      'mgr_email=mgr_email'
      'email=email'
      'tanggal=tanggal'
      'jam=jam'
      'status=status'
      'kategori=kategori'
      'target_selesai=target_selesai'
      'tgl_selesai=tgl_selesai'
      'no_so=no_so'
      'kode_cust=kode_cust'
      'nama_cust=nama_cust'
      'lokasi_pasang=lokasi_pasang'
      'tgl_pembelian=tgl_pembelian'
      'tgl_pengiriman=tgl_pengiriman'
      'kode_barang=kode_barang'
      'nama_barang=nama_barang'
      'warna=warna'
      'jml_order=jml_order'
      'deskripsi_komplain=deskripsi_komplain'
      'verifikasi_analisa=verifikasi_analisa'
      'tindakan_perbaikan=tindakan_perbaikan'
      'tindakan_perbaikan_int=tindakan_perbaikan_int'
      'tindak_lanjut=tindak_lanjut'
      'tgl_keputusan=tgl_keputusan'
      'no_so_pengganti=no_so_pengganti'
      'no_sj_pengganti=no_sj_pengganti'
      'catatan_tambahan=catatan_tambahan'
      'jml_komplain=jml_komplain'
      'f_dept_terkait=f_dept_terkait'
      'f_mgr_area=f_mgr_area'
      'f_mgr_qac=f_mgr_qac'
      'f_director=f_director'
      'f_director2=f_director2'
      'f_cetak=f_cetak'
      'f_ganti=f_ganti'
      'ket_notapp=ket_notapp'
      'dt_dept_terkait=dt_dept_terkait'
      'dt_mgr_area=dt_mgr_area'
      'dt_mgr_qac=dt_mgr_qac'
      'dt_director=dt_director'
      'dt_director2=dt_director2'
      'dt_closed=dt_closed')
    DataSource = dsRekapRK
    BCDToCurrency = False
    Left = 85
    Top = 140
  end
end
