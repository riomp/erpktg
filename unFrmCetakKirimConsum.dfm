inherited frmCetakKirimConsum: TfrmCetakKirimConsum
  Left = 298
  Top = 164
  Width = 814
  Height = 513
  Caption = 'Cetak Pengiriman Barang Consumable'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 798
    inherited lblJudul: TLabel
      Top = 22
      Width = 313
      Caption = 'Cetak Pengiriman Barang Consumable'
    end
  end
  inherited pnlTengah: TPanel
    Width = 798
    Height = 333
    object cxGrd: TcxGrid
      Left = 15
      Top = 25
      Width = 764
      Height = 131
      TabOrder = 0
      object cxTblH: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblHFocusedRecordChanged
        DataController.DataSource = dsH
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxTblHno_bukti: TcxGridDBColumn
          Caption = 'No. Trans'
          DataBinding.FieldName = 'no_bukti'
          Width = 96
        end
        object cxTblHtanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Width = 76
        end
        object cxTblHuser: TcxGridDBColumn
          Caption = 'User Input'
          DataBinding.FieldName = 'user'
        end
        object cxTblHuser_dept: TcxGridDBColumn
          Caption = 'Dept'
          DataBinding.FieldName = 'user_dept'
          Visible = False
          Width = 97
        end
        object cxTblHColumn1: TcxGridDBColumn
          Caption = 'Divisi'
          DataBinding.FieldName = 'divisi'
          Visible = False
          Width = 88
        end
        object cxTblHf_cetak: TcxGridDBColumn
          Caption = 'Jml. Cetak'
          DataBinding.FieldName = 'f_cetak'
          Width = 76
        end
        object cxTblHColumn2: TcxGridDBColumn
          Caption = 'User Request'
          DataBinding.FieldName = 'user_request'
        end
        object cxTblHColumn3: TcxGridDBColumn
          Caption = 'User Divisi'
          DataBinding.FieldName = 'user_divisi'
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTblH
      end
    end
    object cxGrid1: TcxGrid
      Left = 15
      Top = 170
      Width = 764
      Height = 137
      TabOrder = 1
      object cxTblD: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTblDkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTblDdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 290
        end
        object cxTblDgudang_asal: TcxGridDBColumn
          Caption = 'G. Asal'
          DataBinding.FieldName = 'gudang_asal'
          Width = 88
        end
        object cxTblDgudang_tujuan: TcxGridDBColumn
          Caption = 'G. Tujuam'
          DataBinding.FieldName = 'gudang_tujuan'
          Width = 81
        end
        object cxTblDqty: TcxGridDBColumn
          Caption = 'Qty.'
          DataBinding.FieldName = 'qty'
        end
        object cxTblDsatuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 76
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxTblD
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 399
    Width = 798
    inherited btnKeluar: TButton
      Left = 93
    end
    inherited btnSimpan: TButton
      Left = 262
      Visible = False
    end
    object btnCetak: TButton
      Left = 15
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 6
      OnClick = btnCetakClick
    end
  end
  object zqrH: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'select a.*, b.divisi,'
      
        '(select user from tbl_trsbppb_head where no_bukti = c.no_bppb) u' +
        'ser_request,'
      
        '(select distinct divisi from tbl_trsbppb_det where no_bukti = c.' +
        'no_bppb) user_divisi'
      'from'
      'tbl_trsmutasi_head a '
      
        'inner join (select distinct no_bukti, no_bppb from tbl_trsmutasi' +
        '_det) c on c.no_bukti = a.no_bukti'
      'left join tbl_user b on a.user = b.nama'
      'where a.f_cons = 1'
      'order by a.tanggal desc')
    Params = <>
    Left = 420
    Top = 20
  end
  object dsH: TDataSource
    DataSet = zqrH
    Left = 450
    Top = 20
  end
  object zqrD: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.deskripsi'
      'FROM tbl_trsmutasi_det a '
      'left join tbl_barang b on a.kode_brg = b.kode'
      'WHERE a.no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 480
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsD: TDataSource
    DataSet = zqrD
    Left = 510
    Top = 20
  end
end
