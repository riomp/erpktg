inherited frmStatusReq: TfrmStatusReq
  Left = 109
  Top = 81
  Caption = 'Status Request'
  ClientHeight = 539
  ClientWidth = 1193
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1193
    inherited lblJudul: TLabel
      Width = 124
      Caption = 'Status Request'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
      Visible = False
    end
  end
  inherited pnlTengah: TPanel
    Left = 670
    Top = 113
    Height = 35
    Align = alNone
    Visible = False
    inherited pg: TPageControl
      Height = 33
    end
  end
  inherited pnlBawah: TPanel
    Left = 680
    Top = 166
    Height = 55
    Align = alNone
    Visible = False
  end
  object cxGrid1: TcxGrid [3]
    Left = 0
    Top = 66
    Width = 1193
    Height = 225
    Align = alTop
    TabOrder = 3
    object cxgTbl1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cxgTbl1FocusedRecordChanged
      DataController.DataSource = dsHead
      DataController.KeyFieldNames = 'no_bukti'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.Editing = False
      object cxgTbl1kode_proyek: TcxGridDBColumn
        Caption = 'Kode Proyek'
        DataBinding.FieldName = 'kode_proyek'
        Width = 89
      end
      object cxgTbl1nama_paket: TcxGridDBColumn
        Caption = 'Nama Paket'
        DataBinding.FieldName = 'nama_paket'
        Width = 284
      end
      object cxgTbl1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
      end
      object cxgTbl1no_bukti: TcxGridDBColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'no_bukti'
        Width = 86
      end
      object cxgTbl1no_tr: TcxGridDBColumn
        Caption = 'No. Trans'
        DataBinding.FieldName = 'no_tr'
      end
      object cxgTbl1f_app1: TcxGridDBColumn
        Caption = 'Approval 1'
        DataBinding.FieldName = 'f_app1'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxgTbl1f_app2: TcxGridDBColumn
        Caption = 'Approval 2'
        DataBinding.FieldName = 'f_app2'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxgTbl1f_app3: TcxGridDBColumn
        Caption = 'Approval 3'
        DataBinding.FieldName = 'f_app3'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxgTbl1dt_app1: TcxGridDBColumn
        Caption = 'Tgl. Approval 1'
        DataBinding.FieldName = 'dt_app1'
      end
      object cxgTbl1dt_app2: TcxGridDBColumn
        Caption = 'Tgl. Approval 2'
        DataBinding.FieldName = 'dt_app2'
      end
      object cxgTbl1dt_app3: TcxGridDBColumn
        Caption = 'Tgl. Approval 3'
        DataBinding.FieldName = 'dt_app3'
      end
      object cxgTbl1nama_karyawan: TcxGridDBColumn
        Caption = 'Diajukan Oleh'
        DataBinding.FieldName = 'nama_karyawan'
        Width = 118
      end
      object cxgTbl1jabatan: TcxGridDBColumn
        Caption = 'Jabatan'
        DataBinding.FieldName = 'jabatan'
        Width = 120
      end
      object cxgTbl1bagian: TcxGridDBColumn
        Caption = 'Bagian'
        DataBinding.FieldName = 'bagian'
        Width = 88
      end
      object cxgTbl1diajukan: TcxGridDBColumn
        DataBinding.FieldName = 'diajukan'
        Visible = False
      end
      object cxgTbl1kode_kas: TcxGridDBColumn
        Caption = 'Kode Kas'
        DataBinding.FieldName = 'kode_kas'
        Width = 61
      end
      object cxgTbl1user: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
        Width = 83
      end
      object cxgTbl1user_dept: TcxGridDBColumn
        Caption = 'Dept.'
        DataBinding.FieldName = 'user_dept'
        Width = 60
      end
      object cxgTbl1tgl_input: TcxGridDBColumn
        Caption = 'Tgl. Input'
        DataBinding.FieldName = 'tgl_input'
      end
      object cxgTbl1no_proyek: TcxGridDBColumn
        DataBinding.FieldName = 'no_proyek'
        Visible = False
      end
      object cxgTbl1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
        Visible = False
      end
      object cxgTbl1jam: TcxGridDBColumn
        DataBinding.FieldName = 'jam'
        Visible = False
      end
    end
    object cxgTbl2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDet
      DataController.DetailKeyFieldNames = 'no_bukti'
      DataController.KeyFieldNames = 'id'
      DataController.MasterKeyFieldNames = 'no_bukti'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxgTbl2no_bukti: TcxGridDBColumn
        DataBinding.FieldName = 'no_bukti'
      end
      object cxgTbl2keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
      object cxgTbl2merk: TcxGridDBColumn
        DataBinding.FieldName = 'merk'
      end
      object cxgTbl2jumlah: TcxGridDBColumn
        DataBinding.FieldName = 'jumlah'
      end
      object cxgTbl2satuan: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
      end
      object cxgTbl2harga_satuan: TcxGridDBColumn
        DataBinding.FieldName = 'harga_satuan'
      end
      object cxgTbl2total: TcxGridDBColumn
        DataBinding.FieldName = 'total'
      end
      object cxgTbl2kode_req: TcxGridDBColumn
        DataBinding.FieldName = 'kode_req'
      end
      object cxgTbl2kode_supp: TcxGridDBColumn
        DataBinding.FieldName = 'kode_supp'
      end
      object cxgTbl2keterangan_req: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan_req'
      end
      object cxgTbl2nama_supplier: TcxGridDBColumn
        DataBinding.FieldName = 'nama_supplier'
      end
      object cxgTbl2kode_material: TcxGridDBColumn
        DataBinding.FieldName = 'kode_material'
      end
      object cxgTbl2nama_material: TcxGridDBColumn
        DataBinding.FieldName = 'nama_material'
      end
      object cxgTbl2f_lunas: TcxGridDBColumn
        DataBinding.FieldName = 'f_lunas'
      end
      object cxgTbl2id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxgTbl1
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 460
    Width = 1193
    Height = 79
    Align = alBottom
    TabOrder = 4
    object btnEdit2: TButton
      Left = 10
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object Button2: TButton
      Left = 90
      Top = 41
      Width = 75
      Height = 25
      Caption = 'Tutup'
      TabOrder = 1
      OnClick = Button1Click
    end
    object btnSetLunas: TButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Set Lunas'
      TabOrder = 2
      OnClick = btnSetLunasClick
    end
  end
  object cxGrid2: TcxGrid [5]
    Left = 0
    Top = 291
    Width = 1193
    Height = 169
    Align = alClient
    TabOrder = 5
    object cxgTblDet: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDet
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      object cxgTblDetid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Options.Editing = False
      end
      object cxgTblDetkode_req: TcxGridDBColumn
        DataBinding.FieldName = 'kode_req'
        Visible = False
        Options.Editing = False
      end
      object cxgTblDetno_bukti: TcxGridDBColumn
        DataBinding.FieldName = 'no_bukti'
        Visible = False
        Options.Editing = False
      end
      object cxgTblDetketerangan_req: TcxGridDBColumn
        Caption = 'Keterangan Request'
        DataBinding.FieldName = 'keterangan_req'
        Options.Editing = False
        Width = 152
      end
      object cxgTblDetketerangan: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Options.Editing = False
        Width = 215
      end
      object cxgTblDetjumlah: TcxGridDBColumn
        Caption = 'Jumlah'
        DataBinding.FieldName = 'jumlah'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Options.Editing = False
      end
      object cxgTblDetharga_satuan: TcxGridDBColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'harga_satuan'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Options.Editing = False
        Width = 100
      end
      object cxgTblDettotal: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'total'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Options.Editing = False
        Width = 92
      end
      object cxgTblDetmerk: TcxGridDBColumn
        DataBinding.FieldName = 'merk'
        Visible = False
        Options.Editing = False
      end
      object cxgTblDetsatuan: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Options.Editing = False
        Width = 65
      end
      object cxgTblDetkode_supp: TcxGridDBColumn
        DataBinding.FieldName = 'kode_supp'
        Visible = False
        Options.Editing = False
      end
      object cxgTblDetnama_supplier: TcxGridDBColumn
        DataBinding.FieldName = 'nama_supplier'
        Visible = False
        Options.Editing = False
      end
      object cxgTblDetkode_material: TcxGridDBColumn
        DataBinding.FieldName = 'kode_material'
        Visible = False
        Options.Editing = False
      end
      object cxgTblDetnama_material: TcxGridDBColumn
        DataBinding.FieldName = 'nama_material'
        Visible = False
        Options.Editing = False
      end
      object cxgTblDetf_lunas: TcxGridDBColumn
        Caption = 'Status Lunas'
        DataBinding.FieldName = 'f_lunas'
        Visible = False
        Options.Editing = False
        Width = 71
      end
      object cxgTblDetColumn1: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'ket_status'
        Options.Editing = False
        Width = 97
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxgTblDet
    end
  end
  object zqrHead: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_request_head ORDER BY tanggal DESC')
    Params = <>
    Left = 135
    Top = 15
  end
  object dsHead: TDataSource
    DataSet = zqrHead
    Left = 165
    Top = 15
  end
  object dsDet: TDataSource
    DataSet = zqrDet
    Left = 225
    Top = 15
  end
  object zqrDet: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_request_det'
      'WHERE no_bukti = :no_bukti ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    MasterFields = 'no_bukti'
    MasterSource = dsHead
    LinkedFields = 'no_bukti'
    Left = 195
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
end
