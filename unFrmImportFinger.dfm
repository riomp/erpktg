object frmImportFinger: TfrmImportFinger
  Left = 472
  Top = 112
  BorderStyle = bsSingle
  Caption = 'Import Data Finger'
  ClientHeight = 407
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxDateEdit1: TcxDateEdit
    Left = 56
    Top = 8
    TabOrder = 0
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = 'Tanggal'
  end
  object btnProses: TButton
    Left = 184
    Top = 32
    Width = 121
    Height = 25
    Caption = '&Proses'
    TabOrder = 2
    OnClick = btnProsesClick
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 64
    Width = 361
    Height = 337
    TabOrder = 3
    object cxTblAbsen: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsFinger
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxTblAbsenTanggal: TcxGridDBColumn
        DataBinding.FieldName = 'Tanggal'
        HeaderAlignmentHorz = taCenter
      end
      object cxTblAbsenJam: TcxGridDBColumn
        DataBinding.FieldName = 'Jam'
        HeaderAlignmentHorz = taCenter
      end
      object cxTblAbsenMode: TcxGridDBColumn
        DataBinding.FieldName = 'Mode'
        HeaderAlignmentHorz = taCenter
        Width = 131
      end
      object cxTblAbsennik: TcxGridDBColumn
        DataBinding.FieldName = 'nik'
        HeaderAlignmentHorz = taCenter
        Width = 89
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxTblAbsen
    end
  end
  object btnOpen: TButton
    Left = 56
    Top = 32
    Width = 121
    Height = 25
    Caption = 'Open'
    TabOrder = 4
    OnClick = btnOpenClick
  end
  object cxdTgl2: TcxDateEdit
    Left = 184
    Top = 8
    TabOrder = 5
    Width = 121
  end
  object zFinger: TZQuery
    Connection = dm.zConnF
    SQL.Strings = (
      
        'SELECT IF ((c.io_name='#39'SCAN KELUAR'#39') and (Time(a.scan_date) BETW' +
        'EEN '#39'05:00:00'#39' AND '#39'08:00:00'#39'),'
      
        'DATE(a.scan_date)- INTERVAL 1 DAY,DATE(a.scan_date)) as Tanggal,' +
        'Time(a.scan_date) as Jam,UPPER(c.io_name) as Mode,b.nik'
      
        'FROM att_log as a join emp as b on a.pin=b.pin join mode as c on' +
        ' a.io_mode=c.io_mode '
      
        'where  (DATE(a.scan_date) between :tgl1 and :tgl2) and c.io_mode' +
        ' in (0,1)  and left(b.nik,1) not in (6,9)  order by a.scan_date ' +
        'desc ')
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
    Left = 488
    Top = 8
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
  object dsFinger: TDataSource
    DataSet = zFinger
    Left = 520
    Top = 8
  end
end