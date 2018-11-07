inherited frmHistoryPengBB: TfrmHistoryPengBB
  Left = 224
  Top = 146
  Caption = 'History Pengeluaran Bahan Baku Berdasarkan SPK'
  ClientHeight = 437
  ClientWidth = 981
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 981
    inherited lblJudul: TLabel
      Width = 413
      Caption = 'History Pengeluaran Bahan Baku Berdasarkan SPK'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 981
    Height = 325
    inherited pg: TPageControl
      Left = 835
      Top = 106
      Width = 374
      Height = 95
      Align = alNone
      Visible = False
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 64
      Top = 8
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 10
      Caption = 'S / D '
    end
    object cxdTgl2: TcxDateEdit
      Left = 221
      Top = 8
      TabOrder = 4
      Width = 121
    end
    object btnProses: TButton
      Left = 347
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 5
      OnClick = btnProsesClick
    end
    object cxGrdBB: TcxGrid
      Left = 15
      Top = 35
      Width = 951
      Height = 271
      TabOrder = 6
      object cxTblBB: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxTblBBno_bukti: TcxGridDBColumn
          Caption = 'No. Trans'
          DataBinding.FieldName = 'no_bukti'
        end
        object cxTblBBno_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
        end
        object cxTblBBno_so: TcxGridDBColumn
          Caption = 'No. SO'
          DataBinding.FieldName = 'no_so'
        end
        object cxTblBBtanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTblBBjam: TcxGridDBColumn
          Caption = 'Jam'
          DataBinding.FieldName = 'jam'
        end
        object cxTblBBuser: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'user'
          Width = 88
        end
        object cxTblBBuser_dept: TcxGridDBColumn
          Caption = 'User Dept.'
          DataBinding.FieldName = 'user_dept'
          Width = 88
        end
        object cxTblBBkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
          Width = 85
        end
        object cxTblBBdeskripsi: TcxGridDBColumn
          Caption = 'Dekripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 264
        end
        object cxTblBBqty: TcxGridDBColumn
          Caption = 'Qty.'
          DataBinding.FieldName = 'qty'
        end
        object cxTblBBfterima: TcxGridDBColumn
          Caption = 'Terima PRD'
          DataBinding.FieldName = 'fterima'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
      end
      object cxGrdBBLevel1: TcxGridLevel
        GridView = cxTblBB
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 391
    Width = 981
    Height = 47
    inherited btnKeluar: TButton
      Left = 92
      Top = 10
    end
    inherited btnTambah: TButton
      Left = 640
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 765
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 840
      Top = 20
      Visible = False
    end
    inherited btnBatal: TButton
      Visible = False
    end
    inherited btnSimpan: TButton
      Visible = False
    end
    object Button1: TButton
      Left = 15
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      
        'select a.no_bukti, a.no_spk, a.tanggal, a.jam, a.user, a.user_de' +
        'pt, b.no_so,'
      'b.kode_brg, c.deskripsi, b.qty, b.fterima from '
      'tbl_trspengeluaranbb_head a'
      'inner join tbl_trspengeluaranbb_det b on a.no_bukti = b.no_bukti'
      'left join tbl_barang c on b.kode_brg = c.kode'
      'where a.tanggal between :tgl1 and :tgl2')
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
end
