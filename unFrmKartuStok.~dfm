object frmKartuStok: TfrmKartuStok
  Left = 296
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Kartu Stok'
  ClientHeight = 188
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 257
    Top = 151
    Width = 340
    Height = 26
    Caption = 
      'NOTE : Jika hasil cetak Kartu Stok tidak sesuai, mohon keluar du' +
      'lu dari program lalu masuk kembali'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object cxLabel1: TcxLabel
    Left = 15
    Top = 20
    Caption = 'Nama Barang '
  end
  object cxtNamaBrg: TcxTextEdit
    Left = 95
    Top = 20
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 591
  end
  object cxLabel3: TcxLabel
    Left = 15
    Top = 71
    Caption = 'Kode Barang'
  end
  object cxtKodeBrg: TcxTextEdit
    Left = 95
    Top = 71
    Properties.ReadOnly = True
    TabOrder = 3
    Width = 276
  end
  object cxLabel4: TcxLabel
    Left = 15
    Top = 123
    Caption = 'Periode'
  end
  object cxdTgl1: TcxDateEdit
    Left = 95
    Top = 123
    TabOrder = 5
    Width = 121
  end
  object cxdTgl2: TcxDateEdit
    Left = 249
    Top = 123
    TabOrder = 6
    Width = 121
  end
  object btnProses: TButton
    Left = 95
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 7
    OnClick = btnProsesClick
  end
  object cxLabel2: TcxLabel
    Left = 220
    Top = 126
    Caption = 'S/D'
  end
  object cxtKategori: TcxTextEdit
    Left = 95
    Top = 45
    Properties.ReadOnly = True
    TabOrder = 9
    Width = 366
  end
  object cxLabel5: TcxLabel
    Left = 15
    Top = 45
    Caption = 'Kategori'
  end
  object Button1: TButton
    Left = 175
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Tutup'
    TabOrder = 11
    OnClick = Button1Click
  end
  object cxLabel6: TcxLabel
    Left = 15
    Top = 96
    Caption = 'Gudang'
  end
  object cxGrid1: TcxGrid
    Left = 715
    Top = 20
    Width = 801
    Height = 316
    TabOrder = 13
    Visible = False
    object tblView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsKS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object tblViewno_bukti: TcxGridDBColumn
        Caption = 'No. Transaksi'
        DataBinding.FieldName = 'no_bukti'
        Width = 109
      end
      object tblViewtanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 74
      end
      object tblViewjenis: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'jenis'
        Width = 64
      end
      object tblViewjml_masuk: TcxGridDBColumn
        Caption = 'Masuk'
        DataBinding.FieldName = 'jml_masuk'
      end
      object tblViewjml_keluar: TcxGridDBColumn
        Caption = 'Keluar'
        DataBinding.FieldName = 'jml_keluar'
      end
      object tblViewstok_akhir: TcxGridDBColumn
        Caption = 'Stok Akhir'
        DataBinding.FieldName = 'stok_akhir'
      end
      object tblViewqty: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
      end
      object tblViewgudang: TcxGridDBColumn
        DataBinding.FieldName = 'gudang'
        Visible = False
      end
      object tblViewno_so: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
      end
      object tblViewno_spk: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
      end
      object tblViewno_spmb: TcxGridDBColumn
        Caption = 'No. SPMB'
        DataBinding.FieldName = 'no_spmb'
      end
      object tblViewreferensi: TcxGridDBColumn
        Caption = 'Referensi'
        DataBinding.FieldName = 'referensi'
        Width = 125
      end
      object tblViewketerangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 174
      end
      object tblViewuser: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
        Width = 76
      end
      object tblViewuser_dept: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'user_dept'
      end
      object tblViewdeskripsi: TcxGridDBColumn
        DataBinding.FieldName = 'deskripsi'
        Visible = False
      end
      object tblViewtipe: TcxGridDBColumn
        DataBinding.FieldName = 'tipe'
      end
      object tblViewkategori: TcxGridDBColumn
        DataBinding.FieldName = 'kategori'
      end
      object tblViewsubkategori: TcxGridDBColumn
        DataBinding.FieldName = 'subkategori'
      end
      object tblViewdivisi: TcxGridDBColumn
        DataBinding.FieldName = 'divisi'
      end
      object tblViewsatuan: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
      end
      object tblViewnama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
      end
      object tblViewalamat: TcxGridDBColumn
        DataBinding.FieldName = 'alamat'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tblView
    end
  end
  object cxlGudang: TcxLookupComboBox
    Left = 95
    Top = 97
    Properties.KeyFieldNames = 'kode'
    Properties.ListColumns = <
      item
        Caption = 'Gudang'
        FieldName = 'kode'
      end
      item
        Caption = 'Nama Gudang'
        FieldName = 'nama'
      end>
    Properties.ListSource = dsGdg
    TabOrder = 14
    Width = 161
  end
  object DBGrid1: TDBGrid
    Left = 675
    Top = 5
    Width = 626
    Height = 181
    DataSource = DataSource1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object Button2: TButton
    Left = 450
    Top = 180
    Width = 75
    Height = 20
    Caption = 'Button2'
    TabOrder = 16
    Visible = False
    OnClick = Button2Click
  end
  object zqrKartuStok: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_ks '
      'WHERE kode_brg = 469 AND gudang = '#39'G01'#39
      'AND tanggal BETWEEN '#39'2013-12-01'#39' AND '#39'2014-02-28'#39
      'ORDER BY kode_brg, tanggal')
    Params = <>
    Left = 460
    Top = 95
  end
  object dsKS: TDataSource
    DataSet = zqrKartuStok
    Left = 490
    Top = 95
  end
  object zqrGdg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_gudang ORDER BY kode')
    Params = <>
    Left = 545
    Top = 70
  end
  object dsGdg: TDataSource
    DataSet = zqrGdg
    Left = 575
    Top = 70
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41709.690927731480000000
    ReportOptions.LastChange = 41709.690927731480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 430
    Top = 135
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
    end
  end
  object DataSource1: TDataSource
    Left = 575
    Top = 105
  end
end
