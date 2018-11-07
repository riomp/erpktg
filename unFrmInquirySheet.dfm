inherited frmInquirySheet: TfrmInquirySheet
  Left = 268
  Top = 24
  Width = 831
  Height = 625
  VertScrollBar.Visible = False
  Caption = 'Inquiry Sheet'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 815
    inherited lblJudul: TLabel
      Width = 110
      Caption = 'Inquiry Sheet'
    end
    object cxlCari: TcxLookupComboBox
      Left = 543
      Top = 20
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_is'
      Properties.ListColumns = <
        item
          Caption = 'No. IS'
          FieldName = 'no_is'
        end
        item
          Caption = 'Nama Produk'
          FieldName = 'nama_produk'
        end
        item
          Caption = 'Tgl. Issue'
          FieldName = 'tgl_issue'
        end
        item
          Caption = 'Nama Customer'
          FieldName = 'nama_customer'
        end>
      Properties.ListSource = dsCari
      TabOrder = 0
      Width = 251
    end
    object btnEdit2: TButton
      Left = 463
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 1
      OnClick = btnEdit2Click
    end
  end
  inherited pnlTengah: TPanel
    Width = 815
    Height = 445
    object frxScrollBox1: TfrxScrollBox
      Left = 1
      Top = 1
      Width = 813
      Height = 443
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      object cxLabel1: TcxLabel
        Left = 15
        Top = 10
        Caption = 'No. IS'
      end
      object cxtNoIS: TcxTextEdit
        Tag = 11
        Left = 109
        Top = 7
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        Width = 217
      end
      object cxLabel2: TcxLabel
        Left = 15
        Top = 36
        Caption = 'Tgl. Issue'
      end
      object cxdTgl: TcxDateEdit
        Tag = 11
        Left = 109
        Top = 33
        TabOrder = 2
        Width = 121
      end
      object cxLabel3: TcxLabel
        Left = 15
        Top = 62
        Caption = 'Customer'
      end
      object cxLabel4: TcxLabel
        Left = 15
        Top = 88
        Caption = 'Qty. Order'
      end
      object cxsQtyOrder: TcxSpinEdit
        Tag = 11
        Left = 109
        Top = 85
        TabOrder = 6
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 15
        Top = 140
        Caption = 'Nama Produk'
      end
      object cxtNamaProduk: TcxTextEdit
        Tag = 11
        Left = 109
        Top = 137
        TabOrder = 9
        Width = 356
      end
      object cxLabel6: TcxLabel
        Left = 15
        Top = 166
        Caption = 'Fungsi'
      end
      object cxmFungsi: TcxMemo
        Tag = 11
        Left = 109
        Top = 163
        TabOrder = 11
        Height = 59
        Width = 356
      end
      object cxLabel7: TcxLabel
        Left = 15
        Top = 114
        Caption = 'Nama Sales'
      end
      object cxLabel8: TcxLabel
        Left = 15
        Top = 230
        Caption = 'Panjang (cm)'
      end
      object cxLabel9: TcxLabel
        Left = 15
        Top = 256
        Caption = 'Lebar (cm)'
      end
      object cxLabel10: TcxLabel
        Left = 15
        Top = 282
        Caption = 'Ketebalan (u)'
      end
      object cxLabel11: TcxLabel
        Left = 15
        Top = 308
        Caption = 'Warna Plastik'
      end
      object cxtWarnaPlastik: TcxTextEdit
        Tag = 11
        Left = 109
        Top = 305
        TabOrder = 19
        Width = 356
      end
      object cxLabel12: TcxLabel
        Left = 15
        Top = 334
        Caption = 'Dimensi Lain'
      end
      object cxmDimensiLain: TcxMemo
        Tag = 11
        Left = 109
        Top = 331
        TabOrder = 21
        Height = 59
        Width = 356
      end
      object cxLabel13: TcxLabel
        Left = 15
        Top = 398
        Caption = 'Base Material'
      end
      object Panel1: TPanel
        Left = 740
        Top = 735
        Width = 36
        Height = 161
        BevelOuter = bvNone
        TabOrder = 45
      end
      object cxLabel14: TcxLabel
        Left = 15
        Top = 424
        Caption = 'Cetak / Print'
      end
      object cxLabel15: TcxLabel
        Left = 15
        Top = 450
        Caption = 'Warna Cetak'
      end
      object cxtKeteranganWarna: TcxTextEdit
        Tag = 11
        Left = 235
        Top = 447
        TabOrder = 27
        Width = 356
      end
      object cxLabel16: TcxLabel
        Left = 15
        Top = 476
        Caption = 'Aksesoris'
      end
      object cxmAksesoris: TcxMemo
        Tag = 1
        Left = 109
        Top = 473
        TabOrder = 28
        Height = 59
        Width = 356
      end
      object cxlCustomer: TcxLookupComboBox
        Tag = 11
        Left = 109
        Top = 59
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'kode'
        Properties.ListColumns = <
          item
            Caption = 'Nama Customer'
            FieldName = 'nama'
          end
          item
            Caption = 'Kode'
            FieldName = 'kode'
          end>
        Properties.ListSource = dsCust
        TabOrder = 4
        Width = 382
      end
      object cxsPanjang: TcxSpinEdit
        Tag = 11
        Left = 109
        Top = 227
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 13
        Width = 121
      end
      object cxsLebar: TcxSpinEdit
        Tag = 11
        Left = 109
        Top = 253
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 15
        Width = 121
      end
      object cxsKetebalan: TcxSpinEdit
        Tag = 11
        Left = 109
        Top = 279
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 17
        Width = 121
      end
      object cxCmbBaseMaterial: TcxComboBox
        Tag = 11
        Left = 109
        Top = 395
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 23
        Width = 121
      end
      object cxCmbCetak: TcxComboBox
        Tag = 11
        Left = 109
        Top = 421
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 25
        Width = 121
      end
      object cxCmbWarna: TcxComboBox
        Tag = 11
        Left = 109
        Top = 447
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 26
        Width = 121
      end
      object cxLabel17: TcxLabel
        Left = 15
        Top = 540
        Caption = 'Packaging'
      end
      object cxmPackaging: TcxMemo
        Tag = 11
        Left = 109
        Top = 537
        TabOrder = 29
        Height = 59
        Width = 356
      end
      object cxLabel18: TcxLabel
        Left = 15
        Top = 603
        Caption = 'Customer Incoming Inspecton'
      end
      object cxtCIP1: TcxTextEdit
        Tag = 11
        Left = 109
        Top = 625
        TabOrder = 30
        Width = 277
      end
      object cxtCSpec1: TcxTextEdit
        Tag = 11
        Left = 389
        Top = 625
        TabOrder = 31
        Width = 277
      end
      object cxtCIP2: TcxTextEdit
        Tag = 11
        Left = 109
        Top = 650
        TabOrder = 32
        Width = 277
      end
      object cxtCSpec2: TcxTextEdit
        Tag = 11
        Left = 389
        Top = 650
        TabOrder = 33
        Width = 277
      end
      object cxtCIP3: TcxTextEdit
        Tag = 11
        Left = 109
        Top = 675
        TabOrder = 34
        Width = 277
      end
      object cxtCSpec3: TcxTextEdit
        Tag = 11
        Left = 389
        Top = 675
        TabOrder = 35
        Width = 277
      end
      object cxtCIP4: TcxTextEdit
        Tag = 11
        Left = 109
        Top = 700
        TabOrder = 36
        Width = 277
      end
      object cxtCSpec4: TcxTextEdit
        Tag = 11
        Left = 389
        Top = 700
        TabOrder = 37
        Width = 277
      end
      object cxLabel19: TcxLabel
        Left = 15
        Top = 728
        Caption = 'Req. Tambahan'
      end
      object cxCmbReqTambahan: TcxComboBox
        Tag = 11
        Left = 109
        Top = 725
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 38
        Width = 121
      end
      object cxLabel20: TcxLabel
        Left = 15
        Top = 753
        Caption = 'Konfirmasi'
      end
      object cxmKonfirmasiPengiriman: TcxMemo
        Tag = 11
        Left = 109
        Top = 750
        TabOrder = 46
        Height = 59
        Width = 356
      end
      object cxLabel21: TcxLabel
        Left = 15
        Top = 768
        Caption = 'Pengiriman'
      end
      object cxLabel22: TcxLabel
        Left = 15
        Top = 817
        Caption = 'Lain-lain'
      end
      object cxmLain2: TcxMemo
        Tag = 11
        Left = 109
        Top = 814
        TabOrder = 49
        Height = 59
        Width = 356
      end
      object cxlSales: TcxLookupComboBox
        Tag = 11
        Left = 109
        Top = 111
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'kode_sales'
        Properties.ListColumns = <
          item
            Caption = 'Nama Sales'
            FieldName = 'nama'
          end>
        Properties.ListSource = dsSales
        TabOrder = 51
        Width = 382
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 511
    Width = 815
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_customer '
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 330
    Top = 25
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 360
    Top = 25
  end
  object zqrCari: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_is, a.tgl_issue, a.nama_produk, b.nama  nama_custome' +
        'r'
      'FROM tbl_is a '
      'LEFT JOIN tbl_customer b ON a.kode_customer = b.kode'
      'ORDER BY tgl_issue')
    Params = <>
    Left = 390
    Top = 25
  end
  object dsCari: TDataSource
    DataSet = zqrCari
    Left = 420
    Top = 25
  end
  object zqrSales: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT kode_sales, nama FROM tbl_sales'
      'ORDER BY nama')
    Params = <>
    Left = 270
    Top = 25
  end
  object dsSales: TDataSource
    DataSet = zqrSales
    Left = 300
    Top = 25
  end
end
