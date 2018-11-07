object frmCariCust: TfrmCariCust
  Left = 354
  Top = 213
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cari Customer'
  ClientHeight = 305
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrd: TcxGrid
    Left = 15
    Top = 20
    Width = 841
    Height = 236
    TabOrder = 0
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
      DataController.DataSource = dsCust
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxTblViewperusahaan: TcxGridDBColumn
        Caption = 'Nama Perusahaan'
        DataBinding.FieldName = 'perusahaan'
        Options.Editing = False
        Width = 250
      end
      object cxTblViewalamat1: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'alamat1'
        Options.Editing = False
        Width = 281
      end
      object cxTblViewkota: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'kota'
        Options.Editing = False
        Width = 135
      end
      object cxTblViewtelpon1: TcxGridDBColumn
        Caption = 'Telpon'
        DataBinding.FieldName = 'telpon1'
        Options.Editing = False
        Width = 111
      end
    end
    object cxGrdLevel1: TcxGridLevel
      GridView = cxTblView
    end
  end
  object btnOk: TButton
    Left = 15
    Top = 265
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 1
    OnClick = btnOkClick
  end
  object Button2: TButton
    Left = 95
    Top = 265
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 2
    OnClick = Button2Click
  end
  object zqCust: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_cardfile ORDER BY perusahaan')
    Params = <>
    Left = 290
    Top = 25
  end
  object dsCust: TDataSource
    DataSet = zqCust
    Left = 318
    Top = 25
  end
end
