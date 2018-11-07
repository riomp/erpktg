inherited frmPurchaseOrderKTG: TfrmPurchaseOrderKTG
  Left = 405
  Top = 256
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Purchase Order'
  ClientHeight = 624
  ClientWidth = 1196
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1196
    Height = 48
    inherited lblJudul: TLabel
      Left = 17
      Top = 13
      Width = 125
      Caption = 'Purchase Order'
    end
    object btnEdit2: TButton
      Left = 780
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 869
      Top = 14
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          Width = 120
          FieldName = 'tanggal'
        end
        item
          Caption = 'Nama Customer'
          Width = 200
          FieldName = 'nama'
        end
        item
          Caption = 'User'
          FieldName = 'user'
        end
        item
          Caption = 'Dept'
          FieldName = 'user_dept'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoBukti
      TabOrder = 1
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Top = 48
    Width = 1196
    Height = 523
    object cxGroupBox1: TcxGroupBox
      Left = 382
      Top = 3
      Caption = 'User Requesting'
      TabOrder = 24
      Height = 89
      Width = 233
      object cxLabel19: TcxLabel
        Left = 8
        Top = 48
        Caption = 'Divisi'
      end
      object cxlDivisi: TcxLookupComboBox
        Left = 72
        Top = 48
        Properties.KeyFieldNames = 'bagian'
        Properties.ListColumns = <
          item
            FieldName = 'bagian'
          end>
        Properties.ListSource = dsDivisi
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 137
      end
      object cxLabel18: TcxLabel
        Left = 8
        Top = 24
        Caption = 'Nama User'
      end
      object cxtUser: TcxTextEdit
        Tag = 1
        Left = 72
        Top = 20
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 137
      end
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 35
      Caption = 'No. PO'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 102
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 144
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 83
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 102
      Top = 81
      Properties.ReadOnly = False
      TabOrder = 3
      Width = 121
    end
    object btnTambah: TButton
      Left = 1415
      Top = 200
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 12
      Visible = False
      OnClick = btnTambahClick
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 108
      Caption = 'Supplier'
    end
    object cxLUSupp: TcxLookupComboBox
      Left = 102
      Top = 106
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama Customer'
          Width = 500
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end
        item
          Caption = 'Alamat'
          Width = 300
          FieldName = 'alamat'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSupp
      Properties.OnEditValueChanged = cxLUSuppPropertiesEditValueChanged
      TabOrder = 5
      Width = 472
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 184
      Caption = 'Tgl. Perlu / Kirim'
    end
    object cxdTglKirim: TcxDateEdit
      Left = 102
      Top = 182
      Properties.ReadOnly = False
      TabOrder = 9
      Width = 121
    end
    object cxLabel13: TcxLabel
      Left = 15
      Top = 133
      Caption = 'PIC Supplier'
    end
    object cxtKeterangan: TcxTextEdit
      Left = 102
      Top = 131
      Properties.CharCase = ecUpperCase
      Style.Color = clSkyBlue
      TabOrder = 11
      Width = 389
    end
    object cxmTemplate: TcxMemo
      Left = 915
      Top = 32
      Lines.Strings = (
        '<HTML>'
        '<HEAD>'
        '<META '
        'HTTP-EQUIV="Content-Type" '
        'CONTENT="text/html;charset=windo'
        'ws-1252">'
        '<TITLE>Sales Order</TITLE>'
        '</HEAD>'
        '<BODY>'
        '<TABLE BORDER=0 '
        'CELLSPACING=0 CELLPADDING=0 '
        '>'
        '<TR HEIGHT=17 >'
        '<TD WIDTH=257  ALIGN=LEFT > '
        '<BR></TD><TD WIDTH=229  '
        'ALIGN=CENTER ><B><FONT '
        'style=FONT-SIZE:10pt FACE="Arial" '
        'COLOR=#000000>SALES AND '
        'MARKETING '
        'OFFICE</FONT></B></TD>'
        '</TR>'
        '</TABLE>'
        '<TABLE BORDER=0 '
        'CELLSPACING=0 CELLPADDING=0 '
        '>'
        '<TR HEIGHT=17 >'
        '<TD WIDTH=258  ALIGN=LEFT > '
        '<BR></TD><TD WIDTH=226  '
        'ALIGN=CENTER ><FONT '
        'style=FONT-SIZE:10pt FACE="Arial" '
        'COLOR=#000000>04-FRM-SMG-001 '
        '(REV. 00)</FONT></TD>'
        '</TR>'
        '</TABLE>'
        '<TABLE BORDER=0 '
        'CELLSPACING=0 CELLPADDING=0 '
        '>'
        '<TR HEIGHT=14 >'
        '<TD WIDTH=280  ALIGN=LEFT > '
        '<BR></TD><TD WIDTH=184  '
        'ALIGN=CENTER ><FONT '
        'style=FONT-SIZE:8pt FACE="Arial" '
        'COLOR=#000000></FONT></TD>'
        '</TR>'
        '</TABLE>'
        ''
        '<TABLE BORDER=0 '
        'CELLSPACING=0 CELLPADDING=0 '
        '>'
        '<TR HEIGHT=41 >'
        '<TD WIDTH=3  ALIGN=LEFT > '
        '<BR></TD><TD WIDTH=271  '
        'ALIGN=LEFT ></TD>'
        '<TD WIDTH=193  ALIGN=CENTER '
        '><FONT style=FONT-SIZE:28pt '
        'FACE="Haettenschweiler" '
        'COLOR=#000000>Sales '
        'Order</FONT></TD>'
        '</TR>'
        '</TABLE>'
        ''
        '<pre>'
        '<TABLE BORDER=0 '
        'CELLSPACING=1 '
        'CELLPADDING=1>'
        '<TR>'
        '  <TD>SO#</TD>'
        '  <TD WIDTH=250> : '
        '%no_so%</TD>'
        '  <TD>Nama Customer</TD>'
        '  <TD>: %perusahaan%</TD>'
        '</TR>'
        '<TR>'
        '  <TD>Tgl. Order</TD>'
        '  <TD WIDTH=250> : '
        '%tgl_order%</TD>'
        '  <TD>Alamat Kirim</TD>'
        '  <TD>: %alamat%</TD>'
        '</TR>'
        '<TR>'
        '  <TD>Tgl. Kirim</TD>'
        '  <TD WIDTH=250> : '
        '%tglkirim%</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;%kota%</TD>'
        '</TR>'
        '<TR>'
        '  <TD>PO# / SC#</TD>'
        '  <TD WIDTH=250> : %po% / '
        '%sc%</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;%negara%</TD>'
        '</TR>'
        '<TR>'
        '  <TD></TD>'
        '  <TD WIDTH=250>&nbsp;</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;%telpon%</TD>'
        '</TR>'
        '<TR>'
        '  <TD>Ket. Umum</TD>'
        '  <TD WIDTH=250> : '
        '%memo%</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;</TD>'
        '</TR>'
        '<TR>'
        '  <TD>Dibuat Oleh</TD>'
        '  <TD WIDTH=250> : %user%</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;</TD>'
        '</TR>'
        '</TABLE>'
        '%content%'
        '</pre>'
        '</BODY>'
        '</HTML>')
      TabOrder = 1
      Visible = False
      Height = 89
      Width = 185
    end
    object chkComplete: TcxCheckBox
      Left = 253
      Top = 9
      TabStop = False
      Caption = 'PO Selesai / Komplit'
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 121
    end
    object cxLabel7: TcxLabel
      Left = 1308
      Top = 206
      Caption = 'Qty.'
      Visible = False
    end
    object cxsQty: TcxSpinEdit
      Left = 1333
      Top = 203
      Properties.ValueType = vtFloat
      TabOrder = 14
      Visible = False
      OnKeyPress = cxsQtyKeyPress
      Width = 78
    end
    object btnCariSupp: TButton
      Left = 576
      Top = 106
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 6
      OnClick = btnCariSuppClick
    end
    object pnlMemo: TPanel
      Left = 1090
      Top = 20
      Width = 446
      Height = 321
      Caption = 'pnlMemo'
      Color = clSkyBlue
      TabOrder = 2
      Visible = False
      OnExit = pnlMemoExit
      object btnSimpanKet: TButton
        Left = 10
        Top = 285
        Width = 75
        Height = 25
        Caption = '&Simpan'
        TabOrder = 1
      end
      object btnBatalMemo: TButton
        Left = 90
        Top = 285
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 2
        OnClick = btnBatalMemoClick
      end
      object cxMemo: TcxMemo
        Left = 30
        Top = 10
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        Height = 266
        Width = 426
      end
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 208
      Caption = 'Pembayaran'
    end
    object cxCmbPembayaran: TcxComboBox
      Left = 102
      Top = 207
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 10
      Width = 219
    end
    object btnCariBrg: TButton
      Left = 1285
      Top = 203
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 13
      Visible = False
      OnClick = btnCariBrgClick
    end
    object cxLabel14: TcxLabel
      Left = 15
      Top = 159
      Caption = 'Alamat Kirim'
    end
    object cxlAlamatKirim: TcxLookupComboBox
      Left = 102
      Top = 157
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama'
          Width = 500
          FieldName = 'nama'
        end
        item
          Caption = 'Alamat'
          Width = 300
          FieldName = 'alamat'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsAlmKirim
      TabOrder = 8
      Width = 472
    end
    object btnCariAlamatKirim: TButton
      Left = 576
      Top = 156
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 7
      OnClick = btnCariAlamatKirimClick
    end
    object cxtNoFOBJ: TcxTextEdit
      Tag = 1
      Left = 234
      Top = 81
      Properties.ReadOnly = True
      TabOrder = 15
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 9
      Caption = 'No. PP'
    end
    object cxlNoPP: TcxLookupComboBox
      Left = 102
      Top = 7
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          FieldName = 'no_bukti'
        end
        item
          FieldName = 'user'
        end
        item
          FieldName = 'user_dept'
        end>
      Properties.ListSource = dsPP
      Properties.OnChange = cxlNoPPPropertiesChange
      TabOrder = 26
      Width = 145
    end
    object cxGrid1: TcxGrid
      Left = 10
      Top = 235
      Width = 1151
      Height = 246
      TabOrder = 27
      object cxTbl: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,#0.00'
            Kind = skSum
            Column = cxColSubtotal
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnRecordChanged = cxTblDataControllerRecordChanged
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        object cxColKodeBrg: TcxGridColumn
          Caption = 'Kode Brg.'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Editing = False
          Width = 120
        end
        object cxColDeskripsi: TcxGridColumn
          Caption = 'Deskripsi'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Editing = False
          Width = 300
        end
        object cxColQtyPesan: TcxGridColumn
          Caption = 'Dipesan'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Options.Editing = False
        end
        object cxColSatuan: TcxGridColumn
          Caption = 'Satuan'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
        end
        object cxColHarga: TcxGridColumn
          Caption = 'Harga'
          DataBinding.ValueType = 'Float'
        end
        object cxColTax: TcxGridColumn
          Caption = 'Tax'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'id_group'
          Properties.ListColumns = <
            item
              Caption = 'KODE'
              Width = 100
              FieldName = 'id_group'
            end
            item
              Caption = 'DESKRIPSI'
              Fixed = True
              Width = 200
              FieldName = 'deskripsi'
            end>
          Properties.ListSource = dsTax
          Properties.OnChange = cxColTaxPropertiesChange
          Width = 70
        end
        object cxColProject: TcxGridColumn
          Caption = 'Project'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'no_project'
          Properties.ListColumns = <
            item
              Caption = 'Project'
              FieldName = 'judul'
            end
            item
              Caption = 'No. Project'
              FieldName = 'no_project'
            end>
          Properties.ListSource = dsProject
          Width = 193
        end
        object cxColNoProject: TcxGridColumn
          Caption = 'No. Project'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 82
        end
        object cxColSubtotal: TcxGridColumn
          Caption = 'Subtotal'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          Properties.OnChange = cxColSubtotalPropertiesChange
          FooterAlignmentHorz = taRightJustify
          Options.Editing = False
          Width = 145
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 571
    Width = 1196
    Height = 39
    inherited btnBatal: TButton [0]
      Left = 92
      Top = 8
      Caption = 'PO Baru'
      TabOrder = 1
      Visible = True
    end
    inherited btnKeluar: TButton [1]
      Left = 353
      Top = 8
      TabOrder = 3
    end
    inherited btnBaru: TButton [2]
      Top = 8
      TabOrder = 6
    end
    inherited btnEdit: TButton [3]
      Left = 431
      Top = 8
    end
    inherited btnHapus: TButton [4]
      Left = 506
      Top = 8
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Top = 8
      TabOrder = 0
    end
    object btnCetak: TButton
      Left = 169
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cetak PO'
      TabOrder = 2
      OnClick = btnCetakClick
    end
    object btnCetakPOInternal: TButton
      Left = 655
      Top = 8
      Width = 107
      Height = 25
      Caption = 'Cetak PO (Internal)'
      TabOrder = 7
      Visible = False
      OnClick = btnCetakPOInternalClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 '
      'WHERE LEFT(kode,1) IN ('#39'C'#39','#39'D'#39','#39'E'#39')'
      'ORDER BY deskripsi')
    Params = <>
    Left = 588
    Top = 5
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 618
    Top = 6
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 6
  end
  object zqrNoBukti: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept'
      'from tbl_po_head a, tbl_supplier b'
      'where a.kode_supp = b.kode and LEFT(a.no_bukti,3) <> '#39'POP'#39)
    Params = <>
    Left = 340
    Top = 6
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 310
    Top = 6
  end
  object zqrSupp: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_supplier '
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 280
    Top = 6
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 785
    Top = 75
  end
  object zqrNoFOBJ: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_bukti as no_pen, no_fobj, c.tanggal, kode_supp, nama' +
        ', c.diajukan_oleh, c.diajukan_dept, '
      'concat(no_fobj,'#39':'#39',kode_supp) as kunci'
      
        'from tbl_penawaran_det a left join tbl_supplier b on a.kode_supp' +
        ' = b.kode '
      'left join tbl_fobj_head c on a.no_fobj = c.no_bukti'
      'where f_pilih = 1 and a.f_po = 0'
      
        'group by a.no_bukti,no_fobj, c.tanggal, kode_supp, nama, c.diaju' +
        'kan_oleh, c.diajukan_dept')
    Params = <>
    Left = 400
    Top = 6
  end
  object dsNoFOBJ: TDataSource
    DataSet = zqrNoFOBJ
    Left = 430
    Top = 6
  end
  object zqrAlmKirim: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,nama, alamat FROM tbl_alamat_kirim'
      'ORDER BY nama')
    Params = <>
    Left = 460
    Top = 6
  end
  object dsAlmKirim: TDataSource
    DataSet = zqrAlmKirim
    Left = 490
    Top = 6
  end
  object zqrSatuan: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_det WHERE unitsetid = '#39'KILO1'#39';')
    Params = <>
    Left = 521
    Top = 7
  end
  object dsSatuan: TDataSource
    DataSet = zqrSatuan
    Left = 551
    Top = 7
  end
  object zrDivisi: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_bagian')
    Params = <>
    Left = 612
    Top = 48
  end
  object dsDivisi: TDataSource
    DataSet = zrDivisi
    Left = 642
    Top = 49
  end
  object zqrPP: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_fobj_head '
      'WHERE  f_app = 1')
    Params = <>
    Properties.Strings = (
      '')
    Left = 672
    Top = 48
  end
  object dsPP: TDataSource
    DataSet = zqrPP
    Left = 702
    Top = 49
  end
  object zqrProject: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_project, judul '
      'FROM tbl_project_head'
      'WHERE f_engi=1')
    Params = <>
    Left = 732
    Top = 48
  end
  object dsProject: TDataSource
    DataSet = zqrProject
    Left = 762
    Top = 49
  end
  object zqrTax: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT *'
      'FROM tbl_taxgroup_head')
    Params = <>
    Left = 627
    Top = 83
  end
  object dsTax: TDataSource
    DataSet = zqrTax
    Left = 657
    Top = 84
  end
end
