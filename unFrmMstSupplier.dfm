inherited frmMstSupplier: TfrmMstSupplier
  Left = 387
  Top = 155
  Caption = 'Master Supplier'
  ClientHeight = 596
  ClientWidth = 923
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 923
    inherited lblJudul: TLabel
      Width = 128
      Caption = 'Master Supplier'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 923
    Height = 455
    inherited pg: TPageControl
      Width = 921
      Height = 453
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
          Top = 44
          Caption = 'Nama'
          Transparent = True
        end
        object cxtNama: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 42
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 336
        end
        object chkAktif: TcxCheckBox
          Left = 213
          Top = 15
          Caption = 'Aktif'
          TabOrder = 1
          Transparent = True
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 69
          Caption = 'Kontak'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 10
          Top = 94
          Caption = 'Alamat'
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 144
          Caption = 'Kota'
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 219
          Caption = 'Telpon'
          Transparent = True
        end
        object cxtKode: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 15
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 121
        end
        object cxtKontak: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 67
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 336
        end
        object cxtAlamat: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 92
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 407
        end
        object cxtKota: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 142
          Properties.CharCase = ecUpperCase
          TabOrder = 10
          Width = 227
        end
        object cxtTelpon: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 217
          Properties.CharCase = ecUpperCase
          TabOrder = 16
          Width = 227
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 244
          Caption = 'Fax'
          Transparent = True
        end
        object cxtFax: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 242
          Properties.CharCase = ecUpperCase
          TabOrder = 18
          Width = 227
        end
        object cxLabel9: TcxLabel
          Left = 10
          Top = 269
          Caption = 'HP'
          Transparent = True
        end
        object cxtHP: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 267
          Properties.CharCase = ecUpperCase
          TabOrder = 20
          Width = 227
        end
        object cxLabel10: TcxLabel
          Left = 10
          Top = 294
          Caption = 'Email'
          Transparent = True
        end
        object cxtEmail: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 292
          Properties.CharCase = ecLowerCase
          TabOrder = 22
          Width = 336
        end
        object cxtAlamat2: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 117
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 407
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 169
          Caption = 'Provinsi'
          Transparent = True
        end
        object cxtProvinsi: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 167
          Properties.CharCase = ecUpperCase
          TabOrder = 12
          Width = 227
        end
        object cxLabel11: TcxLabel
          Left = 10
          Top = 194
          Caption = 'Negara'
          Transparent = True
        end
        object cxtNegara: TcxTextEdit
          Tag = 1
          Left = 89
          Top = 192
          Properties.CharCase = ecUpperCase
          TabOrder = 14
          Width = 227
        end
        object cxLabel13: TcxLabel
          Left = 10
          Top = 319
          Caption = 'Pembayaran'
          Transparent = True
        end
        object cxCmbPembayaran: TcxComboBox
          Left = 89
          Top = 317
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 25
          Width = 219
        end
        object cxLabel14: TcxLabel
          Left = 10
          Top = 344
          Caption = 'Akun Hutang'
          Transparent = True
        end
        object cxlAkun: TcxLookupComboBox
          Left = 89
          Top = 342
          Properties.KeyFieldNames = 'noakun'
          Properties.ListColumns = <
            item
              Caption = 'Nama Akun'
              FieldName = 'nama'
            end
            item
              Caption = 'No. Akun'
              FieldName = 'noakun'
            end>
          Properties.ListSource = dsCoa
          Properties.OnChange = cxlAkunPropertiesChange
          TabOrder = 27
          Width = 281
        end
        object cxtNoAkun: TcxTextEdit
          Left = 374
          Top = 342
          Properties.ReadOnly = True
          TabOrder = 28
          Width = 121
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited Label1: TLabel
          Top = 332
        end
        inherited cxGrd: TcxGrid
          Width = 820
          Height = 316
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            FilterRow.Visible = True
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
              Options.Editing = False
              Width = 435
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Master Barang'
        ImageIndex = 2
        object cxGrdBrg: TcxGrid
          Left = 5
          Top = 40
          Width = 900
          Height = 180
          TabOrder = 0
          object cxTblBrg: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsBrg
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            object cxTblBrgkode: TcxGridDBColumn
              Caption = 'Kode Brg.'
              DataBinding.FieldName = 'kode'
              Options.Editing = False
            end
            object cxTblBrgdeskripsi: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Options.Editing = False
              Width = 328
            end
            object cxTblBrgstok: TcxGridDBColumn
              Caption = 'Stok'
              DataBinding.FieldName = 'stok'
              Options.Editing = False
              Width = 55
            end
            object cxTblBrgsatuan: TcxGridDBColumn
              Caption = 'Satuan'
              DataBinding.FieldName = 'satuan'
              Options.Editing = False
              Width = 80
            end
            object cxTblBrgtipe: TcxGridDBColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'tipe'
              Options.Editing = False
              Width = 141
            end
            object cxTblBrgkategori: TcxGridDBColumn
              Caption = 'Kategori'
              DataBinding.FieldName = 'kategori'
              Options.Editing = False
              Width = 167
            end
            object cxTblBrgsubkategori: TcxGridDBColumn
              Caption = 'Subkategori'
              DataBinding.FieldName = 'subkategori'
              Options.Editing = False
              Width = 193
            end
          end
          object cxGrdBrgLevel1: TcxGridLevel
            GridView = cxTblBrg
          end
        end
        object btnTmbhDet: TButton
          Left = 4
          Top = 225
          Width = 75
          Height = 25
          Caption = 'Tambah'
          TabOrder = 1
          OnClick = btnTmbhDetClick
        end
        object nxGrdBrgSupp: TNextGrid
          Left = 4
          Top = 256
          Width = 900
          Height = 137
          Options = [goGrid, goHeader]
          TabOrder = 2
          TabStop = True
          OnCellDblClick = nxGrdBrgSuppCellDblClick
          object nxColHapus: TNxImageColumn
            Alignment = taCenter
            DefaultValue = '0'
            DefaultWidth = 52
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Hapus'
            Header.Alignment = taCenter
            ParentFont = False
            Position = 0
            SortType = stNumeric
            Width = 52
            Images = frmUtama.ImageList1
          end
          object nxColNoUrut: TNxIncrementColumn
            DefaultWidth = 31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'No.'
            ParentFont = False
            Position = 1
            SortType = stAlphabetic
            Width = 31
          end
          object nxColKode: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Kode'
            ParentFont = False
            Position = 2
            SortType = stAlphabetic
          end
          object nxColDesk: TNxTextColumn
            DefaultWidth = 350
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Deskripsi'
            ParentFont = False
            Position = 3
            SortType = stAlphabetic
            Width = 350
          end
          object nxColSat: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Satuan'
            ParentFont = False
            Position = 4
            SortType = stAlphabetic
          end
          object nxColHarga: TNxNumberColumn
            Alignment = taLeftJustify
            DefaultValue = '0'
            DefaultWidth = 110
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Harga'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 5
            SortType = stNumeric
            Width = 110
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
        end
        object Button2: TButton
          Left = 4
          Top = 396
          Width = 75
          Height = 25
          Caption = '&Simpan'
          TabOrder = 3
          OnClick = Button2Click
        end
        object cxtNama2: TcxTextEdit
          Left = 52
          Top = 10
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 449
        end
        object cxLabel12: TcxLabel
          Left = 5
          Top = 12
          Caption = 'Supplier'
          Style.TransparentBorder = False
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Bank Info'
        ImageIndex = 3
        DesignSize = (
          913
          425)
        object cxGrid9: TcxGrid
          Left = 15
          Top = 19
          Width = 791
          Height = 181
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          object cxTblBank: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cxColBank: TcxGridColumn
              Caption = 'Nama Bank'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'Bank Central Asia (BCA)'
                'Bank Mandiri'
                'Bank Rakyat Indonesia (BRI)'
                'Bank Negara Indonesia (BNI)'
                'Bank CIMB Niaga'
                'Bank Permata'
                'Bank Panin'
                'Bank Internasional Indonesia (BII)'
                'Bank Tabungan Negara (BTN)'
                'Bank Jatim')
              Width = 206
            end
            object cxColAccount: TcxGridColumn
              Caption = 'No.Rekening'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 155
            end
            object cxColNama: TcxGridColumn
              Caption = 'Atas Nama'
              Width = 245
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxTblBank
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 521
    Width = 923
    inherited btnKeluar: TButton
      TabOrder = 5
    end
    inherited btnTambah: TButton
      TabOrder = 0
    end
    inherited btnEdit: TButton
      TabOrder = 1
    end
    inherited btnHapus: TButton
      TabOrder = 2
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      TabOrder = 3
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,nama FROM tbl_supplier ORDER BY nama'
      '')
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 523
    Top = 20
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_barang ORDER BY deskripsi')
    Params = <>
    Left = 493
    Top = 19
  end
  object zqrCoa: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.noakun, a.nama FROM tbl_coa a WHERE f_aktif = 1'
      'AND (SELECT COUNT(*) FROM tbl_coa WHERE induk = a.noakun) = 0 '
      'ORDER BY a.noakun')
    Params = <>
    Left = 570
    Top = 25
  end
  object dsCoa: TDataSource
    DataSet = zqrCoa
    Left = 600
    Top = 25
  end
end
