object frmEditDetailBOM_SPK: TfrmEditDetailBOM_SPK
  Left = 265
  Top = 149
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edit Detail BOM'
  ClientHeight = 249
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 15
    Top = 22
    Caption = 'Kategori'
  end
  object cxtDibuka: TcxTextEdit
    Left = 85
    Top = 20
    TabOrder = 1
    Width = 289
  end
  object cxtDibatasi: TcxTextEdit
    Left = 85
    Top = 45
    TabOrder = 2
    Width = 289
  end
  object cxLabel2: TcxLabel
    Left = 15
    Top = 47
    Caption = 'Sub Kategori'
  end
  object nxGrd: TNextGrid
    Left = 18
    Top = 78
    Width = 648
    Height = 123
    Options = [goGrid, goHeader]
    TabOrder = 4
    TabStop = True
    object nxColNo: TNxIncrementColumn
      DefaultWidth = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No.'
      Position = 0
      SortType = stAlphabetic
      Width = 30
    end
    object nxColKode: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Kode'
      Position = 1
      SortType = stAlphabetic
    end
    object nxColDesk: TNxTextColumn
      DefaultWidth = 362
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi'
      Position = 2
      SortType = stAlphabetic
      Width = 362
    end
    object nxColQty: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 67
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Qty.'
      Header.Alignment = taRightJustify
      Position = 3
      SortType = stNumeric
      Width = 67
      FormatMask = '#,##0.0000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColStok: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Stok G-SDP'
      Header.Alignment = taRightJustify
      Position = 4
      SortType = stNumeric
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object btnOK: TButton
    Left = 18
    Top = 211
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = btnOKClick
  end
  object btnBatal: TButton
    Left = 98
    Top = 211
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
    OnClick = btnBatalClick
  end
  object cxLabel3: TcxLabel
    Left = 380
    Top = 22
    Caption = '( Dibuka )'
    ParentColor = False
    Style.Color = clBtnFace
    Style.TextColor = clBlue
  end
  object cxLabel4: TcxLabel
    Left = 380
    Top = 47
    Caption = '( Dibatasi )'
    ParentColor = False
    Style.Color = clBtnFace
    Style.TextColor = clBlue
  end
end
