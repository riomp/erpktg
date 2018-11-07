inherited frmMstCustNew: TfrmMstCustNew
  Left = 252
  Top = 45
  Caption = 'Master Customer'
  ClientHeight = 507
  ClientWidth = 786
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 786
    inherited lblJudul: TLabel
      Width = 139
      Caption = 'Master Customer'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 786
    Height = 401
    inherited pg: TPageControl
      Width = 784
      Height = 399
      inherited TabSheet1: TTabSheet
        Caption = 'Input'
        object cxLabel1: TcxLabel
          Left = 10
          Top = 17
          Caption = 'Kode'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 69
          Caption = 'Kontak '
          Transparent = True
        end
        object cxtKontak: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 67
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 236
        end
        object chkAktif: TcxCheckBox
          Left = 308
          Top = 17
          Caption = 'Aktif'
          TabOrder = 16
          Transparent = True
          Width = 121
        end
        object cxtNama: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 42
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 336
        end
        object cxLabel10: TcxLabel
          Left = 11
          Top = 44
          Caption = 'Nama'
          Transparent = True
        end
        object cxtKode: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 16
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 216
        end
        object cxLabel2: TcxLabel
          Left = 10
          Top = 94
          Caption = 'Alamat'
          Transparent = True
        end
        object cxtAlamat: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 92
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 481
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 144
          Caption = 'Kota'
          Transparent = True
        end
        object cxtKota: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 142
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 481
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 169
          Caption = 'Provinsi'
          Transparent = True
        end
        object cxtProvinsi: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 167
          Properties.CharCase = ecUpperCase
          TabOrder = 6
          Width = 481
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 194
          Caption = 'Negara'
          Transparent = True
        end
        object cxtNegara: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 192
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 481
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 219
          Caption = 'Telpon / Fax'
          Transparent = True
        end
        object cxtTelp: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 217
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 176
        end
        object cxLabel9: TcxLabel
          Left = 10
          Top = 244
          Caption = 'HP'
          Transparent = True
        end
        object cxtHP: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 242
          Properties.CharCase = ecUpperCase
          TabOrder = 10
          Width = 236
        end
        object cxtFax: TcxTextEdit
          Tag = 1
          Left = 270
          Top = 217
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 176
        end
        object cxtUserWeb: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 318
          Properties.ReadOnly = True
          TabOrder = 12
          Width = 236
        end
        object cxLabel11: TcxLabel
          Left = 10
          Top = 320
          Caption = 'User Web'
          Transparent = True
        end
        object cxtPassword: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 343
          Properties.ReadOnly = True
          TabOrder = 13
          Width = 236
        end
        object cxLabel12: TcxLabel
          Left = 10
          Top = 345
          Caption = 'Password'
          Transparent = True
        end
        object cxtEmail: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 267
          Properties.CharCase = ecLowerCase
          TabOrder = 11
          Width = 341
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 269
          Caption = 'Email'
          Transparent = True
        end
        object cxtAlamat2: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 117
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 481
        end
        object btnGenerate: TButton
          Left = 330
          Top = 318
          Width = 75
          Height = 21
          Caption = 'Generate'
          TabOrder = 27
          OnClick = btnGenerateClick
        end
        object cxLabel13: TcxLabel
          Left = 10
          Top = 296
          Caption = 'Kel. Customer'
          Transparent = True
        end
        object cxCmbKelHrg: TcxComboBox
          Left = 90
          Top = 293
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 29
          Width = 121
        end
        object cxLabel14: TcxLabel
          Left = 495
          Top = 47
          Caption = 'Jenis Cust.'
          Transparent = True
          Visible = False
        end
        object cxTextEdit1: TcxTextEdit
          Tag = 1
          Left = 575
          Top = 46
          Properties.CharCase = ecUpperCase
          TabOrder = 31
          Visible = False
          Width = 216
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited Label1: TLabel
          Top = 331
        end
        inherited cxGrd: TcxGrid
          Width = 763
          Height = 314
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsView.GroupByBox = False
            object cxTblViewkode: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kode'
              Options.Editing = False
              Width = 102
            end
            object cxTblViewnama: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'nama'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Options.Editing = False
              Width = 253
            end
            object cxTblViewsatuan: TcxGridDBColumn
              Caption = 'Alamat'
              DataBinding.FieldName = 'alamat'
              Options.Editing = False
              Width = 310
            end
            object cxTblViewColumn1: TcxGridDBColumn
              Caption = 'Aktif'
              DataBinding.FieldName = 'f_aktif'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 467
    Width = 786
    Height = 41
    inherited btnKeluar: TButton
      Top = 7
    end
    inherited btnTambah: TButton
      Top = 7
    end
    inherited btnEdit: TButton
      Top = 7
    end
    inherited btnHapus: TButton
      Top = 7
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Top = 7
    end
    inherited btnSimpan: TButton
      Top = 7
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT nama, kode, alamat, f_aktif FROM tbl_customer')
  end
  object zqTipe: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_tipe_brg ORDER BY tipe')
    Params = <>
    Left = 505
    Top = 25
  end
  object dsTipe: TDataSource
    DataSet = zqTipe
    Left = 535
    Top = 25
  end
  object zqKategori: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_kategori_brg ORDER BY kategori')
    Params = <>
    Left = 505
    Top = 55
  end
  object dsKategori: TDataSource
    DataSet = zqKategori
    Left = 535
    Top = 55
  end
  object zqskategori: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_subkategori_brg ORDER BY subkategori')
    Params = <>
    Left = 565
    Top = 25
  end
  object dsSKategori: TDataSource
    DataSet = zqskategori
    Left = 595
    Top = 25
  end
  object zqSatuan: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_satuan ORDER BY satuan')
    Params = <>
    Left = 565
    Top = 55
  end
  object dsSatuan: TDataSource
    DataSet = zqSatuan
    Left = 595
    Top = 55
  end
end
