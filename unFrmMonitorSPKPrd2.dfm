inherited frmMonitorSPKPrd2: TfrmMonitorSPKPrd2
  Left = 88
  Top = 79
  Width = 1252
  Height = 490
  VertScrollBar.Visible = False
  Caption = 'Monitor SPK'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1236
    inherited lblJudul: TLabel
      Width = 125
      Caption = 'Monitoring SPK'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1236
    Height = 40
    object cxLabel1: TcxLabel
      Left = 15
      Top = 9
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 67
      Top = 7
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 195
      Top = 9
      Caption = 'S / D '
    end
    object cxdTgl2: TcxDateEdit
      Left = 232
      Top = 7
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 358
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  inherited pnlBawah: TPanel
    Left = 1040
    Top = 261
    Width = 1052
    Align = alNone
    Visible = False
    inherited btnKeluar: TButton
      Left = 907
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 830
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 106
    Width = 1236
    Height = 300
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1234
      Height = 298
      Align = alClient
      TabOrder = 0
      object cxTblView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsMonSPK
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        object cxTblViewtanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTblViewno_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
          Width = 101
        end
        object cxTblViewColumn4: TcxGridDBColumn
          Caption = 'Komplit'
          DataBinding.FieldName = 'f_completed'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 49
        end
        object cxTblViewkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTblViewdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 311
        end
        object cxTblViewqty_spk: TcxGridDBColumn
          Caption = 'Qty. SPK'
          DataBinding.FieldName = 'qty_spk'
        end
        object cxTblViewkode_brg_1: TcxGridDBColumn
          Caption = 'Kode Bahan'
          DataBinding.FieldName = 'kode_brg_1'
          Width = 72
        end
        object cxTblViewdeskripsi_1: TcxGridDBColumn
          Caption = 'Deskripsi Bahan'
          DataBinding.FieldName = 'deskripsi_1'
          Width = 372
        end
        object cxTblViewqty: TcxGridDBColumn
          Caption = 'Qty. Bahan'
          DataBinding.FieldName = 'qty'
        end
        object cxTblViewsatuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
        end
        object cxTblViewhsl_prd: TcxGridDBColumn
          Caption = 'Hsl. Produksi'
          DataBinding.FieldName = 'hsl_prd'
          Width = 79
        end
        object cxTblViewColumn2: TcxGridDBColumn
          Caption = 'Qty. Reject (KG)'
          DataBinding.FieldName = 'qty_reject'
          Width = 101
        end
        object cxTblViewqty_serah_terima: TcxGridDBColumn
          Caption = 'Serah Terima'
          DataBinding.FieldName = 'qty_serah_terima'
          Width = 81
        end
        object cxTblViewColumn1: TcxGridDBColumn
          Caption = 'Jml. Minta Bahan'
          DataBinding.FieldName = 'qty_serah_terima_bahan'
          Width = 105
        end
        object cxTblViewColumn3: TcxGridDBColumn
          Caption = 'Qty. Kirim Bahan'
          DataBinding.FieldName = 'qty_kirim_bahan'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTblView
      end
    end
  end
  object btnCetakExcel: TButton
    Left = 10
    Top = 415
    Width = 75
    Height = 25
    Caption = 'Cetak Excel'
    TabOrder = 4
    OnClick = btnCetakExcelClick
  end
  object btnKeluar2: TButton
    Left = 88
    Top = 415
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 5
    OnClick = btnKeluar2Click
  end
  object zqrMonSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.tanggal, a.no_spk, a.kode_brg, b.deskripsi, a.qty qty_s' +
        'pk, c.kode_brg, d.deskripsi, c.qty, c.satuan, '
      
        'ifnull((select sum(qty_prod) from tbl_hsl_prd where no_spk = a.n' +
        'o_spk group by no_spk),0) hsl_prd,'
      
        'ifnull((select sum(qty) from tbl_trsmasuk_det where no_spk = a.n' +
        'o_spk and kode_brg = a.kode_brg),0) qty_serah_terima,'
      
        'ifnull((select sum(qty) from tbl_trspengeluaranbb_det where no_s' +
        'pk = a.no_spk and kode_brg = c.kode_brg),0) qty_serah_terima_bah' +
        'an,'
      
        'ifnull((select sum(qty) from tbl_trskeluar_det where no_spk = a.' +
        'no_spk and kode_brg = c.kode_brg),0) qty_kirim_bahan,'
      
        'ifnull((select sum(qty) from tbl_reject where no_spk = a.no_spk ' +
        'and kode_brg = a.kode_brg),0) qty_reject,'
      'a.f_completed'
      'from tbl_spk a'
      'left join tbl_barang b on a.kode_brg = b.kode'
      'left join tbl_bom_det c on c.no_spk = a.no_spk'
      'left join tbl_barang d on c.kode_brg = d.kode'
      'where a.tanggal between :tgl1 and :tgl2'
      'order by a.no_spk, a.kode_brg;')
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
    Left = 200
    Top = 15
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
  object dsMonSPK: TDataSource
    DataSet = zqrMonSPK
    Left = 230
    Top = 15
  end
end
