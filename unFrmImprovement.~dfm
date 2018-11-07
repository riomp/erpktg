inherited frmOpr_Improvement: TfrmOpr_Improvement
  Left = 405
  Top = 93
  Width = 537
  Height = 591
  Caption = 'Improvement'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 521
    inherited lblJudul: TLabel
      Width = 110
      Caption = 'Improvement'
    end
  end
  inherited pnlTengah: TPanel
    Width = 521
    Height = 407
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 63
      Height = 13
      Caption = 'No.Transaksi'
    end
    object Label2: TLabel
      Left = 264
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Tgl.Transaksi'
    end
    object Label3: TLabel
      Left = 23
      Top = 45
      Width = 61
      Height = 13
      Caption = 'Departement'
    end
    object Label6: TLabel
      Left = 263
      Top = 46
      Width = 56
      Height = 13
      Caption = 'Dibuat Oleh'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 104
      Top = 11
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 0
      Width = 151
    end
    object cxdTglTrans: TcxDateEdit
      Left = 336
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 145
    end
    object cxlDiberikan: TcxLookupComboBox
      Left = 104
      Top = 40
      Properties.KeyFieldNames = 'bagian'
      Properties.ListColumns = <
        item
          FieldName = 'bagian'
        end>
      Properties.ListSource = dsUserApp
      TabOrder = 2
      Width = 145
    end
    object cxLabel10: TcxLabel
      Left = 22
      Top = 72
      Caption = 'Usulan Improvement'
    end
    object cxmUsulan: TcxMemo
      Left = 24
      Top = 93
      Properties.CharCase = ecUpperCase
      Style.BorderStyle = ebsFlat
      TabOrder = 4
      Height = 108
      Width = 465
    end
    object cxLabel1: TcxLabel
      Left = 22
      Top = 352
      Caption = 'Nilai Improvement (Rp)'
    end
    object cxsNilai: TcxSpinEdit
      Left = 144
      Top = 352
      Properties.DisplayFormat = '#,##0.00'
      TabOrder = 6
      Width = 121
    end
    object cxLabel21: TcxLabel
      Left = 22
      Top = 382
      Caption = 'Due Date : '
    end
    object cxdDueDate1: TcxDateEdit
      Left = 80
      Top = 378
      TabOrder = 8
      Width = 121
    end
    object cxLabel22: TcxLabel
      Left = 204
      Top = 382
      Caption = 'PIC :'
    end
    object cxtPIC1: TcxTextEdit
      Left = 235
      Top = 378
      Properties.CharCase = ecUpperCase
      TabOrder = 10
      Width = 269
    end
    object cxLabel2: TcxLabel
      Left = 22
      Top = 208
      Caption = 'Alasan Improvement'
    end
    object cxmAlasan: TcxMemo
      Left = 24
      Top = 229
      Properties.CharCase = ecUpperCase
      Style.BorderStyle = ebsFlat
      TabOrder = 12
      Height = 108
      Width = 465
    end
    object cxeDibuatOleh: TcxTextEdit
      Tag = 1
      Left = 338
      Top = 43
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 13
      Width = 151
    end
  end
  inherited pnlBawah: TPanel
    Top = 473
    Width = 521
    inherited btnEdit: TButton
      Left = 174
    end
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
    Left = 141
    Top = 12
  end
  object dsUserApp: TDataSource
    DataSet = zrq
    Left = 171
    Top = 12
  end
end
