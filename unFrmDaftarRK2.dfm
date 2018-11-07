object frmDaftarRK2: TfrmDaftarRK2
  Left = 237
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Daftar Komplain Customer'
  ClientHeight = 557
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
    557)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 67
    Width = 36
    Height = 13
    Caption = 'Bagian '
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
  object cxGrid1: TcxGrid
    Left = 16
    Top = 336
    Width = 997
    Height = 169
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 14
    LookAndFeel.Kind = lfFlat
    object cxTblDetail1: TcxGridDBTableView
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
      OnFocusedRecordChanged = cxTblDetail1FocusedRecordChanged
      DataController.DataSource = dsDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = cxTblDetail1StylesGetContentStyle
      object cxTblDetail1no: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'no'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.ReadOnly = True
        Width = 30
      end
      object cxTblDetail1kode_brg: TcxGridDBColumn
        Caption = 'Kode Barang'
        DataBinding.FieldName = 'kode_brg'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 90
      end
      object cxTblDetail1deskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 435
      end
      object cxTblDetail1qty: TcxGridDBColumn
        Caption = 'Qty.Komplain'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.ReadOnly = True
        Width = 75
      end
      object cxTblDetail1no_so: TcxGridDBColumn
        Caption = 'No.SO'
        DataBinding.FieldName = 'no_so'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 135
      end
      object cxTblDetail1no_spk: TcxGridDBColumn
        Caption = 'No.SPK'
        DataBinding.FieldName = 'no_spk'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 137
      end
      object cxTblDetail1no_cp: TcxGridDBColumn
        Caption = 'No.CP'
        DataBinding.FieldName = 'no_cp'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 138
      end
      object cxTblDetail1komplain: TcxGridDBColumn
        Caption = 'Komplain'
        DataBinding.FieldName = 'komplain'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = False
      end
      object cxTblDetail1analisa: TcxGridDBColumn
        DataBinding.FieldName = 'analisa'
        Visible = False
      end
      object cxTblDetail1tindakan: TcxGridDBColumn
        DataBinding.FieldName = 'tindakan'
        Visible = False
      end
      object cxTblDetail1due_date: TcxGridDBColumn
        DataBinding.FieldName = 'due_date'
        Visible = False
      end
      object cxTblDetail1pic: TcxGridDBColumn
        DataBinding.FieldName = 'pic'
        Visible = False
      end
      object cxTblDetail1f_edit: TcxGridDBColumn
        DataBinding.FieldName = 'f_edit'
        Visible = False
      end
      object cxTblDetail1tgl_close: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_close'
        Visible = False
      end
      object cxTblDetail1f_close: TcxGridDBColumn
        DataBinding.FieldName = 'f_close'
        Visible = False
      end
      object cxTblDetail1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxTblDetail1no_rk: TcxGridDBColumn
        DataBinding.FieldName = 'no_rk'
        Visible = False
      end
    end
    object cxGridDBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDetail
      DataController.DetailKeyFieldNames = 'no_rk'
      DataController.MasterKeyFieldNames = 'no'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridDBColumn27: TcxGridDBColumn
        DataBinding.FieldName = 'no_rk'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = False
      end
      object cxGridDBColumn28: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'no'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBColumn29: TcxGridDBColumn
        Caption = 'Kode Item'
        DataBinding.FieldName = 'kode_brg'
        HeaderAlignmentHorz = taCenter
        Width = 143
      end
      object cxGridDBColumn30: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        HeaderAlignmentHorz = taCenter
        Width = 282
      end
      object cxGridDBColumn31: TcxGridDBColumn
        Caption = 'Qty.Komplain'
        DataBinding.FieldName = 'qty'
        HeaderAlignmentHorz = taCenter
        Width = 83
      end
      object cxGridDBColumn32: TcxGridDBColumn
        Caption = 'No.SO'
        DataBinding.FieldName = 'no_so'
        HeaderAlignmentHorz = taCenter
        Width = 129
      end
      object cxGridDBColumn33: TcxGridDBColumn
        Caption = 'No.SPK'
        DataBinding.FieldName = 'no_spk'
        HeaderAlignmentHorz = taCenter
        Width = 125
      end
      object cxGridDBColumn34: TcxGridDBColumn
        Caption = 'No.CP'
        DataBinding.FieldName = 'no_cp'
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object cxGridDBColumn35: TcxGridDBColumn
        Caption = 'Komplain'
        DataBinding.FieldName = 'komplain'
        Width = 296
      end
      object cxGridDBColumn36: TcxGridDBColumn
        DataBinding.FieldName = 'analisa'
        Visible = False
      end
      object cxGridDBColumn37: TcxGridDBColumn
        DataBinding.FieldName = 'tindakan'
        Visible = False
      end
      object cxGridDBColumn38: TcxGridDBColumn
        DataBinding.FieldName = 'due_date'
        Visible = False
      end
      object cxGridDBColumn39: TcxGridDBColumn
        DataBinding.FieldName = 'pic'
        Visible = False
      end
      object cxGridDBColumn40: TcxGridDBColumn
        DataBinding.FieldName = 'f_edit'
        Visible = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxTblDetail1
    end
  end
  object btnCloseKomplain: TButton
    Left = 424
    Top = 520
    Width = 97
    Height = 25
    Caption = 'Close Komplain'
    TabOrder = 13
    OnClick = btnCloseKomplainClick
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
    Height = 236
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
      OnFocusedRecordChanged = cxTblViewFocusedRecordChanged
      DataController.DataSource = dsRK
      DataController.KeyFieldNames = 'no'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
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
      object cxTblViewnama: TcxGridDBColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama'
        Width = 189
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
      object cxTblViewColumn2: TcxGridDBColumn
        Caption = 'Dept. Terkait'
        DataBinding.FieldName = 'f_dept_terkait'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        Options.Editing = False
        Width = 74
      end
      object cxTblViewdt_dept_terkait: TcxGridDBColumn
        Caption = 'Tgl / Jam'
        DataBinding.FieldName = 'dt_dept_terkait'
        Visible = False
        Width = 103
      end
      object cxTblViewColumn12: TcxGridDBColumn
        Caption = 'PIC. Tindakan Koreksi'
        DataBinding.FieldName = 'pic_tkor'
        Visible = False
        Width = 134
      end
      object cxTblViewColumn13: TcxGridDBColumn
        Caption = 'DUE Tindakan Koreksi'
        DataBinding.FieldName = 'due_tkor'
        Visible = False
        Width = 137
      end
      object cxTblViewColumn14: TcxGridDBColumn
        Caption = 'PIC. Tindakan Korektif'
        DataBinding.FieldName = 'pic_tkorf'
        Visible = False
        Width = 133
      end
      object cxTblViewColumn15: TcxGridDBColumn
        Caption = 'DUE Tindakan Korektif'
        DataBinding.FieldName = 'due_tkorf'
        Visible = False
        Width = 135
      end
      object cxTblViewColumn3: TcxGridDBColumn
        Caption = 'Atasan Dept. Terkait'
        DataBinding.FieldName = 'f_mgr_area'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        Options.Editing = False
        Width = 115
      end
      object cxTblViewdt_mgr_area: TcxGridDBColumn
        Caption = 'Tgl / Jam'
        DataBinding.FieldName = 'dt_mgr_area'
        Visible = False
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
        Visible = False
        Width = 110
      end
      object cxTblViewColumn17: TcxGridDBColumn
        Caption = 'Tgl / Jam'
        DataBinding.FieldName = 'dt_gm'
        Visible = False
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
    object cxTblDetail: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDetail
      DataController.DetailKeyFieldNames = 'no_rk'
      DataController.MasterKeyFieldNames = 'no'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxTblDetailno_rk: TcxGridDBColumn
        DataBinding.FieldName = 'no_rk'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = False
      end
      object cxTblDetailno: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'no'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object cxTblDetailkode_brg: TcxGridDBColumn
        Caption = 'Kode Item'
        DataBinding.FieldName = 'kode_brg'
        HeaderAlignmentHorz = taCenter
        Width = 143
      end
      object cxTblDetaildeskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        HeaderAlignmentHorz = taCenter
        Width = 282
      end
      object cxTblDetailqty: TcxGridDBColumn
        Caption = 'Qty.Komplain'
        DataBinding.FieldName = 'qty'
        HeaderAlignmentHorz = taCenter
        Width = 83
      end
      object cxTblDetailno_so: TcxGridDBColumn
        Caption = 'No.SO'
        DataBinding.FieldName = 'no_so'
        HeaderAlignmentHorz = taCenter
        Width = 129
      end
      object cxTblDetailno_spk: TcxGridDBColumn
        Caption = 'No.SPK'
        DataBinding.FieldName = 'no_spk'
        HeaderAlignmentHorz = taCenter
        Width = 125
      end
      object cxTblDetailno_cp: TcxGridDBColumn
        Caption = 'No.CP'
        DataBinding.FieldName = 'no_cp'
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object cxTblDetailkomplain: TcxGridDBColumn
        Caption = 'Komplain'
        DataBinding.FieldName = 'komplain'
        Width = 296
      end
      object cxTblDetailanalisa: TcxGridDBColumn
        DataBinding.FieldName = 'analisa'
        Visible = False
      end
      object cxTblDetailtindakan: TcxGridDBColumn
        DataBinding.FieldName = 'tindakan'
        Visible = False
      end
      object cxTblDetaildue_date: TcxGridDBColumn
        DataBinding.FieldName = 'due_date'
        Visible = False
      end
      object cxTblDetailpic: TcxGridDBColumn
        DataBinding.FieldName = 'pic'
        Visible = False
      end
      object cxTblDetailf_edit: TcxGridDBColumn
        DataBinding.FieldName = 'f_edit'
        Visible = False
      end
    end
    object cxGrdLevel1: TcxGridLevel
      GridView = cxTblView
    end
  end
  object btnProses: TButton
    Left = 740
    Top = 486
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 2
    Visible = False
    OnClick = btnProsesClick
  end
  object btnTutup: TButton
    Left = 179
    Top = 518
    Width = 75
    Height = 25
    Caption = 'Tutup'
    TabOrder = 3
    OnClick = btnTutupClick
  end
  object btnCetak: TButton
    Left = 259
    Top = 518
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 4
    OnClick = btnCetakClick
  end
  object btnRefresh: TButton
    Left = 99
    Top = 518
    Width = 75
    Height = 25
    Caption = '&Refresh'
    TabOrder = 5
    OnClick = btnRefreshClick
  end
  object btnLihat: TButton
    Left = 339
    Top = 518
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
    Left = 818
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
  object btnProses1: TButton
    Left = 16
    Top = 520
    Width = 75
    Height = 25
    Caption = '&Proses'
    TabOrder = 11
    OnClick = btnProses1Click
  end
  object Panel1: TPanel
    Left = 264
    Top = 8
    Width = 601
    Height = 481
    BorderStyle = bsSingle
    TabOrder = 12
    object Label3: TLabel
      Left = 18
      Top = 18
      Width = 216
      Height = 20
      Caption = 'Proses Komplain Customer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 568
      Top = 8
      Width = 13
      Height = 20
      Caption = 'X'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnClick = Label5Click
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 57
      Caption = 'Nomor'
    end
    object cxeNoFRK: TcxTextEdit
      Tag = 1
      Left = 108
      Top = 54
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 1
      Width = 171
    end
    object GroupBox2: TGroupBox
      Left = 15
      Top = 81
      Width = 571
      Height = 73
      Caption = ' Data Barang '
      TabOrder = 2
      object Label4: TLabel
        Left = 10
        Top = 20
        Width = 65
        Height = 13
        Caption = 'Nama Barang'
      end
      object Label17: TLabel
        Left = 155
        Top = 18
        Width = 32
        Height = 13
        Caption = 'Warna'
        Visible = False
      end
      object Label19: TLabel
        Left = 14
        Top = 44
        Width = 64
        Height = 13
        Caption = 'Jml. Komplain'
      end
      object cxeNamaBrg: TcxTextEdit
        Tag = 1
        Left = 103
        Top = 15
        TabStop = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 0
        Width = 443
      end
      object cxsJmlKomplain: TcxSpinEdit
        Left = 103
        Top = 41
        TabStop = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Properties.EditFormat = '#,##0.00'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 1
        Width = 113
      end
    end
    object cxLabel9: TcxLabel
      Left = 14
      Top = 159
      Caption = 'Deskripsi Komplain'
    end
    object cxmDeskKomplain: TcxMemo
      Left = 15
      Top = 183
      TabStop = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 4
      Height = 90
      Width = 571
    end
    object cxLabel2: TcxLabel
      Left = 383
      Top = 25
      Caption = 'no'
      Visible = False
    end
    object cxLabel10: TcxLabel
      Left = 14
      Top = 282
      Caption = 'Analisa Masalah'
    end
    object cxmAnalisaMasalah: TcxMemo
      Left = 16
      Top = 301
      Properties.CharCase = ecUpperCase
      Style.BorderStyle = ebsFlat
      TabOrder = 7
      Height = 108
      Width = 273
    end
    object cxLabel19: TcxLabel
      Left = 294
      Top = 279
      Caption = 'Tindakan Koreksi'
    end
    object cxmTindakanKoreksi: TcxMemo
      Left = 296
      Top = 299
      Properties.CharCase = ecUpperCase
      Style.BorderStyle = ebsFlat
      TabOrder = 9
      Height = 110
      Width = 281
    end
    object cxLabel21: TcxLabel
      Left = 14
      Top = 420
      Caption = 'Due Date : '
    end
    object cxdDueDate1: TcxDateEdit
      Left = 72
      Top = 416
      TabOrder = 11
      Width = 121
    end
    object cxLabel22: TcxLabel
      Left = 196
      Top = 420
      Caption = 'PIC :'
    end
    object cxtPIC1: TcxTextEdit
      Left = 227
      Top = 416
      Properties.CharCase = ecUpperCase
      TabOrder = 13
      Width = 269
    end
    object btnSimpan: TButton
      Left = 15
      Top = 444
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 14
      OnClick = btnSimpanClick
    end
  end
  object cxLabel3: TcxLabel
    Left = 224
    Top = 64
    Caption = 'Status'
  end
  object zq: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_rk2 WHERE bagian = :bagian')
    Params = <
      item
        DataType = ftUnknown
        Name = 'bagian'
        ParamType = ptUnknown
      end>
    Left = 751
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bagian'
        ParamType = ptUnknown
      end>
  end
  object dsRK: TDataSource
    DataSet = zq
    Left = 797
    Top = 32
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 612
    Top = 57
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
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clLime
      TextColor = clBlack
    end
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 530
    Top = 42
  end
  object zDetail: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*,b.deskripsi FROM tbl_rk_det as a join tbl_barang as b' +
        ' on a.kode_brg=b.kode'
      'WHERE a.no_rk=:no_rk')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_rk'
        ParamType = ptUnknown
      end>
    Left = 599
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_rk'
        ParamType = ptUnknown
      end>
  end
  object dsDetail: TDataSource
    DataSet = zDetail
    Left = 637
    Top = 16
  end
end
