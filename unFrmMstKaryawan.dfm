inherited frmMstKaryawan: TfrmMstKaryawan
  Left = 372
  Top = 150
  Width = 1027
  Height = 627
  Caption = 'Master Karyawan'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1011
    inherited lblJudul: TLabel
      Width = 142
      Caption = 'Master Karyawan'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1011
    Height = 463
    object cxGrid1: TcxGrid
      Left = 8
      Top = 8
      Width = 369
      Height = 441
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
        DataController.DataSource = dsKaryawan
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '#,##'
            Kind = skCount
            FieldName = 'status'
            Column = cxGrid1DBTableView1status
            DisplayText = 'Total'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##'
            Kind = skCount
            FieldName = 'nip'
            Column = cxGrid1DBTableView1nip
            DisplayText = 'Total Karyawan'
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        object cxGrid1DBTableView1nip: TcxGridDBColumn
          Caption = 'NIP'
          DataBinding.FieldName = 'nip'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object cxGrid1DBTableView1nama: TcxGridDBColumn
          Caption = 'Nama Karyawan'
          DataBinding.FieldName = 'nama'
          HeaderAlignmentHorz = taCenter
          Width = 252
        end
        object cxGrid1DBTableView1departemen: TcxGridDBColumn
          Caption = 'Departemen'
          DataBinding.FieldName = 'departemen'
        end
        object cxGrid1DBTableView1status: TcxGridDBColumn
          Caption = 'Status Karyawan'
          DataBinding.FieldName = 'status'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object GroupBox1: TGroupBox
      Left = 384
      Top = 8
      Width = 617
      Height = 441
      Caption = 'Detail Karyawan'
      TabOrder = 1
      object cxPageControl1: TcxPageControl
        Left = 8
        Top = 24
        Width = 593
        Height = 409
        ActivePage = cxTabSheet1
        TabOrder = 0
        ClientRectBottom = 409
        ClientRectRight = 593
        ClientRectTop = 24
        object cxTabSheet1: TcxTabSheet
          Caption = 'Data Pribadi'
          ImageIndex = 0
          object Label1: TLabel
            Left = 8
            Top = 16
            Width = 18
            Height = 13
            Caption = 'NIP'
          end
          object Label2: TLabel
            Left = 8
            Top = 40
            Width = 28
            Height = 13
            Caption = 'Nama'
          end
          object Label3: TLabel
            Left = 8
            Top = 64
            Width = 82
            Height = 13
            Caption = 'Tempat/Tgl.Lahir'
          end
          object Label4: TLabel
            Left = 11
            Top = 86
            Width = 56
            Height = 13
            Caption = 'Alamat KTP'
          end
          object Label5: TLabel
            Left = 11
            Top = 105
            Width = 70
            Height = 13
            Caption = 'Alamat Domisili'
          end
          object Label6: TLabel
            Left = 11
            Top = 154
            Width = 32
            Height = 13
            Caption = 'No,Tlp'
          end
          object Label7: TLabel
            Left = 11
            Top = 176
            Width = 86
            Height = 13
            Caption = 'Tlp Darurat/Nama'
          end
          object Label8: TLabel
            Left = 231
            Top = 130
            Width = 38
            Height = 13
            Caption = 'No.KTP'
          end
          object Label10: TLabel
            Left = 11
            Top = 224
            Width = 50
            Height = 13
            Caption = 'No.NPWP'
          end
          object Label11: TLabel
            Left = 11
            Top = 248
            Width = 60
            Height = 13
            Caption = 'No.BPJS TK'
          end
          object Label12: TLabel
            Left = 11
            Top = 272
            Width = 60
            Height = 13
            Caption = 'No.BPJS KS'
          end
          object Label13: TLabel
            Left = 11
            Top = 296
            Width = 63
            Height = 13
            Caption = 'No.Rekening'
          end
          object Label14: TLabel
            Left = 11
            Top = 320
            Width = 58
            Height = 13
            Caption = 'Departemen'
          end
          object Label15: TLabel
            Left = 11
            Top = 340
            Width = 38
            Height = 13
            Caption = 'Jabatan'
          end
          object Label16: TLabel
            Left = 11
            Top = 364
            Width = 80
            Height = 13
            Caption = 'Status Karyawan'
          end
          object Label9: TLabel
            Left = 11
            Top = 129
            Width = 35
            Height = 13
            Caption = 'Gender'
          end
          object Label17: TLabel
            Left = 11
            Top = 201
            Width = 30
            Height = 13
            Caption = 'Status'
          end
          object Label18: TLabel
            Left = 231
            Top = 201
            Width = 33
            Height = 13
            Caption = 'Agama'
          end
          object cxChkAktif: TcxCheckBox
            Left = 255
            Top = 12
            Caption = 'Aktif'
            TabOrder = 0
            Width = 66
          end
          object cxTextEdit1: TcxTextEdit
            Left = 112
            Top = 8
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 137
          end
          object cxTextEdit2: TcxTextEdit
            Left = 112
            Top = 32
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 329
          end
          object cxTextEdit3: TcxTextEdit
            Left = 112
            Top = 56
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 129
          end
          object cxdTglLahir: TcxDateEdit
            Left = 248
            Top = 57
            TabOrder = 4
            Width = 121
          end
          object cxTextEdit4: TcxTextEdit
            Left = 112
            Top = 78
            Properties.CharCase = ecUpperCase
            TabOrder = 5
            Width = 329
          end
          object cxTextEdit5: TcxTextEdit
            Left = 112
            Top = 102
            Properties.CharCase = ecUpperCase
            TabOrder = 6
            Width = 329
          end
          object cxTextEdit6: TcxTextEdit
            Left = 112
            Top = 151
            Properties.CharCase = ecUpperCase
            TabOrder = 7
            Width = 169
          end
          object cxComboBox1: TcxComboBox
            Left = 113
            Top = 126
            Properties.Items.Strings = (
              'LAKI-LAKI'
              'PEREMPUAN')
            TabOrder = 8
            Width = 113
          end
          object cxTextEdit8: TcxTextEdit
            Left = 283
            Top = 173
            Properties.CharCase = ecUpperCase
            TabOrder = 9
            Width = 161
          end
          object cxTextEdit7: TcxTextEdit
            Left = 112
            Top = 173
            Properties.CharCase = ecUpperCase
            TabOrder = 10
            Width = 169
          end
          object cxTextEdit9: TcxTextEdit
            Left = 272
            Top = 127
            Properties.CharCase = ecUpperCase
            TabOrder = 11
            Width = 169
          end
          object cxTextEdit10: TcxTextEdit
            Left = 112
            Top = 221
            Properties.CharCase = ecUpperCase
            TabOrder = 12
            Width = 169
          end
          object cxTextEdit11: TcxTextEdit
            Left = 112
            Top = 245
            Properties.CharCase = ecUpperCase
            TabOrder = 13
            Width = 169
          end
          object cxComboBox2: TcxComboBox
            Left = 112
            Top = 337
            Properties.Items.Strings = (
              'TETAP'
              'PERCOBAAN'
              'HL'
              'OUTSOURCHING'
              'KONTRAK')
            TabOrder = 14
            Width = 121
          end
          object cblDepartemen: TcxLookupComboBox
            Left = 112
            Top = 317
            Properties.KeyFieldNames = 'deskripsi'
            Properties.ListColumns = <
              item
                FieldName = 'deskripsi'
              end>
            Properties.ListSource = dsDepartemen
            TabOrder = 15
            Width = 169
          end
          object cxTextEdit15: TcxTextEdit
            Left = 112
            Top = 361
            Properties.CharCase = ecUpperCase
            TabOrder = 16
            Width = 169
          end
          object cxTextEdit13: TcxTextEdit
            Left = 112
            Top = 293
            Properties.CharCase = ecUpperCase
            TabOrder = 17
            Width = 169
          end
          object cxTextEdit12: TcxTextEdit
            Left = 112
            Top = 269
            Properties.CharCase = ecUpperCase
            TabOrder = 18
            Width = 169
          end
          object cxComboBox3: TcxComboBox
            Left = 113
            Top = 196
            Properties.Items.Strings = (
              'TK'
              'K0'
              'K1'
              'K2'
              'K3')
            TabOrder = 19
            Width = 113
          end
          object cxComboBox4: TcxComboBox
            Left = 268
            Top = 196
            Properties.Items.Strings = (
              'ISLAM'
              'KRISTEN'
              'KATOLIK'
              'HINDU'
              'BUDHA'
              'LAINNYA')
            TabOrder = 20
            Width = 113
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Data Keluarga'
          ImageIndex = 1
          object cxGrid2: TcxGrid
            Left = 0
            Top = 8
            Width = 585
            Height = 369
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxTblKeluarga: TcxGridTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              NavigatorButtons.Append.Visible = True
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,###'
                  Kind = skSum
                  DisplayText = 'Total'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              object cxColNo: TcxGridColumn
                Caption = 'No.'
                DataBinding.ValueType = 'Integer'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.MaxValue = 100.000000000000000000
                Properties.MinValue = 1.000000000000000000
                Properties.UseCtrlIncrement = True
                OnGetDisplayText = cxColNoGetDisplayText
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 51
              end
              object cxColNama: TcxGridColumn
                Caption = 'Nama'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                HeaderAlignmentHorz = taCenter
                Width = 221
              end
              object cxColStatus: TcxGridColumn
                Caption = 'Status'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'SUAMI'
                  'ISTRI'
                  'ANAK'
                  'AYAH'
                  'IBU'
                  'ADIK'
                  'KAKAK'
                  'LAINNYA')
                HeaderAlignmentHorz = taCenter
                Width = 117
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxTblKeluarga
            end
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'History Jabatan'
          ImageIndex = 2
          object cxGrid3: TcxGrid
            Left = 0
            Top = 8
            Width = 585
            Height = 369
            TabOrder = 0
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxTblJabatan: TcxGridTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              NavigatorButtons.Append.Visible = True
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,###'
                  Kind = skSum
                  DisplayText = 'Total'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              object cxColNoSurat: TcxGridColumn
                Caption = 'No.SK'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 120
              end
              object cxColTglSK: TcxGridColumn
                Caption = 'Tgl.SK'
                DataBinding.ValueType = 'DateTime'
                PropertiesClassName = 'TcxDateEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 102
              end
              object cxColDepartement: TcxGridColumn
                Caption = 'Departement'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'deskripsi'
                Properties.ListColumns = <
                  item
                    FieldName = 'deskripsi'
                  end>
                Properties.ListSource = dsDepartemen
                HeaderAlignmentHorz = taCenter
                Width = 115
              end
              object cxColJabatan: TcxGridColumn
                Caption = 'Jabatan'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                HeaderAlignmentHorz = taCenter
                Width = 90
              end
              object cxColStatusJbt: TcxGridColumn
                Caption = 'Status'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.Items.Strings = (
                  'HL'
                  'OUTSOURCHING'
                  'KONTRAK'
                  'PERCOBAAN'
                  'TETAP')
                HeaderAlignmentHorz = taCenter
                Width = 108
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxTblJabatan
            end
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'History Training'
          ImageIndex = 3
          object cxGrid4: TcxGrid
            Left = 0
            Top = 8
            Width = 585
            Height = 369
            TabOrder = 0
            object cxGridDBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxTblTraining: TcxGridTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              NavigatorButtons.Append.Visible = True
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,###'
                  Kind = skSum
                  DisplayText = 'Total'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              object cxColJenis: TcxGridColumn
                Caption = 'Jenis'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'INTERNAL'
                  'EXTERNAL')
                HeaderAlignmentHorz = taCenter
                Width = 120
              end
              object cxColTglTraining: TcxGridColumn
                Caption = 'Tgl.Training'
                DataBinding.ValueType = 'DateTime'
                PropertiesClassName = 'TcxDateEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 102
              end
              object cxColModul: TcxGridColumn
                Caption = 'Modul Training'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                HeaderAlignmentHorz = taCenter
                Width = 249
              end
              object cxColTrainer: TcxGridColumn
                Caption = 'Trainer'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                HeaderAlignmentHorz = taCenter
                Width = 90
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxTblTraining
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 529
    Width = 1011
    Height = 56
    inherited btnKeluar: TButton
      Left = 916
      Top = 17
    end
    inherited btnBaru: TButton
      Left = 11
      Top = 17
      Caption = '&Tambah'
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 534
    end
    inherited btnHapus: TButton
      Left = 257
      Top = 17
    end
    inherited btnBatal: TButton
      Left = 618
      Top = 13
    end
    inherited btnSimpan: TButton
      Left = 95
      Top = 17
    end
    object Button1: TButton
      Left = 176
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object dsKaryawan: TDataSource
    DataSet = zqrKaryawan
    Left = 408
    Top = 12
  end
  object zqrKaryawan: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nip,nama,departemen,status'
      'FROM tbl_karyawan_ktg WHERE f_aktif=1 order by nama')
    Params = <>
    Left = 370
    Top = 9
  end
  object dsDepartemen: TDataSource
    DataSet = zDepartemen
    Left = 488
    Top = 12
  end
  object zDepartemen: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_departement')
    Params = <>
    Left = 456
    Top = 8
  end
end
