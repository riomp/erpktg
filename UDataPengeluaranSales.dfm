object Frm_DataPengeluaran: TFrm_DataPengeluaran
  Left = 337
  Top = 161
  Width = 1305
  Height = 675
  Caption = 'Data Pengeluaran Sales'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BorderOuter = fsNone
    Caption = 'Data Pengeluaran Sales'
    Color = 16744448
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BtnUpdate: TRzToolButton
      Left = 1133
      Top = 0
      Width = 78
      ImageIndex = 1
      Images = DM.IL16
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alRight
      Caption = 'Update'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object BtnFilter: TRzToolButton
      Left = 1211
      Top = 0
      Width = 78
      ImageIndex = 2
      Images = DM.IL16
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alRight
      Caption = 'Filter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
  end
  object dbgdata: TcxGrid
    Left = 0
    Top = 25
    Width = 1289
    Height = 570
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Blue'
    object dbgdataDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DSData
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glHorizontal
      object dbgdataDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object dbgdataDBTableView1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
      end
      object dbgdataDBTableView1tgl: TcxGridDBColumn
        DataBinding.FieldName = 'tgl'
      end
      object dbgdataDBTableView1bbm: TcxGridDBColumn
        DataBinding.FieldName = 'bbm'
      end
      object dbgdataDBTableView1km_awal: TcxGridDBColumn
        DataBinding.FieldName = 'km_awal'
      end
      object dbgdataDBTableView1km_akhir: TcxGridDBColumn
        DataBinding.FieldName = 'km_akhir'
      end
      object dbgdataDBTableView1daerah: TcxGridDBColumn
        DataBinding.FieldName = 'daerah'
      end
      object dbgdataDBTableView1entertaint_dinas: TcxGridDBColumn
        DataBinding.FieldName = 'entertaint_dinas'
      end
      object dbgdataDBTableView1transportasi: TcxGridDBColumn
        DataBinding.FieldName = 'transportasi'
      end
      object dbgdataDBTableView1paket_data: TcxGridDBColumn
        DataBinding.FieldName = 'paket_data'
      end
      object dbgdataDBTableView1retribusi: TcxGridDBColumn
        DataBinding.FieldName = 'retribusi'
      end
      object dbgdataDBTableView1tol: TcxGridDBColumn
        DataBinding.FieldName = 'tol'
      end
      object dbgdataDBTableView1uang_makan: TcxGridDBColumn
        DataBinding.FieldName = 'uang_makan'
      end
      object dbgdataDBTableView1sewa_mobil: TcxGridDBColumn
        DataBinding.FieldName = 'sewa_mobil'
      end
      object dbgdataDBTableView1penginapan: TcxGridDBColumn
        DataBinding.FieldName = 'penginapan'
      end
      object dbgdataDBTableView1expedisi: TcxGridDBColumn
        DataBinding.FieldName = 'expedisi'
      end
      object dbgdataDBTableView1lainnya: TcxGridDBColumn
        DataBinding.FieldName = 'lainnya'
      end
      object dbgdataDBTableView1total: TcxGridDBColumn
        DataBinding.FieldName = 'total'
      end
    end
    object dbgdataLevel1: TcxGridLevel
      GridView = dbgdataDBTableView1
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 595
    Width = 1289
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 2
    DesignSize = (
      1289
      41)
    object BtnSelesai: TRzBitBtn
      Left = 1201
      Top = 8
      Anchors = [akTop, akRight]
      Caption = 'Selesai'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtnSelesaiClick
    end
    object BtnBaru: TRzBitBtn
      Left = 10
      Top = 8
      Caption = 'Lihat Foto'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object BtnEdit: TRzBitBtn
      Left = 90
      Top = 8
      Caption = 'Edit'
      Color = 12615680
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object BtnHapus: TRzBitBtn
      Left = 170
      Top = 8
      Caption = 'Hapus'
      Color = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
  end
  object QData: TZQuery
    Connection = DM.con
    Active = True
    SQL.Strings = (
      'select * from tbl_costoperational order by tgl desc')
    Params = <>
    Left = 816
    Top = 88
  end
  object DSData: TDataSource
    DataSet = QData
    Left = 844
    Top = 88
  end
end
