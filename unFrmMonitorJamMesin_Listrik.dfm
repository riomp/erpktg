inherited frmMonitorJamMesin_Listrik: TfrmMonitorJamMesin_Listrik
  Left = 307
  Top = 152
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Monitoring Jam Mesin'
  ClientHeight = 400
  ClientWidth = 938
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 938
    inherited lblJudul: TLabel
      Width = 248
      Caption = 'Monitoring Jam Mesin (Listrik)'
    end
  end
  inherited pnlTengah: TPanel
    Width = 938
    object cxLabel1: TcxLabel
      Left = 15
      Top = 9
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 66
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 194
      Top = 9
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 225
      Top = 8
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 350
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
    object cxGrd: TcxGrid
      Left = 15
      Top = 35
      Width = 908
      Height = 218
      TabOrder = 5
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTbltanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Width = 86
        end
        object cxTblmesin: TcxGridDBColumn
          Caption = 'Mesin'
          DataBinding.FieldName = 'mesin'
          Width = 218
        end
        object cxTblDBColumn18_22: TcxGridDBColumn
          Caption = 'WBP (18:00 - 22:00)'
          DataBinding.FieldName = '18_22'
          Width = 119
        end
        object cxTblDBColumn22_18: TcxGridDBColumn
          Caption = 'LWBP (18:00 - 22:00)'
          DataBinding.FieldName = '22_18'
          Width = 95
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTbl
      end
    end
  end
  inherited pnlBawah: TPanel
    Width = 938
    inherited btnKeluar: TButton
      Left = 452
      Top = 20
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 375
      Top = 20
      Visible = False
    end
    object Button1: TButton
      Left = 15
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button1Click
    end
    object btnKeluar2: TButton
      Left = 92
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 7
      OnClick = btnKeluar2Click
    end
  end
  object zqr: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      
        'select tanggal, mesin, sum(18_22) 18_22, sum(selisih_jam - 18_22' +
        ') 22_18 from'
      '('
      
        'select tanggal, mesin, jam1, jam2, jam1_, jam2_, timediff(jam2_,' +
        ' jam1_) selisih,'
      'abs(time_to_sec(timediff(jam2_, jam1_)) / 60 / 60) selisih_jam,'
      'time_to_sec('
      '  if('
      
        '    if(jam1 >= '#39'18:00:00'#39' and jam2 >= '#39'00:00:00'#39', timediff('#39'22:0' +
        '0:00'#39', jam1) ,'#39'00:00:00'#39') < 0,'
      '    '#39'00:00:00'#39','
      
        '    if(jam1 >= '#39'18:00:00'#39' and jam2 >= '#39'00:00:00'#39', timediff('#39'22:0' +
        '0:00'#39', jam1) ,0)'
      '    )'
      ') / 60 / 60 '#39'18_22'#39
      'from tbl_hsl_prd where tanggal between :tgl1 and :tgl2'
      ') a'
      'where ifnull(a.mesin,'#39#39') <> '#39#39
      'group by a.tanggal, a.mesin'
      'order by a.tanggal, a.mesin')
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
    Left = 445
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
  object ds: TDataSource
    DataSet = zqr
    Left = 475
    Top = 25
  end
end
