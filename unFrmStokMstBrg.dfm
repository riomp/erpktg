object frmStokMstBrg: TfrmStokMstBrg
  Left = 212
  Top = 6
  Width = 1081
  Height = 722
  Caption = 'Stok Master Barang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1065
    683)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 20
    Top = 11
    Width = 1023
    Height = 364
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object cxTblView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnEditValueChanged = cxTblViewEditValueChanged
      OnFocusedRecordChanged = cxTblViewFocusedRecordChanged
      OnInitEditValue = cxTblViewInitEditValue
      DataController.DataSource = dsBrg
      DataController.Filter.OnChanged = cxTblViewDataControllerFilterChanged
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxTblViewkode: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kode'
      end
      object cxTblViewdeskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 319
      end
      object cxTblColFImage: TcxGridDBColumn
        Caption = 'Foto'
        DataBinding.FieldName = 'f_image'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 30
      end
      object cxTblViewColumn9: TcxGridDBColumn
        Caption = 'ED'
        DataBinding.FieldName = 'f_ed'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        Width = 31
      end
      object cxTblViewG01: TcxGridDBColumn
        Caption = 'G-BB'
        DataBinding.FieldName = 'G01'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Styles.OnGetContentStyle = cxTblViewG01StylesGetContentStyle
      end
      object cxTblViewG02: TcxGridDBColumn
        Caption = 'G-BJ'
        DataBinding.FieldName = 'G02'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
      end
      object cxTblViewColumn3: TcxGridDBColumn
        Caption = 'G-KAR'
        DataBinding.FieldName = 'G03'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
      end
      object cxTblViewColumn8: TcxGridDBColumn
        Caption = 'G-ASIS'
        DataBinding.FieldName = 'G_ASIS'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
      end
      object cxTblViewColumn13: TcxGridDBColumn
        Caption = 'G-CONS'
        DataBinding.FieldName = 'G_CONS'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
      end
      object cxTblViewColumn14: TcxGridDBColumn
        Caption = 'G-WIP'
        DataBinding.FieldName = 'G_WIP'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,#0.00'
        Properties.EditFormat = '#,#0.00'
      end
      object cxTblViewColumn6: TcxGridDBColumn
        Caption = 'Outstanding PO'
        DataBinding.FieldName = 'outstanding_po2'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Width = 91
      end
      object cxTblViewColumn7: TcxGridDBColumn
        Caption = 'Outstanding SO'
        DataBinding.FieldName = 'outstanding_so'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Width = 83
      end
      object cxTblViewColumn4: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'unitid'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Width = 86
      end
      object cxTblViewtotal_stok: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'total_stok'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
      end
      object cxTblViewColumn10: TcxGridDBColumn
        Caption = 'Buffer Stok'
        DataBinding.FieldName = 'b_stok'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Styles.OnGetContentStyle = cxTblViewColumn10StylesGetContentStyle
      end
      object cxTblViewColumn1: TcxGridDBColumn
        Caption = 'Tipe'
        DataBinding.FieldName = 'tipe'
        Width = 129
      end
      object cxTblViewColumn2: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'kategori'
        Width = 120
      end
      object cxTblViewColumn5: TcxGridDBColumn
        Caption = 'Sub. Kategori'
        DataBinding.FieldName = 'subkategori'
        Width = 183
      end
      object cxTblViewColumn12: TcxGridDBColumn
        Caption = 'Lokasi'
        DataBinding.FieldName = 'lokasi'
        Width = 48
      end
      object cxTblViewColumn11: TcxGridDBColumn
        Caption = 'Grid'
        DataBinding.FieldName = 'lokasi_grid'
        Width = 42
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxTblView
    end
  end
  object btnKeluar: TButton
    Left = 20
    Top = 642
    Width = 76
    Height = 25
    Caption = '&Keluar'
    TabOrder = 1
    OnClick = btnKeluarClick
  end
  object btnCetak: TButton
    Left = 100
    Top = 642
    Width = 96
    Height = 25
    Caption = 'Cetak Excel'
    TabOrder = 2
    OnClick = btnCetakClick
  end
  object cxChkBrgNonAktif: TcxCheckBox
    Left = 207
    Top = 644
    Caption = 'Barang Non Aktif'
    TabOrder = 3
    OnClick = cxChkBrgNonAktifClick
    Width = 121
  end
  object pg: TPageControl
    Left = 20
    Top = 414
    Width = 1023
    Height = 217
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    OnChange = pgChange
    object TabSheet2: TTabSheet
      Caption = 'Detail Mutasi G01'
      ImageIndex = 1
      DesignSize = (
        1015
        189)
      object cxGrid3: TcxGrid
        Left = 4
        Top = 3
        Width = 1004
        Height = 182
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsG01
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'No. Trans.'
            DataBinding.FieldName = 'no_bukti'
            Width = 96
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'jenis'
            Width = 63
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Qty.'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'gudang'
            Width = 80
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 98
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 107
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 112
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'No. SJ'
            DataBinding.FieldName = 'no_sj'
            Visible = False
            Width = 112
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'No. LKM'
            DataBinding.FieldName = 'no_lkm'
            Width = 114
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'nama_customer_so'
            Width = 256
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 195
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            Width = 204
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Width = 107
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Detail Mutasi G02'
      DesignSize = (
        1015
        189)
      object cxGrid2: TcxGrid
        Left = 4
        Top = 3
        Width = 1004
        Height = 182
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsG02
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid2DBTableView1tanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGrid2DBTableView1no_bukti: TcxGridDBColumn
            Caption = 'No. Trans.'
            DataBinding.FieldName = 'no_bukti'
            Width = 96
          end
          object cxGrid2DBTableView1jenis: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'jenis'
            Width = 63
          end
          object cxGrid2DBTableView1qty: TcxGridDBColumn
            Caption = 'Qty.'
            DataBinding.FieldName = 'qty'
          end
          object cxGrid2DBTableView1gudang: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'gudang'
            Width = 80
          end
          object cxGrid2DBTableView1no_so: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 98
          end
          object cxGrid2DBTableView1no_spmb: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 112
          end
          object cxGrid2DBTableView1Column3: TcxGridDBColumn
            Caption = 'No. LKM'
            DataBinding.FieldName = 'no_lkm'
            Width = 100
          end
          object cxGrid2DBTableView1Column2: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'nama_customer_so'
            Width = 188
          end
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            Caption = 'No. SJ (Ref. Retur)'
            DataBinding.FieldName = 'no_sj'
            Width = 112
          end
          object cxGrid2DBTableView1no_spk: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 107
          end
          object cxGrid2DBTableView1referensi: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 195
          end
          object cxGrid2DBTableView1keterangan: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            Width = 204
          end
          object cxGrid2DBTableView1user: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Width = 107
          end
          object cxGrid2DBTableView1user_dept: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Detail Mutasi G-KAR'
      ImageIndex = 2
      DesignSize = (
        1015
        189)
      object cxGrid4: TcxGrid
        Left = 4
        Top = 3
        Width = 1004
        Height = 182
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsG03
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'No. Trans.'
            DataBinding.FieldName = 'no_bukti'
            Width = 96
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'jenis'
            Width = 63
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Qty.'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'gudang'
            Width = 80
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 98
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 107
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 112
          end
          object cxGridDBTableView2Column2: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'nama_customer'
            Visible = False
            Width = 159
          end
          object cxGridDBTableView2Column3: TcxGridDBColumn
            Caption = 'No. LKM'
            DataBinding.FieldName = 'no_lkm'
          end
          object cxGridDBTableView2Column4: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'nama_customer_so'
            Width = 268
          end
          object cxGridDBTableView2Column1: TcxGridDBColumn
            Caption = 'No. SJ (Ref. Retur)'
            DataBinding.FieldName = 'no_sj'
            Width = 112
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 195
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            Width = 204
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Width = 107
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Detail Mutasi G-ASIS'
      ImageIndex = 3
      DesignSize = (
        1015
        189)
      object cxGrid5: TcxGrid
        Left = 4
        Top = 3
        Width = 1004
        Height = 182
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_ASIS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = 'No. Trans.'
            DataBinding.FieldName = 'no_bukti'
            Width = 96
          end
          object cxGridDBTableView3Column3: TcxGridDBColumn
            Caption = 'Dept. Tujuan'
            DataBinding.FieldName = 'dept'
            Width = 81
          end
          object cxGridDBTableView3Column2: TcxGridDBColumn
            Caption = 'Divisi Tujuan'
            DataBinding.FieldName = 'divisi_tujuan'
            Width = 74
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'jenis'
            Width = 63
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = 'Qty.'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn29: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'gudang'
            Width = 80
          end
          object cxGridDBColumn30: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 98
          end
          object cxGridDBColumn31: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 112
          end
          object cxGridDBTableView3Column1: TcxGridDBColumn
            Caption = 'No. LKM'
            DataBinding.FieldName = 'no_lkm'
            Width = 107
          end
          object cxGridDBColumn32: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'nama_customer_so'
            Width = 188
          end
          object cxGridDBColumn33: TcxGridDBColumn
            Caption = 'No. SJ (Ref. Retur)'
            DataBinding.FieldName = 'no_sj'
            Width = 112
          end
          object cxGridDBColumn34: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 107
          end
          object cxGridDBColumn35: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 195
          end
          object cxGridDBColumn36: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            Width = 204
          end
          object cxGridDBColumn37: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Width = 107
          end
          object cxGridDBColumn38: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Detail Mutasi G-CONS'
      ImageIndex = 4
      DesignSize = (
        1015
        189)
      object cxGrid6: TcxGrid
        Left = 4
        Top = 3
        Width = 1004
        Height = 182
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxGridDBTableView4: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsG_CONS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn39: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn40: TcxGridDBColumn
            Caption = 'No. Trans.'
            DataBinding.FieldName = 'no_bukti'
            Width = 96
          end
          object cxGridDBColumn41: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'jenis'
            Width = 63
          end
          object cxGridDBColumn42: TcxGridDBColumn
            Caption = 'Qty.'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn43: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'gudang'
            Width = 80
          end
          object cxGridDBColumn44: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 98
          end
          object cxGridDBColumn45: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 107
          end
          object cxGridDBColumn46: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 112
          end
          object cxGridDBColumn47: TcxGridDBColumn
            Caption = 'No. SJ'
            DataBinding.FieldName = 'no_sj'
            Visible = False
            Width = 112
          end
          object cxGridDBColumn48: TcxGridDBColumn
            Caption = 'No. LKM'
            DataBinding.FieldName = 'no_lkm'
            Width = 114
          end
          object cxGridDBColumn49: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'nama_customer_so'
            Width = 256
          end
          object cxGridDBColumn50: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 195
          end
          object cxGridDBColumn51: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            Width = 204
          end
          object cxGridDBColumn52: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Width = 107
          end
          object cxGridDBColumn53: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Detail Mutasi G-WIP'
      ImageIndex = 5
      DesignSize = (
        1015
        189)
      object cxGrid7: TcxGrid
        Left = 4
        Top = 3
        Width = 1004
        Height = 182
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object cxGridDBTableView5: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsG_WIP
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBColumn54: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn55: TcxGridDBColumn
            Caption = 'No. Trans.'
            DataBinding.FieldName = 'no_bukti'
            Width = 96
          end
          object cxGridDBColumn56: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'jenis'
            Width = 63
          end
          object cxGridDBColumn57: TcxGridDBColumn
            Caption = 'Qty.'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn58: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'gudang'
            Width = 80
          end
          object cxGridDBColumn59: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 98
          end
          object cxGridDBColumn60: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 107
          end
          object cxGridDBColumn61: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 112
          end
          object cxGridDBColumn62: TcxGridDBColumn
            Caption = 'No. SJ'
            DataBinding.FieldName = 'no_sj'
            Visible = False
            Width = 112
          end
          object cxGridDBColumn63: TcxGridDBColumn
            Caption = 'No. LKM'
            DataBinding.FieldName = 'no_lkm'
            Width = 114
          end
          object cxGridDBColumn64: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'nama_customer_so'
            Width = 256
          end
          object cxGridDBColumn65: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 195
          end
          object cxGridDBColumn66: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            Width = 204
          end
          object cxGridDBColumn67: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Width = 107
          end
          object cxGridDBColumn68: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
    end
  end
  object btnKartuStok: TButton
    Left = 20
    Top = 381
    Width = 75
    Height = 25
    Caption = 'Kartu Stok'
    TabOrder = 5
    OnClick = btnKartuStokClick
  end
  object cxLabel1: TcxLabel
    Left = 446
    Top = 379
    Anchors = [akTop, akRight]
    Caption = 
      'Keterangan : G-SDP : Gudang Stok SDP | G-CUST : Gudang Customer ' +
      '| G-KAR : Gudang Karantina | G-ASIS : Gudang AS IS'
    Style.TextColor = clBlue
  end
  object btnRefresh: TButton
    Left = 100
    Top = 381
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 7
    OnClick = btnRefreshClick
  end
  object Memo1: TMemo
    Left = 490
    Top = 190
    Width = 185
    Height = 89
    Lines.Strings = (
      'SELECT * FROM v_brg_per_gdg '
      'ORDER BY deskripsi')
    TabOrder = 8
    Visible = False
  end
  object Memo2: TMemo
    Left = 515
    Top = 205
    Width = 185
    Height = 89
    Lines.Strings = (
      'SELECT '
      '  a.kode,'
      '  a.deskripsi,'
      '  (SELECT ifnull(tbl_barang_det.stok, '
      '0) AS stok FROM tbl_barang_det '
      'WHERE tbl_barang_det.kode_brg = '
      'a.kode AND '
      'tbl_barang_det.kode_gdg = '#39'G01'#39') AS '
      'G01,'
      '  ifnull((select ifnull'
      '(tbl_barang_det.stok, 0) AS stok from '
      'tbl_barang_det where'
      '((tbl_barang_det.kode_brg = a.kode) '
      'and(tbl_barang_det.kode_gdg = '
      #39'G02'#39'))), 0) AS G02,'
      '  ifnull((select ifnull'
      '(tbl_barang_det.stok, 0) AS stok from '
      'tbl_barang_det where'
      '((tbl_barang_det.kode_brg = a.kode) '
      'and(tbl_barang_det.kode_gdg = '
      #39'G03'#39'))), 0) AS G03,'
      '  a.stok AS total_stok,'
      '  a.satuan,'
      '  a.tipe,'
      '  a.kategori,'
      '  a.subkategori,'
      '  ((select sum(tbl_po_det.qty) AS '
      '`sum(qty)` from tbl_po_det where'
      '(tbl_po_det.kode_brg = a.kode)) - '
      '(select sum(tbl_spbb_det.qty) AS '
      '`sum(qty)` from tbl_spbb_det where'
      '((tbl_spbb_det.kode_brg = a.kode) '
      'and(tbl_spbb_det.no_penerimaan is '
      'not null)))) AS outstanding_po,'
      '  ((select tmp_so_det.qty AS `sum'
      '(qty)` from tmp_so_det where'
      '(tmp_so_det.kode_brg = a.kode)) - '
      '(select tmp_sj_det.qty AS `sum(qty)` '
      'from tmp_sj_det where '
      'tmp_sj_det.kode_brg = a.kode)) AS '
      'outstanding_so  '
      'FROM'
      '  tbl_barang a'
      'WHERE'
      '  a.f_aktif = 1; ')
    TabOrder = 9
    Visible = False
  end
  object btnLihatED: TButton
    Left = 180
    Top = 381
    Width = 75
    Height = 25
    Caption = 'Lihat ED'
    TabOrder = 10
    OnClick = btnLihatEDClick
  end
  object btnEditBrg: TButton
    Left = 340
    Top = 381
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 11
    Visible = False
    OnClick = btnEditBrgClick
  end
  object cxLabel2: TcxLabel
    Left = 510
    Top = 394
    Anchors = [akTop, akRight]
    Caption = 'Merah : Stok G-SDP < Buffer Stok'
    Style.TextColor = clRed
  end
  object btnGambar: TButton
    Left = 260
    Top = 381
    Width = 75
    Height = 25
    Caption = 'Lihat Foto'
    TabOrder = 13
    OnClick = btnGambarClick
  end
  object pnlFoto: TPanel
    Left = 1040
    Top = 70
    Width = 471
    Height = 306
    TabOrder = 14
    Visible = False
    object image: TImage
      Left = 9
      Top = 5
      Width = 455
      Height = 295
      Stretch = True
    end
    object btnCloseFoto: TButton
      Left = 440
      Top = 5
      Width = 24
      Height = 22
      Caption = 'X'
      TabOrder = 0
      OnClick = btnCloseFotoClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    AfterScroll = zqrBrgAfterScroll
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg ORDER BY deskripsi')
    Params = <>
    Left = 615
    Top = 111
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 645
    Top = 111
  end
  object frxReport1: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41630.392620613430000000
    ReportOptions.LastChange = 41630.392620613430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 375
    Top = 310
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'fdbStokBrg'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 740.787880000000000000
        DataSet = frxDBDataset1
        DataSetName = 'fdbStokBrg'
        RowCount = 0
        object fdbStokBrgkode: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'kode'
          DataSet = frxDBDataset1
          DataSetName = 'fdbStokBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbStokBrg."kode"]')
          ParentFont = False
        end
        object fdbStokBrgkategori: TfrxMemoView
          Left = 94.488250000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'kategori'
          DataSet = frxDBDataset1
          DataSetName = 'fdbStokBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbStokBrg."kategori"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 740.787880000000000000
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fdbStokBrg'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode=kode'
      'deskripsi=deskripsi'
      'G01=G01'
      'G02=G02'
      'G03=G03'
      'total_stok=total_stok'
      'satuan=satuan'
      'tipe=tipe'
      'kategori=kategori'
      'subkategori=subkategori')
    DataSet = zqrBrg
    BCDToCurrency = False
    Left = 405
    Top = 310
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 380
    Top = 275
  end
  object frxXLSExport1: TfrxXLSExport
    FileName = 'D:\1.xls'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 41662.885518842600000000
    DataOnly = False
    ExportEMF = True
    ExportPictures = False
    MergeCells = False
    OpenExcelAfterExport = True
    Wysiwyg = False
    AsText = False
    Background = False
    FastExport = False
    PageBreaks = False
    EmptyLines = True
    SuppressPageHeadersFooters = False
    GridLines = False
    Left = 415
    Top = 280
  end
  object zqrBrg2: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_na ORDER BY deskripsi')
    Params = <>
    Left = 615
    Top = 141
  end
  object dsBrg2: TDataSource
    DataSet = zqrBrg2
    Left = 645
    Top = 141
  end
  object zqrDetG02: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_history_all WHERE gudang = '#39'G01'#39)
    Params = <>
    MasterFields = 'kode'
    MasterSource = dsBrg
    LinkedFields = 'kode_brg'
    Left = 465
    Top = 530
  end
  object dsDetG02: TDataSource
    DataSet = zqrDetG02
    Left = 495
    Top = 530
  end
  object zqrDetG03: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_history_all WHERE gudang = '#39'G03'#39)
    Params = <>
    MasterFields = 'kode'
    MasterSource = dsBrg
    LinkedFields = 'kode_brg'
    Left = 525
    Top = 530
  end
  object dsDetG03: TDataSource
    DataSet = zqrDetG03
    Left = 555
    Top = 530
  end
  object zqrG01: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_history_all WHERE gudang = '#39'G01'#39' '
      'AND kode_brg = :kode_brg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
    MasterFields = 'kode'
    MasterSource = dsBrg
    LinkedFields = 'kode_brg'
    Left = 41
    Top = 506
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
  end
  object dsG01: TDataSource
    DataSet = zqrG01
    Left = 71
    Top = 506
  end
  object zqrG02: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_history_all WHERE gudang = '#39'G02'#39' '
      'AND kode_brg = :kode_brg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
    MasterFields = 'kode'
    MasterSource = dsBrg
    LinkedFields = 'kode_brg'
    Left = 41
    Top = 538
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
  end
  object dsG02: TDataSource
    DataSet = zqrG02
    Left = 71
    Top = 538
  end
  object zqrG03: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_history_all WHERE gudang = '#39'G03'#39' '
      'AND kode_brg = :kode_brg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
    MasterFields = 'kode'
    MasterSource = dsBrg
    LinkedFields = 'kode_brg'
    Left = 41
    Top = 570
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
  end
  object dsG03: TDataSource
    DataSet = zqrG03
    Left = 71
    Top = 570
  end
  object zqrG_ASIS: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_history_all WHERE gudang = '#39'G-ASIS'#39' '
      'AND kode_brg = :kode_brg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
    MasterFields = 'kode'
    MasterSource = dsBrg
    LinkedFields = 'kode_brg'
    Left = 101
    Top = 570
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
  end
  object ds_ASIS: TDataSource
    DataSet = zqrG_ASIS
    Left = 131
    Top = 570
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 295
    Top = 145
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clPurple
    end
  end
  object zqrG_CONS: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_history_all WHERE gudang = '#39'G-CONS'#39' '
      'AND kode_brg = :kode_brg'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
    MasterFields = 'kode'
    MasterSource = dsBrg
    LinkedFields = 'kode_brg'
    Left = 161
    Top = 570
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
  end
  object dsG_CONS: TDataSource
    DataSet = zqrG_CONS
    Left = 191
    Top = 570
  end
  object zqrG_WIP: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_history_all WHERE gudang = '#39'G-WIP'#39' '
      'AND kode_brg = :kode_brg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
    MasterFields = 'kode'
    MasterSource = dsBrg
    LinkedFields = 'kode_brg'
    Left = 221
    Top = 571
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
  end
  object dsG_WIP: TDataSource
    DataSet = zqrG_WIP
    Left = 251
    Top = 571
  end
end
