inherited frmDaftarJurnalKerja: TfrmDaftarJurnalKerja
  Left = 334
  Top = 193
  Height = 521
  Caption = 'JURNAL KERJA RND'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 197
      Caption = 'Daftar Jurnal Kerja RND'
    end
  end
  inherited pnlTengah: TPanel
    Height = 335
    object Label20: TLabel
      Left = 7
      Top = 196
      Width = 79
      Height = 13
      Caption = 'Deskripsi Project'
    end
    object Label7: TLabel
      Left = 7
      Top = 156
      Width = 61
      Height = 13
      Caption = 'Judul Project'
    end
    object Label8: TLabel
      Left = 7
      Top = 180
      Width = 69
      Height = 13
      Caption = 'Tujuan Project'
    end
    object cxtTujuan: TcxTextEdit
      Left = 96
      Top = 176
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 417
    end
    object cxtJudul: TcxTextEdit
      Left = 96
      Top = 152
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 417
    end
    object cxGrdIS: TcxGrid
      Left = 8
      Top = 10
      Width = 785
      Height = 135
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      object cxTblJurnal: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblJurnalFocusedRecordChanged
        DataController.DataSource = dsJurnal
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsView.GroupByBox = False
        object cxTblJurnalno_jurnal: TcxGridDBColumn
          Caption = 'No.Permintaan'
          DataBinding.FieldName = 'no_jurnal'
          Width = 86
        end
        object cxTblJurnaltgl_jurnal: TcxGridDBColumn
          Caption = 'Tgl.Permintaan'
          DataBinding.FieldName = 'tgl_jurnal'
          Width = 81
        end
        object cxTblJurnaldibuat_oleh: TcxGridDBColumn
          Caption = 'Diminta Oleh'
          DataBinding.FieldName = 'dibuat_oleh'
          Width = 82
        end
        object cxTblJurnalkategori: TcxGridDBColumn
          Caption = 'Kategori'
          DataBinding.FieldName = 'kategori'
        end
        object cxTblJurnaltgl_permintaan_selesai: TcxGridDBColumn
          Caption = 'Tgl.Diminta'
          DataBinding.FieldName = 'tgl_permintaan_selesai'
        end
        object cxTblJurnalstatus: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'status'
          Width = 60
        end
        object cxTblJurnalColumn3: TcxGridDBColumn
          Caption = 'Approval'
          DataBinding.FieldName = 'f_approve'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 79
        end
        object cxTblJurnalpic: TcxGridDBColumn
          Caption = 'PIC Project'
          DataBinding.FieldName = 'pic'
          Width = 72
        end
        object cxTblJurnalestimasi_start: TcxGridDBColumn
          Caption = 'Sch.Start'
          DataBinding.FieldName = 'estimasi_start'
          Width = 64
        end
        object cxTblJurnalestimasi_finish: TcxGridDBColumn
          Caption = 'Sch.Finish'
          DataBinding.FieldName = 'estimasi_finish'
        end
        object cxTblJurnalactual_start: TcxGridDBColumn
          Caption = 'Act.Start'
          DataBinding.FieldName = 'actual_start'
        end
        object cxTblJurnalactual_finish: TcxGridDBColumn
          Caption = 'Act.Finish'
          DataBinding.FieldName = 'actual_finish'
        end
        object cxTblJurnalnote: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'note'
        end
      end
      object cxGrdISLevel1: TcxGridLevel
        GridView = cxTblJurnal
      end
    end
    object cxmDeskProject: TcxMemo
      Left = 8
      Top = 216
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      TabOrder = 1
      Height = 103
      Width = 785
    end
    object Panel2: TPanel
      Left = 256
      Top = 56
      Width = 313
      Height = 265
      TabOrder = 2
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 53
        Height = 13
        Caption = 'PIC Project'
      end
      object Label2: TLabel
        Left = 24
        Top = 40
        Width = 63
        Height = 13
        Caption = 'Estimasi Start'
      end
      object Label3: TLabel
        Left = 24
        Top = 64
        Width = 68
        Height = 13
        Caption = 'Estimasi Finish'
      end
      object Label4: TLabel
        Left = 24
        Top = 96
        Width = 30
        Height = 13
        Caption = 'Status'
      end
      object Label5: TLabel
        Left = 24
        Top = 120
        Width = 23
        Height = 13
        Caption = 'Note'
      end
      object btnSimpanApp: TButton
        Left = 16
        Top = 232
        Width = 75
        Height = 25
        Caption = '&Simpan'
        TabOrder = 0
        OnClick = btnSimpanAppClick
      end
      object btnBatalApp: TButton
        Left = 96
        Top = 232
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 1
        OnClick = btnBatalAppClick
      end
      object cxdTgl1: TcxDateEdit
        Left = 104
        Top = 40
        TabOrder = 2
        Width = 121
      end
      object cxdTgl2: TcxDateEdit
        Left = 104
        Top = 64
        TabOrder = 3
        Width = 121
      end
      object cmbRND: TComboBox
        Left = 104
        Top = 16
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          'INDRA'
          'YAYAN'
          'RACHMA'
          'PUJI')
      end
      object cmbStatus: TComboBox
        Left = 104
        Top = 88
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 5
        Items.Strings = (
          'OPEN'
          'PENDING'
          'WAITING')
      end
      object cxMemoKetTidakApp: TcxMemo
        Left = 24
        Top = 136
        TabOrder = 6
        Height = 89
        Width = 265
      end
    end
    object Panel1: TPanel
      Left = 304
      Top = 120
      Width = 233
      Height = 97
      TabOrder = 3
      object Label6: TLabel
        Left = 16
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Tanggal'
      end
      object cxdTgl3: TcxDateEdit
        Left = 64
        Top = 16
        TabOrder = 0
        Width = 121
      end
      object btnSimpanStart: TButton
        Left = 40
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Simpan Start'
        TabOrder = 1
        OnClick = btnSimpanStartClick
      end
      object btnBatalStart: TButton
        Left = 120
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 2
        OnClick = btnBatalStartClick
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 401
    inherited btnKeluar: TButton
      Left = 12
    end
    inherited btnHapus: TButton
      Caption = '&Close Project'
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Left = 463
      Visible = False
    end
    object btnEditPIC: TButton
      Left = 96
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Edit'
      TabOrder = 6
      OnClick = btnEditPICClick
    end
    object btnStart: TButton
      Left = 176
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Start'
      TabOrder = 7
      OnClick = btnStartClick
    end
    object btnFinish: TButton
      Left = 256
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Finish'
      TabOrder = 8
      OnClick = btnFinishClick
    end
  end
  object zqrJurnal: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_jurnal_rnd '
      ''
      'ORDER BY tgl_jurnal DESC')
    Params = <>
    Left = 465
    Top = 25
  end
  object dsJurnal: TDataSource
    DataSet = zqrJurnal
    Left = 495
    Top = 33
  end
end
