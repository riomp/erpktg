inherited frmInputLHP: TfrmInputLHP
  Left = 573
  Top = 122
  Width = 882
  Height = 648
  Caption = 'Input LHP'
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 866
    inherited lblJudul: TLabel
      Width = 285
      Caption = 'INPUT LAPORAN HASIL PRODUKSI'
    end
  end
  inherited pnlTengah: TPanel
    Width = 866
    Height = 465
    object Label1: TLabel
      Left = 20
      Top = 15
      Width = 38
      Height = 13
      Caption = 'No.SPK'
    end
    object Label3: TLabel
      Left = 20
      Top = 40
      Width = 62
      Height = 13
      Caption = 'Kode Barang'
    end
    object lblDeskripsi: TLabel
      Left = 115
      Top = 60
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
      Left = 555
      Top = 15
      Width = 37
      Height = 13
      Caption = 'Routing'
    end
    object Label4: TLabel
      Left = 555
      Top = 40
      Width = 32
      Height = 13
      Caption = 'No.SO'
    end
    object Label5: TLabel
      Left = 20
      Top = 85
      Width = 59
      Height = 13
      Caption = 'Tgl.Produksi'
    end
    object Label6: TLabel
      Left = 20
      Top = 110
      Width = 66
      Height = 13
      Caption = 'Start Produksi'
    end
    object Label7: TLabel
      Left = 20
      Top = 130
      Width = 71
      Height = 13
      Caption = 'Finish Produksi'
    end
    object Label8: TLabel
      Left = 245
      Top = 85
      Width = 21
      Height = 13
      Caption = 'Shift'
    end
    object Label9: TLabel
      Left = 351
      Top = 85
      Width = 28
      Height = 13
      Caption = 'Mesin'
    end
    object Label10: TLabel
      Left = 351
      Top = 110
      Width = 50
      Height = 13
      Caption = 'Qty.Reject'
    end
    object Label11: TLabel
      Left = 351
      Top = 135
      Width = 59
      Height = 13
      Caption = 'Jml.Operator'
    end
    object Label12: TLabel
      Left = 396
      Top = 420
      Width = 105
      Height = 13
      Caption = 'Selish Bahan VS Hasil'
    end
    object Label13: TLabel
      Left = 6
      Top = 420
      Width = 57
      Height = 13
      Caption = 'Berat Bersih'
    end
    object Label14: TLabel
      Left = 6
      Top = 440
      Width = 53
      Height = 13
      Caption = 'Berat Kotor'
    end
    object Label15: TLabel
      Left = 206
      Top = 420
      Width = 52
      Height = 13
      Caption = 'Berat NPM'
    end
    object Label16: TLabel
      Left = 556
      Top = 110
      Width = 75
      Height = 13
      Caption = 'Jam Opr Normal'
    end
    object Label17: TLabel
      Left = 556
      Top = 135
      Width = 77
      Height = 13
      Caption = 'Jam Opr Lembur'
    end
    object txtSPK: TEdit
      Left = 115
      Top = 10
      Width = 186
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object btnCariBrg: TButton
      Left = 305
      Top = 9
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 1
      OnClick = btnCariBrgClick
    end
    object txtKode: TEdit
      Left = 115
      Top = 35
      Width = 186
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object cxtUrut: TcxTextEdit
      Left = 625
      Top = 10
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 56
    end
    object cxtRouting: TcxTextEdit
      Left = 685
      Top = 10
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 161
    end
    object cxtSO: TcxTextEdit
      Left = 625
      Top = 35
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 161
    end
    object cxdTglPrd: TcxDateEdit
      Left = 115
      Top = 80
      Properties.OnEditValueChanged = cxdTglPrdPropertiesEditValueChanged
      TabOrder = 6
      Width = 121
    end
    object cxdStart: TcxDateEdit
      Left = 115
      Top = 105
      Properties.Kind = ckDateTime
      Properties.SaveTime = False
      Properties.OnEditValueChanged = cxdStartPropertiesEditValueChanged
      TabOrder = 7
      Width = 216
    end
    object cxdFinish: TcxDateEdit
      Left = 115
      Top = 130
      Properties.Kind = ckDateTime
      Properties.OnEditValueChanged = cxdFinishPropertiesEditValueChanged
      TabOrder = 8
      Width = 216
    end
    object cxtShift: TcxTextEdit
      Left = 275
      Top = 80
      Properties.ReadOnly = True
      TabOrder = 9
      Width = 56
    end
    object cxPageControl1: TcxPageControl
      Left = 5
      Top = 160
      Width = 856
      Height = 251
      ActivePage = cxTabSheet1
      Color = clGradientInactiveCaption
      ParentColor = False
      TabOrder = 10
      ClientRectBottom = 251
      ClientRectRight = 856
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Hasil Produksi'
        ImageIndex = 0
        DesignSize = (
          856
          227)
        object cxGrid1: TcxGrid
          Left = 5
          Top = 9
          Width = 839
          Height = 207
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
            DataController.OnRecordChanged = cxTblHPDataControllerRecordChanged
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
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Afval / Downtime'
        ImageIndex = 1
        DesignSize = (
          856
          227)
        object Label18: TLabel
          Left = 6
          Top = 204
          Width = 65
          Height = 13
          Caption = 'Total Afval'
          Color = clGradientInactiveCaption
          ParentColor = False
        end
        object Label19: TLabel
          Left = 201
          Top = 204
          Width = 42
          Height = 13
          Caption = 'Total DT'
          Color = clGradientInactiveCaption
          ParentColor = False
        end
        object cxGrid4: TcxGrid
          Left = 5
          Top = 5
          Width = 844
          Height = 191
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
            DataController.OnAfterPost = cxTblDTDataControllerAfterPost
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
        object cxsAfval: TcxSpinEdit
          Left = 70
          Top = 201
          Properties.DisplayFormat = '#,#0.00'
          Properties.EditFormat = '#,#0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Width = 121
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Pemakaian Bahan'
        ImageIndex = 2
        object cxGrid12: TcxGrid
          Left = 4
          Top = 5
          Width = 847
          Height = 216
          TabOrder = 0
          object cxTblPakaiBBDet: TcxGridTableView
            NavigatorButtons.OnButtonClick = cxTblPakaiBBDetNavigatorButtonsButtonClick
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
              end
              item
                Kind = skSum
                Column = cxColQtyKG
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnAfterPost = cxTblPakaiBBDetDataControllerAfterPost
            DataController.OnRecordChanged = cxTblPakaiBBDetDataControllerRecordChanged
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
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 90
            end
            object cxColQtyKG: TcxGridColumn
              Caption = 'Qty.Penggunaan (KG)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 111
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
      object cxTabSheet4: TcxTabSheet
        Caption = 'Karantina'
        ImageIndex = 3
        DesignSize = (
          856
          227)
        object cxGrid2: TcxGrid
          Left = 5
          Top = 5
          Width = 839
          Height = 211
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          object cxTblHP1: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColHP1Qty
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColHP1QtyKG
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColHP1QtyM
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnRecordChanged = cxTblHP1DataControllerRecordChanged
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxColHP1Lot: TcxGridColumn
              Caption = 'No.LOT/Roll'
              Width = 190
            end
            object cxColHP1Qty: TcxGridColumn
              Caption = 'Qty.Hasil'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 97
            end
            object cxColHP1Unit: TcxGridColumn
              Caption = 'Unit'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'unitid'
              Properties.ListColumns = <
                item
                  FieldName = 'unitid'
                end>
              Properties.ListSource = dsUnit
            end
            object cxColHP1QtyKG: TcxGridColumn
              Caption = 'Qty (KG)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 112
            end
            object cxColHP1QtyM: TcxGridColumn
              Caption = 'Qty (M)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 95
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxTblHP1
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Operator'
        ImageIndex = 4
        DesignSize = (
          856
          227)
        object cxGrid3: TcxGrid
          Left = 5
          Top = 10
          Width = 846
          Height = 206
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
    object cxlMesin: TcxLookupComboBox
      Left = 430
      Top = 80
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
      TabOrder = 11
      Width = 201
    end
    object cxsReject: TcxSpinEdit
      Left = 430
      Top = 105
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ValueType = vtFloat
      TabOrder = 12
      Width = 121
    end
    object cxsOperator: TcxSpinEdit
      Left = 430
      Top = 130
      Properties.AssignedValues.DisplayFormat = True
      Properties.AssignedValues.EditFormat = True
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 13
      Width = 121
    end
    object cxtMO: TcxTextEdit
      Left = 865
      Top = 45
      Properties.ReadOnly = True
      TabOrder = 14
      Visible = False
      Width = 161
    end
    object cxtTrans: TEdit
      Left = 870
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 15
      Visible = False
    end
    object cxtRouting1: TcxTextEdit
      Left = 625
      Top = 55
      Properties.ReadOnly = True
      TabOrder = 16
      Width = 161
    end
    object cxsQtySpk: TcxSpinEdit
      Left = 635
      Top = 80
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ValueType = vtFloat
      TabOrder = 17
      Visible = False
      Width = 121
    end
    object cxtUnitSPK: TcxTextEdit
      Left = 735
      Top = 105
      Properties.ReadOnly = True
      TabOrder = 18
      Visible = False
      Width = 56
    end
    object cxsDurasi: TcxSpinEdit
      Left = 800
      Top = 105
      Properties.AssignedValues.DisplayFormat = True
      Properties.AssignedValues.EditFormat = True
      Properties.ValueType = vtFloat
      TabOrder = 19
      Visible = False
      Width = 81
    end
    object cxCheck: TcxCheckBox
      Left = 330
      Top = 10
      Caption = 'Inline'
      Properties.OnChange = cxCheckPropertiesChange
      TabOrder = 20
      Width = 121
    end
    object cxlInline: TcxLookupComboBox
      Left = 380
      Top = 10
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          FieldName = 'no_bukti'
        end
        item
          Width = 100
          FieldName = 'no_spk'
        end>
      Properties.ListSource = dsInline
      Properties.MaxLength = 0
      Properties.OnChange = cxlInlinePropertiesChange
      TabOrder = 21
      Visible = False
      Width = 171
    end
    object cxtLHP: TEdit
      Left = 765
      Top = 80
      Width = 186
      Height = 21
      ReadOnly = True
      TabOrder = 22
      Visible = False
    end
    object cxChkPosting: TcxCheckBox
      Left = 328
      Top = 32
      Caption = 'Posting'
      TabOrder = 23
      Width = 121
    end
    object cxsBB: TcxSpinEdit
      Left = 75
      Top = 415
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 24
      Width = 121
    end
    object cxsBK: TcxSpinEdit
      Left = 75
      Top = 435
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 25
      Width = 121
    end
    object cxsSelisih: TcxSpinEdit
      Left = 505
      Top = 415
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 26
      Width = 121
    end
    object cxsNPM: TcxSpinEdit
      Left = 265
      Top = 415
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 27
      Width = 121
    end
    object cxsJamOpr: TcxSpinEdit
      Left = 640
      Top = 105
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ValueType = vtFloat
      TabOrder = 28
      Width = 86
    end
    object cxsJamOpr1: TcxSpinEdit
      Left = 640
      Top = 130
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ValueType = vtFloat
      TabOrder = 29
      Width = 86
    end
    object cxsDT: TcxSpinEdit
      Left = 265
      Top = 385
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 30
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Top = 531
    Width = 866
    inherited btnKeluar: TButton
      Left = 97
    end
    inherited btnBaru: TButton
      Left = 375
      Top = 5
      Caption = '&Posting'
    end
    inherited btnEdit: TButton
      Left = 460
      Top = 5
    end
    inherited btnHapus: TButton
      Left = 645
      Top = 30
    end
  end
  object dsHslPrd: TDataSource
    DataSet = zqrHslPrd
    Left = 435
    Top = 13
  end
  object zqrHslPrd: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*,b.kode_brg,b.deskripsi,b.satuan,b.routing  FROM tbl_h' +
        'sl_prd as a'
      'join v_spk as b on a.no_spk=b.no_spk')
    Params = <>
    Left = 465
    Top = 13
  end
  object zqrKategoriDown: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_kategori_afdown'
      'ORDER BY kategori')
    Params = <>
    Left = 500
    Top = 15
  end
  object dsKategoriDown: TDataSource
    DataSet = zqrKategoriDown
    Left = 530
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
    Left = 560
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
    Left = 590
    Top = 15
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_mesin'
      '')
    Params = <>
    Left = 625
    Top = 15
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 655
    Top = 15
  end
  object zqrUnit: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unit'
      '')
    Params = <>
    Left = 685
    Top = 15
  end
  object dsUnit: TDataSource
    DataSet = zqrUnit
    Left = 715
    Top = 15
  end
  object zqrKaryawan: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT nip,nama FROM tbl_karyawan_ktg where departemen='#39'PRODUCTI' +
        'ON'#39' and f_aktif=1'
      '')
    Params = <>
    Left = 750
    Top = 15
  end
  object dsKaryawan: TDataSource
    DataSet = zqrKaryawan
    Left = 780
    Top = 15
  end
  object dsInline: TDataSource
    DataSet = zqrInline
    Left = 375
    Top = 15
  end
  object zqrInline: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti,no_spk FROM tbl_hsl_prd order by tanggal desc'
      '')
    Params = <>
    Left = 405
    Top = 15
  end
end
