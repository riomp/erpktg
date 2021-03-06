inherited frmSurveyKepuasan: TfrmSurveyKepuasan
  Left = 289
  Top = 163
  Width = 943
  Height = 502
  Caption = 'List Survey Kepuasan'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 927
    inherited lblJudul: TLabel
      Top = 5
      Width = 173
      Caption = 'List Survey Kepuasan'
    end
    object cxLabel1: TcxLabel
      Left = 14
      Top = 33
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 32
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 33
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 32
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 345
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  inherited pnlTengah: TPanel
    Width = 927
    Height = 319
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 925
      Height = 317
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsMO
        DataController.KeyFieldNames = 'no'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        object cxGridDBTableView1no: TcxGridDBColumn
          Caption = 'No.Survey'
          DataBinding.FieldName = 'no'
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
        object cxGridDBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tgl.Survey'
          DataBinding.FieldName = 'tanggal'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1no_sj: TcxGridDBColumn
          Caption = 'No.Surat Jalan'
          DataBinding.FieldName = 'no_sj'
          HeaderAlignmentHorz = taCenter
          Width = 118
        end
        object cxGridDBTableView1tgl_pengiriman: TcxGridDBColumn
          Caption = 'Tgl.Kirim'
          DataBinding.FieldName = 'tgl_pengiriman'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object cxGridDBTableView1kode_sales: TcxGridDBColumn
          Caption = 'Sales'
          DataBinding.FieldName = 'kode_sales'
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
        object cxGridDBTableView1nama: TcxGridDBColumn
          Caption = 'Nama Customer'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Width = 282
        end
      end
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSurvey
        DataController.DetailKeyFieldNames = 'no'
        DataController.MasterKeyFieldNames = 'no'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid2DBTableView1kriteria: TcxGridDBColumn
          Caption = 'Kriteria Survey'
          DataBinding.FieldName = 'kriteria'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid2DBTableView1poin: TcxGridDBColumn
          Caption = 'Poin'
          DataBinding.FieldName = 'poin'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid2DBTableView1note: TcxGridDBColumn
          Caption = 'Note'
          DataBinding.FieldName = 'note'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 385
    Width = 927
    inherited btnKeluar: TButton
      Left = 20
    end
    inherited btnBatal: TButton
      Left = 658
    end
    inherited btnSimpan: TButton
      Left = 103
      Caption = '&Cetak'
    end
  end
  object zqrMO: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      
        'SELECT a.*,b.nama FROM tbl_rk as a join tbl_customer as b on a.k' +
        'ode_cust=b.kode'
      
        'WHERE  (date(a.tanggal) BETWEEN :tgl1 AND :tgl2)  AND  a.kategor' +
        'i='#39'SURVEY'#39
      'ORDER BY date(a.tanggal) DESC')
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
    Left = 474
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
  object dsMO: TDataSource
    DataSet = zqrMO
    Left = 504
    Top = 20
  end
  object zSurvey: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_survey')
    Params = <>
    Left = 546
    Top = 25
  end
  object dsSurvey: TDataSource
    DataSet = zSurvey
    Left = 576
    Top = 20
  end
end
