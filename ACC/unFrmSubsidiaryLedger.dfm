inherited frmSubsidiaryLedger: TfrmSubsidiaryLedger
  Left = 590
  Top = 233
  Width = 953
  Height = 625
  Caption = 'Subsidiary Ledger'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 937
    inherited lblJudul: TLabel
      Width = 150
      Caption = 'Subsidiary Ledger '
    end
  end
  inherited pnlTengah: TPanel
    Width = 937
    Height = 444
    Align = alClient
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 935
      Height = 442
      Align = alClient
      TabOrder = 0
      object cxTblSL: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSL
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxTblSLdebet
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxTblSLkredit
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.Footer = True
        object cxTblSLno_jurnal: TcxGridDBColumn
          Caption = 'No.Jurnal'
          DataBinding.FieldName = 'no_jurnal'
          Width = 99
        end
        object cxTblSLtanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Width = 90
        end
        object cxTblSLketerangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 422
        end
        object cxTblSLdebet: TcxGridDBColumn
          Caption = 'IN'
          DataBinding.FieldName = 'debet'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Width = 126
        end
        object cxTblSLkredit: TcxGridDBColumn
          Caption = 'Out'
          DataBinding.FieldName = 'kredit'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Width = 132
        end
      end
      object cxGridDBTableView3: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'no_bukti'
        DataController.MasterKeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGridDBColumn42: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object cxGridDBColumn43: TcxGridDBColumn
          DataBinding.FieldName = 'no_bukti'
          Visible = False
          Width = 64
        end
        object cxGridDBColumn44: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode_brg'
          Width = 103
        end
        object cxGridDBColumn45: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 312
        end
        object cxGridDBColumn46: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
        end
        object cxGridDBColumn47: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 64
        end
        object cxGridDBColumn48: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 252
        end
        object cxGridDBColumn49: TcxGridDBColumn
          DataBinding.FieldName = 'mata_uang'
          Visible = False
          Width = 64
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxTblSL
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 510
    Width = 937
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 12
      Top = 20
    end
    inherited btnSimpan: TButton
      Left = 165
      Visible = False
    end
  end
  object zqrSL: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      
        'SELECT a.no_jurnal,a.tanggal,IFNULL(CONCAT(a.keterangan,'#39' ['#39',b.k' +
        'ode_brg,'#39'-'#39',c.deskripsi,'#39']'#39'),a.keterangan) keterangan,'
      
        'IFNULL((select sum(debet) from tbl_jurnal_det where no_jurnal=a.' +
        'no_jurnal and akun= :akun),0) kredit,'
      
        'IFNULL((select sum(kredit) from tbl_jurnal_det where no_jurnal=a' +
        '.no_jurnal and akun= :akun),0) debet'
      
        'FROM tbl_jurnal a  left join tbl_jurnal_det b on a.no_jurnal=b.n' +
        'o_jurnal left join tbl_barang c on b.kode_brg=c.kode'
      'WHERE (a.tanggal BETWEEN :tgl1 AND :tgl2) and b.akun= :akun')
    Params = <
      item
        DataType = ftUnknown
        Name = 'akun'
        ParamType = ptUnknown
      end
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
    Left = 385
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'akun'
        ParamType = ptUnknown
      end
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
  object dsSL: TDataSource
    DataSet = zqrSL
    Left = 415
    Top = 20
  end
end
