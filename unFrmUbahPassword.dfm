object frmUbahPassword: TfrmUbahPassword
  Left = 527
  Top = 309
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ubah Password'
  ClientHeight = 155
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 28
    Width = 78
    Height = 13
    Caption = 'Password Lama '
  end
  object Label2: TLabel
    Left = 15
    Top = 53
    Width = 74
    Height = 13
    Caption = 'Password Baru '
  end
  object Label3: TLabel
    Left = 15
    Top = 78
    Width = 48
    Height = 13
    Caption = 'Konfirmasi'
  end
  object cxtPassLama: TcxTextEdit
    Left = 100
    Top = 24
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    TabOrder = 0
    Width = 180
  end
  object cxtPassBaru: TcxTextEdit
    Left = 100
    Top = 49
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    TabOrder = 1
    Width = 180
  end
  object cxtKonfirm: TcxTextEdit
    Left = 100
    Top = 74
    Properties.CharCase = ecUpperCase
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    TabOrder = 2
    Width = 180
  end
  object btnSimpan: TButton
    Left = 15
    Top = 110
    Width = 75
    Height = 25
    Caption = '&Simpan'
    TabOrder = 3
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 95
    Top = 110
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 4
    OnClick = btnBatalClick
  end
end
