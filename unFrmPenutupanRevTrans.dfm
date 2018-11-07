inherited frmPenutupanRevTrans: TfrmPenutupanRevTrans
  Left = 357
  Top = 205
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Penutupan Permintaan Revisi Transaksi'
  ClientHeight = 473
  ClientWidth = 875
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 875
    inherited lblJudul: TLabel
      Width = 326
      Caption = 'Penutupan Permintaan Revisi Transaksi'
    end
  end
  inherited pnlTengah: TPanel
    Width = 875
    Height = 349
    object cxGrd: TcxGrid
      Left = 18
      Top = 15
      Width = 838
      Height = 136
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxTblf_approval: TcxGridDBColumn
          Caption = 'Approval'
          DataBinding.FieldName = 'f_approval'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueGrayed = 2
          Properties.ValueUnchecked = 0
          Width = 52
        end
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
        object cxTblketerangan_app: TcxGridDBColumn
          Caption = 'Keterangan Approval'
          DataBinding.FieldName = 'keterangan_app'
          Width = 248
        end
        object cxTbluser_app: TcxGridDBColumn
          Caption = 'User Approva'
          DataBinding.FieldName = 'user_app'
        end
        object cxTbltgl_app: TcxGridDBColumn
          Caption = 'Tgl. Approval'
          DataBinding.FieldName = 'tgl_app'
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
      Height = 135
      Width = 842
    end
    object btnAttach1: TButton
      Left = 16
      Top = 315
      Width = 75
      Height = 25
      Caption = 'Attachment 1'
      TabOrder = 3
      OnClick = btnAttach1Click
    end
    object btnAttach2: TButton
      Left = 92
      Top = 315
      Width = 75
      Height = 25
      Caption = 'Attachment 2'
      TabOrder = 4
      OnClick = btnAttach2Click
    end
  end
  inherited pnlBawah: TPanel
    Left = 765
    Top = 386
    Align = alNone
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 415
    Width = 875
    Height = 58
    Align = alTop
    TabOrder = 3
    object btnTutupRev: TButton
      Left = 16
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Tutup'
      TabOrder = 0
      OnClick = btnTutupRevClick
    end
    object btnKeluar2: TButton
      Left = 93
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 1
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
