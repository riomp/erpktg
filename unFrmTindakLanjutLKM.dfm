object frmTindakLanjutLKM: TfrmTindakLanjutLKM
  Left = 196
  Top = 16
  Width = 948
  Height = 647
  Caption = 'Tindak Lanjut LKM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 51
    Align = alTop
    TabOrder = 0
    object lblJudul: TLabel
      Left = 15
      Top = 15
      Width = 152
      Height = 19
      Caption = 'Tindak Lanjut LKM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 51
    Width = 932
    Height = 480
    Align = alTop
    TabOrder = 1
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 930
      Height = 478
      VertScrollBar.Position = 115
      Align = alClient
      TabOrder = 0
      object cxLabel4: TcxLabel
        Left = 8
        Top = 157
        Caption = 'PIC '
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 8
        Top = 182
        Caption = 'Departemen'
        Transparent = True
      end
      object cxLabel6: TcxLabel
        Left = 8
        Top = 207
        AutoSize = False
        Caption = 'Deskripsi Ketidaksesuaian && Tindak Lanjut Ketidaksesuaian'
        Properties.WordWrap = True
        Transparent = True
        Height = 60
        Width = 108
      end
      object cxLabel9: TcxLabel
        Left = 8
        Top = 377
        Caption = 'Dibuat Oleh'
        Transparent = True
      end
      object cxtDibuatOleh: TcxTextEdit
        Tag = 1
        Left = 101
        Top = 375
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 17
        Width = 98
      end
      object cxLabel11: TcxLabel
        Left = 8
        Top = -43
        Caption = 'No. SPK / No. SO'
        Transparent = True
      end
      object cxtNoSPK: TcxTextEdit
        Tag = 1
        Left = 101
        Top = -45
        Style.Color = clMoneyGreen
        TabOrder = 19
        Width = 98
      end
      object cxLabel12: TcxLabel
        Left = 8
        Top = 402
        Caption = 'Tgl. Input / Jam'
        Transparent = True
      end
      object cxtTglInput: TcxTextEdit
        Tag = 1
        Left = 101
        Top = 400
        Style.Color = clMoneyGreen
        TabOrder = 21
        Width = 98
      end
      object cxLabel13: TcxLabel
        Left = 8
        Top = 427
        Caption = 'User Input'
        Transparent = True
      end
      object cxtJamInput: TcxTextEdit
        Tag = 1
        Left = 202
        Top = 400
        Style.Color = clMoneyGreen
        TabOrder = 22
        Width = 69
      end
      object cxtUserInput: TcxTextEdit
        Tag = 1
        Left = 101
        Top = 425
        Style.Color = clMoneyGreen
        TabOrder = 25
        Width = 98
      end
      object cxLabel14: TcxLabel
        Left = 9
        Top = -18
        Caption = 'Kode Barang'
        Transparent = True
      end
      object cxtKodeBrg: TcxTextEdit
        Tag = 1
        Left = 102
        Top = -20
        Style.Color = clMoneyGreen
        TabOrder = 26
        Width = 98
      end
      object cxtDeskripsi: TcxTextEdit
        Left = 203
        Top = -20
        Style.Color = clMoneyGreen
        TabOrder = 28
        Width = 514
      end
      object cxLabel15: TcxLabel
        Left = 9
        Top = 7
        Caption = 'Qty / Satuan'
        Transparent = True
      end
      object cxtSatuan: TcxTextEdit
        Tag = 1
        Left = 203
        Top = 5
        Style.Color = clMoneyGreen
        TabOrder = 44
        Width = 98
      end
      object cxmDeskKS: TcxMemo
        Left = 101
        Top = 205
        Properties.CharCase = ecUpperCase
        Style.Color = clMoneyGreen
        TabOrder = 13
        Height = 69
        Width = 503
      end
      object cxsQty: TcxSpinEdit
        Tag = 1
        Left = 102
        Top = 5
        Style.Color = clMoneyGreen
        TabOrder = 29
        Width = 98
      end
      object cxLabel8: TcxLabel
        Left = 8
        Top = 352
        Caption = 'Status'
        Transparent = True
      end
      object cxtStatus: TcxTextEdit
        Tag = 1
        Left = 101
        Top = 350
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 15
        Width = 98
      end
      object cxLabel16: TcxLabel
        Left = 8
        Top = 32
        Caption = 'Supplier'
        Transparent = True
      end
      object cxLabel17: TcxLabel
        Left = 8
        Top = 57
        Caption = 'Customer'
        Transparent = True
      end
      object cxLabel18: TcxLabel
        Left = 8
        Top = 82
        Caption = 'Shift'
        Transparent = True
      end
      object cxtShift: TcxTextEdit
        Tag = 1
        Left = 101
        Top = 80
        Properties.CharCase = ecUpperCase
        Style.Color = clMoneyGreen
        TabOrder = 2
        Width = 115
      end
      object cxtNoMesin: TcxTextEdit
        Tag = 1
        Left = 280
        Top = 80
        Properties.CharCase = ecUpperCase
        Style.Color = clMoneyGreen
        TabOrder = 3
        Width = 115
      end
      object cxLabel19: TcxLabel
        Left = 8
        Top = 107
        Caption = 'Kode Produksi'
        Transparent = True
      end
      object cxtKodeProduksi: TcxTextEdit
        Tag = 1
        Left = 101
        Top = 105
        Properties.CharCase = ecUpperCase
        Style.Color = clMoneyGreen
        TabOrder = 4
        Width = 145
      end
      object cxLabel20: TcxLabel
        Left = 253
        Top = 107
        Caption = 'No. Tag Produksi'
      end
      object cxtTagProduksi: TcxTextEdit
        Tag = 1
        Left = 346
        Top = 105
        Properties.CharCase = ecUpperCase
        Style.Color = clMoneyGreen
        TabOrder = 5
        Width = 145
      end
      object cxLabel10: TcxLabel
        Left = 8
        Top = 132
        Caption = 'Alokasi Barang'
        Transparent = True
      end
      object cxtAlokasiBarang: TcxTextEdit
        Tag = 1
        Left = 101
        Top = 130
        Properties.CharCase = ecUpperCase
        Style.Color = clMoneyGreen
        TabOrder = 6
        Width = 145
      end
      object cxLabel21: TcxLabel
        Left = 253
        Top = 132
        Caption = 'Jenis Ketidaksesuaian'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 8
        Top = -68
        Caption = 'No. LKM '
        Transparent = True
      end
      object cxtNoLKM: TcxTextEdit
        Tag = 1
        Left = 101
        Top = -70
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 0
        Width = 174
      end
      object cxLabel7: TcxLabel
        Left = 283
        Top = -68
        Caption = 'Tanggal'
      end
      object cxdTglLKM: TcxDateEdit
        Left = 332
        Top = -70
        Style.Color = clMoneyGreen
        TabOrder = 1
        Width = 121
      end
      object cxLabel22: TcxLabel
        Left = 7
        Top = 279
        AutoSize = False
        Caption = 'Akar Masalah'
        Properties.WordWrap = True
        Transparent = True
        Height = 60
        Width = 108
      end
      object cxmAkarMasalah: TcxMemo
        Left = 100
        Top = 277
        Lines.Strings = (
          '')
        Properties.CharCase = ecUpperCase
        TabOrder = 14
        Height = 69
        Width = 503
      end
      object cxLabel23: TcxLabel
        Left = 223
        Top = 82
        Caption = 'No. Mesin'
      end
      object cxCmbJenis: TcxComboBox
        Left = 370
        Top = 130
        Properties.DropDownListStyle = lsEditFixedList
        Style.Color = clMoneyGreen
        TabOrder = 7
        Width = 426
      end
      object cxtJenisLainnya: TcxTextEdit
        Left = 370
        Top = 155
        Style.Color = clMoneyGreen
        TabOrder = 11
        Width = 426
      end
      object cxLabel24: TcxLabel
        Left = 607
        Top = 277
        AutoSize = False
        Caption = '( Diisi oleh Departemen Terkait )'
        Style.TextColor = clBlue
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 214
      end
      object cxLabel26: TcxLabel
        Left = 607
        Top = 210
        AutoSize = False
        Caption = '( Diisi oleh min staff QA )'
        Style.TextColor = clBlue
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 214
      end
      object Panel1: TPanel
        Left = 300
        Top = 363
        Width = 131
        Height = 111
        BevelOuter = bvNone
        TabOrder = 23
      end
      object cxChkAppLKM: TcxCheckBox
        Left = 99
        Top = -102
        Caption = 'Approval'
        TabOrder = 45
        Width = 172
      end
      object cxlUser: TcxLookupComboBox
        Left = 101
        Top = 155
        Properties.KeyFieldNames = 'nama'
        Properties.ListColumns = <
          item
            Caption = 'Nama'
            FieldName = 'nama'
          end
          item
            Caption = 'Dept'
            FieldName = 'user_dept'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsUser
        Style.Color = clMoneyGreen
        TabOrder = 46
        Width = 200
      end
      object cxtDept: TcxTextEdit
        Tag = 1
        Left = 101
        Top = 180
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 47
        Width = 115
      end
      object cxtNoSO: TcxTextEdit
        Tag = 1
        Left = 203
        Top = -45
        Style.Color = clMoneyGreen
        TabOrder = 48
        Width = 98
      end
      object cxtSupplier: TcxTextEdit
        Tag = 1
        Left = 102
        Top = 30
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 49
        Width = 384
      end
      object cxtCustomer: TcxTextEdit
        Tag = 1
        Left = 102
        Top = 55
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 50
        Width = 384
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 531
    Width = 932
    Height = 76
    Align = alTop
    TabOrder = 2
    object btnKeluar: TButton
      Left = 407
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 3
      Visible = False
    end
    object btnBaru: TButton
      Left = 555
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Baru'
      TabOrder = 5
      Visible = False
    end
    object btnEdit: TButton
      Left = 630
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Edit'
      TabOrder = 6
      Visible = False
    end
    object btnHapus: TButton
      Left = 705
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Hapus'
      TabOrder = 7
      Visible = False
    end
    object btnBatal: TButton
      Left = 485
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 4
      Visible = False
    end
    object btnSimpan: TButton
      Left = 330
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 2
      Visible = False
    end
    object btnSimpanLKM: TButton
      Left = 14
      Top = 21
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 0
    end
    object btnKeluarLKM: TButton
      Left = 94
      Top = 21
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 1
    end
  end
  object zqrSupp: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_supplier WHERE f_aktif = 1 '
      'ORDER BY nama')
    Params = <>
    Left = 736
    Top = 77
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_customer WHERE f_aktif = 1 '
      'ORDER BY nama')
    Params = <>
    Left = 736
    Top = 107
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 766
    Top = 77
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 766
    Top = 107
  end
  object zqrBagian: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT bagian FROM tbl_bagian ORDER BY bagian')
    Params = <>
    Left = 746
    Top = 137
  end
  object dsBagian: TDataSource
    DataSet = zqrBagian
    Left = 776
    Top = 137
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 670
    Top = 100
  end
  object zqrUser: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    Active = True
    SQL.Strings = (
      'SELECT nama, user_dept, email FROM tbl_user ORDER BY nama')
    Params = <>
    Left = 746
    Top = 167
  end
  object dsUser: TDataSource
    DataSet = zqrUser
    Left = 776
    Top = 167
  end
end
