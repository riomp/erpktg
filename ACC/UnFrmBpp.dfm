inherited frmBPP: TfrmBPP
  Left = 475
  Top = 267
  Caption = 'Buku Pembantu Piutang'
  ClientHeight = 508
  ClientWidth = 1017
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1017
    inherited lblJudul: TLabel
      Width = 197
      Caption = 'Buku Pembantu Piutang'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Left = 395
    Top = 225
    Width = 350
    Height = 41
    Align = alNone
    inherited pg: TPageControl
      Width = 348
      Height = 39
    end
  end
  inherited pnlBawah: TPanel
    Top = 432
    Width = 1017
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 15
    end
    inherited btnTambah: TButton
      Left = 535
      Top = 20
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 610
      Top = 20
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 685
      Top = 20
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 915
      Top = 20
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 840
      Top = 20
      Visible = False
    end
  end
  object pnl1: TPanel [3]
    Left = 0
    Top = 66
    Width = 1017
    Height = 46
    Align = alTop
    TabOrder = 3
    object cxLuLCustomer: TcxLookupComboBox
      Left = 115
      Top = 10
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama'
          FieldName = 'nama'
        end>
      Properties.ListSource = dsCustomer
      TabOrder = 0
      Width = 256
    end
    object cxlbl1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'Customer'
    end
    object btn1: TButton
      Left = 380
      Top = 10
      Width = 86
      Height = 21
      Caption = 'Proses'
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object cxgrd1: TcxGrid [4]
    Left = 0
    Top = 112
    Width = 1017
    Height = 320
    Align = alClient
    TabOrder = 4
    object cxTblGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsBPP
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxTblGrid1DBTableView1akun: TcxGridDBColumn
        Caption = 'No.Akun'
        DataBinding.FieldName = 'akun'
        Width = 68
      end
      object cxTblGrid1DBTableView1nama: TcxGridDBColumn
        Caption = 'Akun'
        DataBinding.FieldName = 'nama'
        Width = 134
      end
      object cxTblGrid1DBTableView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
      end
      object cxTblGrid1DBTableView1no_jurnal: TcxGridDBColumn
        Caption = 'No.Jurnal'
        DataBinding.FieldName = 'no_jurnal'
      end
      object cxTblGrid1DBTableView1keterangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 372
      end
      object cxTblGrid1DBTableView1debet: TcxGridDBColumn
        Caption = 'Debet'
        DataBinding.FieldName = 'debet'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Width = 108
      end
      object cxTblGrid1DBTableView1kredit: TcxGridDBColumn
        Caption = 'Kredit'
        DataBinding.FieldName = 'kredit'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Width = 118
      end
    end
    object cxgrdlvl1Grid1Level1: TcxGridLevel
      GridView = cxTblGrid1DBTableView1
    end
  end
  object zqrCustomer: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select kode, nama from tbl_customer order by nama')
    Params = <>
    Left = 520
    Top = 30
  end
  object dsCustomer: TDataSource
    DataSet = zqrCustomer
    Left = 555
    Top = 30
  end
  object zqrBPP: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.akun,b.nama,a.tanggal,a.no_jurnal,a.keterangan,sum(a.kr' +
        'edit) debet,sum(a.debet)kredit'
      'from tbl_jurnal_det a left join tbl_coa b on a.akun=b.noakun'
      'where  a.kode_suppcust = :kode_cust'
      'group by a.akun,b.nama,a.tanggal,a.no_jurnal,a.keterangan')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_cust'
        ParamType = ptUnknown
      end>
    Left = 605
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_cust'
        ParamType = ptUnknown
      end>
  end
  object dsBPP: TDataSource
    DataSet = zqrBPP
    Left = 640
    Top = 30
  end
end
