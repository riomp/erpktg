object frmCetakPO: TfrmCetakPO
  Left = 435
  Top = 156
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cetak PO'
  ClientHeight = 439
  ClientWidth = 1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1090
    439)
  PixelsPerInch = 96
  TextHeight = 13
  object btnCetak: TButton
    Left = 15
    Top = 405
    Width = 75
    Height = 25
    Caption = 'Cetak PO'
    TabOrder = 0
    OnClick = btnCetakClick
  end
  object btnKeluar: TButton
    Left = 994
    Top = 405
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 1
    OnClick = btnKeluarClick
  end
  object cxGrid2: TcxGrid
    Left = 16
    Top = 21
    Width = 1058
    Height = 374
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSPKPHead
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBTableView1f_approval: TcxGridDBColumn
        Caption = 'Approval'
        DataBinding.FieldName = 'f_approval'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 38
      end
      object cxGridDBTableView1no_bukti: TcxGridDBColumn
        Caption = 'No. PO'
        DataBinding.FieldName = 'no_bukti'
        Width = 101
      end
      object cxGrdJenisPO: TcxGridDBColumn
        Caption = 'Jenis PO'
        DataBinding.FieldName = 'jenis_po2'
        Width = 68
      end
      object cxGridDBTableView1no_fobj: TcxGridDBColumn
        Caption = 'No. FOBJ'
        DataBinding.FieldName = 'no_fobj'
      end
      object cxGridDBTableView1no_po_pajak: TcxGridDBColumn
        Caption = 'No. PO Pajak'
        DataBinding.FieldName = 'no_po_pajak'
      end
      object cxGridDBTableView1nama_supplier: TcxGridDBColumn
        Caption = 'Nama Supplier'
        DataBinding.FieldName = 'nama_supplier'
      end
      object cxGridDBTableView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
      end
      object cxGridDBTableView1tgl_required: TcxGridDBColumn
        Caption = 'Tgl. Dibutuhkan'
        DataBinding.FieldName = 'tgl_required'
        Width = 96
      end
      object cxGridDBTableView1jenis_po: TcxGridDBColumn
        Caption = 'Jenis PO'
        DataBinding.FieldName = 'jenis_po'
        Visible = False
      end
      object cxGridDBTableView1pembayaran: TcxGridDBColumn
        Caption = 'Pembayaran'
        DataBinding.FieldName = 'pembayaran'
        Width = 95
      end
      object cxGridDBTableView1ppn: TcxGridDBColumn
        Caption = 'PPN'
        DataBinding.FieldName = 'ppn'
      end
      object cxGridDBTableView1kode_alamat_kirim: TcxGridDBColumn
        DataBinding.FieldName = 'kode_alamat_kirim'
        Visible = False
      end
      object cxGridDBTableView1nama_pengiriman: TcxGridDBColumn
        Caption = 'Tujuan Pengiriman'
        DataBinding.FieldName = 'nama_pengiriman'
        Width = 167
      end
      object cxGridDBTableView1alamat: TcxGridDBColumn
        Caption = 'Alamat Kirim'
        DataBinding.FieldName = 'alamat'
        Width = 253
      end
      object cxGridDBTableView1kota: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'kota'
        Width = 138
      end
      object cxGridDBTableView1jam: TcxGridDBColumn
        DataBinding.FieldName = 'jam'
        Visible = False
      end
      object cxGridDBTableView1keterangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 326
      end
      object cxGridDBTableView1f_revisi: TcxGridDBColumn
        DataBinding.FieldName = 'f_revisi'
        Visible = False
      end
      object cxGridDBTableView1divisi: TcxGridDBColumn
        Caption = 'Divisi'
        DataBinding.FieldName = 'divisi'
      end
      object cxGridDBTableView1user: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
        Width = 98
      end
      object cxGridDBTableView1user_dept: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'user_dept'
        Width = 88
      end
      object cxGridDBTableView1user_edit: TcxGridDBColumn
        DataBinding.FieldName = 'user_edit'
        Visible = False
      end
      object cxGridDBTableView1tgl_edit: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_edit'
        Visible = False
      end
      object cxGridDBTableView1tgl_input: TcxGridDBColumn
        Caption = 'Tgl. Input'
        DataBinding.FieldName = 'tgl_input'
      end
      object cxGridDBTableView1f_completed: TcxGridDBColumn
        Caption = 'Komplit'
        DataBinding.FieldName = 'f_completed'
      end
      object cxGridDBTableView1currency: TcxGridDBColumn
        DataBinding.FieldName = 'currency'
        Visible = False
        Width = 50
      end
      object cxGridDBTableView1host: TcxGridDBColumn
        DataBinding.FieldName = 'host'
        Visible = False
      end
    end
    object cxGrid2DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSPKPDet
      DataController.DetailKeyFieldNames = 'no_bukti'
      DataController.KeyFieldNames = 'no_bukti'
      DataController.MasterKeyFieldNames = 'no_bukti'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1kode_brg: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGrid2DBTableView1deskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 378
      end
      object cxGrid2DBTableView1qty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##'
      end
      object cxGrid2DBTableView1satuan: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Width = 77
      end
      object cxGrid2DBTableView1harga: TcxGridDBColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'harga'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Properties.ValueType = vtFloat
      end
      object cxGrid2DBTableView1mata_uang: TcxGridDBColumn
        Caption = 'Mata Uang'
        DataBinding.FieldName = 'mata_uang'
        Width = 74
      end
      object cxGrid2DBTableView1keterangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 167
      end
      object cxGrid2DBTableView1nilai_tukar: TcxGridDBColumn
        DataBinding.FieldName = 'nilai_tukar'
        Visible = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object pnlPilihan: TPanel
    Left = 300
    Top = 159
    Width = 316
    Height = 162
    TabOrder = 3
    OnExit = pnlPilihanExit
    object cxRadioButton1: TcxRadioButton
      Left = 20
      Top = 20
      Width = 113
      Height = 17
      Caption = 'Non Pajak'
      TabOrder = 0
    end
    object cxRadioButton2: TcxRadioButton
      Left = 20
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Standard'
      TabOrder = 1
    end
    object cxRadioButton3: TcxRadioButton
      Left = 20
      Top = 60
      Width = 113
      Height = 17
      Caption = 'Import'
      TabOrder = 2
    end
    object cxCheckBox1: TcxCheckBox
      Left = 17
      Top = 91
      Caption = 'Internal'
      TabOrder = 3
      Width = 121
    end
    object btnCetak2: TButton
      Left = 21
      Top = 122
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 4
    end
    object btnBatal: TButton
      Left = 101
      Top = 122
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 5
      OnClick = btnBatalClick
    end
  end
  object btnCetakPOInternal: TButton
    Left = 515
    Top = 410
    Width = 101
    Height = 25
    Caption = 'Cetak PO (Internal)'
    TabOrder = 4
    Visible = False
    OnClick = btnCetakPOInternalClick
  end
  object btnCetakPOEvie: TButton
    Left = 620
    Top = 410
    Width = 101
    Height = 25
    Caption = 'Cetak PO (Evie)'
    TabOrder = 5
    Visible = False
    OnClick = btnCetakPOEvieClick
  end
  object cxChkEng: TcxCheckBox
    Left = 95
    Top = 407
    Caption = 'Bahasa Inggris'
    TabOrder = 6
    Width = 121
  end
  object zqrSPKPHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_po_head ORDER BY tanggal')
    Params = <>
    Left = 115
    Top = 70
  end
  object dsSPKPHead: TDataSource
    DataSet = zqrSPKPHead
    Left = 145
    Top = 70
  end
  object zqrSPKPDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_po_det')
    Params = <>
    Left = 125
    Top = 85
  end
  object dsSPKPDet: TDataSource
    DataSet = zqrSPKPDet
    Left = 155
    Top = 80
  end
end
