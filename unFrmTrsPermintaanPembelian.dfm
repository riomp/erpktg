inherited frmTrsPermintaanPembelian: TfrmTrsPermintaanPembelian
  Left = 513
  Top = 169
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formulir Order Barang dan Jasa'
  ClientHeight = 593
  ClientWidth = 888
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 888
    inherited lblJudul: TLabel
      Width = 186
      Caption = 'Permintaan Pembelian'
    end
    object btnEdit2: TButton
      Left = 531
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 610
      Top = 28
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end
        item
          Caption = 'User'
          FieldName = 'user'
        end
        item
          Caption = 'Dept'
          FieldName = 'user_dept'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoBukti
      TabOrder = 1
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Width = 888
    Height = 455
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. PP'
    end
    object cxtNoBukti: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 8
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 0
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 35
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 99
      Top = 33
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 113
      Caption = 'Departemen'
    end
    object cxCmbDept: TcxComboBox
      Left = 99
      Top = 111
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 5
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 88
      Caption = 'Diajukan Oleh'
    end
    object cxtDiajukanOleh: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 86
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 50
      Properties.ReadOnly = False
      TabOrder = 4
      Width = 297
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 60
      Caption = 'Tgl. Diperlukan'
    end
    object cxdTglDiperlukan: TcxDateEdit
      Left = 99
      Top = 58
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 3
      Width = 121
    end
    object cxgrdPP: TcxGrid
      Left = 20
      Top = 139
      Width = 845
      Height = 293
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 10
      object cxGrdTblPP: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##.00'
            Kind = skSum
            Column = cxColQty
          end
          item
            Format = '#,##.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnBeforePost = cxGrdTblPPDataControllerBeforePost
        DataController.OnRecordChanged = cxGrdTblPPDataControllerRecordChanged
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxColNo: TcxGridColumn
          Caption = 'No'
          PropertiesClassName = 'TcxTextEditProperties'
          OnGetDisplayText = cxColNoGetDisplayText
          Width = 42
        end
        object cxColKodeBrg: TcxGridColumn
          Caption = 'Kode Brg'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Width = 84
        end
        object cxColDeskripsi: TcxGridColumn
          Caption = 'Deskripsi'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'deskripsi'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListSource = dsBrg
          Width = 252
        end
        object cxColQty: TcxGridColumn
          Caption = 'Qty'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
        end
        object cxColSatuan: TcxGridColumn
          Caption = 'Satuan'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Width = 82
        end
        object cxColKeterangan: TcxGridColumn
          Caption = 'Keterangan'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 306
        end
        object cxColIdSatuan: TcxGridColumn
          DataBinding.ValueType = 'Integer'
          Visible = False
        end
      end
      object cxgrdlvl1Grid1Level1: TcxGridLevel
        GridView = cxGrdTblPP
      end
    end
    object cxrdgrp1: TcxRadioGroup
      Left = 234
      Top = 10
      Caption = 'Level Kebutuhan'
      Properties.Items = <>
      TabOrder = 11
      Height = 63
      Width = 193
    end
    object cxCboLevel: TcxComboBox
      Left = 247
      Top = 34
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 12
      Width = 159
    end
  end
  inherited pnlBawah: TPanel
    Top = 521
    Width = 888
    Height = 65
    inherited btnKeluar: TButton
      TabOrder = 1
    end
    inherited btnBaru: TButton
      TabOrder = 5
    end
    inherited btnEdit: TButton
      Left = 480
      TabOrder = 3
    end
    inherited btnHapus: TButton
      Left = 400
      TabOrder = 4
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 645
      Top = 25
      TabOrder = 2
    end
    inherited btnSimpan: TButton
      Width = 76
      TabOrder = 0
    end
    object btnCetak: TButton
      Left = 230
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Cetak'
      TabOrder = 6
      OnClick = btnCetakClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 ORDER BY deskripsi')
    Params = <>
    Left = 625
    Top = 166
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 655
    Top = 166
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 590
    Top = 166
  end
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, user, user_dept FROM tbl_fobj_head'
      'WHERE f_penawaran = 0 and f_po = 0 and f_app = 0'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 560
    Top = 166
  end
end
