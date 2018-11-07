object frmDaftarRK: TfrmDaftarRK
  Left = 188
  Top = 124
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Daftar Komplain Customer'
  ClientHeight = 526
  ClientWidth = 1032
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1032
    526)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 67
    Width = 36
    Height = 13
    Caption = 'Bagian '
  end
  object Label2: TLabel
    Left = 230
    Top = 67
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Label16: TLabel
    Left = 20
    Top = 19
    Width = 242
    Height = 24
    Caption = 'Daftar Komplain Customer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object cxtBagian: TcxTextEdit
    Left = 68
    Top = 63
    Properties.CharCase = ecUpperCase
    Style.Color = clMoneyGreen
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 0
    Width = 143
  end
  object cxGrd: TcxGrid
    Left = 20
    Top = 93
    Width = 993
    Height = 380
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
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
      DataController.DataSource = dsRK
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      Styles.OnGetContentStyle = cxTblViewStylesGetContentStyle
      object cxTblViewno: TcxGridDBColumn
        Caption = 'Nomor'
        DataBinding.FieldName = 'no'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Moving = False
        Width = 90
      end
      object cxTblViewtanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Options.Editing = False
        Options.Moving = False
        Width = 71
      end
      object cxTblViewColumn8: TcxGridDBColumn
        Caption = 'Waktu (Jam)'
        DataBinding.FieldName = 'waktu'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Options.Editing = False
        Options.Filtering = False
        Width = 71
      end
      object cxTblViewnama_cust: TcxGridDBColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama_cust'
        Options.Editing = False
        Options.Moving = False
        Width = 218
      end
      object cxTblViewColumn7: TcxGridDBColumn
        Caption = 'Deskripsi Komplain'
        DataBinding.FieldName = 'deskripsi_komplain'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ReadOnly = True
        Options.Filtering = False
        Width = 225
      end
      object cxTblViewdibuat_oleh: TcxGridDBColumn
        Caption = 'Dibuat Oleh'
        DataBinding.FieldName = 'dibuat_oleh'
        Options.Editing = False
        Options.Moving = False
        Width = 124
      end
      object cxTblViewColumn1: TcxGridDBColumn
        Caption = 'Diberikan Kpd.'
        DataBinding.FieldName = 'diberikan_kepada'
        Options.Editing = False
        Options.Moving = False
        Width = 107
      end
      object cxTblViewstatus: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'status'
        Options.Editing = False
        Options.Moving = False
        Width = 83
      end
      object cxTblViewkategori: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'kategori'
        Options.Editing = False
        Options.Moving = False
        Width = 107
      end
      object cxTblViewno_so: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Options.Editing = False
        Options.Moving = False
        Width = 94
      end
      object cxTblViewColumn2: TcxGridDBColumn
        Caption = 'Dept. Terkait'
        DataBinding.FieldName = 'f_dept_terkait'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Options.Editing = False
        Width = 74
      end
      object cxTblViewdt_dept_terkait: TcxGridDBColumn
        Caption = 'Tgl / Jam'
        DataBinding.FieldName = 'dt_dept_terkait'
        Width = 103
      end
      object cxTblViewColumn12: TcxGridDBColumn
        Caption = 'PIC. Tindakan Koreksi'
        DataBinding.FieldName = 'pic_tkor'
        Width = 134
      end
      object cxTblViewColumn13: TcxGridDBColumn
        Caption = 'DUE Tindakan Koreksi'
        DataBinding.FieldName = 'due_tkor'
        Width = 137
      end
      object cxTblViewColumn14: TcxGridDBColumn
        Caption = 'PIC. Tindakan Korektif'
        DataBinding.FieldName = 'pic_tkorf'
        Width = 133
      end
      object cxTblViewColumn15: TcxGridDBColumn
        Caption = 'DUE Tindakan Korektif'
        DataBinding.FieldName = 'due_tkorf'
        Width = 135
      end
      object cxTblViewColumn3: TcxGridDBColumn
        Caption = 'Atasan Dept. Terkait'
        DataBinding.FieldName = 'f_mgr_area'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Options.Editing = False
        Width = 115
      end
      object cxTblViewdt_mgr_area: TcxGridDBColumn
        Caption = 'Tgl / Jam'
        DataBinding.FieldName = 'dt_mgr_area'
        Width = 103
      end
      object cxTblViewColumn4: TcxGridDBColumn
        Caption = 'Mgr. QAC'
        DataBinding.FieldName = 'f_mgr_qac'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        Options.Editing = False
      end
      object cxTblViewdt_mgr_qac: TcxGridDBColumn
        Caption = 'Tgl / Jam'
        DataBinding.FieldName = 'dt_mgr_qac'
        Visible = False
        Width = 103
      end
      object cxTblViewColumn5: TcxGridDBColumn
        Caption = 'Op. & Buss. Dev. Director'
        DataBinding.FieldName = 'f_director'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        Options.Editing = False
        Width = 87
      end
      object cxTblViewdt_director: TcxGridDBColumn
        Caption = 'Tgl / Jam'
        DataBinding.FieldName = 'dt_director'
        Visible = False
        Width = 103
      end
      object cxTblViewColumn6: TcxGridDBColumn
        Caption = 'SA Director/CFT-SMG Mgr.'
        DataBinding.FieldName = 'f_director2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        Options.Editing = False
        Width = 154
      end
      object cxTblViewColumn9: TcxGridDBColumn
        DataBinding.FieldName = 'status'
        Visible = False
      end
      object cxTblViewdt_director2: TcxGridDBColumn
        Caption = 'Tgl / Jam'
        DataBinding.FieldName = 'dt_director2'
        Visible = False
        Width = 103
      end
      object cxTblViewColumn16: TcxGridDBColumn
        Caption = 'General Manager'
        DataBinding.FieldName = 'f_gm'
        Width = 110
      end
      object cxTblViewColumn17: TcxGridDBColumn
        Caption = 'Tgl / Jam'
        DataBinding.FieldName = 'dt_gm'
        Width = 96
      end
      object cxTblViewColumn10: TcxGridDBColumn
        Caption = 'Tgl. Penutupan'
        DataBinding.FieldName = 'dt_closed'
      end
      object cxTblViewColumn11: TcxGridDBColumn
        Caption = 'No. LKM'
        DataBinding.FieldName = 'no_lkm'
        Visible = False
        Width = 101
      end
    end
    object cxGrdLevel1: TcxGridLevel
      GridView = cxTblView
    end
  end
  object btnProses: TButton
    Left = 20
    Top = 486
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 2
    OnClick = btnProsesClick
  end
  object btnTutup: TButton
    Left = 179
    Top = 486
    Width = 75
    Height = 25
    Caption = 'Tutup'
    TabOrder = 3
    OnClick = btnTutupClick
  end
  object btnCetak: TButton
    Left = 259
    Top = 486
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 4
    OnClick = btnCetakClick
  end
  object btnRefresh: TButton
    Left = 99
    Top = 486
    Width = 75
    Height = 25
    Caption = '&Refresh'
    TabOrder = 5
    OnClick = btnRefreshClick
  end
  object btnLihat: TButton
    Left = 339
    Top = 486
    Width = 75
    Height = 25
    Caption = 'Lihat'
    TabOrder = 6
    OnClick = btnLihatClick
  end
  object cxcStat: TcxComboBox
    Left = 273
    Top = 63
    Properties.DropDownListStyle = lsFixedList
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 7
    Width = 133
  end
  object btnGo: TButton
    Left = 412
    Top = 63
    Width = 29
    Height = 21
    Caption = 'Go'
    TabOrder = 8
    OnClick = btnGoClick
  end
  object btnPenutupanCCR: TButton
    Left = 418
    Top = 486
    Width = 218
    Height = 25
    Caption = 'Penutupan CCR'
    TabOrder = 9
    Visible = False
    OnClick = btnPenutupanCCRClick
  end
  object btnCetakSementara: TButton
    Left = 639
    Top = 486
    Width = 97
    Height = 25
    Caption = 'Cetak Sementara'
    TabOrder = 10
    Visible = False
    OnClick = btnCetakSementaraClick
  end
  object zq: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_rk WHERE kategori<>'#39'SURVEY KEPUASAN'#39' and bagian ' +
        '= :bagian')
    Params = <
      item
        DataType = ftUnknown
        Name = 'bagian'
        ParamType = ptUnknown
      end>
    Left = 535
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bagian'
        ParamType = ptUnknown
      end>
  end
  object dsRK: TDataSource
    DataSet = zq
    Left = 565
    Top = 232
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 460
    Top = 177
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clTeal
    end
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 530
    Top = 42
  end
end
