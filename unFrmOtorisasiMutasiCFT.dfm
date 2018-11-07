object frmOtorisasiMutasiCFT: TfrmOtorisasiMutasiCFT
  Left = 265
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Otorisasi Mutasi CFT'
  ClientHeight = 151
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 20
    Top = 25
    Caption = 'Nama User'
  end
  object cxCmbNamaUser: TcxComboBox
    Left = 106
    Top = 24
    Properties.DropDownListStyle = lsEditFixedList
    TabOrder = 1
    Width = 181
  end
  object cxLabel2: TcxLabel
    Left = 20
    Top = 52
    Caption = 'No. SO'
  end
  object cxlNoSO: TcxLookupComboBox
    Left = 106
    Top = 50
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
      end
      item
        Caption = 'Nama Customer'
        FieldName = 'nama'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsNoSO
    Properties.OnChange = cxlNoSOPropertiesChange
    TabOrder = 3
    Width = 249
  end
  object cxLabel3: TcxLabel
    Left = 20
    Top = 77
    Caption = 'Nama Customer'
  end
  object cxtNamaCust: TcxTextEdit
    Left = 106
    Top = 75
    TabOrder = 5
    Width = 385
  end
  object btnSimpan: TButton
    Left = 105
    Top = 110
    Width = 75
    Height = 25
    Caption = '&Simpan'
    TabOrder = 6
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 185
    Top = 110
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 7
    OnClick = btnBatalClick
  end
  object zqrNoSO: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    AutoCalcFields = False
    Active = True
    SQL.Strings = (
      'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept'
      'from tbl_so_head a, tbl_customer b '
      'where a.kode_customer = b.kode and a.f_completed = 0')
    Params = <>
    Left = 311
    Top = 6
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 350
    Top = 11
  end
end
