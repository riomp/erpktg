inherited frmPiutangCustomer: TfrmPiutangCustomer
  Left = 319
  Top = 201
  Width = 937
  Height = 470
  Caption = 'Piutang Customer'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 921
    inherited lblJudul: TLabel
      Width = 146
      Caption = 'Piutang Customer'
    end
  end
  inherited pnlTengah: TPanel
    Width = 921
    Height = 287
    object cxGrid1: TcxGrid
      Left = 9
      Top = 14
      Width = 904
      Height = 259
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsView.Navigator = True
        object cxGrid1DBTableView1customer: TcxGridDBColumn
          Caption = 'Nama Customer'
          DataBinding.FieldName = 'customer'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'nama'
          Properties.ListColumns = <
            item
              FieldName = 'nama'
            end>
          Properties.ListSource = dsCust
          HeaderAlignmentHorz = taCenter
          Width = 244
        end
        object cxGrid1DBTableView1invoice_no: TcxGridDBColumn
          Caption = 'No.Invoce'
          DataBinding.FieldName = 'invoice_no'
          HeaderAlignmentHorz = taCenter
          Width = 165
        end
        object cxGrid1DBTableView1invoice_date: TcxGridDBColumn
          Caption = 'Tgl.Invoice'
          DataBinding.FieldName = 'invoice_date'
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object cxGrid1DBTableView1top: TcxGridDBColumn
          Caption = 'TOP'
          DataBinding.FieldName = 'top'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'COD'
            'BOD'
            '7'
            '14'
            '21'
            '30'
            '45')
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object cxGrid1DBTableView1due_date: TcxGridDBColumn
          Caption = 'Due Date'
          DataBinding.FieldName = 'due_date'
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object cxGrid1DBTableView1Sales: TcxGridDBColumn
          Caption = 'Sales'
          DataBinding.FieldName = 'sales'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'kode_sales'
          Properties.ListColumns = <
            item
              FieldName = 'nama'
            end>
          Properties.ListSource = dsSales
          Width = 137
        end
        object cxGrid1DBTableView1invoice_amount: TcxGridDBColumn
          Caption = 'Amount (Rp)'
          DataBinding.FieldName = 'invoice_amount'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,###'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object cxGrid1DBTableView1payment: TcxGridDBColumn
          Caption = 'Payment (Rp)'
          DataBinding.FieldName = 'payment'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,###'
          HeaderAlignmentHorz = taCenter
          Width = 93
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 353
    Width = 921
    inherited btnKeluar: TButton
      Left = 12
      Top = 17
    end
    inherited btnBaru: TButton
      Left = 467
    end
    inherited btnBatal: TButton
      Left = 546
      Top = 29
    end
    inherited btnSimpan: TButton
      Left = 95
      Top = 17
      Visible = False
    end
  end
  object ds: TDataSource
    DataSet = ZQuery1
    Left = 315
    Top = 23
  end
  object ZQuery1: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_piutang_cust')
    Params = <>
    Left = 264
    Top = 24
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_customer where f_aktif=1')
    Params = <>
    Left = 375
    Top = 22
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 409
    Top = 24
  end
  object zqrSales: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT *  FROM tbl_sales')
    Params = <>
    Left = 450
    Top = 22
  end
  object dsSales: TDataSource
    DataSet = zqrSales
    Left = 484
    Top = 24
  end
end
