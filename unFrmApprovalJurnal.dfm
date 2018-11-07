inherited frmApprovalJurnalKerja: TfrmApprovalJurnalKerja
  Left = 299
  Top = 63
  Width = 769
  Height = 631
  Caption = 'Approval Jurnal Kerja'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 753
    inherited lblJudul: TLabel
      Width = 218
      Caption = 'Approval Jurnal Kerja RND'
    end
  end
  inherited pnlTengah: TPanel
    Width = 753
    Height = 447
    object Label20: TLabel
      Left = 7
      Top = 260
      Width = 79
      Height = 13
      Caption = 'Deskripsi Project'
    end
    object Label4: TLabel
      Left = 7
      Top = 212
      Width = 61
      Height = 13
      Caption = 'Judul Project'
    end
    object Label5: TLabel
      Left = 7
      Top = 236
      Width = 69
      Height = 13
      Caption = 'Tujuan Project'
    end
    object cxGrdIS: TcxGrid
      Left = 8
      Top = 10
      Width = 730
      Height = 191
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
          Width = 135
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
        end
        object cxTblJurnalColumn3: TcxGridDBColumn
          Caption = 'Approval'
          DataBinding.FieldName = 'f_approve'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 79
        end
      end
      object cxGrdISLevel1: TcxGridLevel
        GridView = cxTblJurnal
      end
    end
    object cxmDeskProject: TcxMemo
      Left = 8
      Top = 288
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      TabOrder = 1
      Height = 145
      Width = 729
    end
    object Panel1: TPanel
      Left = 143
      Top = 91
      Width = 526
      Height = 206
      TabOrder = 2
      Visible = False
      object Button3: TButton
        Left = 505
        Top = 4
        Width = 17
        Height = 18
        Caption = 'X'
        TabOrder = 0
        Visible = False
      end
      object cxMemoKetTidakApp: TcxMemo
        Left = 10
        Top = 32
        TabOrder = 2
        Height = 136
        Width = 506
      end
      object cxLabel1: TcxLabel
        Left = 10
        Top = 12
        Caption = 'Keterangan Tidak Approval '
      end
      object btnSimpanTidakApp: TButton
        Left = 10
        Top = 172
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 3
        OnClick = btnSimpanTidakAppClick
      end
      object Button4: TButton
        Left = 90
        Top = 172
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 4
        OnClick = Button4Click
      end
    end
    object Panel2: TPanel
      Left = 256
      Top = 112
      Width = 281
      Height = 137
      TabOrder = 3
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
      object btnSimpanApp: TButton
        Left = 24
        Top = 96
        Width = 75
        Height = 25
        Caption = '&Simpan'
        TabOrder = 0
        OnClick = btnSimpanAppClick
      end
      object btnBatalApp: TButton
        Left = 104
        Top = 96
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
    end
    object cxtJudul: TcxTextEdit
      Left = 96
      Top = 208
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 417
    end
    object cxtTujuan: TcxTextEdit
      Left = 96
      Top = 232
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 417
    end
  end
  inherited pnlBawah: TPanel
    Top = 513
    Width = 753
    inherited btnKeluar: TButton
      Left = 180
    end
    inherited btnSimpan: TButton
      Left = 455
      Top = 17
      Visible = False
    end
    object btnApprove: TButton
      Left = 12
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Approve'
      TabOrder = 6
      OnClick = btnApproveClick
    end
    object btnTidakApprove: TButton
      Left = 92
      Top = 25
      Width = 81
      Height = 25
      Caption = 'Tidak Approve'
      TabOrder = 7
      OnClick = btnTidakApproveClick
    end
  end
  object zqrJurnal: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_jurnal_rnd ORDER BY tgl_jurnal DESC'
      '-- ')
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
