inherited frmRework: TfrmRework
  Left = 614
  Top = 85
  Width = 898
  Height = 667
  Caption = 'Rework'
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 882
    inherited lblJudul: TLabel
      Width = 73
      Caption = 'REWORK'
    end
  end
  inherited pnlTengah: TPanel
    Width = 882
    Height = 485
    object Label1: TLabel
      Left = 415
      Top = 20
      Width = 38
      Height = 13
      Caption = 'No.SPK'
    end
    object Label3: TLabel
      Left = 10
      Top = 45
      Width = 62
      Height = 13
      Caption = 'Kode Barang'
    end
    object lblDeskripsi: TLabel
      Left = 95
      Top = 70
      Width = 5
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 290
      Top = 45
      Width = 37
      Height = 13
      Caption = 'Routing'
    end
    object Label5: TLabel
      Left = 11
      Top = 110
      Width = 59
      Height = 13
      Caption = 'Tgl.Produksi'
    end
    object Label8: TLabel
      Left = 236
      Top = 110
      Width = 21
      Height = 13
      Caption = 'Shift'
    end
    object Label6: TLabel
      Left = 11
      Top = 135
      Width = 66
      Height = 13
      Caption = 'Start Produksi'
    end
    object Label7: TLabel
      Left = 11
      Top = 155
      Width = 71
      Height = 13
      Caption = 'Finish Produksi'
    end
    object Label9: TLabel
      Left = 342
      Top = 110
      Width = 28
      Height = 13
      Caption = 'Mesin'
    end
    object Label10: TLabel
      Left = 342
      Top = 135
      Width = 50
      Height = 13
      Caption = 'Qty.Reject'
    end
    object Label11: TLabel
      Left = 342
      Top = 160
      Width = 59
      Height = 13
      Caption = 'Jml.Operator'
    end
    object cxLabel1: TcxLabel
      Left = 230
      Top = 15
      Caption = 'No. LHP'
    end
    object cxtNoLHP: TcxTextEdit
      Tag = 1
      Left = 284
      Top = 13
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 15
      Caption = 'No. Rework'
    end
    object cxtNoBukti: TcxTextEdit
      Tag = 1
      Left = 95
      Top = 13
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 121
    end
    object txtSPK: TEdit
      Left = 465
      Top = 15
      Width = 186
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object txtKode: TEdit
      Left = 95
      Top = 40
      Width = 186
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object cxtUrut: TcxTextEdit
      Left = 340
      Top = 40
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 56
    end
    object cxtRouting: TcxTextEdit
      Left = 399
      Top = 40
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 161
    end
    object cxtRouting1: TcxTextEdit
      Left = 660
      Top = 15
      Properties.ReadOnly = True
      TabOrder = 8
      Visible = False
      Width = 161
    end
    object cxdTglPrd: TcxDateEdit
      Left = 106
      Top = 105
      Properties.OnEditValueChanged = cxdTglPrdPropertiesEditValueChanged
      TabOrder = 9
      Width = 121
    end
    object cxtShift: TcxTextEdit
      Left = 266
      Top = 105
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 56
    end
    object cxdStart: TcxDateEdit
      Left = 106
      Top = 130
      Properties.Kind = ckDateTime
      Properties.SaveTime = False
      Properties.OnEditValueChanged = cxdStartPropertiesEditValueChanged
      TabOrder = 11
      Width = 216
    end
    object cxdFinish: TcxDateEdit
      Left = 106
      Top = 155
      Properties.Kind = ckDateTime
      TabOrder = 12
      Width = 216
    end
    object cxlMesin: TcxLookupComboBox
      Left = 421
      Top = 105
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          FieldName = 'kode'
        end
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMesin
      Properties.MaxLength = 0
      TabOrder = 13
      Width = 201
    end
    object cxsReject: TcxSpinEdit
      Left = 421
      Top = 130
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ValueType = vtFloat
      TabOrder = 14
      Width = 121
    end
    object cxsOperator: TcxSpinEdit
      Left = 421
      Top = 155
      Properties.AssignedValues.DisplayFormat = True
      Properties.AssignedValues.EditFormat = True
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 15
      Width = 121
    end
    object cxPageControl1: TcxPageControl
      Left = 10
      Top = 185
      Width = 856
      Height = 291
      ActivePage = cxTabSheet1
      TabOrder = 16
      ClientRectBottom = 291
      ClientRectRight = 856
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Hasil Produksi'
        ImageIndex = 0
        DesignSize = (
          856
          267)
        object Label4: TLabel
          Left = 6
          Top = 245
          Width = 111
          Height = 13
          Caption = 'Qty yg harus di rework :'
        end
        object Label12: TLabel
          Left = 216
          Top = 245
          Width = 34
          Height = 13
          Caption = 'Satuan'
        end
        object Label13: TLabel
          Left = 346
          Top = 245
          Width = 15
          Height = 13
          Caption = 'KG'
        end
        object cxGrid1: TcxGrid
          Left = 5
          Top = 14
          Width = 839
          Height = 217
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          object cxTblHP: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColNoTblHPQty1
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColNoTblHPQty2
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColNoTblHPQty3
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxColNoTblHPLot: TcxGridColumn
              Caption = 'No.LOT/Roll'
              Width = 190
            end
            object cxColNoTblHPQty1: TcxGridColumn
              Caption = 'Qty.Hasil'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 97
            end
            object cxColNoTblHPSat1: TcxGridColumn
              Caption = 'Unit'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'unitid'
              Properties.ListColumns = <
                item
                  FieldName = 'unitid'
                end>
              Properties.ListSource = dsUnit
            end
            object cxColNoTblHPQty2: TcxGridColumn
              Caption = 'Qty (KG)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 112
            end
            object cxColNoTblHPQty3: TcxGridColumn
              Caption = 'Qty(M)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 119
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxTblHP
          end
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 130
          Top = 240
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Width = 81
        end
        object cxSpinEdit2: TcxSpinEdit
          Left = 260
          Top = 240
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 2
          Width = 81
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Afval / Downtime'
        ImageIndex = 1
        DesignSize = (
          856
          267)
        object cxGrid4: TcxGrid
          Left = 5
          Top = 9
          Width = 839
          Height = 247
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          object cxTblDT: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,##0'
                Kind = skSum
                Column = cxColQtyReject2
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxColQtyReject2
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnRecordChanged = cxTblDTDataControllerRecordChanged
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cxColNoSPK2: TcxGridColumn
              Caption = 'No. SPK'
              Visible = False
              Options.Editing = False
              Width = 116
            end
            object cxColKodeBrg2: TcxGridColumn
              Caption = 'Kode Brg.'
              Visible = False
              Options.Editing = False
              Width = 101
            end
            object cxColDeskripsi2: TcxGridColumn
              Caption = 'Deskripsi'
              Visible = False
              Options.Editing = False
              Width = 185
            end
            object cxColRouting2: TcxGridColumn
              Caption = 'Routing'
              Visible = False
              Options.Editing = False
              Width = 97
            end
            object cxColTglSPK2: TcxGridColumn
              Caption = 'Tgl. SPK'
              DataBinding.ValueType = 'DateTime'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxColQtySPK2: TcxGridColumn
              Caption = 'Qty. SPK'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,#0.00'
              Visible = False
              Options.Editing = False
              Width = 87
            end
            object cxColKategoriDown2: TcxGridColumn
              Caption = 'Kategori'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'kategori'
              Properties.ListColumns = <
                item
                  Caption = 'Kategori'
                  FieldName = 'kategori'
                end>
              Properties.ListSource = dsKategoriDown
              Width = 262
            end
            object cxColJenisDowntime: TcxGridColumn
              Caption = 'Jenis Afval / Downtime'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'jenis'
              Properties.ListColumns = <
                item
                  FieldName = 'jenis'
                end>
              Properties.ListSource = dsKetMesin
              Width = 252
            end
            object cxColTglHP2: TcxGridColumn
              Caption = 'Tgl. Produksi'
              DataBinding.ValueType = 'DateTime'
              PropertiesClassName = 'TcxDateEditProperties'
              Visible = False
              Width = 75
            end
            object cxGridColumn8: TcxGridColumn
              Caption = 'Hasil Produksi'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Visible = False
              Width = 79
            end
            object cxColQtyReject2: TcxGridColumn
              Caption = 'Qty.Af/DT'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 83
            end
            object cxColMesin2: TcxGridColumn
              Caption = 'Mesin'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  FieldName = 'kode'
                end
                item
                  FieldName = 'nama'
                end>
              Visible = False
              Width = 91
            end
            object cxColSatSPK2: TcxGridColumn
              Caption = 'Sat'
              Visible = False
              GroupIndex = 0
              Options.Editing = False
              Width = 57
            end
            object cxColKetMesin2: TcxGridColumn
              Caption = 'Keterangan Downtime'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Width = 343
            end
            object cxColShift2: TcxGridColumn
              Caption = 'Shift'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                '1'
                '2'
                '3')
              Visible = False
              Width = 45
            end
            object cxColJam2_1: TcxGridColumn
              Caption = 'Jam 1'
              DataBinding.ValueType = 'DateTime'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Kind = ckDateTime
              Visible = False
              Width = 114
            end
            object cxColJam2_2: TcxGridColumn
              Caption = 'Jam 2'
              DataBinding.ValueType = 'DateTime'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Kind = ckDateTime
              Visible = False
              Width = 107
            end
            object cxColOperator2: TcxGridColumn
              Caption = 'Operator'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Visible = False
              Width = 114
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxTblDT
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Pemakaian Bahan'
        ImageIndex = 2
        object cxGrid12: TcxGrid
          Left = 4
          Top = 5
          Width = 827
          Height = 256
          TabOrder = 0
          object cxTblPakaiBBDet: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Insert.Enabled = False
            NavigatorButtons.Append.Enabled = False
            NavigatorButtons.Edit.Enabled = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxGridColumn31
              end
              item
                Kind = skSum
                Column = cxColTHPP
              end
              item
                Kind = skSum
                Column = cxGridColumn29
              end
              item
                Kind = skSum
                Column = cxColLayer1
              end
              item
                Kind = skSum
                Column = cxColLayer2
              end
              item
                Kind = skSum
                Column = cxColLayer3
              end
              item
                Kind = skSum
                Column = cxColLayer4
              end
              item
                Kind = skSum
                Column = cxColLayer5
              end
              item
                Kind = skSum
                Column = cxColLayer6
              end
              item
                Kind = skSum
                Column = cxColLayer7
              end
              item
                Kind = skSum
                Column = cXColLayer8
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxColDosing: TcxGridColumn
              Caption = 'Dosing'
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
            end
            object cxGridColumn18: TcxGridColumn
              Caption = 'Kode Brg.'
              Options.Editing = False
              Width = 138
            end
            object cxGridColumn27: TcxGridColumn
              Caption = 'Dekripsi'
              Options.Editing = False
              Width = 374
            end
            object cxGridColumn30: TcxGridColumn
              Caption = 'Satuan'
            end
            object cxGridColumn28: TcxGridColumn
              Caption = 'Qty. BOM'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Options.Editing = False
              Width = 86
            end
            object cxColSisa: TcxGridColumn
              Caption = 'Stock'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
            end
            object cxGridColumn29: TcxGridColumn
              Caption = 'Sdh.Digunakan'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Options.Editing = False
              Width = 87
            end
            object cxGridColumn31: TcxGridColumn
              Caption = 'Qty.Penggunaan'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.SpinButtons.Visible = False
              Properties.ValueType = vtFloat
              Width = 85
            end
            object cxColLayer1: TcxGridColumn
              Caption = 'Layer 1 (Kg)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cxColLayer2: TcxGridColumn
              Caption = 'Layer 2 (Kg)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cxColLayer3: TcxGridColumn
              Caption = 'Layer 3 (Kg)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cxColLayer4: TcxGridColumn
              Caption = 'Layer4 (Kg)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cxColLayer5: TcxGridColumn
              Caption = 'Layer5 (Kg)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cxColLayer6: TcxGridColumn
              Caption = 'Layer6 (Kg)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cxColLayer7: TcxGridColumn
              Caption = 'Layer7 (Kg)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cXColLayer8: TcxGridColumn
              Caption = 'Layer8 (Kg)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cxColHPP: TcxGridColumn
              Caption = 'HPP'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.ValueType = vtFloat
              Visible = False
            end
            object cxColTHPP: TcxGridColumn
              Caption = 'THPP'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.ValueType = vtFloat
              Visible = False
            end
          end
          object cxGridLevel9: TcxGridLevel
            GridView = cxTblPakaiBBDet
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Operator'
        ImageIndex = 4
        DesignSize = (
          856
          267)
        object cxGrid3: TcxGrid
          Left = 5
          Top = 9
          Width = 839
          Height = 247
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          object cxKaryawan: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxKaryawanColumn1
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnRecordChanged = cxKaryawanDataControllerRecordChanged
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cxKaryawanColumn1: TcxGridColumn
              Caption = 'NIP'
              HeaderAlignmentHorz = taCenter
              Width = 151
            end
            object cxKaryawanColumn2: TcxGridColumn
              Caption = 'Nama Operator'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'NIP'
              Properties.ListColumns = <
                item
                  FieldName = 'Nama'
                end>
              Properties.ListSource = dsKaryawan
              HeaderAlignmentHorz = taCenter
              Width = 438
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxKaryawan
          end
        end
      end
    end
    object cxsDurasi: TcxSpinEdit
      Left = 555
      Top = 130
      Properties.AssignedValues.DisplayFormat = True
      Properties.AssignedValues.EditFormat = True
      Properties.ValueType = vtFloat
      TabOrder = 17
      Visible = False
      Width = 81
    end
    object cxsQtySpk: TcxSpinEdit
      Left = 635
      Top = 80
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ValueType = vtFloat
      TabOrder = 18
      Visible = False
      Width = 121
    end
    object cxtUnitSPK: TcxTextEdit
      Left = 635
      Top = 105
      Properties.ReadOnly = True
      TabOrder = 19
      Visible = False
      Width = 56
    end
  end
  inherited pnlBawah: TPanel
    Top = 551
    Width = 882
    inherited btnSimpan: TButton
      Left = 10
    end
  end
  object zqrKategoriDown: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_kategori_afdown'
      'ORDER BY kategori')
    Params = <>
    Left = 465
    Top = 15
  end
  object dsKategoriDown: TDataSource
    DataSet = zqrKategoriDown
    Left = 495
    Top = 15
  end
  object zqrKetMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_ket_mesin'
      'WHERE (mesin= :mesin) and (kategori = :kategori)'
      'ORDER BY jenis'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'mesin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kategori'
        ParamType = ptUnknown
      end>
    Left = 525
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mesin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kategori'
        ParamType = ptUnknown
      end>
  end
  object dsKetMesin: TDataSource
    DataSet = zqrKetMesin
    Left = 555
    Top = 15
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_mesin'
      '')
    Params = <>
    Left = 590
    Top = 15
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 620
    Top = 15
  end
  object zqrUnit: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unit'
      '')
    Params = <>
    Left = 650
    Top = 15
  end
  object dsUnit: TDataSource
    DataSet = zqrUnit
    Left = 680
    Top = 15
  end
  object zqrKaryawan: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT nip,nama FROM tbl_karyawan_ktg where departemen='#39'PRODUCTI' +
        'ON'#39' and f_aktif=1'
      '')
    Params = <>
    Left = 715
    Top = 15
  end
  object dsKaryawan: TDataSource
    DataSet = zqrKaryawan
    Left = 745
    Top = 15
  end
end
