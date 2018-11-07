inherited frmDasarJadwal: TfrmDasarJadwal
  Width = 454
  Caption = 'Dasar Jadwal'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 438
    inherited lblJudul: TLabel
      Width = 109
      Caption = 'Dasar Jadwal'
    end
  end
  inherited pnlTengah: TPanel
    Width = 438
    object cxGrid1: TcxGrid
      Left = 8
      Top = 7
      Width = 417
      Height = 226
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSales
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.DeletingConfirmation = False
        object cxGrid1DBTableView1kode: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode'
          HeaderAlignmentHorz = taCenter
          Width = 59
        end
        object cxGrid1DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          HeaderAlignmentHorz = taCenter
          Width = 169
        end
        object cxGrid1DBTableView1masuk: TcxGridDBColumn
          Caption = 'Jam Masuk'
          DataBinding.FieldName = 'masuk'
          PropertiesClassName = 'TcxTimeEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object cxGrid1DBTableView1pulang: TcxGridDBColumn
          Caption = 'Jam Pulang'
          DataBinding.FieldName = 'pulang'
          PropertiesClassName = 'TcxTimeEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxNavigator1: TcxNavigator
      Left = 8
      Top = 238
      Width = 405
      Height = 25
      Control = cxGrid1
      InfoPanel.Font.Charset = DEFAULT_CHARSET
      InfoPanel.Font.Color = clDefault
      InfoPanel.Font.Height = -11
      InfoPanel.Font.Name = 'MS Sans Serif'
      InfoPanel.Font.Style = []
      TabOrder = 1
    end
  end
  inherited pnlBawah: TPanel
    Width = 438
    inherited btnKeluar: TButton
      Left = 12
    end
    inherited btnSimpan: TButton
      Left = 199
      Top = 17
      Visible = False
    end
  end
  object zTblSales: TZTable
    Connection = dm.zConn
    Active = True
    TableName = 'tbl_dasarjadwal'
    Left = 206
    Top = 12
  end
  object dsSales: TDataSource
    DataSet = zTblSales
    Left = 236
    Top = 12
  end
end
