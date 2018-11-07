inherited frmSettingKurs: TfrmSettingKurs
  Left = 251
  Top = 153
  Caption = 'Setting Kurs'
  ClientHeight = 325
  ClientWidth = 241
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 241
    inherited lblJudul: TLabel
      Width = 100
      Caption = 'Setting Kurs'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 241
    Height = 210
    inherited pg: TPageControl
      Left = 286
      Top = -9
      Height = 303
      Align = alNone
      Visible = False
    end
    object nxGrd: TNextGrid
      Left = 8
      Top = 7
      Width = 203
      Height = 187
      Options = [goGrid, goHeader]
      TabOrder = 1
      TabStop = True
      object nxColMataUang: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Mata Uang'
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
      end
      object nxColRP: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nilai Rupiah'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        ParentFont = False
        Position = 1
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 276
    Width = 241
    Height = 50
    inherited btnKeluar: TButton
      Left = 665
      Visible = False
    end
    inherited btnTambah: TButton
      Left = 210
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 285
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 360
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 590
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 515
      Visible = False
    end
    object btnSimpan2: TButton
      Left = 8
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 6
      OnClick = btnSimpan2Click
    end
    object btnKeluar2: TButton
      Left = 85
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 7
      OnClick = btnKeluar2Click
    end
  end
end
