inherited frmStokBrgConsumable: TfrmStokBrgConsumable
  Left = 236
  Top = 65
  Width = 1000
  Height = 584
  Caption = 'Stok Barang Consumable'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 984
    inherited lblJudul: TLabel
      Width = 204
      Caption = 'Stok Barang Consumable'
    end
  end
  inherited pnlTengah: TPanel
    Width = 984
    Height = 430
    object cxGrd: TcxGrid
      Left = 15
      Top = 22
      Width = 951
      Height = 241
      TabOrder = 0
      object cxTblSBC: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblSBCFocusedRecordChanged
        DataController.DataSource = dsSBC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxTblSBCdept: TcxGridDBColumn
          Caption = 'Dept'
          DataBinding.FieldName = 'dept'
          Width = 75
        end
        object cxTblSBCdivisi: TcxGridDBColumn
          Caption = 'Divisi'
          DataBinding.FieldName = 'divisi'
          Width = 97
        end
        object cxTblSBCkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTblSBCdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 488
        end
        object cxTblSBCmasuk: TcxGridDBColumn
          Caption = 'Masuk'
          DataBinding.FieldName = 'masuk'
        end
        object cxTblSBCkeluar: TcxGridDBColumn
          Caption = 'Keluar'
          DataBinding.FieldName = 'keluar'
        end
        object cxTblSBCstok_akhir: TcxGridDBColumn
          Caption = 'Stok Akhir'
          DataBinding.FieldName = 'stok_akhir'
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTblSBC
      end
    end
    object cxGrdDet: TcxGrid
      Left = 15
      Top = 270
      Width = 951
      Height = 147
      TabOrder = 1
      object cxTblDet: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDet
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTblDetno_bukti: TcxGridDBColumn
          Caption = 'No. Trans'
          DataBinding.FieldName = 'no_bukti'
          Width = 100
        end
        object cxTblDettanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTblDetjenis: TcxGridDBColumn
          Caption = 'Jenis'
          DataBinding.FieldName = 'jenis'
          Width = 62
        end
        object cxTblDetkode_brg: TcxGridDBColumn
          DataBinding.FieldName = 'kode_brg'
          Visible = False
        end
        object cxTblDetdeskripsi: TcxGridDBColumn
          DataBinding.FieldName = 'deskripsi'
          Visible = False
        end
        object cxTblDetqty: TcxGridDBColumn
          Caption = 'Qty.'
          DataBinding.FieldName = 'qty'
          Width = 73
        end
        object cxTblDetuser: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'user'
        end
        object cxTblDetuser_dept: TcxGridDBColumn
          Caption = 'User Dept'
          DataBinding.FieldName = 'user_dept'
        end
      end
      object cxGrdDetLevel1: TcxGridLevel
        GridView = cxTblDet
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 496
    Width = 984
    Height = 50
    inherited btnKeluar: TButton
      Left = 93
      Top = 11
    end
    inherited btnSimpan: TButton
      Left = 795
      Top = 20
      Visible = False
    end
    object Button1: TButton
      Left = 15
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object zqrSBC: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'select a.dept, a.divisi, a.kode_brg,'
      'b.deskripsi,'
      'sum(if(a.tipe = '#39'IN_'#39',a.qty,0)) masuk, '
      'sum(if(a.tipe = '#39'OUT_'#39',a.qty,0)) keluar, '
      
        'sum(if(a.tipe = '#39'IN_'#39',a.qty,0)) - sum(if(a.tipe = '#39'OUT_'#39',a.qty,0' +
        ')) stok_akhir'
      'from tbl_history a'
      'left join tbl_barang b on a.kode_brg = b.kode'
      'where gudang = '#39'G-ASIS'#39' and dept is not null'
      'group by a.dept, a.divisi, a.kode_brg, b.deskripsi;')
    Params = <>
    Left = 255
    Top = 201
  end
  object dsSBC: TDataSource
    DataSet = zqrSBC
    Left = 285
    Top = 201
  end
  object zqrDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_bukti, a.tanggal, if(a.tipe = '#39'IN_'#39','#39'MASUK'#39','#39'KELUAR'#39 +
        ') jenis, a.kode_brg, b.deskripsi, a.qty qty, a.user, a.user_dept'
      'from tbl_history a'
      'left join tbl_barang b on a.kode_brg = b.kode'
      'where gudang = '#39'G-ASIS'#39' and dept is not null and '
      'a.kode_brg = :kode_brg and '
      'a.dept = :dept and'
      'a.divisi = :divisi '
      'order by a.tgl_input')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'divisi'
        ParamType = ptUnknown
      end>
    Left = 255
    Top = 396
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dept'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'divisi'
        ParamType = ptUnknown
      end>
  end
  object dsDet: TDataSource
    DataSet = zqrDet
    Left = 285
    Top = 396
  end
end
