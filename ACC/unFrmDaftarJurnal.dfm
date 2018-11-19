inherited frmDaftarJurnal: TfrmDaftarJurnal
  Left = 478
  Top = 178
  VertScrollBar.Range = 0
  Align = alClient
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Daftar Jurnal'
  ClientHeight = 657
  ClientWidth = 1033
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1033
    Height = 96
    inherited lblJudul: TLabel
      Width = 107
      Caption = 'Daftar Jurnal'
    end
    object cxLabel1: TcxLabel
      Left = 14
      Top = 52
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 51
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 52
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 51
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 347
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  inherited pnlTengah: TPanel
    Top = 96
    Width = 1033
    Height = 485
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 279
      Width = 1031
      Height = 205
      Align = alBottom
      TabOrder = 0
      object cxTblJurnalDet: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsJurnalDet
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxTblJurnalDetdebet
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxTblJurnalDetkredit
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.Footer = True
        object cxTblJurnalDetno_jurnal: TcxGridDBColumn
          DataBinding.FieldName = 'no_jurnal'
          Visible = False
        end
        object cxTblJurnalDetakun: TcxGridDBColumn
          Caption = 'No.Akun'
          DataBinding.FieldName = 'akun'
          Width = 71
        end
        object cxTblJurnalDetnama: TcxGridDBColumn
          Caption = 'Nama Akun'
          DataBinding.FieldName = 'nama'
          Width = 229
        end
        object cxTblJurnalDetketerangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 603
        end
        object cxTblJurnalDetdebet: TcxGridDBColumn
          Caption = 'Debet'
          DataBinding.FieldName = 'debet'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Width = 109
        end
        object cxTblJurnalDetkredit: TcxGridDBColumn
          DataBinding.FieldName = 'kredit'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Width = 104
        end
      end
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'no_bukti'
        DataController.MasterKeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid2DBTableView1id: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object cxGrid2DBTableView1no_bukti: TcxGridDBColumn
          DataBinding.FieldName = 'no_bukti'
          Visible = False
          Width = 64
        end
        object cxGrid2DBTableView1kode_brg: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode_brg'
          Width = 103
        end
        object cxGrid2DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 312
        end
        object cxGrid2DBTableView1qty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
        end
        object cxGrid2DBTableView1satuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 64
        end
        object cxGrid2DBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 252
        end
        object cxGrid2DBTableView1mata_uang: TcxGridDBColumn
          DataBinding.FieldName = 'mata_uang'
          Visible = False
          Width = 64
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxTblJurnalDet
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1031
      Height = 278
      Align = alClient
      TabOrder = 1
      object cxTblJurnal: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblJurnalFocusedRecordChanged
        DataController.DataSource = dsJurnal
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        object cxTblJurnalf_posted: TcxGridDBColumn
          Caption = 'Posted'
          DataBinding.FieldName = 'f_posted'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 63
        end
        object cxTblJurnalno_jurnal: TcxGridDBColumn
          Caption = 'No.Jurnal'
          DataBinding.FieldName = 'no_jurnal'
          Width = 150
        end
        object cxTblJurnaltanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Options.Editing = False
          Width = 124
        end
        object cxTblJurnalketerangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 638
        end
      end
      object cxGridDBTableView3: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'no_bukti'
        DataController.MasterKeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGridDBColumn42: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object cxGridDBColumn43: TcxGridDBColumn
          DataBinding.FieldName = 'no_bukti'
          Visible = False
          Width = 64
        end
        object cxGridDBColumn44: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode_brg'
          Width = 103
        end
        object cxGridDBColumn45: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 312
        end
        object cxGridDBColumn46: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
        end
        object cxGridDBColumn47: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 64
        end
        object cxGridDBColumn48: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 252
        end
        object cxGridDBColumn49: TcxGridDBColumn
          DataBinding.FieldName = 'mata_uang'
          Visible = False
          Width = 64
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxTblJurnal
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 581
    Width = 1033
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 17
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 95
      Visible = False
    end
  end
  object zqrJurnal: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT f_posted,no_jurnal,tanggal,keterangan'
      'FROM tbl_jurnal'
      ' WHERE (tanggal BETWEEN :tgl1 AND :tgl2)')
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
    Top = 25
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
  object dsJurnal: TDataSource
    DataSet = zqrJurnal
    Left = 500
    Top = 30
  end
  object zJurnalDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_jurnal,a.akun,b.nama,IF(IFNULL(a.kode_brg,'#39'a'#39')='#39'a'#39',a' +
        '.keterangan,CONCAT(a.keterangan,'#39' ['#39',a.kode_brg,'#39'-'#39',c.deskripsi,' +
        #39']'#39'))keterangan,a.debet,a.kredit'
      'from tbl_jurnal_det a left join tbl_coa b on a.akun=b.noakun '
      'left join tbl_barang c on a.kode_brg=c.kode'
      'where a.no_jurnal = :no_jurnal'
      'order by a.debet,a.no_jurnal DESC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_jurnal'
        ParamType = ptUnknown
      end>
    Left = 546
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_jurnal'
        ParamType = ptUnknown
      end>
  end
  object dsJurnalDet: TDataSource
    DataSet = zJurnalDet
    Left = 576
    Top = 30
  end
end
