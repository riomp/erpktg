inherited frmHasilPercobaan: TfrmHasilPercobaan
  Left = 152
  Top = 75
  Width = 1145
  Height = 590
  Caption = 'Hasil Percobaan / Trial'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1129
    inherited lblJudul: TLabel
      Width = 188
      Caption = 'Hasil Percobaan / Trial'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1129
    Height = 436
    object cxGrd: TcxGrid
      Left = 15
      Top = 10
      Width = 1096
      Height = 186
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblFocusedRecordChanged
        DataController.DataSource = dsTrial
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsView.GroupByBox = False
        object cxTblno_trial: TcxGridDBColumn
          Caption = 'No. Trial'
          DataBinding.FieldName = 'no_trial'
          Width = 94
        end
        object cxTbltanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTblkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTbldeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 281
        end
        object cxTblqty: TcxGridDBColumn
          Caption = 'Qty.'
          DataBinding.FieldName = 'qty'
          Width = 54
        end
        object cxTblColumn2: TcxGridDBColumn
          Caption = 'Kode Brg. Sample'
          DataBinding.FieldName = 'kode_brg_sample'
          Width = 111
        end
        object cxTblf_status: TcxGridDBColumn
          DataBinding.FieldName = 'f_status'
          Visible = False
        end
        object cxTblkode_brg_jadi: TcxGridDBColumn
          DataBinding.FieldName = 'kode_brg_jadi'
          Visible = False
        end
        object cxTblf_app_mgmt: TcxGridDBColumn
          DataBinding.FieldName = 'f_app_mgmt'
          Visible = False
        end
        object cxTblbahan_dari: TcxGridDBColumn
          DataBinding.FieldName = 'bahan_dari'
          Visible = False
        end
        object cxTblkode_brg_sample: TcxGridDBColumn
          DataBinding.FieldName = 'kode_brg_sample'
          Visible = False
        end
        object cxTblf_app_awal: TcxGridDBColumn
          DataBinding.FieldName = 'f_app_awal'
          Visible = False
        end
        object cxTblf_app_awal_user: TcxGridDBColumn
          DataBinding.FieldName = 'f_app_awal_user'
          Visible = False
        end
        object cxTblf_app_awal_tanggal: TcxGridDBColumn
          DataBinding.FieldName = 'f_app_awal_tanggal'
          Visible = False
        end
        object cxTblColumn1: TcxGridDBColumn
          Caption = 'Deskripsi Sample'
          DataBinding.FieldName = 'deskripsi_sample'
          Width = 268
        end
        object cxTblColumn3: TcxGridDBColumn
          Caption = 'Jml. Samples'
          DataBinding.FieldName = 'jml_samples'
          Width = 78
        end
        object cxTblColumn4: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan_samples'
        end
        object cxTbluser: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'user'
          Width = 81
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxLabel1: TcxLabel
      Left = 14
      Top = 199
      Caption = 'Deskripsi'
    end
    object cxMemDesk: TcxMemo
      Left = 14
      Top = 220
      Properties.ReadOnly = True
      TabOrder = 3
      Height = 72
      Width = 372
    end
    object cxLabel2: TcxLabel
      Left = 14
      Top = 295
      Caption = 'Bahan Dari'
    end
    object cxtBahanDari: TcxTextEdit
      Left = 14
      Top = 314
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 372
    end
    object cxLabel3: TcxLabel
      Left = 14
      Top = 340
      Caption = 'Sample'
    end
    object cxtSample: TcxTextEdit
      Left = 14
      Top = 359
      TabOrder = 8
      Width = 537
    end
    object cxLabel4: TcxLabel
      Left = 14
      Top = 384
      Caption = 'Jumlah'
    end
    object cxtSatuanSamples: TcxTextEdit
      Left = 100
      Top = 405
      TabOrder = 11
      Width = 97
    end
    object cxsJmlSamples: TcxSpinEdit
      Left = 14
      Top = 405
      Properties.DisplayFormat = '#,#0.00'
      Properties.ValueType = vtFloat
      TabOrder = 10
      Width = 82
    end
    object cxmHasilPercobaan: TcxMemo
      Left = 394
      Top = 220
      Properties.ReadOnly = True
      TabOrder = 4
      Height = 72
      Width = 502
    end
    object cxLabel5: TcxLabel
      Left = 394
      Top = 199
      Caption = 'Deskripsi Hasil Percobaan'
    end
  end
  inherited pnlBawah: TPanel
    Top = 502
    Width = 1129
    Height = 49
    inherited btnKeluar: TButton
      Left = 12
      Top = 10
      TabOrder = 1
    end
    inherited btnSimpan: TButton
      Left = 470
      Top = 10
      TabOrder = 2
      Visible = False
    end
  end
  object zqrTrial: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.deskripsi, c.deskripsi deskripsi_sample'
      'FROM tbl_logbook_design a '
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode '
      'LEFT JOIN tbl_barang c ON a.kode_brg = c.kode'
      'WHERE f_app_awal = 1'
      'AND LEFT(b.deskripsi,6) NOT IN ( '#39'TEPUNG'#39','#39'COMPOU'#39')'
      'AND a.f_posting_hasil = 1')
    Params = <>
    Left = 255
    Top = 25
  end
  object dsTrial: TDataSource
    DataSet = zqrTrial
    Left = 285
    Top = 25
  end
end
