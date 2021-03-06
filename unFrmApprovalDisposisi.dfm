inherited frmApprovalDisposisi: TfrmApprovalDisposisi
  Left = 158
  Top = 48
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Approval Disposisi SPMB'
  ClientHeight = 622
  ClientWidth = 1074
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1074
    Height = 43
    inherited lblJudul: TLabel
      Top = 10
      Width = 200
      Caption = 'Approval Disposisi SPMB'
    end
  end
  inherited pnlTengah: TPanel
    Top = 43
    Width = 1074
    Height = 536
    object cxGrdH: TcxGrid
      Left = 15
      Top = 15
      Width = 1042
      Height = 105
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      object cxTblH: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnEditValueChanged = cxTblHEditValueChanged
        OnFocusedRecordChanged = cxTblHFocusedRecordChanged
        DataController.DataSource = dsH
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxTblHno_bukti: TcxGridDBColumn
          Caption = 'No. Disposisi'
          DataBinding.FieldName = 'no_bukti'
          Width = 95
        end
        object cxTblHtgl_input: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tgl_input'
          Width = 84
        end
        object cxTblHnopol: TcxGridDBColumn
          Caption = 'Nopol'
          DataBinding.FieldName = 'nopol'
          Width = 80
        end
        object cxTblHColumn1: TcxGridDBColumn
          Caption = 'App. Staff QAC'
          DataBinding.FieldName = 'app_staff_qac'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 85
        end
        object cxTblHapp_qac: TcxGridDBColumn
          Caption = 'App. QAC'
          DataBinding.FieldName = 'app_qac'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 57
        end
        object cxTblHColumn4: TcxGridDBColumn
          Caption = 'App. WHL'
          DataBinding.FieldName = 'app_whl'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object cxTblHapp_mgmt: TcxGridDBColumn
          Caption = 'App. Mgmt'
          DataBinding.FieldName = 'app_mgmt'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object cxTblHberat_spmb: TcxGridDBColumn
          Caption = 'Berat SPMB'
          DataBinding.FieldName = 'berat_spmb'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 89
        end
        object cxTblHberat_packing: TcxGridDBColumn
          Caption = 'Berat Packing'
          DataBinding.FieldName = 'berat_packing'
          Width = 79
        end
        object cxTblHberat_lain: TcxGridDBColumn
          Caption = 'Berat Lain'
          DataBinding.FieldName = 'berat_lain'
        end
        object cxTblHColumn2: TcxGridDBColumn
          Caption = 'Berat Total'
          DataBinding.FieldName = 'berat_total'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 80
        end
        object cxTblHberat_bersih_truk: TcxGridDBColumn
          Caption = 'Berat Bersih Armada'
          DataBinding.FieldName = 'berat_bersih'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 109
        end
        object cxTblHselisih: TcxGridDBColumn
          Caption = 'Selisih'
          DataBinding.FieldName = 'selisih'
        end
        object cxTblHpersentase: TcxGridDBColumn
          Caption = 'Persentase'
          DataBinding.FieldName = 'persentase'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 67
        end
        object cxTblHColumn5: TcxGridDBColumn
          Caption = 'Persentase Lama'
          DataBinding.FieldName = 'persentase_lama'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 92
        end
        object cxTblHapp_whl: TcxGridDBColumn
          Caption = 'Persentase Edit'
          DataBinding.FieldName = 'persentase_edit'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Visible = False
          Width = 89
        end
        object cxTblHberat_timbangan: TcxGridDBColumn
          DataBinding.FieldName = 'berat_timbangan'
          Visible = False
          Width = 112
        end
        object cxTblHColumn3: TcxGridDBColumn
          Caption = 'Staff QAC'
          DataBinding.FieldName = 'user_staff_qac'
          Width = 75
        end
        object cxTblHberat_bersih: TcxGridDBColumn
          DataBinding.FieldName = 'berat_bersih'
          Visible = False
        end
        object cxTblHuser_qac: TcxGridDBColumn
          Caption = 'Mgr. QAC'
          DataBinding.FieldName = 'user_qac'
          Width = 73
        end
        object cxTblHtgljam_app_qac: TcxGridDBColumn
          DataBinding.FieldName = 'tgljam_app_qac'
          Visible = False
        end
        object cxTblHuser_whl: TcxGridDBColumn
          Caption = 'WHL'
          DataBinding.FieldName = 'user_whl'
          Width = 87
        end
        object cxTblHtgljam_app_whl: TcxGridDBColumn
          DataBinding.FieldName = 'tgljam_app_whl'
          Visible = False
        end
        object cxTblHuser_mgmt: TcxGridDBColumn
          Caption = 'MGMT'
          DataBinding.FieldName = 'user_mgmt'
          Width = 88
        end
        object cxTblHtgljam_app_mgmt: TcxGridDBColumn
          DataBinding.FieldName = 'tgljam_app_mgmt'
          Visible = False
        end
      end
      object cxGrdHLevel1: TcxGridLevel
        GridView = cxTblH
      end
    end
    object cxGrdD: TcxGrid
      Left = 15
      Top = 147
      Width = 378
      Height = 111
      TabOrder = 1
      object cxTblD: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblDFocusedRecordChanged
        DataController.DataSource = dsD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxTblDno_bukti: TcxGridDBColumn
          DataBinding.FieldName = 'no_bukti'
          Visible = False
        end
        object cxTblDno_spmb: TcxGridDBColumn
          Caption = 'No. SPMB'
          DataBinding.FieldName = 'no_spmb'
          Width = 86
        end
        object cxTblDColumn1: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'nama_customer'
          Width = 136
        end
        object cxTblDberat_total: TcxGridDBColumn
          Caption = 'Berat Total'
          DataBinding.FieldName = 'berat_total'
        end
        object cxTblDberat_packing: TcxGridDBColumn
          Caption = 'Berat Packing'
          DataBinding.FieldName = 'berat_packing'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxTblD
      end
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 127
      Caption = 'Detail'
    end
    object btnApproveDisposisi: TButton
      Left = 15
      Top = 501
      Width = 75
      Height = 25
      Caption = 'Approve'
      TabOrder = 3
      OnClick = btnApproveDisposisiClick
    end
    object btnNotApprove: TButton
      Left = 93
      Top = 501
      Width = 96
      Height = 25
      Caption = 'Tidak Approve'
      TabOrder = 4
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 260
      Caption = 'Deskripsi Keterangan dan Tindak Lanjut Ketidaksesuaian'
    end
    object cxmDeskripsi: TcxMemo
      Left = 15
      Top = 280
      TabOrder = 6
      Height = 56
      Width = 641
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 337
      Caption = 'Akar Masalah'
    end
    object cxmAkarMasalah: TcxMemo
      Left = 15
      Top = 357
      TabOrder = 8
      Height = 56
      Width = 641
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 417
      Caption = 'Keterangan Tambahan'
    end
    object cxmKetTambahan: TcxMemo
      Left = 15
      Top = 437
      TabOrder = 10
      Height = 56
      Width = 641
    end
    object cxGrid1: TcxGrid
      Left = 400
      Top = 147
      Width = 573
      Height = 111
      TabOrder = 11
      object cxTblDetSPMB: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDetSPMB
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxTblDetSPMBno_so: TcxGridDBColumn
          Caption = 'No. SO'
          DataBinding.FieldName = 'no_so'
          Width = 76
        end
        object cxTblDetSPMBkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
          Width = 60
        end
        object cxTblDetSPMBdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 215
        end
        object cxTblDetSPMBqty: TcxGridDBColumn
          Caption = 'Qty.'
          DataBinding.FieldName = 'qty'
          Width = 46
        end
        object cxTblDetSPMBsatuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 50
        end
        object cxTblDetSPMBisi_pak: TcxGridDBColumn
          Caption = 'Isi Pak'
          DataBinding.FieldName = 'isi_pak'
          Width = 41
        end
        object cxTblDetSPMBberat_total: TcxGridDBColumn
          Caption = 'Berat Total'
          DataBinding.FieldName = 'berat_total'
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxTblDetSPMB
      end
    end
    object cxLabel5: TcxLabel
      Left = 400
      Top = 127
      Caption = 'Detail SPMB'
    end
    object Button1: TButton
      Left = 984
      Top = 125
      Width = 75
      Height = 25
      Caption = 'Refresh'
      TabOrder = 13
      OnClick = Button1Click
    end
    object cxLabel6: TcxLabel
      Left = 660
      Top = 260
      Caption = 'Update Persentase '
    end
    object GroupBox1: TGroupBox
      Left = 662
      Top = 275
      Width = 196
      Height = 56
      TabOrder = 15
      object cxsPersentase: TcxSpinEdit
        Left = 9
        Top = 20
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 0
        Width = 94
      end
      object btnUpdatePersen: TButton
        Left = 108
        Top = 17
        Width = 75
        Height = 25
        Caption = 'Update'
        TabOrder = 1
        OnClick = btnUpdatePersenClick
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 579
    Width = 1074
    Height = 45
    inherited btnKeluar: TButton
      Top = 10
    end
    inherited btnSimpan: TButton
      Top = 10
    end
  end
  object zqrH: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select *, berat_spmb + berat_packing + berat_lain berat_total fr' +
        'om tbl_disposisi_head '
      '-- ')
    Params = <>
    Left = 320
    Top = 10
  end
  object dsH: TDataSource
    DataSet = zqrH
    Left = 350
    Top = 10
  end
  object zqrD: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select a.*, c.nama nama_customer '
      'from tbl_disposisi_det a'
      'left join tbl_spmb_head b on a.no_spmb = b.no_bukti'
      'left join tbl_customer c on c.kode = b.kode_customer'
      'where a.no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 380
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsD: TDataSource
    DataSet = zqrD
    Left = 410
    Top = 10
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 440
    Top = 10
  end
  object zqrDetSPMB: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * '
      'FROM v_spmb_det'
      'WHERE no_bukti = :no_spmb;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_spmb'
        ParamType = ptUnknown
      end>
    Left = 470
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_spmb'
        ParamType = ptUnknown
      end>
  end
  object dsDetSPMB: TDataSource
    DataSet = zqrDetSPMB
    Left = 500
    Top = 10
  end
end
