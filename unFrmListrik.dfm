inherited frmListrik: TfrmListrik
  Left = 564
  Top = 167
  Width = 392
  Caption = 'Tarif Listrik'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 376
    inherited lblJudul: TLabel
      Width = 95
      Caption = 'Tarif Listrik'
    end
  end
  inherited pnlTengah: TPanel
    Width = 376
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Start Date'
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 51
      Height = 13
      Caption = 'Tarif Listrik'
    end
    object Label3: TLabel
      Left = 272
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label3'
      Visible = False
    end
    object cxsBiaya: TcxSpinEdit
      Left = 90
      Top = 36
      Properties.DisplayFormat = '#,##0.00'
      Properties.EditFormat = '#,##0.00'
      Properties.ValueType = vtFloat
      TabOrder = 0
      Width = 76
    end
    object cxDateEdit1: TcxDateEdit
      Left = 88
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxGrd: TcxGrid
      Left = 13
      Top = 63
      Width = 348
      Height = 186
      TabOrder = 2
      object cxTblView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = True
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Next.Visible = True
        NavigatorButtons.NextPage.Visible = True
        NavigatorButtons.Last.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        OnCellDblClick = cxTblViewCellDblClick
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxTblViewid: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Width = 40
        end
        object cxTblViewtgl: TcxGridDBColumn
          DataBinding.FieldName = 'tgl'
          Width = 86
        end
        object cxTblViewbiaya: TcxGridDBColumn
          DataBinding.FieldName = 'biaya'
          Width = 119
        end
        object cxTblViewjenis: TcxGridDBColumn
          DataBinding.FieldName = 'jenis'
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTblView
      end
    end
    object cbb1: TComboBox
      Left = 170
      Top = 35
      Width = 41
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'L'
      Items.Strings = (
        'L'
        'H')
    end
  end
  inherited pnlBawah: TPanel
    Width = 376
    inherited btnKeluar: TButton
      Left = 180
    end
    inherited btnBaru: TButton
      Left = 291
      Top = 9
    end
    inherited btnEdit: TButton
      Left = 278
    end
    inherited btnHapus: TButton
      Left = 97
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 210
    end
    inherited btnSimpan: TButton
      Caption = ' &Simpan'
    end
  end
  object zQry: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT *  FROM tbl_listrik')
    Params = <>
    Left = 133
    Top = 12
  end
  object ds: TDataSource
    DataSet = zQry
    Left = 163
    Top = 12
  end
end
