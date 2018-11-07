inherited frmUpah: TfrmUpah
  Left = 447
  Top = 229
  Width = 390
  Caption = 'Tarif Upah'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 374
    inherited lblJudul: TLabel
      Width = 86
      Caption = 'Tarif Upah'
    end
  end
  inherited pnlTengah: TPanel
    Width = 374
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Start Date'
    end
    object Label3: TLabel
      Left = 272
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label3'
      Visible = False
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 24
      Height = 13
      Caption = 'UMK'
    end
    object cxDateEdit1: TcxDateEdit
      Left = 88
      Top = 8
      TabOrder = 0
      Width = 121
    end
    object cxsBiaya: TcxSpinEdit
      Left = 90
      Top = 36
      Properties.DisplayFormat = '#,##0.00'
      Properties.EditFormat = '#,##0.00'
      Properties.ValueType = vtFloat
      TabOrder = 1
      Width = 76
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
          Width = 42
        end
        object cxTblViewtgl: TcxGridDBColumn
          DataBinding.FieldName = 'tgl'
          Width = 82
        end
        object cxTblViewupah: TcxGridDBColumn
          DataBinding.FieldName = 'upah'
          Width = 148
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTblView
      end
    end
  end
  inherited pnlBawah: TPanel
    Width = 374
    inherited btnBaru: TButton
      Left = 171
    end
    inherited btnEdit: TButton
      Left = 254
      Top = 1
    end
    inherited btnHapus: TButton
      Left = 249
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 178
    end
  end
  object ds: TDataSource
    DataSet = zQry
    Left = 163
    Top = 12
  end
  object zQry: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT *  FROM tbl_upah')
    Params = <>
    Left = 133
    Top = 12
  end
end
