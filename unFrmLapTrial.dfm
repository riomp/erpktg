object frmLapTrial: TfrmLapTrial
  Left = 505
  Top = 254
  Width = 321
  Height = 281
  Caption = 'frmLapTrial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rptAPP: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'EPSON LX-300+II ESC/P (Copy 1)'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42444.500585335600000000
    ReportOptions.LastChange = 42444.500585335600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 15
    Top = 20
    Datasets = <>
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 1028.032160000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Width = 483.779840000000000000
          Height = 79.370130000000000000
          ShowHint = False
        end
        object Memo1: TfrxMemoView
          Top = 30.236240000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ANALISA PENGEMBANGAN PRODUK')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 483.779840000000000000
          Width = 234.330860000000000000
          Height = 79.370130000000000000
          ShowHint = False
        end
        object Memo2: TfrxMemoView
          Left = 491.338900000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'No. Dokumen')
        end
        object Memo3: TfrxMemoView
          Left = 585.827150000000000000
          Top = 11.338590000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ':')
        end
        object Memo4: TfrxMemoView
          Left = 597.165740000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'FR/QAC-100-003')
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Revisi')
        end
        object Memo6: TfrxMemoView
          Left = 585.827150000000000000
          Top = 30.236240000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ':')
        end
        object Memo7: TfrxMemoView
          Left = 597.165740000000000000
          Top = 30.236240000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '02')
        end
        object Memo8: TfrxMemoView
          Left = 491.338900000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'No. Dokumen')
        end
        object Memo9: TfrxMemoView
          Left = 585.827150000000000000
          Top = 49.133890000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ':')
        end
        object Memo10: TfrxMemoView
          Left = 597.165740000000000000
          Top = 49.133890000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '29-10-2014')
        end
        object Shape3: TfrxShapeView
          Top = 83.149660000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. APP : ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 404.409710000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. PPPB : ')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Top = 109.606370000000000000
          Width = 718.110700000000000000
          Height = 151.181200000000000000
          ShowHint = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Tanggal Permintaan')
        end
        object Memo14: TfrxMemoView
          Left = 162.519790000000000000
          Top = 113.385900000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ':')
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Tanggal Percobaan')
        end
        object Memo16: TfrxMemoView
          Left = 162.519790000000000000
          Top = 132.283550000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ':')
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 151.181200000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Alokasi Percobaan')
        end
        object Memo18: TfrxMemoView
          Left = 162.519790000000000000
          Top = 151.181200000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ':')
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 170.078850000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Yang Mengajukan')
        end
        object Memo20: TfrxMemoView
          Left = 162.519790000000000000
          Top = 170.078850000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ':')
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 188.976500000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Spesifikasi Khusus')
        end
        object Memo22: TfrxMemoView
          Left = 162.519790000000000000
          Top = 188.976500000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ':')
        end
        object Memo23: TfrxMemoView
          Left = 3.779530000000000000
          Top = 207.874150000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Jenis Percobaan')
        end
        object Memo24: TfrxMemoView
          Left = 162.519790000000000000
          Top = 207.874150000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ':')
        end
        object Shape5: TfrxShapeView
          Left = 181.417440000000000000
          Top = 207.874150000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo25: TfrxMemoView
          Left = 211.653680000000000000
          Top = 207.874150000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Bahan Kimia ..........................')
        end
        object Shape6: TfrxShapeView
          Left = 181.417440000000000000
          Top = 230.551330000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo26: TfrxMemoView
          Left = 211.653680000000000000
          Top = 230.551330000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Perubahan Formula')
        end
        object Shape7: TfrxShapeView
          Left = 415.748300000000000000
          Top = 207.874150000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo27: TfrxMemoView
          Left = 445.984540000000000000
          Top = 207.874150000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Setting Mesin')
        end
        object Shape8: TfrxShapeView
          Left = 415.748300000000000000
          Top = 230.551330000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Memo28: TfrxMemoView
          Left = 445.984540000000000000
          Top = 230.551330000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Lain Lain ..........................')
        end
        object Shape9: TfrxShapeView
          Top = 260.787570000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
        end
        object Memo29: TfrxMemoView
          Top = 264.567100000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Komposisi Bahan')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 287.244280000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 37.795300000000000000
          Top = 287.244280000000000000
          Width = 268.346630000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Bahan Kimia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 306.141930000000000000
          Top = 287.244280000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode / Type')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 396.850650000000000000
          Top = 287.244280000000000000
          Width = 151.181200000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Supplier')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 548.031850000000000000
          Top = 287.244280000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 638.740570000000000000
          Top = 287.244280000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Satuan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Top = 317.480520000000000000
          Width = 37.795300000000000000
          Height = 442.205010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 37.795300000000000000
          Top = 317.480520000000000000
          Width = 268.346630000000000000
          Height = 442.205010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 306.141930000000000000
          Top = 317.480520000000000000
          Width = 90.708720000000000000
          Height = 442.205010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 396.850650000000000000
          Top = 317.480520000000000000
          Width = 151.181200000000000000
          Height = 442.205010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 548.031850000000000000
          Top = 317.480520000000000000
          Width = 90.708720000000000000
          Height = 442.205010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 638.740570000000000000
          Top = 317.480520000000000000
          Width = 79.370130000000000000
          Height = 442.205010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Top = 759.685530000000000000
          Width = 359.055350000000000000
          Height = 147.401670000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 359.055350000000000000
          Top = 759.685530000000000000
          Width = 359.055350000000000000
          Height = 147.401670000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Top = 910.866730000000000000
          Width = 359.055350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Dibuat Oleh : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 933.543910000000000000
          Width = 359.055350000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Top = 1005.354980000000000000
          Width = 359.055350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Manager QAC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 359.055350000000000000
          Top = 910.866730000000000000
          Width = 359.055350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Diketahui Oleh : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 359.055350000000000000
          Top = 933.543910000000000000
          Width = 359.055350000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 359.055350000000000000
          Top = 1005.354980000000000000
          Width = 359.055350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Op. & Buss. Dev. Director')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 7.559060000000000000
          Top = 759.685530000000000000
          Width = 351.496290000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            'Keterangan Tambahan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 362.834880000000000000
          Top = 759.685530000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kapasitas / Jam')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 532.913730000000000000
          Top = 759.685530000000000000
          Width = 15.118120000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 362.834880000000000000
          Top = 782.362710000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Jumlah Tenaga Kerja')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 532.913730000000000000
          Top = 782.362710000000000000
          Width = 15.118120000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 362.834880000000000000
          Top = 805.039890000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Proses Produksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 532.913730000000000000
          Top = 805.039890000000000000
          Width = 15.118120000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 362.834880000000000000
          Top = 827.717070000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Packing')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 532.913730000000000000
          Top = 827.717070000000000000
          Width = 15.118120000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ': ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
