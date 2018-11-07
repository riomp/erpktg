inherited frmLogBookDesign_NEW: TfrmLogBookDesign_NEW
  Left = 335
  Top = 14
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
    Height = 42
    inherited lblJudul: TLabel
      Top = 10
      Width = 243
      Caption = 'Log Book Daftar Order Design'
    end
  end
  inherited pnlTengah: TPanel
    Top = 42
    Width = 870
    Height = 584
    object pg: TPageControl
      Left = 1
      Top = 1
      Width = 868
      Height = 582
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
          TabOrder = 36
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
          TabOrder = 11
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
          TabOrder = 15
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
          TabOrder = 19
          Text = 'cxTextEdit1'
          Visible = False
          Width = 158
        end
        object cxdTgl: TcxDateEdit
          Left = 77
          Top = 83
          TabOrder = 9
          Width = 121
        end
        object btnBaru2: TButton
          Left = 11
          Top = 404
          Width = 75
          Height = 25
          Caption = 'Baru'
          TabOrder = 33
          OnClick = btnBaru2Click
        end
        object Button1: TButton
          Left = 88
          Top = 404
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 34
          OnClick = Button1Click
        end
        object btnKeluar2: TButton
          Left = 165
          Top = 404
          Width = 75
          Height = 25
          Caption = 'Keluar'
          TabOrder = 35
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
          TabOrder = 13
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
          TabOrder = 21
          TabStop = True
          OnClick = cxrDeptClick
        end
        object cxrCust: TcxRadioButton
          Left = 85
          Top = 158
          Width = 113
          Height = 17
          Caption = 'Customer'
          TabOrder = 22
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
          TabOrder = 23
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
          TabOrder = 37
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
          TabOrder = 4
          Width = 444
        end
        object btnCariBrg0: TButton
          Left = 523
          Top = 32
          Width = 22
          Height = 22
          Caption = '...'
          TabOrder = 3
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
          TabOrder = 6
          Width = 79
        end
        object cxtSatuan2: TcxTextEdit
          Left = 161
          Top = 58
          Properties.ReadOnly = True
          TabOrder = 7
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
          TabOrder = 26
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
          Properties.OnChange = cxlSamplePropertiesChange
          TabOrder = 28
          Width = 444
        end
        object btnCariTrial: TButton
          Left = 237
          Top = 7
          Width = 22
          Height = 21
          Caption = '...'
          TabOrder = 0
          OnClick = btnCariTrialClick
        end
        object cxmDeskAwal: TcxMemo
          Left = 77
          Top = 214
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsFlat
          TabOrder = 25
          Height = 75
          Width = 504
        end
        object cxLabel32: TcxLabel
          Left = 10
          Top = 348
          AutoSize = False
          Caption = 'Jml. Yg Dituhkan Untuk Percobaan'
          Properties.WordWrap = True
          Height = 43
          Width = 86
        end
        object cxsJmlSamples: TcxSpinEdit
          Left = 101
          Top = 346
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 30
          Width = 121
        end
        object cxtSatuanSamples: TcxTextEdit
          Left = 227
          Top = 346
          Properties.ReadOnly = True
          TabOrder = 31
          Width = 121
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
          Top = 510
          Width = 145
          Height = 25
          Caption = 'Komunikasi Percobaan >>'
          TabOrder = 8
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 232
          Top = 510
          Width = 145
          Height = 25
          Caption = 'Cetak PPPB, PPP, APP'
          TabOrder = 9
          OnClick = Button3Click
        end
        object btnEdit2: TButton
          Left = 716
          Top = 460
          Width = 75
          Height = 25
          Caption = '<< Edit'
          TabOrder = 6
          Visible = False
          OnClick = btnEdit2Click
        end
        object btnTindakLanjutTrial: TButton
          Left = 380
          Top = 510
          Width = 145
          Height = 25
          Caption = 'Tindak Lanjut Trial'
          TabOrder = 10
          OnClick = btnTindakLanjutTrialClick
        end
        object nxGrdDet: TNextGrid
          Left = 6
          Top = 427
          Width = 515
          Height = 72
          Options = [goGrid, goHeader]
          TabOrder = 4
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
          object nxColJenis: TNxTextColumn
            DefaultWidth = 88
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Jenis'
            Position = 3
            SortType = stAlphabetic
            Width = 88
          end
          object nxColHasil: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Hasil'
            Header.Alignment = taRightJustify
            Position = 4
            SortType = stNumeric
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColSat: TNxTextColumn
            DefaultWidth = 47
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Satuan'
            Position = 5
            SortType = stAlphabetic
            Width = 47
          end
        end
        object cxLabel18: TcxLabel
          Left = 6
          Top = 408
          Caption = 'Detail SPK :'
        end
        object btnAppManagement: TButton
          Left = 528
          Top = 510
          Width = 145
          Height = 25
          Caption = 'Approval Management'
          TabOrder = 11
          Visible = False
          OnClick = btnAppManagementClick
        end
        object btnGroupTrial: TButton
          Left = 701
          Top = 430
          Width = 90
          Height = 25
          Caption = 'Group Trial >>'
          TabOrder = 5
          Visible = False
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
          Height = 123
          Options = [goGrid, goHeader]
          TabOrder = 2
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
            Header.Alignment = taRightJustify
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
        object btnRefreshTrial: TButton
          Left = 6
          Top = 510
          Width = 75
          Height = 25
          Caption = 'Refresh'
          TabOrder = 7
          OnClick = btnRefreshTrialClick
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
          TabOrder = 2
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
          TabOrder = 7
          Width = 121
        end
        object cxLabel11: TcxLabel
          Left = 575
          Top = 10
          Caption = 'Mesin'
          Visible = False
        end
        object btnSimpanKP: TButton
          Left = 10
          Top = 522
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 21
          OnClick = btnSimpanKPClick
        end
        object cxlMesin: TcxLookupComboBox
          Left = 660
          Top = 7
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
          TabOrder = 1
          Visible = False
          Width = 184
        end
        object cxChkPosting: TcxCheckBox
          Left = 257
          Top = 8
          Caption = 'Posting SPK PPIC'
          TabOrder = 3
          Width = 121
        end
        object cxLabel10: TcxLabel
          Left = 10
          Top = 56
          Caption = 'Waktu'
        end
        object cxLabel15: TcxLabel
          Left = 10
          Top = 69
          Caption = 'Yg. Dibutuhkan'
        end
        object cxtWaktu: TcxTextEdit
          Left = 95
          Top = 59
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          TabOrder = 14
          Width = 374
        end
        object pgTrial: TPageControl
          Left = 12
          Top = 150
          Width = 821
          Height = 364
          ActivePage = tabCompound
          TabOrder = 20
          object TabSheet6: TTabSheet
            Caption = 'Barang Jadi'
            object cxLabel20: TcxLabel
              Left = 10
              Top = 12
              Caption = 'Kode Brg.'
            end
            object cxtKodeBrg: TcxTextEdit
              Left = 95
              Top = 10
              Properties.ReadOnly = True
              TabOrder = 0
              Width = 81
            end
            object cxtDeskripsi: TcxTextEdit
              Left = 180
              Top = 10
              Properties.ReadOnly = True
              TabOrder = 1
              Width = 446
            end
            object cxLabel17: TcxLabel
              Left = 10
              Top = 37
              Caption = 'Qty.'
            end
            object cxsQtyTrial2: TcxSpinEdit
              Left = 95
              Top = 35
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              TabOrder = 3
              Width = 81
            end
            object cxtSatuan: TcxTextEdit
              Left = 180
              Top = 35
              Properties.ReadOnly = True
              TabOrder = 4
              Width = 81
            end
            object GroupBox2: TGroupBox
              Left = 10
              Top = 66
              Width = 716
              Height = 219
              Caption = ' Bill Of Material '
              TabOrder = 6
              object cxLabel13: TcxLabel
                Left = 10
                Top = 20
                Caption = 'Deskripsi'
                Transparent = True
              end
              object cxLabel14: TcxLabel
                Left = 10
                Top = 46
                Caption = 'Qty'
                Transparent = True
              end
              object cxCmbSatuan: TcxComboBox
                Left = 377
                Top = 50
                Properties.DropDownListStyle = lsEditFixedList
                TabOrder = 7
                Visible = False
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
                TabOrder = 3
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
                TabOrder = 0
                Width = 466
              end
              object btnCariBrg: TButton
                Left = 531
                Top = 18
                Width = 20
                Height = 21
                Caption = '...'
                TabOrder = 1
                OnClick = btnCariBrgClick
              end
              object nxGrd1: TNextGrid
                Left = 14
                Top = 78
                Width = 666
                Height = 122
                Options = [goGrid, goHeader]
                TabOrder = 8
                TabStop = True
                OnCellDblClick = nxGrd1CellDblClick
                object nxColHapus: TNxImageColumn
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
              object cxtSatuanBOM1: TcxTextEdit
                Left = 188
                Top = 45
                Properties.ReadOnly = True
                TabOrder = 5
                Width = 81
              end
            end
          end
          object tabCompound: TTabSheet
            Caption = 'Compound'
            ImageIndex = 2
            object Button9: TButton
              Left = 563
              Top = 10
              Width = 20
              Height = 21
              Caption = '...'
              TabOrder = 1
              OnClick = btnCariBrgClick
            end
            object ScrollBox1: TScrollBox
              Left = 0
              Top = 0
              Width = 813
              Height = 336
              Align = alClient
              TabOrder = 0
              object cxLabel36: TcxLabel
                Left = 10
                Top = 12
                Caption = 'Kode Brg.'
              end
              object cxlKodeBrgC: TcxLookupComboBox
                Left = 95
                Top = 10
                Properties.KeyFieldNames = 'kode'
                Properties.ListColumns = <
                  item
                    Caption = 'Deskripsi'
                    FieldName = 'deskripsi'
                  end
                  item
                    FieldName = 'kode'
                  end>
                Properties.ListSource = dsKodeHead
                Properties.OnChange = cxlKodeBrgCPropertiesChange
                TabOrder = 0
                Width = 466
              end
              object cxLabel37: TcxLabel
                Left = 10
                Top = 37
                Caption = 'Qty.'
              end
              object cxsQtyC: TcxSpinEdit
                Left = 95
                Top = 35
                Properties.DisplayFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                TabOrder = 3
                Width = 81
              end
              object cxtSatuanCompound: TcxTextEdit
                Left = 180
                Top = 35
                Properties.ReadOnly = True
                TabOrder = 4
                Width = 81
              end
              object GroupBox3: TGroupBox
                Left = 10
                Top = 144
                Width = 716
                Height = 219
                Caption = ' Bill Of Material '
                TabOrder = 7
                object cxLabel40: TcxLabel
                  Left = 10
                  Top = 20
                  Caption = 'Deskripsi'
                  Transparent = True
                end
                object cxLabel41: TcxLabel
                  Left = 10
                  Top = 46
                  Caption = 'Qty'
                  Transparent = True
                end
                object cxCmbSatuanC: TcxComboBox
                  Left = 367
                  Top = 45
                  Properties.DropDownListStyle = lsEditFixedList
                  TabOrder = 6
                  Visible = False
                  Width = 81
                end
                object cxsQtyBomC: TcxSpinEdit
                  Left = 63
                  Top = 45
                  Properties.DisplayFormat = '#,##0.0000'
                  Properties.EditFormat = '#,##0.0000'
                  Properties.ValueType = vtFloat
                  TabOrder = 4
                  Width = 121
                end
                object btnTambahBomC: TButton
                  Left = 272
                  Top = 43
                  Width = 75
                  Height = 25
                  Caption = 'Tambah'
                  TabOrder = 3
                  OnClick = btnTambahBomClick
                end
                object cxlDeskripsiC: TcxLookupComboBox
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
                  TabOrder = 0
                  Width = 466
                end
                object Button7: TButton
                  Left = 531
                  Top = 18
                  Width = 20
                  Height = 21
                  Caption = '...'
                  TabOrder = 1
                  OnClick = btnCariBrgClick
                end
                object nxGrd2: TNextGrid
                  Left = 14
                  Top = 78
                  Width = 666
                  Height = 122
                  Options = [goGrid, goHeader]
                  TabOrder = 8
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
                  object nxColKodeIndukC: TNxTextColumn
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    Position = 6
                    SortType = stAlphabetic
                    Visible = False
                  end
                end
                object cxtSatuanBOM2: TcxTextEdit
                  Left = 187
                  Top = 45
                  Properties.ReadOnly = True
                  TabOrder = 5
                  Width = 81
                end
              end
              object nxGrdCompound: TNextGrid
                Left = 10
                Top = 66
                Width = 716
                Height = 72
                Options = [goGrid, goHeader]
                TabOrder = 6
                TabStop = True
                OnCellClick = nxGrdCompoundCellClick
                OnCellDblClick = nxGrdCompoundCellDblClick
                object nxColHapusC: TNxImageColumn
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
                object nxColNoC: TNxIncrementColumn
                  DefaultWidth = 31
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 31
                end
                object nxColKodeBrgC: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode Brg.'
                  Position = 2
                  SortType = stAlphabetic
                end
                object nxColDeskC: TNxTextColumn
                  DefaultWidth = 356
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 356
                end
                object nxColQtyC: TNxNumberColumn
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
                object nxColChkBomC: TNxCheckBoxColumn
                  Alignment = taCenter
                  DefaultWidth = 37
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'BOM'
                  Position = 5
                  SortType = stBoolean
                  Visible = False
                  Width = 37
                end
              end
              object btnTambahC: TButton
                Left = 265
                Top = 33
                Width = 75
                Height = 25
                Caption = 'Tambah'
                TabOrder = 2
                OnClick = btnTambahCClick
              end
            end
          end
          object tabTepung: TTabSheet
            Caption = 'Tepung'
            ImageIndex = 1
            object Button8: TButton
              Left = 563
              Top = 10
              Width = 20
              Height = 21
              Caption = '...'
              TabOrder = 1
              OnClick = btnCariBrgClick
            end
            object ScrollBox2: TScrollBox
              Left = 0
              Top = 0
              Width = 813
              Height = 336
              Align = alClient
              TabOrder = 0
              object cxLabel16: TcxLabel
                Left = 10
                Top = 12
                Caption = 'Kode Brg.'
              end
              object cxlKodeBrgT: TcxLookupComboBox
                Left = 95
                Top = 10
                Properties.KeyFieldNames = 'kode'
                Properties.ListColumns = <
                  item
                    Caption = 'Deskripsi'
                    FieldName = 'deskripsi'
                  end
                  item
                    FieldName = 'kode'
                  end>
                Properties.ListSource = dsKodeHead
                Properties.OnChange = cxlKodeBrgTPropertiesChange
                TabOrder = 0
                Width = 466
              end
              object cxLabel31: TcxLabel
                Left = 10
                Top = 37
                Caption = 'Qty.'
              end
              object cxsQtyT: TcxSpinEdit
                Left = 95
                Top = 35
                Properties.DisplayFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                TabOrder = 3
                Width = 81
              end
              object cxtSatuanTepung: TcxTextEdit
                Left = 180
                Top = 35
                Properties.ReadOnly = True
                TabOrder = 4
                Width = 81
              end
              object GroupBox1: TGroupBox
                Left = 10
                Top = 144
                Width = 716
                Height = 219
                Caption = ' Bill Of Material '
                TabOrder = 7
                object cxLabel34: TcxLabel
                  Left = 10
                  Top = 20
                  Caption = 'Deskripsi'
                  Transparent = True
                end
                object cxLabel35: TcxLabel
                  Left = 10
                  Top = 46
                  Caption = 'Qty'
                  Transparent = True
                end
                object cxsQtyBomT: TcxSpinEdit
                  Left = 63
                  Top = 45
                  Properties.DisplayFormat = '#,##0.0000'
                  Properties.EditFormat = '#,##0.0000'
                  Properties.ValueType = vtFloat
                  TabOrder = 4
                  Width = 121
                end
                object btnTambahBomT: TButton
                  Left = 272
                  Top = 43
                  Width = 75
                  Height = 25
                  Caption = 'Tambah'
                  TabOrder = 3
                  OnClick = btnTambahBomClick
                end
                object cxlDeskripsiT: TcxLookupComboBox
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
                  TabOrder = 0
                  Width = 466
                end
                object Button5: TButton
                  Left = 531
                  Top = 18
                  Width = 20
                  Height = 21
                  Caption = '...'
                  TabOrder = 1
                  OnClick = btnCariBrgClick
                end
                object nxGrd3: TNextGrid
                  Left = 14
                  Top = 78
                  Width = 666
                  Height = 122
                  Options = [goGrid, goHeader]
                  TabOrder = 8
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
                object cxtSatuanT: TcxTextEdit
                  Left = 493
                  Top = 45
                  Properties.ReadOnly = True
                  TabOrder = 6
                  Visible = False
                  Width = 81
                end
                object cxtSatuanBOM3: TcxTextEdit
                  Left = 188
                  Top = 45
                  Properties.ReadOnly = True
                  TabOrder = 5
                  Width = 81
                end
              end
              object btnTambahT: TButton
                Left = 265
                Top = 33
                Width = 75
                Height = 25
                Caption = 'Tambah'
                TabOrder = 2
                OnClick = btnTambahTClick
              end
              object nxGrdTepung: TNextGrid
                Left = 10
                Top = 66
                Width = 716
                Height = 72
                Options = [goGrid, goHeader]
                TabOrder = 6
                TabStop = True
                OnCellClick = nxGrdTepungCellClick
                object NxImageColumn3: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 43
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Position = 0
                  SortType = stNumeric
                  Width = 43
                  Images = ImageList1
                end
                object NxIncrementColumn4: TNxIncrementColumn
                  DefaultWidth = 31
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'No.'
                  Position = 1
                  SortType = stAlphabetic
                  Width = 31
                end
                object NxTextColumn7: TNxTextColumn
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Kode Brg.'
                  Position = 2
                  SortType = stAlphabetic
                end
                object NxTextColumn8: TNxTextColumn
                  DefaultWidth = 356
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  Position = 3
                  SortType = stAlphabetic
                  Width = 356
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
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxCheckBoxColumn1: TNxCheckBoxColumn
                  Alignment = taCenter
                  DefaultWidth = 34
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Header.Caption = 'BOM'
                  Position = 5
                  SortType = stBoolean
                  Visible = False
                  Width = 34
                end
              end
            end
          end
        end
        object cxChkCompound: TcxCheckBox
          Left = 95
          Top = 126
          Caption = 'Compound'
          TabOrder = 18
          OnClick = cxChkCompoundClick
          Width = 81
        end
        object cxChkTepung: TcxCheckBox
          Left = 176
          Top = 126
          Caption = 'Tepung'
          TabOrder = 19
          OnClick = cxChkTepungClick
          Width = 70
        end
        object cxmDeskTrial: TcxMemo
          Left = 95
          Top = 85
          Properties.CharCase = ecUpperCase
          TabOrder = 16
          Height = 36
          Width = 569
        end
        object cxLabel12: TcxLabel
          Left = 380
          Top = 16
          Caption = 'Deskripsi Trial'
          Visible = False
        end
        object cxLabel30: TcxLabel
          Left = 505
          Top = 37
          Caption = 'Sample'
          Visible = False
        end
        object cxtKodeSample: TcxTextEdit
          Left = 710
          Top = 35
          Properties.ReadOnly = True
          TabOrder = 9
          Visible = False
          Width = 81
        end
        object cxtDeskSample: TcxTextEdit
          Left = 710
          Top = 55
          Properties.ReadOnly = True
          TabOrder = 12
          Visible = False
          Width = 446
        end
        object cxLabel42: TcxLabel
          Left = 10
          Top = 86
          Caption = 'Deskripsi Trial'
        end
        object btnBatal2: TButton
          Left = 90
          Top = 522
          Width = 75
          Height = 25
          Caption = 'Batal'
          TabOrder = 22
          OnClick = btnBatal2Click
        end
        object DBGrid1: TDBGrid
          Left = 835
          Top = 40
          Width = 1000
          Height = 120
          DataSource = DataSource1
          TabOrder = 11
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Visible = False
        end
        object Button4: TButton
          Left = 570
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Button4'
          TabOrder = 0
          Visible = False
          OnClick = Button4Click
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
        TabVisible = False
        object cxLabel21: TcxLabel
          Left = 10
          Top = 10
          Caption = 'No. Trial'
        end
        object cxtNoTrial3: TcxTextEdit
          Left = 77
          Top = 8
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 158
        end
        object cxGrdChild: TcxGrid
          Left = 10
          Top = 143
          Width = 586
          Height = 156
          TabOrder = 10
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
          TabOrder = 5
          Width = 153
        end
        object btnTambahNoTrialAnak: TButton
          Left = 86
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Tambah'
          TabOrder = 9
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
          TabOrder = 2
          Width = 81
        end
        object cxtDeskripsi2: TcxTextEdit
          Left = 162
          Top = 33
          Properties.ReadOnly = True
          TabOrder = 3
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
          TabOrder = 7
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
    Left = 790
    Top = 576
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
      'WHERE a.jenis = '#39'BARANG JADI'#39
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
    Left = 590
    Top = 149
    object memTblbom: TStringField
      FieldName = 'bom'
    end
    object memTblkode: TStringField
      FieldName = 'kode'
    end
    object memTbljenis: TStringField
      FieldName = 'jenis'
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
  object memTbl2: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'bom'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kode_induk'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'jenis'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'deskripsi'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'qty'
        DataType = ftFloat
      end
      item
        Name = 'satuan'
        DataType = ftString
        Size = 20
      end>
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
    Left = 620
    Top = 149
    object StringField1: TStringField
      DisplayWidth = 8
      FieldName = 'bom'
    end
    object StringField2: TStringField
      DisplayWidth = 24
      FieldName = 'kode'
    end
    object memTbl2kode_induk: TStringField
      DisplayWidth = 24
      FieldName = 'kode_induk'
    end
    object StringField3: TStringField
      DisplayWidth = 24
      FieldName = 'jenis'
    end
    object memTbl2deskripsi: TStringField
      DisplayWidth = 240
      FieldName = 'deskripsi'
      Size = 200
    end
    object memTbl2qty: TFloatField
      DisplayWidth = 12
      FieldName = 'qty'
    end
    object memTbl2satuan: TStringField
      DisplayWidth = 24
      FieldName = 'satuan'
    end
  end
  object memTbl3: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'bom'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kode_induk'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'jenis'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'deskripsi'
        DataType = ftString
        Size = 200
      end>
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
    Left = 650
    Top = 149
    object StringField4: TStringField
      FieldName = 'bom'
    end
    object StringField5: TStringField
      FieldName = 'kode'
    end
    object memTbl3kode_induk: TStringField
      FieldName = 'kode_induk'
      Size = 200
    end
    object StringField6: TStringField
      FieldName = 'jenis'
    end
    object memTbl3deskripsi: TStringField
      FieldName = 'deskripsi'
      Size = 200
    end
    object memTbl3qty: TFloatField
      FieldName = 'qty'
    end
    object memTbl3satuan: TStringField
      FieldName = 'satuan'
    end
  end
  object memTblC: TkbmMemTable
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
    Left = 680
    Top = 149
    object StringField8: TStringField
      FieldName = 'kode'
    end
  end
  object DataSource1: TDataSource
    DataSet = ZReadOnlyQuery1
    Left = 515
    Top = 63
  end
  object memTblT: TkbmMemTable
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
    Left = 740
    Top = 149
    object StringField7: TStringField
      FieldName = 'kode'
    end
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM 0tmp_trial')
    Params = <>
    Left = 545
    Top = 63
  end
end
