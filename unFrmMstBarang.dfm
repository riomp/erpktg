object frmMstBarang: TfrmMstBarang
  Left = 303
  Top = 44
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Master Barang'
  ClientHeight = 637
  ClientWidth = 902
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 15
    Top = 21
    Caption = 'Cari Nama / Kode'
  end
  object cxLUNamaBrg: TcxLookupComboBox
    Left = 111
    Top = 19
    AutoSize = False
    Properties.DropDownAutoSize = True
    Properties.DropDownWidth = 500
    Properties.KeyFieldNames = 'kode'
    Properties.ListColumns = <
      item
        Caption = 'Deskripsi'
        FieldName = 'deskripsi'
      end
      item
        Caption = 'Kode'
        FieldName = 'kode'
      end
      item
        Fixed = True
        FieldName = 'stok'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = ds
    TabOrder = 1
    Height = 21
    Width = 477
  end
  object pg: TPageControl
    Left = 15
    Top = 159
    Width = 866
    Height = 419
    ActivePage = TabSheet6
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Stok Per Gudang'
      object nxGrdStokGdg: TNextGrid
        Left = 15
        Top = 15
        Width = 316
        Height = 105
        Options = [goGrid, goHeader]
        TabOrder = 0
        TabStop = True
        object NxIncrementColumn1: TNxIncrementColumn
          DefaultWidth = 39
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'No.'
          Position = 0
          SortType = stAlphabetic
          Width = 39
        end
        object NxTextColumn1: TNxTextColumn
          DefaultWidth = 172
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Nama Gudang'
          Position = 1
          SortType = stAlphabetic
          Width = 172
        end
        object NxTextColumn2: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          DefaultWidth = 70
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Stok'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          Position = 2
          SortType = stNumeric
          Width = 70
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Mutasi'
      ImageIndex = 1
      object cxLabel6: TcxLabel
        Left = 10
        Top = 9
        Caption = 'Tanggal'
        Transparent = True
      end
      object cxdTgl1: TcxDateEdit
        Left = 60
        Top = 6
        TabOrder = 1
        Width = 121
      end
      object cxLabel7: TcxLabel
        Left = 186
        Top = 9
        Caption = 'S/D'
        Transparent = True
      end
      object cxdTgl2: TcxDateEdit
        Left = 215
        Top = 6
        TabOrder = 3
        Width = 121
      end
      object btnProsesMut: TButton
        Left = 341
        Top = 6
        Width = 75
        Height = 21
        Caption = 'Proses'
        TabOrder = 4
        OnClick = btnProsesMutClick
      end
      object ScrollBox1: TScrollBox
        Left = 6
        Top = 35
        Width = 844
        Height = 351
        VertScrollBar.Position = 405
        TabOrder = 5
        object cxLabel3: TcxLabel
          Left = 5
          Top = -399
          Caption = 'Gudang Stok (G01)'
          Transparent = True
        end
        object cxGrid1: TcxGrid
          Left = 5
          Top = -379
          Width = 836
          Height = 156
          TabOrder = 1
          object cxGrdG01: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsG01
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGrdG01tanggal: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
            end
            object cxGrdG01no_bukti: TcxGridDBColumn
              Caption = 'No. Trans'
              DataBinding.FieldName = 'no_bukti'
              Width = 90
            end
            object cxGrdG01qty: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'qty'
            end
            object cxGrdG01tipe: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'tipe'
              Width = 59
            end
            object cxGrdG01no_so: TcxGridDBColumn
              Caption = 'No. SO'
              DataBinding.FieldName = 'no_so'
              Width = 100
            end
            object cxGrdG01no_spk: TcxGridDBColumn
              Caption = 'No. SPK'
              DataBinding.FieldName = 'no_spk'
              Width = 100
            end
            object cxGrdG01no_spmb: TcxGridDBColumn
              Caption = 'No. SPMB'
              DataBinding.FieldName = 'no_spmb'
              Width = 100
            end
            object cxGrdG01referensi: TcxGridDBColumn
              Caption = 'Referensi'
              DataBinding.FieldName = 'referensi'
              Width = 204
            end
            object cxGrdG01keterangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
            end
            object cxGrdG01user: TcxGridDBColumn
              Caption = 'User'
              DataBinding.FieldName = 'user'
            end
            object cxGrdG01user_dept: TcxGridDBColumn
              Caption = 'Dept'
              DataBinding.FieldName = 'user_dept'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrdG01
          end
        end
        object cxLabel4: TcxLabel
          Left = 5
          Top = -214
          Caption = 'Gudang Sementara (G02)'
          Transparent = True
        end
        object cxGrid2: TcxGrid
          Left = 5
          Top = -194
          Width = 836
          Height = 156
          TabOrder = 3
          object cxGrdG02: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsG02
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGrdG02tanggal: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
            end
            object cxGrdG02no_bukti: TcxGridDBColumn
              Caption = 'No. Trans'
              DataBinding.FieldName = 'no_bukti'
              Width = 90
            end
            object cxGrdG02qty: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'qty'
            end
            object cxGrdG02tipe: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'tipe'
              Width = 63
            end
            object cxGrdG02no_so: TcxGridDBColumn
              Caption = 'No. SO'
              DataBinding.FieldName = 'no_so'
              Width = 100
            end
            object cxGrdG02no_spk: TcxGridDBColumn
              Caption = 'No. SPK'
              DataBinding.FieldName = 'no_spk'
              Width = 100
            end
            object cxGrdG02no_spmb: TcxGridDBColumn
              Caption = 'No. SPMB'
              DataBinding.FieldName = 'no_spmb'
              Width = 100
            end
            object cxGrdG02referensi: TcxGridDBColumn
              Caption = 'Referensi'
              DataBinding.FieldName = 'referensi'
              Width = 204
            end
            object cxGrdG02keterangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
            end
            object cxGrdG02user: TcxGridDBColumn
              Caption = 'User'
              DataBinding.FieldName = 'user'
            end
            object cxGrdG02user_dept: TcxGridDBColumn
              Caption = 'Dept'
              DataBinding.FieldName = 'user_dept'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGrdG02
          end
        end
        object cxLabel12: TcxLabel
          Left = 5
          Top = -31
          Caption = 'Gudang Karantina (G03)'
          Transparent = True
        end
        object cxGrid6: TcxGrid
          Left = 5
          Top = -11
          Width = 836
          Height = 156
          TabOrder = 5
          object cxGridDBTableView4: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsG03
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBColumn34: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
            end
            object cxGridDBColumn35: TcxGridDBColumn
              Caption = 'No. Trans'
              DataBinding.FieldName = 'no_bukti'
              Width = 90
            end
            object cxGridDBColumn36: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'qty'
            end
            object cxGridDBColumn37: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'tipe'
              Width = 63
            end
            object cxGridDBColumn38: TcxGridDBColumn
              Caption = 'No. SO'
              DataBinding.FieldName = 'no_so'
              Width = 100
            end
            object cxGridDBColumn39: TcxGridDBColumn
              Caption = 'No. SPK'
              DataBinding.FieldName = 'no_spk'
              Width = 100
            end
            object cxGridDBColumn40: TcxGridDBColumn
              Caption = 'No. SPMB'
              DataBinding.FieldName = 'no_spmb'
              Width = 100
            end
            object cxGridDBColumn41: TcxGridDBColumn
              Caption = 'Referensi'
              DataBinding.FieldName = 'referensi'
              Width = 204
            end
            object cxGridDBColumn42: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
            end
            object cxGridDBColumn43: TcxGridDBColumn
              Caption = 'User'
              DataBinding.FieldName = 'user'
            end
            object cxGridDBColumn44: TcxGridDBColumn
              Caption = 'Dept'
              DataBinding.FieldName = 'user_dept'
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
        object cxLabel14: TcxLabel
          Left = 4
          Top = 154
          Caption = 'Gudang AS IS'
          Transparent = True
        end
        object cxGrid8: TcxGrid
          Left = 5
          Top = 174
          Width = 836
          Height = 156
          TabOrder = 7
          object cxGridDBTableView6: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsG03
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBColumn56: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
            end
            object cxGridDBColumn57: TcxGridDBColumn
              Caption = 'No. Trans'
              DataBinding.FieldName = 'no_bukti'
              Width = 90
            end
            object cxGridDBColumn58: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'qty'
            end
            object cxGridDBColumn59: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'tipe'
              Width = 63
            end
            object cxGridDBColumn60: TcxGridDBColumn
              Caption = 'No. SO'
              DataBinding.FieldName = 'no_so'
              Width = 100
            end
            object cxGridDBColumn61: TcxGridDBColumn
              Caption = 'No. SPK'
              DataBinding.FieldName = 'no_spk'
              Width = 100
            end
            object cxGridDBColumn62: TcxGridDBColumn
              Caption = 'No. SPMB'
              DataBinding.FieldName = 'no_spmb'
              Width = 100
            end
            object cxGridDBColumn63: TcxGridDBColumn
              Caption = 'Referensi'
              DataBinding.FieldName = 'referensi'
              Width = 204
            end
            object cxGridDBColumn64: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
            end
            object cxGridDBColumn65: TcxGridDBColumn
              Caption = 'User'
              DataBinding.FieldName = 'user'
            end
            object cxGridDBColumn66: TcxGridDBColumn
              Caption = 'Dept'
              DataBinding.FieldName = 'user_dept'
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxGridDBTableView6
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Mutasi Gudang Stok'
      ImageIndex = 2
      object cxGrid3: TcxGrid
        Left = 10
        Top = 10
        Width = 836
        Height = 370
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsG01
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'No. Trans'
            DataBinding.FieldName = 'no_bukti'
            Width = 90
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'tipe'
            Width = 59
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 100
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 100
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 100
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 204
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Mutasi Gudang Sementara'
      ImageIndex = 3
      object cxGrid4: TcxGrid
        Left = 10
        Top = 10
        Width = 836
        Height = 370
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsG02
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'No. Trans'
            DataBinding.FieldName = 'no_bukti'
            Width = 90
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'tipe'
            Width = 63
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 100
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 100
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 100
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 204
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Mutasi Gudang Karantina'
      ImageIndex = 4
      object cxGrid5: TcxGrid
        Left = 10
        Top = 10
        Width = 836
        Height = 370
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsG03
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'No. Trans'
            DataBinding.FieldName = 'no_bukti'
            Width = 90
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'tipe'
            Width = 63
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 100
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 100
          end
          object cxGridDBColumn29: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 100
          end
          object cxGridDBColumn30: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 204
          end
          object cxGridDBColumn31: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
          end
          object cxGridDBColumn32: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
          end
          object cxGridDBColumn33: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Mutasi Gudang AS IS'
      ImageIndex = 5
      object cxGrid7: TcxGrid
        Left = 10
        Top = 10
        Width = 836
        Height = 370
        TabOrder = 0
        object cxGridDBTableView5: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsG03
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGridDBColumn45: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxGridDBColumn46: TcxGridDBColumn
            Caption = 'No. Trans'
            DataBinding.FieldName = 'no_bukti'
            Width = 90
          end
          object cxGridDBColumn47: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
          end
          object cxGridDBColumn48: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'tipe'
            Width = 63
          end
          object cxGridDBColumn49: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_so'
            Width = 100
          end
          object cxGridDBColumn50: TcxGridDBColumn
            Caption = 'No. SPK'
            DataBinding.FieldName = 'no_spk'
            Width = 100
          end
          object cxGridDBColumn51: TcxGridDBColumn
            Caption = 'No. SPMB'
            DataBinding.FieldName = 'no_spmb'
            Width = 100
          end
          object cxGridDBColumn52: TcxGridDBColumn
            Caption = 'Referensi'
            DataBinding.FieldName = 'referensi'
            Width = 204
          end
          object cxGridDBColumn53: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
          end
          object cxGridDBColumn54: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
          end
          object cxGridDBColumn55: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
    end
  end
  object cxLabel2: TcxLabel
    Left = 15
    Top = 103
    Caption = 'Stok Total'
  end
  object cxsStokTot: TcxSpinEdit
    Left = 111
    Top = 101
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    TabOrder = 4
    Width = 121
  end
  object btnKeluar: TButton
    Left = 95
    Top = 592
    Width = 75
    Height = 25
    Caption = '&Keluar'
    TabOrder = 5
    OnClick = btnKeluarClick
  end
  object btnProses: TButton
    Left = 593
    Top = 19
    Width = 75
    Height = 21
    Caption = 'Proses'
    TabOrder = 6
    OnClick = btnProsesClick
  end
  object cxLabel5: TcxLabel
    Left = 684
    Top = 48
    Caption = 'Stok Awal'
    Visible = False
  end
  object cxsStokAwal: TcxSpinEdit
    Left = 752
    Top = 46
    Properties.Alignment.Horz = taRightJustify
    Properties.ReadOnly = True
    TabOrder = 8
    Visible = False
    Width = 121
  end
  object btnClear: TButton
    Left = 14
    Top = 592
    Width = 75
    Height = 25
    Caption = '&Clear'
    TabOrder = 9
    OnClick = btnClearClick
  end
  object cxLabel8: TcxLabel
    Left = 15
    Top = 77
    Caption = 'Kode Barang'
  end
  object cxtKodeBrg: TcxTextEdit
    Left = 111
    Top = 75
    Properties.ReadOnly = True
    TabOrder = 11
    Width = 132
  end
  object cxLabel9: TcxLabel
    Left = 254
    Top = 77
    Caption = 'Tgl. Transaksi Terakhir'
  end
  object cxdTglLastTrs: TcxDateEdit
    Left = 379
    Top = 75
    Properties.ReadOnly = True
    TabOrder = 13
    Width = 121
  end
  object cxLabel10: TcxLabel
    Left = 240
    Top = 103
    Caption = '(Gudang Stok + Gudang Sementara)'
    Style.TextColor = clBlue
  end
  object cxLabel11: TcxLabel
    Left = 15
    Top = 130
    Caption = 'Satuan'
  end
  object cxtSatuan: TcxTextEdit
    Left = 111
    Top = 128
    Properties.ReadOnly = True
    TabOrder = 16
    Width = 132
  end
  object cxChkCariKode: TcxCheckBox
    Left = 674
    Top = 20
    Caption = 'Pencarian Berdasarkan Kode'
    TabOrder = 17
    OnClick = cxChkCariKodeClick
    Width = 181
  end
  object cxLabel13: TcxLabel
    Left = 15
    Top = 47
    Caption = 'Nama Barang'
  end
  object cxtDeskripsi: TcxTextEdit
    Left = 111
    Top = 46
    Properties.ReadOnly = True
    TabOrder = 19
    Width = 477
  end
  object zqNamaBrg: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT kode, deskripsi, stok, satuan FROM tbl_barang '
      'WHERE f_aktif = 1'
      'ORDER BY deskripsi')
    Params = <>
    Left = 429
    Top = 11
  end
  object ds: TDataSource
    DataSet = zqNamaBrg
    Left = 464
    Top = 10
  end
  object zqrG01: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_tbl_history WHERE gudang = '#39'G01'#39' and kode_brg = ' +
        ':kode_brg AND '
      'tanggal BETWEEN :tgl1 AND :tgl2'
      'ORDER BY id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 720
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsG01: TDataSource
    DataSet = zqrG01
    Left = 755
    Top = 75
  end
  object zqrG02: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_tbl_history WHERE gudang = '#39'G02'#39' and kode_brg = ' +
        ':kode_brg '
      'AND tanggal BETWEEN :tgl1 AND :tgl2'
      'ORDER BY id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 720
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsG02: TDataSource
    DataSet = zqrG02
    Left = 755
    Top = 105
  end
  object zqrG03: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_tbl_history WHERE gudang = '#39'G03'#39' and kode_brg = ' +
        ':kode_brg '
      'AND tanggal BETWEEN :tgl1 AND :tgl2'
      'ORDER BY id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 720
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsG03: TDataSource
    DataSet = zqrG03
    Left = 755
    Top = 135
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_tbl_history WHERE gudang = '#39'G03'#39' and kode_brg = ' +
        ':kode_brg '
      'AND tanggal BETWEEN :tgl1 AND :tgl2'
      'ORDER BY id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 720
    Top = 165
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = ZReadOnlyQuery1
    Left = 755
    Top = 165
  end
end
