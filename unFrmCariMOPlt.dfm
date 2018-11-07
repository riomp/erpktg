object frmCariMOPlt: TfrmCariMOPlt
  Left = 259
  Top = 130
  Width = 879
  Height = 344
  Caption = 'Cari MO Peletan'
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
  object Label2: TLabel
    Left = 15
    Top = 14
    Width = 58
    Height = 13
    Caption = 'Daftar MO : '
  end
  object cxGrd: TcxGrid
    Left = 15
    Top = 30
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
      OnCellDblClick = cxTblViewCellDblClick
      DataController.DataSource = dsDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      object cxTblViewno_penerimaan: TcxGridDBColumn
        Caption = 'No. Penerimaan'
        DataBinding.FieldName = 'no_penerimaan'
        Width = 90
      end
      object cxTblViewtgl_penerimaan: TcxGridDBColumn
        Caption = 'Tgl. Penerimaan'
        DataBinding.FieldName = 'tgl_penerimaan'
        Width = 83
      end
      object cxTblViewnama_customer: TcxGridDBColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama_customer'
        Width = 235
      end
      object cxTblViewnama_barang: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'nama_barang'
        Width = 333
      end
      object cxTblViewjumlah: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'jumlah'
      end
    end
    object cxGrdLevel1: TcxGridLevel
      GridView = cxTblView
    end
  end
  object btnOK: TButton
    Left = 15
    Top = 275
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnBatal: TButton
    Left = 94
    Top = 275
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 2
    OnClick = btnBatalClick
  end
  object zq: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_penerimaan_plt ORDER BY tgl_penerimaan DESC')
    Params = <>
    Left = 290
    Top = 35
  end
  object dsDetail: TDataSource
    DataSet = zq
    Left = 318
    Top = 35
  end
end
