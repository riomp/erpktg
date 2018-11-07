inherited frmMonitorSPKPrd: TfrmMonitorSPKPrd
  Left = 213
  Top = 118
  Width = 1068
  Height = 487
  VertScrollBar.Visible = False
  Caption = 'Monitor SPK'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1052
    inherited lblJudul: TLabel
      Width = 125
      Caption = 'Monitoring SPK'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1052
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
      Left = 551
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
    object cxCmbStatus: TcxComboBox
      Left = 406
      Top = 7
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 5
      Width = 140
    end
    object cxLabel3: TcxLabel
      Left = 365
      Top = 9
      Caption = 'Status'
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
    Width = 1052
    Height = 300
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1050
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
        object cxTblViewColumn2: TcxGridDBColumn
          Caption = 'Komplit ?'
          DataBinding.FieldName = 'f_completed'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 61
        end
        object cxTblViewno_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
          Width = 97
        end
        object cxTblViewtgl_spk: TcxGridDBColumn
          Caption = 'Tgl. SPK'
          DataBinding.FieldName = 'tgl_spk'
        end
        object cxTblViewno_so: TcxGridDBColumn
          Caption = 'No. SO'
          DataBinding.FieldName = 'no_so'
          Width = 109
        end
        object cxTblViewnama_customer: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'nama_customer'
          Width = 297
        end
        object cxTblViewkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTblViewdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 319
        end
        object cxTblViewqty_spk: TcxGridDBColumn
          Caption = 'Qty. SPK'
          DataBinding.FieldName = 'qty_spk'
        end
        object cxTblViewColumn1: TcxGridDBColumn
          Caption = 'Mesin'
          DataBinding.FieldName = 'nama_mesin'
          Width = 125
        end
        object cxTblViewhsl_prd: TcxGridDBColumn
          Caption = 'Qty. Hasil Prod.'
          DataBinding.FieldName = 'hsl_prd'
          Width = 83
        end
        object cxTblViewqty_serah_terima: TcxGridDBColumn
          Caption = 'Qty. Serah Terima'
          DataBinding.FieldName = 'qty_serah_terima'
          Width = 89
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
      
        'select a.no_spk, a.tanggal tgl_spk, e.no_so, g.nama nama_custome' +
        'r, a.kode_brg, c.deskripsi,'
      'a.qty qty_spk, h.nama nama_mesin,'
      
        'ifnull((select sum(qty_prod) from tbl_hsl_prd where no_spk = a.n' +
        'o_spk group by no_spk),0) hsl_prd,'
      
        'ifnull((select sum(qty) from tbl_trsmasuk_det where no_spk = a.n' +
        'o_spk and kode_brg = a.kode_brg),0) qty_serah_terima,'
      'a.f_completed'
      'from tbl_spk a'
      'left join tbl_barang c on c.kode = a.kode_brg'
      'left join tbl_mo e on e.no_spk = a.no_spk'
      'left join tbl_so_head f on f.no_bukti = e.no_so'
      'left join tbl_customer g on g.kode = f.kode_customer'
      'left join tbl_mesin h on h.kode = a.kode_mesin'
      'where a.tanggal between :tgl1 and :tgl2'
      '-- '
      
        'and (c.deskripsi not like '#39'COMPOUND%'#39' AND c.deskripsi not like '#39 +
        'TEPUNG%'#39')'
      'order by a.no_spk;')
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
