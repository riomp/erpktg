inherited frmDataAbsensi: TfrmDataAbsensi
  Left = 311
  Top = 80
  Height = 599
  Caption = 'Edit / Tambah Data Absensi'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 107
      Caption = 'Data Absensi'
    end
  end
  inherited pnlTengah: TPanel
    Height = 415
    object pg: TcxPageControl
      Left = 1
      Top = 1
      Width = 810
      Height = 413
      ActivePage = cxTabSheet5
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 413
      ClientRectRight = 810
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Data Finger'
        ImageIndex = 0
        object cxLabel1: TcxLabel
          Left = 6
          Top = 12
          Caption = 'Tanggal'
        end
        object cxdTgl1: TcxDateEdit
          Left = 57
          Top = 11
          TabOrder = 1
          Width = 121
        end
        object cxLabel2: TcxLabel
          Left = 182
          Top = 12
          Caption = 'S/D'
        end
        object cxdTgl2: TcxDateEdit
          Left = 210
          Top = 11
          TabOrder = 3
          Width = 121
        end
        object btnProses: TButton
          Left = 339
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 4
          OnClick = btnProsesClick
        end
        object cxGrid2: TcxGrid
          Left = 8
          Top = 48
          Width = 793
          Height = 297
          TabOrder = 5
          object cxTblDataFinger: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxTblDataFingerCellDblClick
            DataController.DataSource = dsAbsen
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,##'
                Kind = skCount
                FieldName = 'status'
                DisplayText = 'Total'
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skCount
                FieldName = 'nip'
                DisplayText = 'Total Karyawan'
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.OnGetContentStyle = cxTblDataFingerStylesGetContentStyle
            object cxTblDataFingernip: TcxGridDBColumn
              Caption = 'NIP'
              DataBinding.FieldName = 'nip'
              Width = 115
            end
            object cxTblDataFingernama: TcxGridDBColumn
              Caption = 'Nama Karyawan'
              DataBinding.FieldName = 'nama'
              Visible = False
              GroupIndex = 1
              Width = 210
            end
            object cxTblDataFingerdepartemen: TcxGridDBColumn
              Caption = 'Departement'
              DataBinding.FieldName = 'departemen'
              Visible = False
              GroupIndex = 0
              Width = 93
            end
            object cxTblDataFingerjabatan: TcxGridDBColumn
              Caption = 'Jabatan'
              DataBinding.FieldName = 'jabatan'
              Width = 160
            end
            object cxTblDataFingerstatus: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'status'
              Width = 162
            end
            object cxTblDataFingertanggal: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
              Width = 92
            end
            object cxTblDataFingermode: TcxGridDBColumn
              Caption = 'Mode'
              DataBinding.FieldName = 'mode'
              Width = 102
            end
            object cxTblDataFingerjam: TcxGridDBColumn
              Caption = 'Jam'
              DataBinding.FieldName = 'jam'
              Width = 86
            end
            object cxTblDataFingerlog: TcxGridDBColumn
              DataBinding.FieldName = 'log'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxTblDataFinger
          end
        end
        object Panel1: TPanel
          Left = 256
          Top = 88
          Width = 321
          Height = 161
          BevelInner = bvLowered
          BorderStyle = bsSingle
          TabOrder = 6
          object Label1: TLabel
            Left = 7
            Top = 13
            Width = 105
            Height = 19
            Caption = 'Failed Finger'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxLabel3: TcxLabel
            Left = 6
            Top = 44
            Caption = 'Nama Karyawan'
          end
          object cxLabel4: TcxLabel
            Left = 6
            Top = 68
            Caption = 'Mode Absen'
          end
          object cxLabel5: TcxLabel
            Left = 6
            Top = 92
            Caption = 'Tanggal Absen'
          end
          object cxlKaryawan: TcxLookupComboBox
            Left = 96
            Top = 40
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 3000
            Properties.KeyFieldNames = 'nip'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'nip'
              end>
            Properties.ListSource = dsKaryawan
            TabOrder = 3
            Width = 209
          end
          object cmbMode: TComboBox
            Left = 96
            Top = 64
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 4
            Text = 'SCAN MASUK'
            Items.Strings = (
              'SCAN MASUK'
              'SCAN KELUAR')
          end
          object cxdTanggal: TcxDateEdit
            Left = 96
            Top = 88
            TabOrder = 5
            Width = 121
          end
          object cxTimeEdit1: TcxTimeEdit
            Left = 224
            Top = 88
            EditValue = 0d
            TabOrder = 6
            Width = 89
          end
          object Button1: TButton
            Left = 8
            Top = 120
            Width = 75
            Height = 25
            Caption = 'Simpan'
            TabOrder = 7
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 88
            Top = 120
            Width = 75
            Height = 25
            Caption = 'Keluar'
            TabOrder = 8
            OnClick = Button2Click
          end
        end
        object btnFailed: TButton
          Left = 416
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Failed Finger'
          TabOrder = 7
          OnClick = btnFailedClick
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Data Absensi'
        ImageIndex = 1
        object cxLabel11: TcxLabel
          Left = 6
          Top = 12
          Caption = 'Tanggal'
        end
        object cxdTgl3: TcxDateEdit
          Left = 57
          Top = 11
          TabOrder = 1
          Width = 121
        end
        object cxLabel12: TcxLabel
          Left = 182
          Top = 12
          Caption = 'S/D'
        end
        object cxdTgl4: TcxDateEdit
          Left = 210
          Top = 11
          TabOrder = 3
          Width = 121
        end
        object btnProsesAbsen: TButton
          Left = 336
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 4
          OnClick = btnProsesAbsenClick
        end
        object cxGrid3: TcxGrid
          Left = 8
          Top = 48
          Width = 785
          Height = 305
          TabOrder = 5
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxTblDataFingerCellDblClick
            DataController.DataSource = dsDataAbsen
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,##'
                Kind = skCount
                FieldName = 'status'
                DisplayText = 'Total'
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skCount
                FieldName = 'nip'
                DisplayText = 'Total Karyawan'
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.OnGetContentStyle = cxTblDataFingerStylesGetContentStyle
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'NIP'
              DataBinding.FieldName = 'nip'
              Width = 89
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'nama'
              Width = 168
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Departemen'
              DataBinding.FieldName = 'departemen'
              Width = 142
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Jabatan'
              DataBinding.FieldName = 'jabatan'
              Width = 140
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'status'
              Width = 88
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Scan Masuk'
              DataBinding.FieldName = 'masuk'
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Scan Keluar'
              DataBinding.FieldName = 'keluar'
            end
          end
          object cxTblAbsen: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDataAbsen
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end
              item
                Caption = 'Absen'
              end>
            object cxTblAbsennip: TcxGridDBBandedColumn
              Caption = 'Nip'
              DataBinding.FieldName = 'nip'
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxTblAbsennama: TcxGridDBBandedColumn
              Caption = 'Nama Karyawan'
              DataBinding.FieldName = 'nama'
              Width = 184
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxTblAbsendepartemen: TcxGridDBBandedColumn
              Caption = 'cas'
              DataBinding.FieldName = 'departemen'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxTblAbsenjabatan: TcxGridDBBandedColumn
              Caption = 'Jabatan'
              DataBinding.FieldName = 'jabatan'
              Width = 136
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxTblAbsenstatus: TcxGridDBBandedColumn
              Caption = 'Status'
              DataBinding.FieldName = 'status'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxTblAbsentanggal: TcxGridDBBandedColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxTblAbsenmasuk: TcxGridDBBandedColumn
              Caption = 'Masuk'
              DataBinding.FieldName = 'masuk'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxTblAbsenkeluar: TcxGridDBBandedColumn
              Caption = 'Pulang'
              DataBinding.FieldName = 'keluar'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxTblAbsen
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Ijin Absen'
        ImageIndex = 2
        object cxGroupBox1: TcxGroupBox
          Left = 8
          Top = 8
          TabOrder = 0
          Height = 337
          Width = 329
          object cxLabel6: TcxLabel
            Left = 6
            Top = 20
            Caption = 'Nama Karyawan'
          end
          object cxLabel7: TcxLabel
            Left = 6
            Top = 44
            Caption = 'Jenis'
          end
          object cxLabel8: TcxLabel
            Left = 6
            Top = 68
            Caption = 'Mulai Tgl'
          end
          object cxlNip: TcxLookupComboBox
            Left = 96
            Top = 16
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 3000
            Properties.KeyFieldNames = 'nip'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'nip'
              end>
            Properties.ListSource = dskaryawan1
            TabOrder = 3
            Width = 209
          end
          object cmbIjin: TComboBox
            Left = 96
            Top = 40
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 4
            Text = 'IJIN'
            Items.Strings = (
              'IJIN'
              'SAKIT'
              'DINAS'
              'CUTI PRIBADI'
              'CUTI KHUSUS')
          end
          object cxdTgl5: TcxDateEdit
            Left = 96
            Top = 64
            TabOrder = 5
            Width = 121
          end
          object cxLabel9: TcxLabel
            Left = 6
            Top = 92
            Caption = 'Sampai Tgl'
          end
          object cxdTgl6: TcxDateEdit
            Left = 96
            Top = 88
            TabOrder = 7
            Width = 121
          end
          object cxLabel10: TcxLabel
            Left = 6
            Top = 116
            Caption = 'Keterangan'
          end
          object cxMemo1: TcxMemo
            Left = 8
            Top = 136
            Properties.CharCase = ecUpperCase
            TabOrder = 9
            Height = 145
            Width = 305
          end
          object btnSimpanIjin: TButton
            Left = 8
            Top = 296
            Width = 75
            Height = 25
            Caption = 'Simpan'
            TabOrder = 10
            OnClick = btnSimpanIjinClick
          end
        end
        object cxGrid1: TcxGrid
          Left = 344
          Top = 16
          Width = 441
          Height = 329
          TabOrder = 1
          object cxTblIjin: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxTblIjinCellDblClick
            DataController.DataSource = dsIjin
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.Editing = False
            OptionsView.GroupByBox = False
            object cxTblIjinid: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'id'
              Width = 33
            end
            object cxTblIjinnip: TcxGridDBColumn
              Caption = 'Nip'
              DataBinding.FieldName = 'nip'
              Width = 99
            end
            object cxTblIjinnama: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'nama'
              Width = 172
            end
            object cxTblIjinjenis: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'jenis'
              Width = 78
            end
            object cxTblIjinstart_date: TcxGridDBColumn
              Caption = 'Mulai Tanggal'
              DataBinding.FieldName = 'start_date'
              Width = 83
            end
            object cxTblIjinfinish_date: TcxGridDBColumn
              Caption = 'Smpai Tanggal'
              DataBinding.FieldName = 'finish_date'
              Width = 71
            end
            object cxTblIjinketerangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxTblIjin
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Lembur'
        ImageIndex = 3
        object btnInputLembur: TButton
          Left = 8
          Top = 353
          Width = 105
          Height = 25
          Caption = 'Tambah / Edit'
          TabOrder = 0
          OnClick = btnInputLemburClick
        end
        object cxGrid4: TcxGrid
          Left = 8
          Top = 16
          Width = 793
          Height = 325
          Align = alCustom
          TabOrder = 1
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsLemburHead
            DataController.DetailKeyFieldNames = 'no'
            DataController.KeyFieldNames = 'no'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            FilterRow.SeparatorWidth = 2
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsView.GroupByBox = False
            object cxGridDBTableView1no: TcxGridDBColumn
              Caption = 'No.SPL'
              DataBinding.FieldName = 'no'
              Width = 84
            end
            object cxGridDBTableView1tanggal: TcxGridDBColumn
              Caption = 'Tgl.SPL'
              DataBinding.FieldName = 'tanggal'
            end
            object cxGridDBTableView1jenis_lembur: TcxGridDBColumn
              Caption = 'Lembur Pada Waktu'
              DataBinding.FieldName = 'jenis_lembur'
            end
            object cxGridDBTableView1tgl_lembur: TcxGridDBColumn
              Caption = 'Tgl.Lembur'
              DataBinding.FieldName = 'tgl_lembur'
            end
            object cxGridDBTableView1diajukan_oleh: TcxGridDBColumn
              Caption = 'Diajukan Oleh'
              DataBinding.FieldName = 'diajukan_oleh'
            end
            object cxGridDBTableView1uraian: TcxGridDBColumn
              Caption = 'Uraian Tugas Lembur'
              DataBinding.FieldName = 'uraian'
              Width = 527
            end
            object cxGridDBTableView1user_input: TcxGridDBColumn
              DataBinding.FieldName = 'user_input'
              Visible = False
            end
            object cxGridDBTableView1tgl_input: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_input'
              Visible = False
            end
            object cxGridDBTableView1user_edit: TcxGridDBColumn
              DataBinding.FieldName = 'user_edit'
              Visible = False
            end
            object cxGridDBTableView1tgl_edit: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_edit'
              Visible = False
            end
          end
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsLemburDetail
            DataController.DetailKeyFieldNames = 'no'
            DataController.MasterKeyFieldNames = 'no'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid2DBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object cxGrid2DBTableView1nomer: TcxGridDBColumn
              Caption = 'No'
              DataBinding.FieldName = 'nomer'
              Width = 29
            end
            object cxGrid2DBTableView1no: TcxGridDBColumn
              DataBinding.FieldName = 'no'
              Visible = False
              Width = 64
            end
            object cxGrid2DBTableView1nip: TcxGridDBColumn
              Caption = 'Nip'
              DataBinding.FieldName = 'nip'
              Width = 84
            end
            object cxGrid2DBTableView1nama: TcxGridDBColumn
              Caption = 'Nama Karyawan'
              DataBinding.FieldName = 'nama'
            end
            object cxGrid2DBTableView1mulai: TcxGridDBColumn
              DataBinding.FieldName = 'mulai'
            end
            object cxGrid2DBTableView1akhir: TcxGridDBColumn
              DataBinding.FieldName = 'akhir'
            end
            object cxGrid2DBTableView1keterangan: TcxGridDBColumn
              DataBinding.FieldName = 'keterangan'
              Width = 64
            end
          end
          object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsLemburDetail
            DataController.DetailKeyFieldNames = 'no'
            DataController.MasterKeyFieldNames = 'no'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            Bands = <
              item
              end
              item
                Caption = 'Jam Lembur'
              end
              item
                Width = 259
              end>
            object cxGrid4DBBandedTableView1id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1nomer: TcxGridDBBandedColumn
              Caption = 'No'
              DataBinding.FieldName = 'nomer'
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1no: TcxGridDBBandedColumn
              DataBinding.FieldName = 'no'
              Visible = False
              Width = 64
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1nip: TcxGridDBBandedColumn
              Caption = 'Nip'
              DataBinding.FieldName = 'nip'
              Width = 97
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1nama: TcxGridDBBandedColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'nama'
              Width = 151
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1Jabatan: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Jabatan'
              Width = 94
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1mulai: TcxGridDBBandedColumn
              DataBinding.FieldName = 'mulai'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1akhir: TcxGridDBBandedColumn
              DataBinding.FieldName = 'akhir'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1keterangan: TcxGridDBBandedColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
              Width = 64
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView1
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid4DBBandedTableView1
            end
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Rekap Absensi'
        ImageIndex = 4
        object cxLabel13: TcxLabel
          Left = 6
          Top = 12
          Caption = 'Tanggal'
        end
        object cxdTgl7: TcxDateEdit
          Left = 57
          Top = 11
          TabOrder = 1
          Width = 121
        end
        object cxLabel14: TcxLabel
          Left = 182
          Top = 12
          Caption = 'S/D'
        end
        object cxdTgl8: TcxDateEdit
          Left = 210
          Top = 11
          TabOrder = 3
          Width = 121
        end
        object btnPRosesRekap: TButton
          Left = 344
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 4
          OnClick = btnPRosesRekapClick
        end
        object cxGrid5: TcxGrid
          Left = 3
          Top = 48
          Width = 793
          Height = 298
          TabOrder = 5
          object cxTblKaryawan: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxTblIjinCellDblClick
            DataController.DataSource = dsKaryawan
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsView.GroupByBox = False
            object cxTblKaryawannip: TcxGridDBColumn
              DataBinding.FieldName = 'nip'
              Width = 101
            end
            object cxTblKaryawannama: TcxGridDBColumn
              DataBinding.FieldName = 'nama'
              Width = 207
            end
            object cxTblKaryawanColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'day1'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'day2'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'day3'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'day4'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'day5'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'day6'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'day7'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'day8'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'day9'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn10: TcxGridDBColumn
              DataBinding.FieldName = 'day10'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn11: TcxGridDBColumn
              DataBinding.FieldName = 'day11'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn12: TcxGridDBColumn
              DataBinding.FieldName = 'day12'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn13: TcxGridDBColumn
              DataBinding.FieldName = 'day13'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn14: TcxGridDBColumn
              DataBinding.FieldName = 'day14'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn15: TcxGridDBColumn
              DataBinding.FieldName = 'day15'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn16: TcxGridDBColumn
              DataBinding.FieldName = 'day16'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn17: TcxGridDBColumn
              DataBinding.FieldName = 'day17'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn18: TcxGridDBColumn
              DataBinding.FieldName = 'day18'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn19: TcxGridDBColumn
              DataBinding.FieldName = 'day19'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn20: TcxGridDBColumn
              DataBinding.FieldName = 'day20'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn21: TcxGridDBColumn
              DataBinding.FieldName = 'day21'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn22: TcxGridDBColumn
              DataBinding.FieldName = 'day22'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn23: TcxGridDBColumn
              DataBinding.FieldName = 'day23'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn24: TcxGridDBColumn
              DataBinding.FieldName = 'day24'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn25: TcxGridDBColumn
              DataBinding.FieldName = 'day25'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn26: TcxGridDBColumn
              DataBinding.FieldName = 'day26'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn27: TcxGridDBColumn
              DataBinding.FieldName = 'day27'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn28: TcxGridDBColumn
              DataBinding.FieldName = 'day28'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn29: TcxGridDBColumn
              DataBinding.FieldName = 'day29'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn30: TcxGridDBColumn
              DataBinding.FieldName = 'day30'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Width = 72
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn31: TcxGridDBColumn
              DataBinding.FieldName = 'day31'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn32: TcxGridDBColumn
              DataBinding.FieldName = 'absen'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn40: TcxGridDBColumn
              Caption = 'HK'
              DataBinding.FieldName = 'hk'
            end
            object cxTblKaryawanColumn33: TcxGridDBColumn
              DataBinding.FieldName = 'ijin'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn34: TcxGridDBColumn
              DataBinding.FieldName = 'sakit'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn35: TcxGridDBColumn
              DataBinding.FieldName = 'dinas'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn36: TcxGridDBColumn
              DataBinding.FieldName = 'cutip'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn37: TcxGridDBColumn
              DataBinding.FieldName = 'cutik'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn38: TcxGridDBColumn
              DataBinding.FieldName = 'l1'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.AssignedValues.DisplayFormat = True
              Properties.AssignedValues.EditFormat = True
              Properties.ValueType = vtFloat
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn39: TcxGridDBColumn
              DataBinding.FieldName = 'l2'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.AssignedValues.DisplayFormat = True
              Properties.AssignedValues.EditFormat = True
              Properties.ValueType = vtFloat
              IsCaptionAssigned = True
            end
            object cxTblKaryawanColumn41: TcxGridDBColumn
              Caption = 'Mangkir'
              DataBinding.FieldName = 'mangkir'
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxTblKaryawan
          end
        end
        object btnExcelBrg: TButton
          Left = 5
          Top = 353
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 6
          OnClick = btnExcelBrgClick
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 481
    Height = 77
    inherited btnKeluar: TButton
      Left = 12
    end
    inherited btnSimpan: TButton
      Left = 95
      Visible = False
    end
  end
  object zqrAbsen: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.nip,a.nama,a.departemen,a.jabatan,a.status,b.tanggal,b.' +
        '`jam`,b.mode,b.log'
      
        'FROM tbl_karyawan_ktg as a join `tbl_scan_absen` as b on a.nip=b' +
        '.nip WHERE a.f_aktif=1 and (b.tanggal BETWEEN :tgl1 AND :tgl2)  '
      '')
    Params = <
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
    Left = 426
    Top = 25
    ParamData = <
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
  object dsAbsen: TDataSource
    DataSet = zqrAbsen
    Left = 456
    Top = 28
  end
  object zKaryawan: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nip,nama,sf_absen1(nip,:tgl1) as day1'
      ',sf_absen1(nip,:tgl2) as day2'
      ',sf_absen1(nip,:tgl3) as day3'
      ',sf_absen1(nip,:tgl4) as day4'
      ',sf_absen1(nip,:tgl5) as day5'
      ',sf_absen1(nip,:tgl6) as day6'
      ',sf_absen1(nip,:tgl7) as day7'
      ',sf_absen1(nip,:tgl8) as day8'
      ',sf_absen1(nip,:tgl9) as day9'
      ',sf_absen1(nip,:tgl10) as day10'
      ',sf_absen1(nip,:tgl11) as day11'
      ',sf_absen1(nip,:tgl12) as day12'
      ',sf_absen1(nip,:tgl13) as day13'
      ',sf_absen1(nip,:tgl14) as day14'
      ',sf_absen1(nip,:tgl15) as day15'
      ',sf_absen1(nip,:tgl16) as day16'
      ',sf_absen1(nip,:tgl17) as day17'
      ',sf_absen1(nip,:tgl18) as day18'
      ',sf_absen1(nip,:tgl19) as day19'
      ',sf_absen1(nip,:tgl20) as day20'
      ',sf_absen1(nip,:tgl21) as day21'
      ',sf_absen1(nip,:tgl22) as day22'
      ',sf_absen1(nip,:tgl23) as day23'
      ',sf_absen1(nip,:tgl24) as day24'
      ',sf_absen1(nip,:tgl25) as day25'
      ',sf_absen1(nip,:tgl26) as day26'
      ',sf_absen1(nip,:tgl27) as day27'
      ',sf_absen1(nip,:tgl28) as day28'
      ',sf_absen1(nip,:tgl29) as day29'
      ',sf_absen1(nip,:tgl30) as day30'
      
        ',sf_absen1(nip,:tgl31) as day31,(sf_rekapabsen(nip)-sf_l1libur(n' +
        'ip,:tgl1,:tgl32)-sf_l2libur(nip,:tgl1,:tgl32)) as absen,'
      
        'sf_ijin(nip,:tgl1,:tgl32) as ijin,sf_sakit(nip,:tgl1,:tgl32) as ' +
        'sakit,'
      
        'sf_dinas(nip,:tgl1,:tgl32) as dinas,sf_cutip(nip,:tgl1,:tgl32) a' +
        's cutip,'
      'sf_cutik(nip,:tgl1,:tgl32) as cutik,'
      'sf_l1(nip,:tgl1,:tgl32) as l1,sf_l2(nip,:tgl1,:tgl32) as l2,'
      
        '(5 * (DATEDIFF(:tgl32, :tgl1) DIV 7) + MID('#39'01234444012333340122' +
        '22340111123400001234000123440'#39', 7 * WEEKDAY(:tgl1) + WEEKDAY(:tg' +
        'l32) + 1, 1))+1 as hk,'
      
        '((5 * (DATEDIFF(:tgl32, :tgl1) DIV 7) + MID('#39'0123444401233334012' +
        '222340111123400001234000123440'#39', 7 * WEEKDAY(:tgl1) + WEEKDAY(:t' +
        'gl32) + 1, 1))+1)-(sf_rekapabsen(nip)-sf_l1libur(nip,:tgl1,:tgl3' +
        '2)-sf_l2libur(nip,:tgl1,:tgl32))'
      
        '-ifnull(sf_ijin(nip,:tgl1,:tgl32),0)-ifnull(sf_sakit(nip,:tgl1,:' +
        'tgl32),0)-ifnull(sf_dinas(nip,:tgl1,:tgl32),0)-ifnull(sf_cutip(n' +
        'ip,:tgl1,:tgl32),0)-ifnull(sf_cutik(nip,:tgl1,:tgl32),0)  as man' +
        'gkir'
      ' FROM tbl_karyawan_ktg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl7'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl8'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl10'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl11'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl12'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl13'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl14'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl15'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl16'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl17'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl18'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl19'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl20'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl21'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl22'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl23'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl24'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl25'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl26'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl27'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl28'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl29'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl30'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl31'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl32'
        ParamType = ptUnknown
      end>
    Left = 498
    Top = 22
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl7'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl8'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl10'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl11'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl12'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl13'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl14'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl15'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl16'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl17'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl18'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl19'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl20'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl21'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl22'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl23'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl24'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl25'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl26'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl27'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl28'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl29'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl30'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl31'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl32'
        ParamType = ptUnknown
      end>
  end
  object dsKaryawan: TDataSource
    DataSet = zKaryawan
    Left = 528
    Top = 20
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 593
    Top = 14
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clGradientInactiveCaption
      TextColor = clBlack
    end
  end
  object zqrDataAbsen: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.nip,a.nama,a.departemen,a.jabatan,a.status,a.tanggal,a.' +
        'jam as masuk,b.jam as keluar,'
      
        'IF(a.jam>'#39'04:00:00'#39','#39'06:00:00'#39',IF(a.jam>'#39'07:00:00'#39','#39'08:00:00'#39',IF' +
        '(a.jam>'#39'12:00:00'#39','#39'14:00:00'#39','
      'IF(a.jam>'#39'20:00:00'#39','#39'22:00:00'#39','#39'00:00:00'#39')))) as Jadwal'
      
        'FROM (SELECT a.nip,a.nama,a.departemen,a.jabatan,a.status,b.tang' +
        'gal,b.`jam`,b.mode,b.log'
      
        'FROM tbl_karyawan_ktg as a join `tbl_scan_absen` as b on a.nip=b' +
        '.nip '
      ' right join _tmp_tanggal as c on b.tanggal=c.tanggal'
      'WHERE a.f_aktif=1 and b.mode='#39'SCAN MASUK'#39') as a join '
      
        '(SELECT a.nip,a.nama,a.departemen,a.jabatan,a.status,b.tanggal,b' +
        '.`jam`,b.mode,b.log'
      
        'FROM tbl_karyawan_ktg as a join `tbl_scan_absen` as b on a.nip=b' +
        '.nip '
      ' right join _tmp_tanggal as c on b.tanggal=c.tanggal'
      'WHERE a.f_aktif=1 and b.mode='#39'SCAN KELUAR'#39') as b on'
      'a.nip=b.nip and a.tanggal=b.tanggal ORDER BY a.tanggal'
      ''
      '')
    Params = <>
    Left = 330
    Top = 9
  end
  object dsDataAbsen: TDataSource
    DataSet = zqrDataAbsen
    Left = 360
    Top = 12
  end
  object zqrIjin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.id,a.nip,b.nama,a.jenis,a.start_date,a.finish_date,a.ke' +
        'terangan'
      'FROM tbl_exabsen as a join tbl_karyawan_ktg as b on a.nip=b.nip'
      'ORDER BY a.start_date DESC'
      '')
    Params = <>
    Left = 266
    Top = 9
  end
  object dsIjin: TDataSource
    DataSet = zqrIjin
    Left = 296
    Top = 12
  end
  object zqrLemburHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_lembur_head ORDER BY tanggal DESC')
    Params = <>
    Left = 639
    Top = 17
  end
  object dsLemburHead: TDataSource
    DataSet = zqrLemburHead
    Left = 664
    Top = 12
  end
  object zLemburDetail: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*,b.nama,b.Jabatan FROM tbl_lembur_det as a join tbl_ka' +
        'ryawan_ktg as b on a.nip=b.nip')
    Params = <>
    Left = 706
    Top = 17
  end
  object dsLemburDetail: TDataSource
    DataSet = zLemburDetail
    Left = 736
    Top = 12
  end
  object zKaryawan1: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT *'
      ' FROM tbl_karyawan_ktg')
    Params = <>
    Left = 162
    Top = 9
  end
  object dskaryawan1: TDataSource
    DataSet = zKaryawan1
    Left = 192
    Top = 12
  end
end
