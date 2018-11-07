inherited frmMstOperator: TfrmMstOperator
  Left = 394
  Top = 92
  Caption = 'Master Operator'
  ClientHeight = 364
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 134
      Caption = 'Master Operator'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Height = 220
    inherited pg: TPageControl
      Height = 218
      inherited TabSheet1: TTabSheet
        Caption = 'Data Operator'
        object Nik: TcxLabel
          Left = 15
          Top = 14
          Caption = 'Nik'
        end
        object cxLuNik: TcxLookupComboBox
          Left = 89
          Top = 9
          Properties.KeyFieldNames = 'nik'
          Properties.ListColumns = <
            item
              Caption = 'NIK'
              FieldName = 'nik'
            end
            item
              Caption = 'NAMA'
              FieldName = 'nama'
            end
            item
              Caption = 'Divisi'
            end>
          Properties.ListSource = ds
          TabOrder = 1
          OnClick = cxLuNikClick
          Width = 87
        end
        object cxlbl1: TcxLabel
          Left = 15
          Top = 39
          Caption = 'Nama'
        end
        object cxtNama: TcxTextEdit
          Left = 89
          Top = 35
          TabOrder = 3
          Width = 206
        end
        object cxlbl2: TcxLabel
          Left = 15
          Top = 64
          Caption = 'Divisi'
        end
        object cxtDivisi: TcxTextEdit
          Left = 89
          Top = 61
          TabOrder = 5
          Width = 206
        end
        object cxlbl3: TcxLabel
          Left = 15
          Top = 90
          Caption = 'Mesin'
        end
        object cxtMesin: TcxTextEdit
          Left = 89
          Top = 87
          TabOrder = 7
          Width = 206
        end
        object cxlbl4: TcxLabel
          Left = 15
          Top = 115
          Caption = 'Lokasi'
        end
        object cxLuLokasi: TcxLookupComboBox
          Left = 89
          Top = 113
          Properties.KeyFieldNames = 'lokasi'
          Properties.ListColumns = <
            item
              Caption = 'LOKASI'
              FieldName = 'lokasi'
            end>
          Properties.ListSource = dsLokasi
          TabOrder = 9
          Width = 206
        end
        object cxlbl5: TcxLabel
          Left = 15
          Top = 140
          Caption = 'Keterangan'
        end
        object cxtKeterangan: TcxTextEdit
          Left = 89
          Top = 139
          TabOrder = 11
          Width = 206
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Edit Operator'
        inherited Label1: TLabel
          Top = 171
        end
        inherited cxGrd: TcxGrid
          Top = 4
          Height = 160
          inherited cxTblView: TcxGridDBTableView
            NavigatorButtons.Insert.Visible = False
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = dsOperator
            FilterRow.Visible = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = False
            OptionsView.GroupByBox = False
            object cxTblViewid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object cxTblViewnik: TcxGridDBColumn
              Caption = 'NIK'
              DataBinding.FieldName = 'nik'
            end
            object cxTblViewnama: TcxGridDBColumn
              Caption = 'Nama Karyawan'
              DataBinding.FieldName = 'nama'
              Width = 138
            end
            object cxTblViewmesin: TcxGridDBColumn
              Caption = 'Mesin'
              DataBinding.FieldName = 'mesin'
              Width = 125
            end
            object cxTblViewlokasi: TcxGridDBColumn
              Caption = 'Lokasi'
              DataBinding.FieldName = 'lokasi'
            end
            object cxTblViewdivisi: TcxGridDBColumn
              Caption = 'Divisi'
              DataBinding.FieldName = 'divisi'
            end
            object cxTblViewketerangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
              Width = 211
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 286
    inherited btnHapus: TButton
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select nik, nama, divisi from tbl_operator')
  end
  object QryLokasi: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select * from tbl_lokasi')
    Params = <>
    Left = 430
    Top = 25
  end
  object dsLokasi: TDataSource
    DataSet = QryLokasi
    Left = 460
    Top = 25
  end
  object zqrOperator: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'Select * from tbl_operator order by nik')
    Params = <>
    Left = 545
    Top = 25
  end
  object dsOperator: TDataSource
    DataSet = zqrOperator
    Left = 585
    Top = 25
  end
end
