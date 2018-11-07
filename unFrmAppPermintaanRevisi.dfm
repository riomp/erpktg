inherited frmAppPermintaanRevisi: TfrmAppPermintaanRevisi
  Left = 264
  Top = 140
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Approval Permintaan Revisi Transaksi'
  ClientHeight = 499
  ClientWidth = 875
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 875
    inherited lblJudul: TLabel
      Width = 311
      Caption = 'Approval Permintaan Revisi Transaksi'
    end
  end
  inherited pnlTengah: TPanel
    Width = 875
    Height = 375
    object cxGrd: TcxGrid
      Left = 15
      Top = 15
      Width = 844
      Height = 136
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxTblno_bukti: TcxGridDBColumn
          Caption = 'No. Bukti'
          DataBinding.FieldName = 'no_bukti'
          Options.Editing = False
          Width = 120
        end
        object cxTbltanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Options.Editing = False
        end
        object cxTbluser_req: TcxGridDBColumn
          Caption = 'User Request'
          DataBinding.FieldName = 'user_req'
          Options.Editing = False
        end
        object cxTbluser_dept_req: TcxGridDBColumn
          Caption = 'Departemen'
          DataBinding.FieldName = 'user_dept_req'
          Options.Editing = False
          Width = 133
        end
        object cxTblColumn1: TcxGridDBColumn
          Caption = 'Aplikasi'
          DataBinding.FieldName = 'jenis'
          Width = 111
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 155
      Caption = 'Deskripsi'
    end
    object cdbMemDesk: TcxDBMemo
      Left = 16
      Top = 175
      DataBinding.DataField = 'deskripsi'
      DataBinding.DataSource = ds
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 2
      Height = 161
      Width = 842
    end
    object btnAttach1: TButton
      Left = 16
      Top = 342
      Width = 75
      Height = 25
      Caption = 'Attachment 1'
      TabOrder = 3
      OnClick = btnAttach1Click
    end
    object btnAttach2: TButton
      Left = 92
      Top = 342
      Width = 75
      Height = 25
      Caption = 'Attachment 2'
      TabOrder = 4
      OnClick = btnAttach2Click
    end
  end
  inherited pnlBawah: TPanel
    Left = 440
    Top = 491
    Align = alNone
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 441
    Width = 875
    Height = 59
    Align = alTop
    TabOrder = 3
    object btnApp: TButton
      Left = 16
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Approval'
      TabOrder = 0
      OnClick = btnAppClick
    end
    object btnTidakApp: TButton
      Left = 93
      Top = 15
      Width = 93
      Height = 25
      Caption = 'Tidak Approval'
      TabOrder = 1
      OnClick = btnTidakAppClick
    end
    object btnKeluar2: TButton
      Left = 188
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 2
      OnClick = btnKeluar2Click
    end
  end
  object zqr: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_revisi_trs '
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 415
    Top = 20
  end
  object ds: TDataSource
    DataSet = zqr
    Left = 445
    Top = 20
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 480
    Top = 20
  end
end
