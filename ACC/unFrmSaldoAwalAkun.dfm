inherited frmSaldoAwalAkun: TfrmSaldoAwalAkun
  Left = 642
  Top = 217
  Height = 692
  Caption = 'Input Saldo Awal Akun'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Height = 81
    inherited lblJudul: TLabel
      Left = 20
      Top = 11
      Width = 138
      Caption = 'Saldo Awal Akun'
    end
    object cxLabel1: TcxLabel
      Left = 19
      Top = 42
      Caption = 'Pertanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 80
      Top = 41
      Properties.OnChange = cxdTgl1PropertiesChange
      TabOrder = 1
      Width = 121
    end
  end
  inherited pnlTengah: TPanel
    Top = 81
    Height = 496
    Align = alClient
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 810
      Height = 494
      Align = alClient
      TabOrder = 0
      object cxTbl: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTblnoakun: TcxGridColumn
          Caption = 'No.Akun'
          Options.Editing = False
          Width = 100
        end
        object cxTblnama: TcxGridColumn
          Caption = 'Nama Akun'
          Options.Editing = False
          Width = 455
        end
        object cxTblsaldo: TcxGridColumn
          Caption = 'Saldo Awal'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ValueType = vtFloat
          Width = 153
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 577
    Align = alBottom
  end
  object zqrSummary: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'select f.noakun,f.nama,f.sawal'
      
        'from tbl_coa f where (SELECT COUNT(noakun) FROM tbl_coa WHERE in' +
        'duk = f.noakun) = 0')
    Params = <>
    Left = 470
    Top = 25
  end
  object dsSummary: TDataSource
    DataSet = zqrSummary
    Left = 500
    Top = 30
  end
end
