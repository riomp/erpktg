inherited frmAfterSales: TfrmAfterSales
  Left = 321
  Top = 107
  Height = 589
  Caption = 'After Sales Services'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 162
      Caption = 'After Sales Services'
    end
  end
  inherited pnlTengah: TPanel
    Height = 407
    object Label3: TLabel
      Left = 15
      Top = 13
      Width = 47
      Height = 13
      Caption = 'No. Trans'
    end
    object Label1: TLabel
      Left = 15
      Top = 37
      Width = 54
      Height = 13
      Caption = 'Jenis Trans'
    end
    object Label2: TLabel
      Left = 447
      Top = 37
      Width = 85
      Height = 13
      Caption = 'Diberikan Kepada'
    end
    object Label4: TLabel
      Left = 447
      Top = 61
      Width = 32
      Height = 13
      Caption = 'No. SJ'
    end
    object Label5: TLabel
      Left = 447
      Top = 85
      Width = 33
      Height = 13
      Caption = 'Tgl. SJ'
    end
    object Label6: TLabel
      Left = 447
      Top = 110
      Width = 56
      Height = 13
      Caption = 'Dibuat Oleh'
    end
    object Label7: TLabel
      Left = 15
      Top = 141
      Width = 36
      Height = 13
      Caption = 'Tempat'
    end
    object Label27: TLabel
      Left = 450
      Top = 140
      Width = 73
      Height = 13
      Caption = 'Aplikasi Produk'
    end
    object cmbJenis: TComboBox
      Left = 104
      Top = 32
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'KOMPLAIN'
      OnChange = cmbJenisChange
      Items.Strings = (
        'KOMPLAIN'
        'SURVEY')
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 59
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrans: TcxDateEdit
      Left = 104
      Top = 56
      TabOrder = 2
      Width = 145
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 84
      Caption = 'Customer'
    end
    object cxlCust: TcxLookupComboBox
      Left = 102
      Top = 82
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 3000
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
      Properties.ListSource = dsCust
      TabOrder = 4
      Width = 299
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 109
      Caption = 'Sales'
    end
    object cxlSales: TcxLookupComboBox
      Left = 102
      Top = 107
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 3000
      Properties.KeyFieldNames = 'kode_sales'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end
        item
          FieldName = 'kode_sales'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSales
      TabOrder = 6
      Width = 299
    end
    object cxLabel1: TcxLabel
      Left = 447
      Top = 12
      Caption = 'Kategori'
    end
    object cxdTglSJ: TcxDateEdit
      Left = 560
      Top = 80
      TabOrder = 8
      Width = 145
    end
    object cxtNoSJ: TcxTextEdit
      Left = 560
      Top = 56
      Properties.CharCase = ecUpperCase
      TabOrder = 9
      Width = 145
    end
    object cmbKategori: TComboBox
      Left = 560
      Top = 8
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        '')
    end
    object cxlDiberikan: TcxLookupComboBox
      Left = 560
      Top = 32
      Properties.KeyFieldNames = 'bagian'
      Properties.ListColumns = <
        item
          FieldName = 'bagian'
        end>
      Properties.ListSource = dsUserApp
      TabOrder = 11
      Width = 145
    end
    object cxeDibuatOleh: TcxTextEdit
      Tag = 1
      Left = 560
      Top = 107
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 12
      Width = 151
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 104
      Top = 11
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 13
      Width = 151
    end
    object cxPageControl1: TcxPageControl
      Left = 16
      Top = 176
      Width = 761
      Height = 225
      ActivePage = cxTabSheet1
      TabOrder = 14
      ClientRectBottom = 225
      ClientRectRight = 761
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Survey'
        ImageIndex = 0
        object cxGrid6: TcxGrid
          Left = 12
          Top = 8
          Width = 733
          Height = 169
          TabOrder = 0
          object cxTblSurvey: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxColKriteria: TcxGridColumn
              Caption = 'Kriteria'
              Options.Sorting = False
              Width = 177
            end
            object cxColPoin: TcxGridColumn
              Caption = 'Poin'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5')
              HeaderAlignmentHorz = taCenter
              Width = 89
            end
            object cxColNote: TcxGridColumn
              Caption = 'Note'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              HeaderAlignmentHorz = taCenter
              Width = 451
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxTblSurvey
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Keluhan'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 8
          Top = 8
          Width = 737
          Height = 193
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxTblKeluhan: TcxGridTableView
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
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnRecordChanged = cxTblKeluhanDataControllerRecordChanged
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
              Width = 51
            end
            object cxColKode: TcxGridColumn
              Caption = 'Kode'
              Width = 73
            end
            object cxColItem: TcxGridColumn
              Caption = 'Deskripsi'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  FieldName = 'deskripsi'
                end
                item
                  FieldName = 'kode'
                end>
              Properties.ListSource = dsBrg
              HeaderAlignmentHorz = taCenter
              Width = 221
            end
            object cxColQty: TcxGridColumn
              Caption = 'Qty Komplain'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxColNoSO: TcxGridColumn
              Caption = 'No.SO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              HeaderAlignmentHorz = taCenter
              Width = 154
            end
            object cxColNoSPK: TcxGridColumn
              Caption = 'No.SPK'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              HeaderAlignmentHorz = taCenter
              Width = 148
            end
            object cxColNoCP: TcxGridColumn
              Caption = 'No.CP'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              HeaderAlignmentHorz = taCenter
              Width = 124
            end
            object cxColKeluhan: TcxGridColumn
              Caption = 'Komplain'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              HeaderAlignmentHorz = taCenter
              Width = 425
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxTblKeluhan
          end
        end
      end
    end
    object cxtTempat: TcxTextEdit
      Left = 104
      Top = 136
      Properties.CharCase = ecUpperCase
      TabOrder = 15
      Width = 305
    end
    object cxtAplikasi: TcxTextEdit
      Tag = 1
      Left = 560
      Top = 134
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 16
      Width = 241
    end
  end
  inherited pnlBawah: TPanel
    Top = 473
  end
  object zqrCust: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_customer'
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Properties.Strings = (
      'SELECT kode,nama,alamat FROM tbl_customer')
    Left = 296
    Top = 21
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 326
    Top = 21
  end
  object zqrSales: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_sales')
    Params = <>
    Properties.Strings = (
      'SELECT * FROM tbl_sales')
    Left = 360
    Top = 21
  end
  object dsSales: TDataSource
    DataSet = zqrSales
    Left = 390
    Top = 21
  end
  object zrq: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_bagian '
      'ORDER BY bagian'
      ''
      '-- SELECT nama, user_dept, email '
      '-- FROM tbl_user ORDER BY nama')
    Params = <>
    Left = 421
    Top = 20
  end
  object dsUserApp: TDataSource
    DataSet = zrq
    Left = 451
    Top = 20
  end
  object zBrg: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi FROM tbl_barang '
      ' where left(kode,1)='#39'A'#39)
    Params = <>
    Left = 485
    Top = 20
  end
  object dsBrg: TDataSource
    DataSet = zBrg
    Left = 515
    Top = 20
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 256
    Top = 18
  end
end
