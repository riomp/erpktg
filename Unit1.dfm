object frmMutasiStokSO: TfrmMutasiStokSO
  Left = 396
  Top = 231
  Width = 465
  Height = 243
  Caption = 'Mutasi Stok SO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 15
    Top = 35
    Caption = 'No. SO'
  end
  object cxlNoSO: TcxLookupComboBox
    Left = 100
    Top = 33
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'no_bukti'
    Properties.ListColumns = <
      item
        Caption = 'No. SO'
        FieldName = 'no_bukti'
      end
      item
        Caption = 'Tanggal'
        FieldName = 'tanggal'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsNoSO
    Properties.OnChange = cxlNoSOPropertiesChange
    TabOrder = 1
    Width = 249
  end
  object cxLabel2: TcxLabel
    Left = 15
    Top = 60
    Caption = 'Deskripsi'
  end
  object cxlKodeBrg: TcxLookupComboBox
    Left = 100
    Top = 58
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'kode_brg'
    Properties.ListColumns = <
      item
        Caption = 'Deskripsi'
        FieldName = 'deskripsi'
      end
      item
        Caption = 'Kode'
        FieldName = 'kode_brg'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsKodeBrg
    Properties.OnChange = cxlKodeBrgPropertiesChange
    TabOrder = 3
    Width = 339
  end
  object cxLabel4: TcxLabel
    Left = 15
    Top = 112
    Caption = 'No. SO Tujuan'
  end
  object cxlSOTujuan: TcxLookupComboBox
    Left = 100
    Top = 110
    Properties.KeyFieldNames = 'no_bukti'
    Properties.ListColumns = <>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsNoSO
    TabOrder = 5
    Width = 249
  end
  object cxSpinEdit1: TcxSpinEdit
    Left = 100
    Top = 135
    Properties.ValueType = vtFloat
    TabOrder = 6
    Width = 121
  end
  object cxLabel5: TcxLabel
    Left = 15
    Top = 137
    Caption = 'Qty. Mutasi'
  end
  object btnSimpan: TButton
    Left = 15
    Top = 171
    Width = 75
    Height = 25
    Caption = '&Simpan'
    TabOrder = 8
  end
  object btnBatal: TButton
    Left = 95
    Top = 171
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 9
  end
  object cxLabel3: TcxLabel
    Left = 15
    Top = 86
    Caption = 'Stok SO G02'
  end
  object cxsStokG02: TcxSpinEdit
    Left = 100
    Top = 84
    Properties.ReadOnly = True
    Properties.ValueType = vtFloat
    TabOrder = 11
    Width = 121
  end
  object zqrNoSO: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept'
      'from tbl_so_head a, tbl_customer b'
      'where a.kode_customer = b.kode')
    Params = <>
    Left = 360
    Top = 16
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 390
    Top = 16
  end
  object zqrKodeBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_so_det WHERE no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 46
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsKodeBrg: TDataSource
    DataSet = zqrKodeBrg
    Left = 390
    Top = 46
  end
end
