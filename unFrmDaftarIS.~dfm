inherited frmDaftarIS: TfrmDaftarIS
  Left = 269
  Top = 179
  Width = 1037
  Height = 486
  Caption = 'Daftar Inquiry Sheet'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1021
    inherited lblJudul: TLabel
      Width = 167
      Caption = 'Daftar Inquiry Sheet'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1021
    Height = 305
    object cxGrid1: TcxGrid
      Left = 15
      Top = 14
      Width = 991
      Height = 161
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1no_is: TcxGridDBColumn
          Caption = 'No. IS'
          DataBinding.FieldName = 'no_is'
          Width = 101
        end
        object cxGrid1DBTableView1issue_date: TcxGridDBColumn
          Caption = 'Issue Date'
          DataBinding.FieldName = 'issue_date'
          Width = 94
        end
        object cxGrid1DBTableView1nama: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'nama'
          Width = 178
        end
        object cxGrid1DBTableView1app_rnd: TcxGridDBColumn
          Caption = 'App. RND'
          DataBinding.FieldName = 'app_rnd'
          Width = 98
        end
        object cxGrid1DBTableView1tgl_app_rnd: TcxGridDBColumn
          Caption = 'Tgl. App RND'
          DataBinding.FieldName = 'tgl_app_rnd'
          Width = 81
        end
        object cxGrid1DBTableView1app_pm: TcxGridDBColumn
          Caption = 'App. PM'
          DataBinding.FieldName = 'app_pm'
        end
        object cxGrid1DBTableView1tgl_app_pm: TcxGridDBColumn
          Caption = 'tgl. App PM'
          DataBinding.FieldName = 'tgl_app_pm'
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Revisi'
          DataBinding.FieldName = 'jml_rev'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxMemo1: TcxMemo
      Left = 15
      Top = 197
      TabOrder = 1
      Height = 89
      Width = 481
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 179
      Caption = 'Keterangan :'
    end
  end
  inherited pnlBawah: TPanel
    Top = 371
    Width = 1021
    inherited btnKeluar: TButton
      Left = 472
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 395
      Visible = False
    end
    object btnEditIS: TButton
      Left = 15
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 6
      OnClick = btnEditISClick
    end
    object btnKeluar2: TButton
      Left = 95
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 7
      OnClick = btnKeluar2Click
    end
  end
  object zqr: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.no_is, a.issue_date, b.nama, '
      
        'IF(app_rnd=0,'#39'PROSES'#39',IF(app_rnd=1,'#39'APPROVE'#39','#39'TIDAK APPROVE'#39')) a' +
        'pp_rnd, '
      'tgl_app_rnd,'
      
        'IF(app_pm=0,'#39'PROSES'#39',IF(app_pm=1,'#39'APPROVE'#39','#39'TIDAK APPROVE'#39')) app' +
        '_pm,'
      'tgl_app_pm, jml_rev'
      'FROM tbl_is2 a'
      'LEFT JOIN tbl_customer b ON a.kode_customer = b.kode')
    Params = <>
    Left = 195
    Top = 20
  end
  object ds: TDataSource
    DataSet = zqr
    Left = 225
    Top = 20
  end
end
