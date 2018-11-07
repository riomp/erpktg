object frmDetHslPel: TfrmDetHslPel
  Left = 548
  Top = 196
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detail Peletan'
  ClientHeight = 353
  ClientWidth = 205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object nxGrd: TNextGrid
    Left = 20
    Top = 35
    Width = 161
    Height = 241
    Options = [goGrid, goHeader]
    TabOrder = 0
    TabStop = True
    OnAfterEdit = nxGrdAfterEdit
    object nxColPilih: TNxCheckBoxColumn
      DefaultWidth = 36
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Pilih'
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      Position = 0
      SortType = stBoolean
      Width = 36
    end
    object nxColQty: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Qty.'
      Position = 1
      SortType = stNumeric
      EditOptions = [eoAllowAll, eoAllowFloat]
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColIndex: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Position = 2
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object cxLabel1: TcxLabel
    Left = 20
    Top = 285
    Caption = 'Total'
  end
  object cxsTot: TcxSpinEdit
    Left = 60
    Top = 283
    Properties.DisplayFormat = '#,##0.00'
    Properties.ReadOnly = True
    Properties.ValueType = vtFloat
    TabOrder = 2
    Width = 121
  end
  object btnSimpan: TButton
    Left = 20
    Top = 315
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 100
    Top = 315
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 4
    OnClick = btnBatalClick
  end
end
