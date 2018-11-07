object frmTplMaster: TfrmTplMaster
  Left = 247
  Top = 278
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'frmTplMaster'
  ClientHeight = 344
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 66
    Align = alTop
    TabOrder = 0
    object lblJudul: TLabel
      Left = 15
      Top = 21
      Width = 43
      Height = 19
      Caption = 'Judul'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxtStat: TcxLabel
      Left = 14
      Top = 38
      Caption = 'xxx'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 66
    Width = 745
    Height = 200
    Align = alTop
    TabOrder = 1
    object pg: TPageControl
      Left = 1
      Top = 1
      Width = 743
      Height = 198
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
        object Label1: TLabel
          Left = 6
          Top = 150
          Width = 155
          Height = 13
          Caption = 'Double Klik pada baris untuk Edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxGrd: TcxGrid
          Left = 5
          Top = 10
          Width = 711
          Height = 136
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
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
          end
          object cxGrdLevel1: TcxGridLevel
            GridView = cxTblView
          end
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 266
    Width = 745
    Height = 76
    Align = alTop
    TabOrder = 2
    object btnKeluar: TButton
      Left = 470
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 0
      OnClick = btnKeluarClick
    end
    object btnTambah: TButton
      Left = 15
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 1
      OnClick = btnTambahClick
    end
    object btnEdit: TButton
      Left = 90
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Edit'
      TabOrder = 2
      OnClick = btnEditClick
    end
    object btnHapus: TButton
      Left = 165
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Hapus'
      TabOrder = 3
    end
    object btnBatal: TButton
      Left = 395
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 4
      OnClick = btnBatalClick
    end
    object btnSimpan: TButton
      Left = 320
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 5
    end
  end
  object zQry: TZQuery
    Params = <>
    Left = 365
    Top = 20
  end
  object ds: TDataSource
    DataSet = zQry
    Left = 395
    Top = 20
  end
end
