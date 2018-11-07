object Frm_DataAktivitas: TFrm_DataAktivitas
  Left = 504
  Top = 222
  Width = 908
  Height = 610
  Caption = 'Data Aktivitas Sales'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BorderOuter = fsNone
    Caption = 'Data Aktivitas Sales'
    Color = 16744448
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BtnUpdate: TRzToolButton
      Left = 736
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
      OnClick = BtnUpdateClick
    end
    object BtnFilter: TRzToolButton
      Left = 814
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
  object RzPanel2: TRzPanel
    Left = 0
    Top = 530
    Width = 892
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 1
    DesignSize = (
      892
      41)
    object BtnSelesai: TRzBitBtn
      Left = 804
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
      OnClick = BtnBaruClick
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
  object dbgdata: TcxGrid
    Left = 0
    Top = 25
    Width = 892
    Height = 505
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        Width = 34
      end
      object dbgdataDBTableView1nama: TcxGridDBColumn
        Caption = 'Nama Sales'
        DataBinding.FieldName = 'nama'
        Width = 81
      end
      object dbgdataDBTableView1kategori: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'kategori'
        Width = 67
      end
      object dbgdataDBTableView1pic: TcxGridDBColumn
        Caption = 'PIC'
        DataBinding.FieldName = 'pic'
        Width = 186
      end
      object dbgdataDBTableView1tujuan: TcxGridDBColumn
        Caption = 'Tujuan Aktivitas'
        DataBinding.FieldName = 'tujuan'
        Width = 287
      end
      object dbgdataDBTableView1keterangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 188
      end
      object dbgdataDBTableView1tgl: TcxGridDBColumn
        DataBinding.FieldName = 'tgl'
        Width = 20
      end
      object dbgdataDBTableView1target: TcxGridDBColumn
        DataBinding.FieldName = 'target'
        Width = 20
      end
      object dbgdataDBTableView1tlp: TcxGridDBColumn
        DataBinding.FieldName = 'tlp'
        Width = 20
      end
      object dbgdataDBTableView1area: TcxGridDBColumn
        DataBinding.FieldName = 'area'
        Width = 20
      end
      object dbgdataDBTableView1info_produk: TcxGridDBColumn
        DataBinding.FieldName = 'info_produk'
        Width = 20
      end
      object dbgdataDBTableView1info_kompetitor: TcxGridDBColumn
        DataBinding.FieldName = 'info_kompetitor'
        Width = 20
      end
    end
    object dbgdataLevel1: TcxGridLevel
      GridView = dbgdataDBTableView1
    end
  end
  object QData: TZQuery
    Connection = DM.con
    Active = True
    SQL.Strings = (
      
        'select a.* ,b.foto from tbl_salesactivity as a left join tbl_sal' +
        'esactivity_det as b on a.id=b.id_activity '
      'order by date(a.tgl) desc')
    Params = <>
    Left = 816
    Top = 88
  end
  object DSData: TDataSource
    DataSet = QData
    Left = 844
    Top = 88
  end
  object Timer1: TTimer
    Left = 630
    Top = 15
  end
end
