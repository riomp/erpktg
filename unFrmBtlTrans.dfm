object frmBtlTrans: TfrmBtlTrans
  Left = 362
  Top = 261
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pembatalan Transaksi'
  ClientHeight = 155
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 15
    Top = 25
    Caption = 'Jenis Transaksi'
  end
  object cxcJenisTrans: TcxComboBox
    Left = 103
    Top = 24
    Properties.OnChange = cxcJenisTransPropertiesChange
    TabOrder = 1
    Width = 158
  end
  object cxlNoBukti: TcxLookupComboBox
    Left = 103
    Top = 49
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
    Properties.ListSource = dsTrsMasuk
    TabOrder = 2
    Width = 218
  end
  object cxLabel2: TcxLabel
    Left = 15
    Top = 51
    Caption = 'No. Transaksi'
  end
  object btnProses: TButton
    Left = 17
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 4
    OnClick = btnProsesClick
  end
  object cxLabel3: TcxLabel
    Left = 15
    Top = 76
    Caption = 'User Request'
  end
  object cxlUser: TcxLookupComboBox
    Left = 103
    Top = 74
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'nama'
    Properties.ListColumns = <
      item
        Caption = 'Nama'
        FieldName = 'nama'
      end
      item
        Caption = 'Dept'
        FieldName = 'user_dept'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsUser
    TabOrder = 6
    Width = 218
  end
  object btnBatal: TButton
    Left = 97
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 7
    OnClick = btnBatalClick
  end
  object zqrTrsMasuk: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT no_bukti, tanggal, user, user_dept FROM tbl_trsmasuk_head'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 210
    Top = 105
  end
  object dsTrsMasuk: TDataSource
    DataSet = zqrTrsMasuk
    Left = 240
    Top = 105
  end
  object zqrTrsKeluar: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      
        'SELECT no_bukti, tanggal, user, user_dept FROM tbl_trskeluar_hea' +
        'd'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 225
    Top = 115
  end
  object dsTrsKeluar: TDataSource
    DataSet = zqrTrsKeluar
    Left = 255
    Top = 115
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      
        'SELECT no_bukti, tanggal, user, user_dept FROM tbl_trsmutasi_hea' +
        'd'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 235
    Top = 130
  end
  object dsTrsMutasi: TDataSource
    DataSet = ZReadOnlyQuery1
    Left = 265
    Top = 130
  end
  object zqrUser: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT nama, user_dept FROM tbl_user ORDER BY nama')
    Params = <>
    Left = 290
    Top = 105
  end
  object dsUser: TDataSource
    DataSet = zqrUser
    Left = 320
    Top = 105
  end
end
