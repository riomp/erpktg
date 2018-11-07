inherited frmDaftarPenawarranSupp: TfrmDaftarPenawarranSupp
  Left = 194
  Top = 23
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Daftar Penawaran Supplier'
  ClientHeight = 590
  ClientWidth = 977
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 977
    inherited lblJudul: TLabel
      Width = 221
      Caption = 'Daftar Penawaran Supplier'
    end
  end
  inherited pnlTengah: TPanel
    Width = 977
    Height = 470
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 975
      Height = 468
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 5
        Top = 60
        Width = 941
        Height = 141
        TabOrder = 0
        object cxTblFobj: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblFobjFocusedRecordChanged
          DataController.DataSource = dsFOBJ
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxTblFobjno_bukti: TcxGridDBColumn
            Caption = 'No. FOBJ'
            DataBinding.FieldName = 'no_bukti'
            Width = 116
          end
          object cxTblFobjtanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxTblFobjtgl_diperlukan: TcxGridDBColumn
            Caption = 'Tgl. Diperlukan'
            DataBinding.FieldName = 'tgl_diperlukan'
            Width = 76
          end
          object cxTblFobjjam: TcxGridDBColumn
            DataBinding.FieldName = 'jam'
            Visible = False
          end
          object cxTblFobjdiajukan_oleh: TcxGridDBColumn
            Caption = 'Diajukan Oleh'
            DataBinding.FieldName = 'diajukan_oleh'
            Width = 179
          end
          object cxTblFobjdiajukan_dept: TcxGridDBColumn
            Caption = 'Diajukan Dept'
            DataBinding.FieldName = 'diajukan_dept'
            Width = 79
          end
          object cxTblFobjlevel_kebutuhan: TcxGridDBColumn
            Caption = 'Level Kebutuhan'
            DataBinding.FieldName = 'level_kebutuhan'
          end
          object cxTblFobjuser: TcxGridDBColumn
            Caption = 'Dibuat Oleh'
            DataBinding.FieldName = 'user'
            Width = 104
          end
          object cxTblFobjuser_dept: TcxGridDBColumn
            DataBinding.FieldName = 'user_dept'
            Visible = False
          end
          object cxTblFobjtgl_input: TcxGridDBColumn
            DataBinding.FieldName = 'tgl_input'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxTblFobj
        end
      end
      object cxGrid2: TcxGrid
        Left = 960
        Top = 225
        Width = 941
        Height = 141
        TabOrder = 1
        Visible = False
        object cxTblPenawaranSuppH: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblPenawaranSuppHFocusedRecordChanged
          DataController.DataSource = dsPenawaranSuppH
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxTblPenawaranSuppHkode_supp: TcxGridDBColumn
            Caption = 'Kode Supp.'
            DataBinding.FieldName = 'kode_supp'
          end
          object cxTblPenawaranSuppHnama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama'
          end
          object cxTblPenawaranSuppHno_fobj: TcxGridDBColumn
            DataBinding.FieldName = 'no_fobj'
            Visible = False
          end
          object cxTblPenawaranSuppHno_bukti: TcxGridDBColumn
            Caption = 'No. Penawaran'
            DataBinding.FieldName = 'no_bukti'
          end
          object cxTblPenawaranSuppHtanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
          end
          object cxTblPenawaranSuppHuser: TcxGridDBColumn
            Caption = 'Dibuat Oleh'
            DataBinding.FieldName = 'user'
          end
          object cxTblPenawaranSuppHuser_dept: TcxGridDBColumn
            DataBinding.FieldName = 'user_dept'
            Visible = False
          end
          object cxTblPenawaranSuppHf_pilih: TcxGridDBColumn
            Caption = 'Dipilih'
            DataBinding.FieldName = 'f_pilih'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxTblPenawaranSuppH
        end
      end
      object cxLabel1: TcxLabel
        Left = 5
        Top = 38
        Caption = 'FOBJ'
      end
      object cxLabel2: TcxLabel
        Left = 5
        Top = 206
        Caption = 'Penawaran Supplier'
      end
      object cxGrid3: TcxGrid
        Left = 960
        Top = 72
        Width = 941
        Height = 141
        TabOrder = 4
        Visible = False
        object cxTblPenawaranSuppD: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPenawaranSuppD
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxTblPenawaranSuppDkode_brg: TcxGridDBColumn
            Caption = 'Kode Brg.'
            DataBinding.FieldName = 'kode_brg'
          end
          object cxTblPenawaranSuppDdeskripsi: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'deskripsi'
            Width = 399
          end
          object cxTblPenawaranSuppDqty: TcxGridDBColumn
            Caption = 'Qty.'
            DataBinding.FieldName = 'qty'
            Width = 80
          end
          object cxTblPenawaranSuppDColumn1: TcxGridDBColumn
            Caption = 'Mata Uang'
            DataBinding.FieldName = 'mata_uang'
            Width = 75
          end
          object cxTblPenawaranSuppDharga: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'harga'
            Width = 105
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxTblPenawaranSuppD
        end
      end
      object cxLabel3: TcxLabel
        Left = 960
        Top = 53
        Caption = 'Detail FOBJ'
        Visible = False
      end
      object cxLabel4: TcxLabel
        Left = 5
        Top = 12
        Caption = 'Tanggal'
      end
      object cxdTgl1: TcxDateEdit
        Left = 54
        Top = 10
        TabOrder = 7
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 179
        Top = 12
        Caption = 'S / D'
      end
      object cxdTgl2: TcxDateEdit
        Left = 214
        Top = 10
        TabOrder = 9
        Width = 121
      end
      object btnProses: TButton
        Left = 340
        Top = 7
        Width = 75
        Height = 25
        Caption = 'Proses'
        TabOrder = 10
        OnClick = btnProsesClick
      end
      object btnPilihSupp: TButton
        Left = 5
        Top = 431
        Width = 146
        Height = 25
        Caption = 'Pilih Supplier'
        TabOrder = 11
        OnClick = btnPilihSuppClick
      end
      object cxGrid4: TcxGrid
        Left = 5
        Top = 225
        Width = 941
        Height = 201
        TabOrder = 12
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblPenawaranSuppHFocusedRecordChanged
          DataController.DataSource = dsPen
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Pilih'
            DataBinding.FieldName = 'f_pilih'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBTableView1nama: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'nama'
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBTableView1kode_brg: TcxGridDBColumn
            Caption = 'Kode Brg.'
            DataBinding.FieldName = 'kode_brg'
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBTableView1deskripsi: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'deskripsi'
            Options.Editing = False
            Options.Moving = False
            Width = 306
          end
          object cxGridDBTableView1qty: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBTableView1satuan: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan'
            Options.Editing = False
            Options.Moving = False
            Width = 76
          end
          object cxGridDBTableView1harga: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'harga'
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBTableView1mata_uang: TcxGridDBColumn
            Caption = 'Mata Uang'
            DataBinding.FieldName = 'mata_uang'
            Options.Editing = False
            Options.Moving = False
            Width = 89
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxLabel6: TcxLabel
        Left = 5
        Top = 447
        Caption = 'Pembuatan PO'
        Visible = False
      end
      object cxGrid5: TcxGrid
        Left = 5
        Top = 466
        Width = 941
        Height = 141
        TabOrder = 14
        Visible = False
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxTblPenawaranSuppHFocusedRecordChanged
          DataController.DataSource = dsPen
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'Pilih'
            DataBinding.FieldName = 'f_pilih'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'nama'
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Kode Brg.'
            DataBinding.FieldName = 'kode_brg'
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'deskripsi'
            Options.Editing = False
            Options.Moving = False
            Width = 306
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'qty'
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan'
            Options.Editing = False
            Options.Moving = False
            Width = 76
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Harga'
            DataBinding.FieldName = 'harga'
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Mata Uang'
            DataBinding.FieldName = 'mata_uang'
            Options.Editing = False
            Options.Moving = False
            Width = 89
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object Button1: TButton
        Left = 5
        Top = 569
        Width = 146
        Height = 25
        Caption = 'Buat PO'
        TabOrder = 15
        Visible = False
        OnClick = btnPilihSuppClick
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 536
    Width = 977
    Height = 54
    inherited btnKeluar: TButton
      Left = 10
      Top = 15
    end
    inherited btnSimpan: TButton
      Left = 89
      Top = 15
      Visible = False
    end
  end
  object zqrFOBJ: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_fobj_head '
      'WHERE tanggal BETWEEN :tgl1 AND :tgl2'
      'ORDER BY tanggal')
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
    Left = 335
    Top = 30
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
  object dsFOBJ: TDataSource
    DataSet = zqrFOBJ
    Left = 365
    Top = 30
  end
  object zqrPenawaranSuppH: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_penawaran_supp_head'
      'WHERE no_fobj = :no_fobj')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_fobj'
        ParamType = ptUnknown
      end>
    Left = 395
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_fobj'
        ParamType = ptUnknown
      end>
  end
  object dsPenawaranSuppH: TDataSource
    DataSet = zqrPenawaranSuppH
    Left = 425
    Top = 30
  end
  object zqrPenawaranSuppD: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_penawaran_supp_det'
      'WHERE no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 455
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsPenawaranSuppD: TDataSource
    DataSet = zqrPenawaranSuppD
    Left = 485
    Top = 30
  end
  object zqrPen: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_penawaran_supp_det'
      'WHERE no_fobj = :no_fobj')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_fobj'
        ParamType = ptUnknown
      end>
    Left = 515
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_fobj'
        ParamType = ptUnknown
      end>
  end
  object dsPen: TDataSource
    DataSet = zqrPen
    Left = 545
    Top = 30
  end
end
