object frmSetWwn: TfrmSetWwn
  Left = 265
  Top = 58
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Setting Wewenang'
  ClientHeight = 586
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 20
    Top = 19
    Caption = 'Nama User'
  end
  object cxcNamaUser: TcxComboBox
    Left = 90
    Top = 17
    Properties.DropDownListStyle = lsEditFixedList
    Properties.OnChange = cxcNamaUserPropertiesChange
    TabOrder = 1
    Width = 175
  end
  object cxLabel2: TcxLabel
    Left = 20
    Top = 45
    Caption = 'Departemen'
  end
  object cxtDept: TcxTextEdit
    Left = 90
    Top = 43
    Properties.ReadOnly = True
    Style.Color = clWindow
    TabOrder = 3
    Width = 176
  end
  object nxGrd: TNextGrid
    Left = 25
    Top = 73
    Width = 491
    Height = 462
    Options = [goGrid, goHeader]
    TabOrder = 4
    TabStop = True
    OnAfterEdit = nxGrdAfterEdit
    object NxIncrementColumn1: TNxIncrementColumn
      DefaultWidth = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No.'
      Position = 0
      SortType = stAlphabetic
      Width = 65
    end
    object NxTextColumn1: TNxTreeColumn
      DefaultWidth = 307
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Keterangan'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 1
      SortType = stAlphabetic
      Width = 307
    end
    object NxTextColumn2: TNxCheckBoxColumn
      Alignment = taCenter
      DefaultWidth = 68
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Aktif'
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
      Position = 2
      SortType = stBoolean
      Width = 68
    end
    object NxTextColumn3: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Position = 3
      SortType = stAlphabetic
      Visible = False
    end
    object NxTextColumn4: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Position = 4
      SortType = stAlphabetic
      Visible = False
    end
  end
  object btnSimpan: TButton
    Left = 25
    Top = 548
    Width = 75
    Height = 25
    Caption = '&Simpan'
    TabOrder = 5
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 105
    Top = 548
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 6
    OnClick = btnBatalClick
  end
  object btnUnCheckSemua: TButton
    Left = 420
    Top = 540
    Width = 96
    Height = 25
    Caption = 'UnCheck Semua'
    TabOrder = 7
    OnClick = btnUnCheckSemuaClick
  end
  object btnCheckSemua: TButton
    Left = 323
    Top = 540
    Width = 96
    Height = 25
    Caption = 'Check Semua'
    TabOrder = 8
    OnClick = btnCheckSemuaClick
  end
  object btnProses: TButton
    Left = 270
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 9
    OnClick = btnProsesClick
  end
  object nxGrdGudang: TNextGrid
    Left = 530
    Top = 73
    Width = 196
    Height = 139
    Options = [goGrid, goHeader]
    TabOrder = 10
    TabStop = True
    object nxColGudang: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Gudang'
      Position = 0
      SortType = stAlphabetic
    end
    object nxColWwn: TNxCheckBoxColumn
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Check'
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
      Position = 1
      SortType = stBoolean
    end
  end
end
