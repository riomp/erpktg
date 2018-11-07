inherited frmLogBookDesign: TfrmLogBookDesign
  Left = 330
  Top = 18
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Log Book Daftar Design'
  ClientHeight = 625
  ClientWidth = 870
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 870
    inherited lblJudul: TLabel
      Width = 243
      Caption = 'Log Book Daftar Order Design'
    end
  end
  inherited pnlTengah: TPanel
    Width = 870
    Height = 560
    object pg: TPageControl
      Left = 1
      Top = 1
      Width = 868
      Height = 558
      ActivePage = TabSheet3
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChanging = pgChanging
      object TabSheet1: TTabSheet
        Caption = 'Input'
        object cxLabel1: TcxLabel
          Left = 10
          Top = 10
          Caption = 'No. Trial'
        end
        object cxtNoTrial: TcxTextEdit
          Left = 77
          Top = 8
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 158
        end
        object cxtPemohon: TcxTextEdit
          Left = 230
          Top = 465
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Visible = False
          Width = 373
        end
        object cxLabel2: TcxLabel
          Left = 10
          Top = 135
          Caption = 'Pemohon'
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 85
          Caption = 'Tgl. Masuk'
        end
        object cxLabel4: TcxLabel
          Left = 501
          Top = 90
          Caption = 'No. PPP'
          Visible = False
        end
        object cxTextEdit4: TcxTextEdit
          Left = 568
          Top = 88
          TabOrder = 6
          Text = 'cxTextEdit1'
          Visible = False
          Width = 158
        end
        object cxLabel5: TcxLabel
          Left = 501
          Top = 115
          Caption = 'No. PPPB'
          Visible = False
        end
        object cxTextEdit5: TcxTextEdit
          Left = 568
          Top = 113
          TabOrder = 8
          Text = 'cxTextEdit1'
          Visible = False
          Width = 158
        end
        object cxLabel6: TcxLabel
          Left = 502
          Top = 141
          Caption = 'No. PPPB'
          Visible = False
        end
        object cxTextEdit6: TcxTextEdit
          Left = 569
          Top = 139
          TabOrder = 10
          Text = 'cxTextEdit1'
          Visible = False
          Width = 158
        end
        object cxdTgl: TcxDateEdit
          Left = 77
          Top = 83
          TabOrder = 11
          Width = 121
        end
        object btnBaru2: TButton
          Left = 11
          Top = 383
          Width = 75
          Height = 25
          Caption = 'Baru'
          TabOrder = 12
          OnClick = btnBaru2Click
        end
        object Button1: TButton
          Left = 88
          Top = 383
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 13
          OnClick = Button1Click
        end
        object btnKeluar2: TButton
          Left = 165
          Top = 383
          Width = 75
          Height = 25
          Caption = 'Keluar'
          TabOrder = 14
          OnClick = btnKeluar2Click
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 110
          AutoSize = False
          Caption = 'Tgl. Selesai'
          Height = 17
          Width = 66
        end
        object cxDateEdit1: TcxDateEdit
          Left = 77
          Top = 108
          TabOrder = 16
          Width = 121
        end
        object cxRadioGroup1: TcxRadioGroup
          Left = 77
          Top = 130
          Properties.Items = <>
          TabOrder = 17
          Height = 78
          Width = 504
        end
        object cxrDept: TcxRadioButton
          Left = 85
          Top = 142
          Width = 113
          Height = 17
          Caption = 'Departemen'
          Checked = True
          TabOrder = 18
          TabStop = True
          OnClick = cxrDeptClick
        end
        object cxrCust: TcxRadioButton
          Left = 85
          Top = 158
          Width = 113
          Height = 17
          Caption = 'Customer'
          TabOrder = 19
          OnClick = cxrCustClick
        end
        object cxlDept: TcxLookupComboBox
          Left = 85
          Top = 179
          Properties.KeyFieldNames = 'bagian'
          Properties.ListColumns = <
            item
              Caption = 'Departemen'
              FieldName = 'bagian'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsDept
          TabOrder = 20
          Width = 126
        end
        object cxlCust: TcxLookupComboBox
          Left = 98
          Top = 491
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Nama Customer'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode Customer'
              FieldName = 'kode'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsCust
          TabOrder = 21
          Width = 481
        end
        object cxLabel19: TcxLabel
          Left = 10
          Top = 35
          Caption = 'Barang'
        end
        object cxlBrg: TcxLookupComboBox
          Left = 77
          Top = 33
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'deskripsi'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsBrg
          Properties.OnChange = cxlBrgPropertiesChange
          TabOrder = 23
          Width = 444
        end
        object btnCariBrg0: TButton
          Left = 523
          Top = 32
          Width = 22
          Height = 22
          Caption = '...'
          TabOrder = 24
          OnClick = btnCariBrg0Click
        end
        object cxLabel22: TcxLabel
          Left = 10
          Top = 60
          Caption = 'Qty.'
        end
        object cxsQtyTrial: TcxSpinEdit
          Left = 77
          Top = 58
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 26
          Width = 79
        end
        object cxtSatuan2: TcxTextEdit
          Left = 161
          Top = 58
          Properties.ReadOnly = True
          TabOrder = 27
          Width = 67
        end
        object cxLabel27: TcxLabel
          Left = 10
          Top = 213
          Caption = 'Deskripsi'
        end
        object cxLabel28: TcxLabel
          Left = 10
          Top = 296
          Caption = 'Bahan Dari'
        end
        object cxCmbBahanDari: TcxComboBox
          Left = 77
          Top = 294
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 30
          Width = 121
        end
        object cxLabel29: TcxLabel
          Left = 10
          Top = 322
          Caption = 'Sample'
        end
        object cxlSample: TcxLookupComboBox
          Left = 77
          Top = 320
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'deskripsi'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsBrgSample
          Properties.OnChange = cxlBrgPropertiesChange
          TabOrder = 32
          Width = 444
        end
        object btnCariTrial: TButton
          Left = 237
          Top = 7
          Width = 22
          Height = 21
          Caption = '...'
          TabOrder = 33
          OnClick = btnCariTrialClick
        end
        object cxmDeskAwal: TcxMemo
          Left = 77
          Top = 214
          Properties.CharCase = ecUpperCase
          TabOrder = 34
          Height = 75
          Width = 504
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Daftar Log'
        ImageIndex = 1
        object cxGrd: TcxGrid
          Left = 6
          Top = 5
          Width = 840
          Height = 254
          TabOrder = 0
          object tblView: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = tblViewFocusedRecordChanged
            DataController.DataSource = dsLog
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            object tblViewf_posted: TcxGridDBColumn
              Caption = 'Posting PPIC'
              DataBinding.FieldName = 'f_posted'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 76
            end
            object tblViewf_status: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'f_status'
              Width = 51
            end
            object tblViewColumn3: TcxGridDBColumn
              Caption = 'Approval'
              DataBinding.FieldName = 'f_app_awal'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 57
            end
            object tblViewno_trial: TcxGridDBColumn
              Caption = 'No. Trial'
              DataBinding.FieldName = 'no_trial'
              Width = 92
            end
            object tblViewColumn1: TcxGridDBColumn
              Caption = 'Kode. Brg.'
              DataBinding.FieldName = 'kode_brg'
            end
            object tblViewColumn2: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Width = 225
            end
            object tblViewdeskripsi_trial: TcxGridDBColumn
              Caption = 'Deskripsi Trial'
              DataBinding.FieldName = 'deskripsi_trial'
              Visible = False
              Width = 295
            end
            object tblViewtanggal: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
              Width = 73
            end
            object tblViewdept: TcxGridDBColumn
              Caption = 'Dept'
              DataBinding.FieldName = 'dept'
              Width = 76
            end
            object tblViewnama_customer: TcxGridDBColumn
              Caption = 'Customer'
              DataBinding.FieldName = 'nama_customer'
              Width = 236
            end
            object tblViewpemohon: TcxGridDBColumn
              Caption = 'Pemohon'
              DataBinding.FieldName = 'pemohon'
              Visible = False
            end
            object tblViewno_ppp: TcxGridDBColumn
              DataBinding.FieldName = 'no_ppp'
              Visible = False
            end
            object tblViewno_pppb: TcxGridDBColumn
              DataBinding.FieldName = 'no_pppb'
              Visible = False
            end
            object tblViewno_app: TcxGridDBColumn
              DataBinding.FieldName = 'no_app'
              Visible = False
            end
            object tblViewtgl_selesai: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_selesai'
            end
            object tblViewuser: TcxGridDBColumn
              Caption = 'User'
              DataBinding.FieldName = 'user'
            end
            object tblViewuser_dept: TcxGridDBColumn
              DataBinding.FieldName = 'user_dept'
              Visible = False
            end
            object tblViewtgl_input: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_input'
            end
            object tblViewid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object tblViewmesin: TcxGridDBColumn
              DataBinding.FieldName = 'mesin'
            end
            object tblViewwaktu: TcxGridDBColumn
              DataBinding.FieldName = 'waktu'
            end
          end
          object cxGrdLevel1: TcxGridLevel
            GridView = tblView
          end
        end
        object Button2: TButton
          Left = 84
          Top = 455
          Width = 145
          Height = 25
          Caption = 'Komunikasi Percobaan >>'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 323
          Top = 455
          Width = 145
          Height = 25
          Caption = 'Cetak PPPB, PPP, APP'
          TabOrder = 2
          OnClick = Button3Click
        end
        object btnEdit2: TButton
          Left = 6
          Top = 455
          Width = 75
          Height = 25
          Caption = '<< Edit'
          TabOrder = 3
          OnClick = btnEdit2Click
        end
        object btnTindakLanjutTrial: TButton
          Left = 471
          Top = 455
          Width = 145
          Height = 25
          Caption = 'Tindak Lanjut Trial'
          TabOrder = 4
          OnClick = btnTindakLanjutTrialClick
        end
        object nxGrdDet: TNextGrid
          Left = 6
          Top = 374
          Width = 345
          Height = 72
          Options = [goGrid, goHeader]
          TabOrder = 5
          TabStop = True
          object nxColNoUrut: TNxIncrementColumn
            DefaultWidth = 42
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No.'
            Position = 0
            SortType = stAlphabetic
            Width = 42
          end
          object nxColNoSPK: TNxTextColumn
            DefaultWidth = 95
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No. SPK'
            Position = 1
            SortType = stAlphabetic
            Width = 95
          end
          object nxColTanggal: TNxDateColumn
            DefaultValue = '04/04/2016'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tanggal'
            Position = 2
            SortType = stDate
            NoneCaption = 'None'
            TodayCaption = 'Today'
          end
          object nxColHasil: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Hasil'
            Position = 3
            SortType = stNumeric
            Increment = 1.000000000000000000
            Precision = 0
          end
        end
        object cxLabel18: TcxLabel
          Left = 6
          Top = 355
          Caption = 'Detail SPK :'
        end
        object btnAppManagement: TButton
          Left = 619
          Top = 455
          Width = 145
          Height = 25
          Caption = 'Approval Management'
          TabOrder = 7
          OnClick = btnAppManagementClick
        end
        object btnGroupTrial: TButton
          Left = 231
          Top = 455
          Width = 90
          Height = 25
          Caption = 'Group Trial >>'
          TabOrder = 8
          OnClick = btnGroupTrialClick
        end
        object cxLabel26: TcxLabel
          Left = 6
          Top = 263
          Caption = 'Koneksi Trial '
        end
        object nxGrdChild: TNextGrid
          Left = 6
          Top = 282
          Width = 840
          Height = 72
          Options = [goGrid, goHeader]
          TabOrder = 10
          TabStop = True
          object NxIncrementColumn1: TNxIncrementColumn
            DefaultWidth = 42
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No.'
            Position = 0
            SortType = stAlphabetic
            Width = 42
          end
          object nxColNoTrial: TNxTextColumn
            DefaultWidth = 95
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No. Trial'
            Position = 1
            SortType = stAlphabetic
            Width = 95
          end
          object nxColKodeBrg: TNxTextColumn
            DefaultWidth = 81
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Kode Brg.'
            Position = 2
            SortType = stAlphabetic
            Width = 81
          end
          object nxColDeskripsi: TNxTextColumn
            DefaultWidth = 408
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Deskripsi'
            Position = 3
            SortType = stAlphabetic
            Width = 408
          end
          object nxColQtyTrial: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Qty.'
            Position = 4
            SortType = stNumeric
            FormatMask = '#,#0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColSatuan: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Satuan'
            Position = 5
            SortType = stAlphabetic
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Komunikasi Percobaan'
        ImageIndex = 2
        object cxLabel8: TcxLabel
          Left = 10
          Top = 10
          Caption = 'No. Trial'
        end
        object cxtNoTrial2: TcxTextEdit
          Left = 95
          Top = 8
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 158
        end
        object cxLabel9: TcxLabel
          Left = 10
          Top = 35
          Caption = 'Tgl. Masuk'
        end
        object cxdTgl2: TcxDateEdit
          Left = 95
          Top = 33
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 121
        end
        object cxLabel10: TcxLabel
          Left = 10
          Top = 105
          Caption = 'Waktu'
        end
        object cxtWaktu: TcxTextEdit
          Left = 95
          Top = 108
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          TabOrder = 5
          Width = 374
        end
        object cxLabel11: TcxLabel
          Left = 575
          Top = -2
          Caption = 'Mesin'
          Visible = False
        end
        object cxLabel12: TcxLabel
          Left = 10
          Top = 136
          Caption = 'Deskripsi Trial'
        end
        object cxmDeskTrial: TcxMemo
          Left = 95
          Top = 133
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Height = 48
          Width = 569
        end
        object GroupBox2: TGroupBox
          Left = 10
          Top = 216
          Width = 716
          Height = 256
          Caption = ' Bill Of Material '
          TabOrder = 9
          object cxLabel13: TcxLabel
            Left = 10
            Top = 20
            Caption = 'Deskripsi'
            Transparent = True
          end
          object pgBom: TPageControl
            Left = 10
            Top = 81
            Width = 696
            Height = 164
            ActivePage = tbA
            ParentShowHint = False
            ShowHint = False
            Style = tsFlatButtons
            TabOrder = 1
            object tbA: TTabSheet
              Caption = 'Bom A'
              object nxGrd1: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxGraphicColumn1: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object nxColNo1: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object nxColKode1: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object nxColDesk1: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object nxColQty1: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColSat1: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
            object tbB: TTabSheet
              Caption = 'Bom B'
              ImageIndex = 1
              object nxGrd2: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxImageColumn1: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object NxIncrementColumn2: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object nxColKode2: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object nxColDesk2: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object nxColQty2: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColSat2: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
            object tbC: TTabSheet
              Caption = 'Bom C'
              ImageIndex = 2
              object nxGrd3: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxImageColumn2: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object NxIncrementColumn3: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object nxColKode3: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object NxTextColumn5: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object NxNumberColumn3: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxTextColumn6: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
            object TabSheet6: TTabSheet
              Caption = 'Bom D'
              ImageIndex = 3
              object nxGrd4: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxImageColumn3: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object NxIncrementColumn4: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object NxTextColumn1: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object NxTextColumn2: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object NxNumberColumn1: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxTextColumn3: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
            object TabSheet7: TTabSheet
              Caption = 'Bom E'
              ImageIndex = 4
              object nxGrd5: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxImageColumn4: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object NxIncrementColumn5: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object NxTextColumn4: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object NxTextColumn7: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object NxNumberColumn2: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxTextColumn8: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'Bom F'
              ImageIndex = 5
              object nxGrd6: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxImageColumn5: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object NxIncrementColumn6: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object NxTextColumn9: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object NxTextColumn10: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object NxNumberColumn4: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxTextColumn11: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
            object TabSheet9: TTabSheet
              Caption = 'Bom G'
              ImageIndex = 6
              object nxGrd7: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxImageColumn6: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object NxIncrementColumn7: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object NxTextColumn12: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object NxTextColumn13: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object NxNumberColumn5: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxTextColumn14: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
            object TabSheet10: TTabSheet
              Caption = 'Bom H'
              ImageIndex = 7
              object nxGrd8: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxImageColumn7: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object NxIncrementColumn8: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object NxTextColumn15: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object NxTextColumn16: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object NxNumberColumn6: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxTextColumn17: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
            object TabSheet11: TTabSheet
              Caption = 'Bom I'
              ImageIndex = 8
              object nxGrd9: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxImageColumn8: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object NxIncrementColumn9: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object NxTextColumn18: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object NxTextColumn19: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object NxNumberColumn7: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxTextColumn20: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
            object TabSheet12: TTabSheet
              Caption = 'Bom J'
              ImageIndex = 9
              object nxGrd10: TNextGrid
                Left = 10
                Top = 6
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object NxImageColumn9: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 44
                  Images = ImageList1
                end
                object NxIncrementColumn10: TNxIncrementColumn
                  DefaultWidth = 35
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 35
                end
                object NxTextColumn21: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  Position = 2
                  SortType = stAlphabetic
                end
                object NxTextColumn22: TNxTextColumn
                  DefaultWidth = 299
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 299
                end
                object NxNumberColumn8: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Position = 4
                  SortType = stNumeric
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxTextColumn23: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  Position = 5
                  SortType = stAlphabetic
                end
              end
            end
          end
          object cxLabel14: TcxLabel
            Left = 10
            Top = 46
            Caption = 'Qty'
            Transparent = True
          end
          object cxCmbSatuan: TcxComboBox
            Left = 187
            Top = 45
            Properties.DropDownListStyle = lsEditFixedList
            TabOrder = 3
            Width = 81
          end
          object cxsQtyBom: TcxSpinEdit
            Left = 63
            Top = 45
            Properties.DisplayFormat = '#,##0.0000'
            Properties.EditFormat = '#,##0.0000'
            Properties.ValueType = vtFloat
            TabOrder = 4
            Width = 121
          end
          object btnTambahBom: TButton
            Left = 272
            Top = 43
            Width = 75
            Height = 25
            Caption = 'Tambah'
            TabOrder = 5
            OnClick = btnTambahBomClick
          end
          object cxlDeskripsi: TcxLookupComboBox
            Left = 63
            Top = 18
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                Caption = 'Deskripsi'
                FieldName = 'deskripsi'
              end
              item
                FieldName = 'kode'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsKodeHead
            Properties.OnChange = cxlDeskripsiPropertiesChange
            TabOrder = 6
            Width = 466
          end
          object btnCariBrg: TButton
            Left = 531
            Top = 18
            Width = 20
            Height = 21
            Caption = '...'
            TabOrder = 7
            OnClick = btnCariBrgClick
          end
          object cxLabel16: TcxLabel
            Left = 490
            Top = 61
            Caption = 'Deskripsi'
            Transparent = True
            Visible = False
          end
          object cxtDesk2: TcxTextEdit
            Left = 543
            Top = 59
            TabOrder = 9
            Visible = False
            Width = 465
          end
        end
        object btnSimpanKP: TButton
          Left = 10
          Top = 492
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 10
          OnClick = btnSimpanKPClick
        end
        object cxlMesin: TcxLookupComboBox
          Left = 660
          Top = -5
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Mesin'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsMesin
          TabOrder = 11
          Visible = False
          Width = 184
        end
        object cxLabel15: TcxLabel
          Left = 10
          Top = 118
          Caption = 'Yg. Dibutuhkan'
        end
        object cxChkPosting: TcxCheckBox
          Left = 257
          Top = 8
          Caption = 'Posting SPK PPIC'
          TabOrder = 13
          Width = 121
        end
        object cxLabel17: TcxLabel
          Left = 10
          Top = 85
          Caption = 'Qty.'
        end
        object cxLabel20: TcxLabel
          Left = 10
          Top = 60
          Caption = 'Kode Brg.'
        end
        object cxtKodeBrg: TcxTextEdit
          Left = 95
          Top = 58
          Properties.ReadOnly = True
          TabOrder = 16
          Width = 81
        end
        object cxtDeskripsi: TcxTextEdit
          Left = 180
          Top = 58
          Properties.ReadOnly = True
          TabOrder = 17
          Width = 446
        end
        object cxtSatuan: TcxTextEdit
          Left = 180
          Top = 83
          Properties.ReadOnly = True
          TabOrder = 18
          Width = 81
        end
        object cxsQtyTrial2: TcxSpinEdit
          Left = 95
          Top = 83
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 19
          Width = 81
        end
        object cxLabel30: TcxLabel
          Left = 10
          Top = 187
          Caption = 'Sample'
        end
        object cxtKodeSample: TcxTextEdit
          Left = 95
          Top = 185
          Properties.ReadOnly = True
          TabOrder = 21
          Width = 81
        end
        object cxtDeskSample: TcxTextEdit
          Left = 180
          Top = 185
          Properties.ReadOnly = True
          TabOrder = 22
          Width = 446
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'TabSheet4'
        ImageIndex = 3
        TabVisible = False
      end
      object TabSheet5: TTabSheet
        Caption = 'Group Trial'
        ImageIndex = 4
        object cxLabel21: TcxLabel
          Left = 10
          Top = 10
          Caption = 'No. Trial'
        end
        object cxtNoTrial3: TcxTextEdit
          Left = 77
          Top = 8
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 158
        end
        object cxGrdChild: TcxGrid
          Left = 10
          Top = 143
          Width = 586
          Height = 156
          TabOrder = 2
          object cxTblChild: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsNoTrialChild
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxTblChildno_trial_child: TcxGridDBColumn
              Caption = 'No. Trial'
              DataBinding.FieldName = 'no_trial_child'
              Width = 108
            end
            object cxTblChildColumn1: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Width = 444
            end
          end
          object cxGrdChildLevel1: TcxGridLevel
            GridView = cxTblChild
          end
        end
        object cxLabel23: TcxLabel
          Left = 10
          Top = 64
          Caption = 'Pilih No. Trial'
        end
        object cxlNoTrial: TcxLookupComboBox
          Left = 86
          Top = 62
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'no_trial'
          Properties.ListColumns = <
            item
              Caption = 'No. Trial'
              FieldName = 'no_trial'
            end
            item
              Caption = 'Tanggal'
              FieldName = 'tanggal'
            end
            item
              Caption = 'Kode Brg.'
              FieldName = 'kode_brg'
            end
            item
              Caption = 'Deskripsi'
              FieldName = 'deskripsi'
            end>
          Properties.ListSource = dsNoTrial
          TabOrder = 4
          Width = 153
        end
        object btnTambahNoTrialAnak: TButton
          Left = 86
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Tambah'
          TabOrder = 5
          OnClick = btnTambahNoTrialAnakClick
        end
        object cxLabel24: TcxLabel
          Left = 10
          Top = 35
          Caption = 'Kode Brg.'
        end
        object cxtKodeBrg2: TcxTextEdit
          Left = 77
          Top = 33
          Properties.ReadOnly = True
          TabOrder = 7
          Width = 81
        end
        object cxtDeskripsi2: TcxTextEdit
          Left = 162
          Top = 33
          Properties.ReadOnly = True
          TabOrder = 8
          Width = 446
        end
        object cxLabel25: TcxLabel
          Left = 10
          Top = 89
          Caption = 'Jenis'
        end
        object cxCmbJenisTrial: TcxComboBox
          Left = 86
          Top = 87
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 10
          Width = 153
        end
        object btnHapusChild: TButton
          Left = 10
          Top = 302
          Width = 75
          Height = 25
          Caption = 'Hapus'
          TabOrder = 11
          OnClick = btnHapusChildClick
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Left = 760
    Top = 496
    Width = 875
    Align = alNone
    Visible = False
  end
  object zqrLog: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*, b.nama nama_customer, c.deskripsi FROM tbl_logbook_d' +
        'esign a'
      'LEFT JOIN tbl_customer b ON b.kode = a.kode_customer'
      'LEFT JOIN tbl_barang c ON c.kode = a.kode_brg'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 320
    Top = 20
  end
  object dsLog: TDataSource
    DataSet = zqrLog
    Left = 350
    Top = 20
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_mesin ORDER BY nama')
    Params = <>
    Left = 441
    Top = 22
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 471
    Top = 22
  end
  object ImageList1: TImageList
    Left = 515
    Top = 95
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000634A3100634A3100634A3100634A
      3100634A3100634A3100735A4200846B52000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFFF
      F700FFF7E700FFF7E700FFEFE700947B63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7E700A59484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700B5A594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000634A3100634A3100634A3100634A
      3100634A3100634A3100634A3100634A3100634A3100634A3100735A42000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFDEC600F7C6A500F7BD9400F7AD
      8400F7A57300F79C7300F7946300F78C5200F78C5200F78C5200846352000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFEFE700FFE7D600FFDEC600FFCE
      B500F7C6A500F7BDA500F7B59400F7AD8400F7A57300F78C5200847363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFF700FFF7F700FFEFE700FFE7
      D600FFDEC600FFD6C600F7CEB500F7C6A500F7B59400F7AD8400A59484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5A59400B5A59400B5A59400B5A5
      9400B59C9400A59C9400A59C9400A5948400A5948400A5948400A59484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFF7
      F700FFF7E700FFEFE700FFEFE700A58473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7E700B59C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700B59484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6BDB500C6BDB500C6B5A500C6B5
      A500C6B5A500C6ADA500C6ADA500B5A594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      00FF00000000000000FF00000000000000FF00000000000000FF000000000000
      001F000000000000001D0000000000000000000000000000001D000000000000
      001F00000000000000FF00000000000000FF00000000000000FF000000000000
      00FF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object zqrKodeHead: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi,kategori FROM tbl_barang '
      'ORDER BY deskripsi')
    Params = <>
    Left = 450
    Top = 95
  end
  object dsKodeHead: TDataSource
    DataSet = zqrKodeHead
    Left = 480
    Top = 95
  end
  object zqrDept: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT bagian FROM tbl_bagian ORDER BY bagian')
    Params = <>
    Left = 416
    Top = 282
  end
  object dsDept: TDataSource
    DataSet = zqrDept
    Left = 446
    Top = 282
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,nama FROM tbl_customer '
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 476
    Top = 282
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 506
    Top = 282
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 705
    Top = 205
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi, satuan '
      'FROM tbl_barang WHERE f_aktif = 1'
      'and tipe like '#39'%PERCOBAAN%'#39' or kategori like '#39'%SAMPLE%'#39
      'ORDER BY deskripsi')
    Params = <>
    Left = 380
    Top = 20
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 410
    Top = 20
  end
  object zqrNoTrialChild: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.no_trial_child, c.deskripsi FROM '
      'tbl_logbook_child a'
      'LEFT JOIN tbl_logbook_design b ON a.no_trial_child = b.no_trial'
      'LEFT JOIN tbl_barang c ON b.kode_brg = c.kode'
      'WHERE a.no_trial = :no_trial')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_trial'
        ParamType = ptUnknown
      end>
    Left = 501
    Top = 22
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_trial'
        ParamType = ptUnknown
      end>
  end
  object dsNoTrialChild: TDataSource
    DataSet = zqrNoTrialChild
    Left = 531
    Top = 22
  end
  object memTbl: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.18.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 705
    Top = 234
    object memTblbom: TStringField
      FieldName = 'bom'
    end
    object memTblkode: TStringField
      FieldName = 'kode'
    end
  end
  object zqrNoTrial: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.no_trial, a.tanggal, a.kode_brg, b.deskripsi '
      'FROM tbl_logbook_design a '
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode'
      'WHERE a.no_trial <> :no_trial;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_trial'
        ParamType = ptUnknown
      end>
    Left = 561
    Top = 22
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_trial'
        ParamType = ptUnknown
      end>
  end
  object dsNoTrial: TDataSource
    DataSet = zqrNoTrial
    Left = 591
    Top = 22
  end
  object IdSMTP2: TIdSMTP
    SASLMechanisms = <>
    Left = 735
    Top = 205
  end
  object zqrBrgSample: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi, satuan '
      'FROM tbl_barang WHERE f_aktif = 1'
      'and deskripsi like '#39'%SAMPLE%'#39' or kategori like '#39'%SAMPLE%'#39
      'ORDER BY deskripsi')
    Params = <>
    Left = 620
    Top = 23
  end
  object dsBrgSample: TDataSource
    DataSet = zqrBrgSample
    Left = 650
    Top = 23
  end
end
