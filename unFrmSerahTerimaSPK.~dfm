inherited frmSerahTerimaSPK: TfrmSerahTerimaSPK
  Left = 209
  Top = 97
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Serah Terima SPK'
  ClientHeight = 497
  ClientWidth = 935
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 935
    inherited lblJudul: TLabel
      Width = 147
      Caption = 'Serah Terima SPK'
    end
  end
  inherited pnlTengah: TPanel
    Width = 935
    Height = 365
    object cxLabel1: TcxLabel
      Left = 14
      Top = 9
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 67
      Top = 8
      TabOrder = 1
      Width = 114
    end
    object cxdTgl2: TcxDateEdit
      Left = 220
      Top = 8
      TabOrder = 2
      Width = 114
    end
    object cxLabel2: TcxLabel
      Left = 186
      Top = 9
      Caption = 'S / D'
    end
    object btnProses: TButton
      Left = 341
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 0
      OnClick = btnProsesClick
    end
    object cxGrd: TcxGrid
      Left = 14
      Top = 36
      Width = 906
      Height = 321
      TabOrder = 5
      object cxTblView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnEditValueChanged = cxTblViewEditValueChanged
        DataController.DataSource = dsMonSPK
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        object cxTblViewno_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
          Width = 122
        end
        object cxTblViewColumn2: TcxGridDBColumn
          Caption = 'Sudah ST ?'
          DataBinding.FieldName = 'f_prd_check'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object cxTblViewColumn3: TcxGridDBColumn
          Caption = 'Tgl. Serah Terima SPK'
          DataBinding.FieldName = 'tgl_prd_check'
          Width = 128
        end
        object cxTblViewColumn1: TcxGridDBColumn
          Caption = 'Mesin'
          DataBinding.FieldName = 'nama_mesin'
          Width = 125
        end
        object cxTblViewtgl_spk: TcxGridDBColumn
          Caption = 'Tgl. SPK'
          DataBinding.FieldName = 'tgl_spk'
        end
        object cxTblViewno_so: TcxGridDBColumn
          Caption = 'No. SO'
          DataBinding.FieldName = 'no_so'
          Width = 92
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
        object cxTblViewhsl_prd: TcxGridDBColumn
          Caption = 'Qty. Hasil Prod.'
          DataBinding.FieldName = 'hsl_prd'
          Width = 83
        end
        object cxTblViewqty_serah_terima: TcxGridDBColumn
          Caption = 'Qty. Serah Terima'
          DataBinding.FieldName = 'qty_serah_terima'
          Width = 96
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTblView
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 431
    Width = 935
    inherited btnKeluar: TButton
      Left = 169
      TabOrder = 3
    end
    inherited btnBaru: TButton
      TabOrder = 0
    end
    inherited btnHapus: TButton
      TabOrder = 6
    end
    object btnExcel: TButton
      Left = 92
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 1
      OnClick = btnExcelClick
    end
  end
  object zqrMonSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_spk, a.tanggal tgl_spk, e.no_so, g.nama nama_custome' +
        'r, a.kode_brg, c.deskripsi, a.tgl_prd_check,'
      'a.qty qty_spk, h.nama nama_mesin,'
      
        'ifnull((select sum(qty_prod) from tbl_hsl_prd where no_spk = a.n' +
        'o_spk group by no_spk),0) hsl_prd,'
      
        'ifnull((select sum(qty) from tbl_trsmasuk_det where no_spk = a.n' +
        'o_spk and kode_brg = a.kode_brg),0) qty_serah_terima,'
      'f_prd_check'
      'from tbl_spk a'
      'left join tbl_barang c on c.kode = a.kode_brg'
      'left join tbl_mo e on e.no_spk = a.no_spk'
      'left join tbl_so_head f on f.no_bukti = e.no_so'
      'left join tbl_customer g on g.kode = f.kode_customer'
      'left join tbl_mesin h on h.kode = a.kode_mesin'
      'where a.tanggal between :tgl1 and :tgl2'
      '-- and f_prd_check = 0'
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
  object tblTmp: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'NoSPK'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.18.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 570
    Top = 26
    object tblTmpNoSPK: TStringField
      FieldName = 'NoSPK'
    end
  end
  object DataSource1: TDataSource
    DataSet = tblTmp
    Left = 600
    Top = 25
  end
end
