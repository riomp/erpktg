inherited frmMonitorInputHasilProduksi: TfrmMonitorInputHasilProduksi
  Left = 181
  Top = 60
  Width = 1120
  Height = 614
  VertScrollBar.Visible = False
  Caption = 'Monitoring Inputan Hasil Produksi'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1104
    Height = 43
    inherited lblJudul: TLabel
      Top = 10
      Width = 278
      Caption = 'Monitoring Inputan Hasil Produksi'
    end
  end
  inherited pnlTengah: TPanel
    Top = 80
    Width = 1104
    Height = 219
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1102
      Height = 217
      Align = alClient
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsHP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        object cxTblno_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
          Width = 99
        end
        object cxTblColumn6: TcxGridDBColumn
          Caption = 'No. SO'
          DataBinding.FieldName = 'no_so'
          Width = 101
        end
        object cxTblColumn3: TcxGridDBColumn
          Caption = 'No. Bukti'
          DataBinding.FieldName = 'no_bukti'
        end
        object cxTblColumn1: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTblColumn2: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 273
        end
        object cxTblColumn5: TcxGridDBColumn
          Caption = 'Target?'
          DataBinding.FieldName = 'f_target'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 49
        end
        object cxTbltanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTblshift2: TcxGridDBColumn
          Caption = 'Shift'
          DataBinding.FieldName = 'shift2'
          Width = 54
        end
        object cxTbljam1: TcxGridDBColumn
          Caption = 'Jam 1'
          DataBinding.FieldName = 'jam1'
        end
        object cxTbljam2: TcxGridDBColumn
          Caption = 'Jam 2'
          DataBinding.FieldName = 'jam2'
        end
        object cxTblmesin: TcxGridDBColumn
          Caption = 'Mesin'
          DataBinding.FieldName = 'mesin'
        end
        object cxTblqty_prod: TcxGridDBColumn
          Caption = 'Qty. Prod'
          DataBinding.FieldName = 'qty_prod'
        end
        object cxTblqty_reject: TcxGridDBColumn
          Caption = 'Qty. Reject'
          DataBinding.FieldName = 'qty_reject'
        end
        object cxTblket_reject: TcxGridDBColumn
          Caption = 'Keterangan Reject'
          DataBinding.FieldName = 'ket_reject'
          Width = 277
        end
        object cxTblket_mesin: TcxGridDBColumn
          Caption = 'Keterangan Mesin'
          DataBinding.FieldName = 'ket_mesin'
          Width = 260
        end
        object cxTbluser: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'user'
        end
        object cxTbluser_dept: TcxGridDBColumn
          Caption = 'User Dept.'
          DataBinding.FieldName = 'user_dept'
        end
        object cxTbltgl_input: TcxGridDBColumn
          Caption = 'Tgl. Input'
          DataBinding.FieldName = 'tgl_input'
        end
        object cxTblColumn4: TcxGridDBColumn
          Caption = 'Target'
          DataBinding.FieldName = 'target2'
        end
      end
      object cxTblOpr: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsOpr
        DataController.DetailKeyFieldNames = 'no_bukti'
        DataController.KeyFieldNames = 'no_bukti'
        DataController.MasterKeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxTblOprnik: TcxGridDBColumn
          Caption = 'NIK'
          DataBinding.FieldName = 'nik'
        end
        object cxTblOprnama: TcxGridDBColumn
          Caption = 'Nama Operator'
          DataBinding.FieldName = 'nama'
          Width = 180
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
        object cxGrid1Level2: TcxGridLevel
          GridView = cxTblOpr
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Left = 955
    Top = 476
    Width = 1076
    Align = alNone
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 1104
    Height = 37
    Align = alTop
    TabOrder = 3
    object cxLabel1: TcxLabel
      Left = 15
      Top = 8
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 7
      TabOrder = 1
      Width = 101
    end
    object cxLabel2: TcxLabel
      Left = 175
      Top = 8
      Caption = 'S / D '
    end
    object cxdTgl2: TcxDateEdit
      Left = 213
      Top = 7
      TabOrder = 3
      Width = 101
    end
    object btnProses: TButton
      Left = 319
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  object btnKeluar2: TButton
    Left = 85
    Top = 544
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 4
    OnClick = btnKeluar2Click
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 339
    Width = 1104
    Height = 195
    Align = alTop
    TabOrder = 5
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsRej
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 110
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Width = 95
      end
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 273
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Shift'
        DataBinding.FieldName = 'shift2'
        Width = 54
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'Jam 1'
        DataBinding.FieldName = 'jam1'
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = 'Jam 2'
        DataBinding.FieldName = 'jam2'
      end
      object cxGridDBColumn6: TcxGridDBColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'mesin'
      end
      object cxGridDBColumn8: TcxGridDBColumn
        Caption = 'Qty. Reject'
        DataBinding.FieldName = 'qty'
      end
      object cxGridDBColumn9: TcxGridDBColumn
        Caption = 'Keterangan Reject'
        DataBinding.FieldName = 'ket_reject'
        Width = 277
      end
      object cxGridDBColumn10: TcxGridDBColumn
        Caption = 'Keterangan Mesin'
        DataBinding.FieldName = 'ket_mesin'
        Width = 260
      end
      object cxGridDBColumn11: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
      end
      object cxGridDBColumn12: TcxGridDBColumn
        Caption = 'User Dept.'
        DataBinding.FieldName = 'user_dept'
      end
      object cxGridDBColumn13: TcxGridDBColumn
        Caption = 'Tgl. Input'
        DataBinding.FieldName = 'tgl_input'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 299
    Width = 1104
    Height = 40
    Align = alTop
    TabOrder = 6
    object btnExcel: TButton
      Left = 6
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Cetak Excel'
      TabOrder = 0
      OnClick = btnExcelClick
    end
  end
  object Button1: TButton
    Left = 5
    Top = 544
    Width = 75
    Height = 25
    Caption = 'Cetak Excel'
    TabOrder = 7
    OnClick = Button1Click
  end
  object zqrHP: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*, b.kode_brg, c.deskripsi, d.jam_kerja * e.target targ' +
        'et2, if(e.target_kg IS NULL or e.target_kg=0,0,1) f_target, f.no' +
        '_so'
      'FROM tbl_hsl_prd a'
      'LEFT JOIN tbl_spk b ON b.no_spk = a.no_spk'
      'LEFT JOIN tbl_barang c ON c.kode = b.kode_brg'
      
        'LEFT JOIN tbl_jadwal_mesin d ON d.tanggal = a.tanggal AND d.kode' +
        '_mesin = a.mesin'
      
        'LEFT JOIN tbl_kapasitas_mesin e ON e.kode_mesin = a.mesin AND e.' +
        'kode_brg = b.kode_brg'
      'LEFT JOIN tbl_mo f ON f.no_spk = a.no_spk'
      'WHERE a.tanggal BETWEEN :tgl1 AND :tgl2'
      '-- WHERE a.tanggal BETWEEN '#39'2016-05-01'#39' AND curdate()'
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
    Left = 530
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
  object dsHP: TDataSource
    DataSet = zqrHP
    Left = 560
    Top = 30
  end
  object zqrRej: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.kode_brg, c.deskripsi, d.no_so FROM tbl_reject a'
      'LEFT JOIN tbl_spk b ON b.no_spk = a.no_spk '
      'LEFT JOIN tbl_barang c ON c.kode = b.kode_brg '
      'LEFT JOIN tbl_mo d ON d.no_spk = b.no_spk'
      'WHERE a.tanggal BETWEEN :tgl1 AND :tgl2')
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
    Left = 595
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
  object dsRej: TDataSource
    DataSet = zqrRej
    Left = 625
    Top = 30
  end
  object zqrOpr: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.* '
      'FROM tbl_hsl_prd_operator a'
      'LEFT JOIN tbl_hsl_prd b ON a.no_bukti = b.no_bukti'
      '-- WHERE b.tanggal BETWEEN '#39'2016-05-01'#39' AND curdate()'
      'WHERE b.tanggal BETWEEN :tgl1 AND :tgl2')
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
    Left = 655
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
  object dsOpr: TDataSource
    DataSet = zqrOpr
    Left = 685
    Top = 30
  end
end
