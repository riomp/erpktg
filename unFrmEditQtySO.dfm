object frmEditQtySO: TfrmEditQtySO
  Left = 315
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Update Jumlah Pesanan'
  ClientHeight = 317
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 15
    Top = 20
    Caption = 'No. SO'
  end
  object cxtNoSO: TcxTextEdit
    Left = 80
    Top = 18
    TabOrder = 1
    Text = 'cxtNoSO'
    Width = 401
  end
  object cxLabel2: TcxLabel
    Left = 15
    Top = 45
    Caption = 'Customer'
  end
  object cxtCustomer: TcxTextEdit
    Left = 80
    Top = 43
    TabOrder = 3
    Text = 'cxTextEdit1'
    Width = 401
  end
  object nxGrd: TNextGrid
    Left = 19
    Top = 75
    Width = 647
    Height = 192
    Options = [goGrid, goHeader]
    TabOrder = 4
    TabStop = True
    OnAfterEdit = nxGrdAfterEdit
    OnBeforeEdit = nxGrdBeforeEdit
    object NxTextColumn1: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Kode Brg.'
      Position = 0
      SortType = stAlphabetic
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 279
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi'
      Position = 1
      SortType = stAlphabetic
      Width = 279
    end
    object NxTextColumn3: TNxNumberColumn
      Alignment = taLeftJustify
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Stok'
      Header.Alignment = taRightJustify
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 2
      SortType = stNumeric
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn4: TNxNumberColumn
      Alignment = taLeftJustify
      DefaultValue = '0'
      DefaultWidth = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Dipesan'
      Header.Alignment = taRightJustify
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 3
      SortType = stNumeric
      Width = 88
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Revisi Pesanan'
      Header.Alignment = taRightJustify
      Position = 4
      SortType = stNumeric
      Width = 88
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object btnSimpan: TButton
    Left = 20
    Top = 277
    Width = 75
    Height = 25
    Caption = '&Simpan'
    TabOrder = 5
    OnClick = btnSimpanClick
  end
  object btnKeluar: TButton
    Left = 100
    Top = 277
    Width = 75
    Height = 25
    Caption = '&Keluar'
    TabOrder = 6
    OnClick = btnKeluarClick
  end
end
