inherited frmProjectRND: TfrmProjectRND
  Left = 508
  Top = 182
  Width = 1329
  Height = 708
  Caption = 'Project RND'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1313
    inherited lblJudul: TLabel
      Width = 125
      Caption = 'Timline Project'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1313
    Height = 527
    object pg: TcxPageControl
      Left = 1
      Top = 1
      Width = 1311
      Height = 525
      ActivePage = AllProject
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 525
      ClientRectRight = 1311
      ClientRectTop = 24
      object AllProject: TcxTabSheet
        Caption = 'All Project'
        ImageIndex = 0
        object cxScheduler1: TcxScheduler
          Left = 448
          Top = 8
          Width = 857
          Height = 489
          ViewDay.CanShow = False
          ViewWeek.Active = True
          ViewWeeks.ShowEndTime = False
          EventOperations.ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Storage = cxSchedulerDBStorage1
          TabOrder = 0
          Selection = 7
          Splitters = {
            C90200007E0000005803000083000000C402000001000000C9020000E8010000}
          StoredClientBounds = {010000000100000058030000E8010000}
        end
        object cxGrid2: TcxGrid
          Left = 8
          Top = 8
          Width = 433
          Height = 457
          Align = alCustom
          TabOrder = 1
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellClick = cxGridDBTableView1CellClick
            DataController.DataSource = dsProj
            DataController.KeyFieldNames = 'no_project'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            FilterRow.SeparatorWidth = 2
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsView.GroupByBox = False
            object cxGridDBTableView1no_project: TcxGridDBColumn
              Caption = 'No.Project'
              DataBinding.FieldName = 'no_project'
              Width = 101
            end
            object cxGridDBTableView1no_is: TcxGridDBColumn
              Caption = 'No.IS'
              DataBinding.FieldName = 'no_is'
            end
            object cxGridDBTableView1judul: TcxGridDBColumn
              Caption = 'Judul Project'
              DataBinding.FieldName = 'judul'
              Width = 252
            end
            object cxGridDBTableView1detail: TcxGridDBColumn
              Caption = 'Detail Project'
              DataBinding.FieldName = 'detail'
              Width = 506
            end
            object cxGridDBTableView1start_date: TcxGridDBColumn
              Caption = 'Start Date'
              DataBinding.FieldName = 'start_date'
            end
            object cxGridDBTableView1finish_date: TcxGridDBColumn
              Caption = 'Finish Date'
              DataBinding.FieldName = 'finish_date'
            end
            object cxGridDBTableView1dibuat_oleh: TcxGridDBColumn
              Caption = 'Dibuat Oleh'
              DataBinding.FieldName = 'dibuat_oleh'
            end
            object cxGridDBTableView1tgl_input: TcxGridDBColumn
              Caption = 'Tgl.Input'
              DataBinding.FieldName = 'tgl_input'
            end
          end
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDetail
            DataController.DetailKeyFieldNames = 'no_project'
            DataController.MasterKeyFieldNames = 'no_project'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1no: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'no'
            end
            object cxGrid2DBTableView1pic: TcxGridDBColumn
              Caption = 'PIC'
              DataBinding.FieldName = 'pic'
            end
            object cxGrid2DBTableView1deskripsi: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
            end
            object cxGrid2DBTableView1start_date: TcxGridDBColumn
              Caption = 'Start Date'
              DataBinding.FieldName = 'start_date'
            end
            object cxGrid2DBTableView1finish_date: TcxGridDBColumn
              Caption = 'Finish Date'
              DataBinding.FieldName = 'finish_date'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
        end
        object Button1: TButton
          Left = 8
          Top = 472
          Width = 97
          Height = 25
          Caption = '&View All Project'
          TabOrder = 2
          OnClick = Button1Click
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'Member'
        ImageIndex = 1
        object cxScheduler2: TcxScheduler
          Left = 344
          Top = 8
          Width = 953
          Height = 481
          ViewDay.CanShow = False
          ViewWeeks.Active = True
          ViewWeeks.ShowEndTime = False
          EventOperations.ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Storage = cxSchedulerDBStorage2
          TabOrder = 0
          Selection = 42
          Splitters = {
            290300007E000000B803000083000000240300000100000029030000E0010000}
          StoredClientBounds = {0100000001000000B8030000E0010000}
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Nama Member'
          TabOrder = 1
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 64
          Width = 113
          Height = 17
          Caption = 'Project'
          TabOrder = 2
          OnClick = RadioButton2Click
        end
        object cxGrid1: TcxGrid
          Left = 8
          Top = 88
          Width = 321
          Height = 401
          TabOrder = 3
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellClick = cxGrid1DBTableView1CellClick
            DataController.DataSource = dsProj
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1no_project: TcxGridDBColumn
              Caption = 'No.Project'
              DataBinding.FieldName = 'no_project'
            end
            object cxGrid1DBTableView1judul: TcxGridDBColumn
              Caption = 'Judul'
              DataBinding.FieldName = 'judul'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cxScheduler3: TcxScheduler
          Left = 344
          Top = 8
          Width = 953
          Height = 481
          ViewWeeks.Active = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Storage = cxSchedulerDBStorage3
          TabOrder = 4
          Selection = 35
          Splitters = {
            290300007E000000B803000083000000240300000100000029030000E0010000}
          StoredClientBounds = {0100000001000000B8030000E0010000}
        end
        object cbbmember: TcxLookupComboBox
          Left = 5
          Top = 35
          Properties.KeyFieldNames = 'nama'
          Properties.ListColumns = <
            item
              FieldName = 'nama'
            end>
          Properties.ListSource = dsMember
          Properties.OnEditValueChanged = cbbmemberPropertiesEditValueChanged
          TabOrder = 5
          OnClick = cbbmemberClick
          Width = 251
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Progres Member'
        ImageIndex = 2
        object DBChart1: TDBChart
          Left = 544
          Top = 8
          Width = 761
          Height = 481
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'PROJECT RND')
          Legend.Visible = False
          View3D = False
          TabOrder = 0
          object Series1: TGanttSeries
            ColorEachPoint = True
            HorizAxis = aTopAxis
            Marks.ArrowLength = 1
            Marks.Clip = True
            Marks.Visible = True
            DataSource = ZReadOnlyQuery1
            SeriesColor = clRed
            XLabelsSource = 'Desk'
            Pointer.Brush.Color = clRed
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.VertSize = 20
            Pointer.Visible = True
            XValues.DateTime = True
            XValues.Name = 'Start'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'start_date'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            StartValues.DateTime = True
            StartValues.Name = 'Start'
            StartValues.Multiplier = 1.000000000000000000
            StartValues.Order = loAscending
            StartValues.ValueSource = 'start_date'
            EndValues.DateTime = True
            EndValues.Name = 'End'
            EndValues.Multiplier = 1.000000000000000000
            EndValues.Order = loNone
            EndValues.ValueSource = 'finish_date'
            NextTask.DateTime = False
            NextTask.Name = 'NextTask'
            NextTask.Multiplier = 1.000000000000000000
            NextTask.Order = loNone
          end
          object Series2: TGanttSeries
            ColorEachPoint = True
            HorizAxis = aTopAxis
            Marks.ArrowLength = 1
            Marks.Clip = True
            Marks.Visible = True
            DataSource = ZReadOnlyQuery1
            SeriesColor = clRed
            XLabelsSource = 'Desk'
            Pointer.Brush.Color = clRed
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.VertSize = 20
            Pointer.Visible = True
            XValues.DateTime = False
            XValues.Name = 'Start'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loNone
            YValues.DateTime = True
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loAscending
            YValues.ValueSource = 'start_date'
            StartValues.DateTime = False
            StartValues.Name = 'Start'
            StartValues.Multiplier = 1.000000000000000000
            StartValues.Order = loNone
            EndValues.DateTime = True
            EndValues.Name = 'End'
            EndValues.Multiplier = 1.000000000000000000
            EndValues.Order = loNone
            EndValues.ValueSource = 'finish_date'
            NextTask.DateTime = False
            NextTask.Name = 'NextTask'
            NextTask.Multiplier = 1.000000000000000000
            NextTask.Order = loNone
          end
        end
        object cxGrid3: TcxGrid
          Left = 8
          Top = 32
          Width = 529
          Height = 425
          TabOrder = 1
          object cxGrid3DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDetail1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsView.GroupByBox = False
            object cxGrid3DBTableView1no: TcxGridDBColumn
              DataBinding.FieldName = 'no'
              Visible = False
              Width = 29
            end
            object cxGrid3DBTableView1no_project: TcxGridDBColumn
              Caption = 'No.Project'
              DataBinding.FieldName = 'no_project'
              Width = 100
            end
            object cxGrid3DBTableView1pic: TcxGridDBColumn
              Caption = 'PIC'
              DataBinding.FieldName = 'pic'
              Width = 75
            end
            object cxGrid3DBTableView1judul: TcxGridDBColumn
              Caption = 'Judul Project'
              DataBinding.FieldName = 'judul'
            end
            object cxGrid3DBTableView1deskripsi: TcxGridDBColumn
              Caption = 'Deskripsi Tugas'
              DataBinding.FieldName = 'deskripsi'
              Width = 217
            end
            object cxGrid3DBTableView1start_date: TcxGridDBColumn
              Caption = 'Start Date'
              DataBinding.FieldName = 'start_date'
            end
            object cxGrid3DBTableView1finish_date: TcxGridDBColumn
              Caption = 'Due Date'
              DataBinding.FieldName = 'finish_date'
            end
            object cxGrid3DBTableView1start_act_1: TcxGridDBColumn
              Caption = 'Start Act'
              DataBinding.FieldName = 'start_act_1'
            end
            object cxGrid3DBTableView1finish_act_1: TcxGridDBColumn
              Caption = 'Finish Act'
              DataBinding.FieldName = 'finish_act_1'
            end
            object cxGrid3DBTableView1hasil_1: TcxGridDBColumn
              Caption = 'Hasil'
              DataBinding.FieldName = 'hasil_1'
            end
          end
          object cxGrid3DBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGrid3DBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
        object cxLabel1: TcxLabel
          Left = 8
          Top = 8
          Caption = 'Nama Member'
        end
        object Panel2: TPanel
          Left = 464
          Top = 56
          Width = 305
          Height = 297
          TabOrder = 3
          object Label1: TLabel
            Left = 16
            Top = 16
            Width = 50
            Height = 13
            Caption = 'No.Project'
          end
          object Label2: TLabel
            Left = 16
            Top = 64
            Width = 55
            Height = 13
            Caption = 'Actual Start'
          end
          object Label3: TLabel
            Left = 16
            Top = 88
            Width = 60
            Height = 13
            Caption = 'Actual Finish'
          end
          object Label5: TLabel
            Left = 16
            Top = 112
            Width = 23
            Height = 13
            Caption = 'Hasil'
          end
          object Label4: TLabel
            Left = 16
            Top = 40
            Width = 17
            Height = 13
            Caption = 'PIC'
          end
          object Label6: TLabel
            Left = 96
            Top = 16
            Width = 3
            Height = 13
            Caption = ':'
          end
          object Label7: TLabel
            Left = 96
            Top = 40
            Width = 3
            Height = 13
            Caption = ':'
          end
          object lbl_noproject: TLabel
            Left = 104
            Top = 16
            Width = 50
            Height = 13
            Caption = 'No.Project'
          end
          object lbl_pic: TLabel
            Left = 104
            Top = 40
            Width = 17
            Height = 13
            Caption = 'PIC'
          end
          object lbl_no: TLabel
            Left = 320
            Top = 24
            Width = 50
            Height = 13
            Caption = 'No.Project'
          end
          object lbl_deskripsi: TLabel
            Left = 320
            Top = 48
            Width = 50
            Height = 13
            Caption = 'No.Project'
          end
          object btnSimpanApp: TButton
            Left = 16
            Top = 248
            Width = 75
            Height = 25
            Caption = '&Simpan'
            TabOrder = 0
            OnClick = btnSimpanAppClick
          end
          object btnBatalApp: TButton
            Left = 96
            Top = 248
            Width = 75
            Height = 25
            Caption = 'Batal'
            TabOrder = 1
            OnClick = btnBatalAppClick
          end
          object cxmHasil: TcxMemo
            Left = 16
            Top = 128
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Height = 113
            Width = 265
          end
          object cxdTgl1: TcxDateEdit
            Left = 96
            Top = 64
            TabOrder = 3
            Width = 121
          end
          object cxdTgl2: TcxDateEdit
            Left = 96
            Top = 88
            TabOrder = 4
            Width = 121
          end
        end
        object Button2: TButton
          Left = 8
          Top = 464
          Width = 137
          Height = 25
          Caption = 'Input Hasil Project'
          TabOrder = 4
          OnClick = Button2Click
        end
        object ComboBox1: TcxLookupComboBox
          Left = 85
          Top = 5
          Properties.KeyFieldNames = 'nama'
          Properties.ListColumns = <
            item
              FieldName = 'nama'
            end>
          Properties.ListSource = dsMember
          Properties.OnEditValueChanged = ComboBox1PropertiesEditValueChanged
          TabOrder = 5
          OnClick = ComboBox1Click
          Width = 145
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 593
    Width = 1313
    inherited btnKeluar: TButton
      Left = 20
    end
    inherited btnSimpan: TButton
      Left = 103
      Visible = False
    end
  end
  object cxSchedulerDBStorage1: TcxSchedulerDBStorage
    Resources.Items = <>
    CustomFields = <>
    DataSource = dsProject
    FieldNames.ActualFinish = 'act_finish'
    FieldNames.ActualStart = 'act_start'
    FieldNames.Caption = 'judul'
    FieldNames.EventType = 'event_type'
    FieldNames.Finish = 'finish_date'
    FieldNames.ID = 'no_project'
    FieldNames.Message = 'detail'
    FieldNames.Options = 'event_type'
    FieldNames.Start = 'start_date'
    Left = 408
    Top = 26
  end
  object zProject: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * '
      'FROM tbl_project_head'
      ''
      'Order by no_project')
    Params = <>
    Left = 162
    Top = 9
  end
  object dsProject: TDataSource
    DataSet = zProject
    Left = 192
    Top = 12
  end
  object zqrProject: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_project_head')
    Params = <>
    Left = 474
    Top = 25
  end
  object dsProj: TDataSource
    DataSet = zqrProject
    Left = 504
    Top = 20
  end
  object zDetail: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*,b.judul FROM tbl_project_detail as a join tbl_project' +
        '_head as b on a.no_project=b.no_project'
      ''
      'order by a.no_project asc')
    Params = <>
    Left = 546
    Top = 25
  end
  object dsDetail: TDataSource
    DataSet = zDetail
    Left = 576
    Top = 20
  end
  object cxSchedulerDBStorage2: TcxSchedulerDBStorage
    Resources.Items = <>
    Resources.DataSource = dsResource
    Resources.ResourceID = 'pic'
    Resources.ResourceName = 'pic'
    CustomFields = <>
    DataSource = dsDetail
    FieldNames.Caption = 'judul'
    FieldNames.EventType = 'event_type'
    FieldNames.Finish = 'finish_date'
    FieldNames.ID = 'pic'
    FieldNames.Options = 'event_type'
    FieldNames.ResourceID = 'pic'
    FieldNames.Start = 'start_date'
    Left = 616
    Top = 32
  end
  object zResource: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT distinct pic '
      'FROM tbl_project_detail'
      ''
      'order by pic')
    Params = <>
    Left = 658
    Top = 17
  end
  object dsResource: TDataSource
    DataSet = zResource
    Left = 688
    Top = 12
  end
  object cxSchedulerDBStorage3: TcxSchedulerDBStorage
    Resources.Items = <>
    Resources.DataSource = dsResource
    Resources.ResourceID = 'pic'
    Resources.ResourceName = 'pic'
    CustomFields = <>
    DataSource = dsDetail
    FieldNames.Caption = 'judul'
    FieldNames.EventType = 'event_type'
    FieldNames.Finish = 'finish_date'
    FieldNames.ID = 'pic'
    FieldNames.Options = 'event_type'
    FieldNames.ResourceID = 'pic'
    FieldNames.Start = 'start_date'
    Left = 728
    Top = 32
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select a.no_project,a.pic,a.start_date,a.finish_date,a.status,'
      
        'if(a.status=1,(CONCAT(a.no_project,"-","PLAN")),(CONCAT(a.no_pro' +
        'ject,"-","REAL")))as Desk'
      'FROM'
      
        '(select no_project,pic,start_date,finish_date,1 as status from t' +
        'bl_project_detail'
      'union'
      
        'select no_project,pic,start_act,finish_act,2 as status from `tbl' +
        '_project_detail_act`) as a'
      ''
      'order by a.no_project,a.pic,a.status asc')
    Params = <>
    Left = 786
    Top = 25
  end
  object DataSource1: TDataSource
    DataSet = ZReadOnlyQuery1
    Left = 816
    Top = 20
  end
  object zDetail1: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*,b.judul,c.start_act,c.finish_act,c.hasil FROM tbl_pro' +
        'ject_detail as a join tbl_project_head as b on a.no_project=b.no' +
        '_project left join tbl_project_detail_act as c on a.no=c.no and ' +
        'a.no_project=c.no_project'
      ''
      'order by a.no_project asc')
    Params = <>
    Left = 866
    Top = 25
  end
  object dsDetail1: TDataSource
    DataSet = zDetail1
    Left = 896
    Top = 20
  end
  object zqrMember: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_member_rnd')
    Params = <>
    Left = 936
    Top = 20
  end
  object dsMember: TDataSource
    DataSet = zqrMember
    Left = 966
    Top = 15
  end
end
