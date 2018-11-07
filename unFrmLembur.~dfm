inherited frmLembur: TfrmLembur
  Left = 334
  Top = 141
  Width = 542
  Height = 559
  Caption = 'Lembur'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 526
    inherited lblJudul: TLabel
      Width = 61
      Caption = 'Lembur'
    end
    object btnEdit2: TButton
      Left = 275
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 352
      Top = 26
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'no'
      Properties.ListColumns = <
        item
          FieldName = 'no'
        end
        item
          FieldName = 'tanggal'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsLemburHead
      TabOrder = 1
      Width = 166
    end
  end
  inherited pnlTengah: TPanel
    Width = 526
    Height = 375
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. SPL'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 102
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 35
      Caption = 'Tgl. SPL'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 102
      Top = 33
      Properties.ReadOnly = False
      TabOrder = 3
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 247
      Top = 10
      Caption = 'Lembur Pada Waktu'
    end
    object cxLabel5: TcxLabel
      Left = 247
      Top = 36
      Caption = 'Tgl.Lembur'
    end
    object cxdLembur: TcxDateEdit
      Left = 368
      Top = 33
      Properties.ReadOnly = False
      TabOrder = 6
      Width = 103
    end
    object cmbLembur: TcxComboBox
      Left = 368
      Top = 8
      Properties.Items.Strings = (
        'NORMAL'
        'LIBUR')
      TabOrder = 7
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 84
      Caption = 'Uraian Tugas'
    end
    object cxMemo1: TcxMemo
      Left = 16
      Top = 104
      Properties.CharCase = ecUpperCase
      TabOrder = 9
      Height = 73
      Width = 489
    end
    object cxGrid1: TcxGrid
      Left = 16
      Top = 184
      Width = 489
      Height = 177
      TabOrder = 10
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxTblLembur: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
          end
          item
            Kind = skSum
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###'
            Kind = skSum
            DisplayText = 'Total'
          end
          item
            Format = '#,###'
            Kind = skSum
            VisibleForCustomization = False
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnRecordChanged = cxGrid1TableView1DataControllerRecordChanged
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        object cxColNo: TcxGridColumn
          Caption = 'No.'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.UseCtrlIncrement = True
          OnGetDisplayText = cxColNoGetDisplayText
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 39
        end
        object cxColKode: TcxGridColumn
          Caption = 'Nip'
          Width = 103
        end
        object cxColNama: TcxGridColumn
          Caption = 'Nama Karyawan'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'nip'
          Properties.ListColumns = <
            item
              FieldName = 'nama'
            end>
          Properties.ListSource = dsKaryawan
          HeaderAlignmentHorz = taCenter
          Width = 206
        end
        object cxColMulai: TcxGridColumn
          Caption = 'Mulai'
          DataBinding.ValueType = 'DateTime'
          PropertiesClassName = 'TcxTimeEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object cxColAkhir: TcxGridColumn
          Caption = 'Akhir'
          DataBinding.ValueType = 'DateTime'
          PropertiesClassName = 'TcxTimeEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxColKeterangan: TcxGridColumn
          Caption = 'Keterangan'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 253
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTblLembur
      end
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 60
      Caption = 'Diajukan Oleh'
    end
    object cxtDiajukan: TcxTextEdit
      Left = 104
      Top = 56
      Properties.CharCase = ecUpperCase
      TabOrder = 12
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Top = 441
    Width = 526
  end
  object zKaryawan: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_karyawan_ktg')
    Params = <>
    Left = 106
    Top = 17
  end
  object dsKaryawan: TDataSource
    DataSet = zKaryawan
    Left = 144
    Top = 20
  end
  object zLemburHead: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_lembur_head ORDER BY tanggal DESC')
    Params = <>
    Left = 178
    Top = 17
  end
  object dsLemburHead: TDataSource
    DataSet = zLemburHead
    Left = 216
    Top = 20
  end
end
