inherited frmMstUser: TfrmMstUser
  Left = 589
  Top = 48
  Caption = 'Master User'
  ClientHeight = 442
  ClientWidth = 563
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 563
    inherited lblJudul: TLabel
      Width = 98
      Caption = 'Master User'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 563
    Height = 300
    inherited pg: TPageControl
      Width = 561
      Height = 298
      inherited TabSheet1: TTabSheet
        Caption = 'Input'
        object cxtNamaUser: TcxTextEdit
          Tag = 1
          Left = 92
          Top = 15
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 186
        end
        object cxLabel1: TcxLabel
          Left = 10
          Top = 17
          Caption = 'Nama User'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 10
          Top = 67
          Caption = 'Password'
          Transparent = True
        end
        object cxtPass: TcxTextEdit
          Tag = 1
          Left = 92
          Top = 65
          Properties.CharCase = ecUpperCase
          Properties.EchoMode = eemPassword
          TabOrder = 2
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 92
          Caption = 'Konf. Pass.'
          Transparent = True
        end
        object cxtKonf: TcxTextEdit
          Tag = 1
          Left = 92
          Top = 90
          Properties.CharCase = ecUpperCase
          Properties.EchoMode = eemPassword
          TabOrder = 3
          Width = 121
        end
        object chkAktif: TcxCheckBox
          Left = 284
          Top = 15
          Caption = 'Aktif'
          TabOrder = 4
          Transparent = True
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 117
          Caption = 'Departemen'
          Transparent = True
        end
        object cxCmbDept: TcxComboBox
          Left = 92
          Top = 115
          TabOrder = 9
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 189
          Caption = 'Email'
          Transparent = True
        end
        object cxtEmail: TcxTextEdit
          Tag = 1
          Left = 92
          Top = 187
          Properties.CharCase = ecLowerCase
          TabOrder = 12
          Width = 376
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 165
          Caption = 'Jabatan'
          Transparent = True
        end
        object cxCmbJabatan: TcxComboBox
          Left = 92
          Top = 163
          TabOrder = 10
          Width = 121
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 42
          Caption = 'Nama Lengkap'
          Transparent = True
        end
        object cxtNamaLengkap: TcxTextEdit
          Tag = 1
          Left = 92
          Top = 40
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 379
        end
        object chkGames: TcxCheckBox
          Left = 335
          Top = 15
          Caption = 'Games'
          TabOrder = 15
          Transparent = True
          Width = 121
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 141
          Caption = 'Divisi'
          Transparent = True
        end
        object cxCmbDivisi: TcxComboBox
          Left = 92
          Top = 139
          TabOrder = 17
          Width = 121
        end
        object cxLabel9: TcxLabel
          Left = 10
          Top = 214
          Caption = 'Atasan 1'
          Transparent = True
        end
        object cxLabel10: TcxLabel
          Left = 11
          Top = 239
          Caption = 'Atasan 2'
          Transparent = True
        end
        object cxlAtasan1: TcxLookupComboBox
          Left = 92
          Top = 212
          Properties.KeyFieldNames = 'nama'
          Properties.ListColumns = <
            item
              Caption = 'Nama'
              FieldName = 'nama'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsAtasan1
          TabOrder = 20
          Width = 145
        end
        object cxlAtasan2: TcxLookupComboBox
          Left = 93
          Top = 237
          Properties.KeyFieldNames = 'nama'
          Properties.ListColumns = <
            item
              Caption = 'Nama'
              FieldName = 'nama'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsAtasan2
          TabOrder = 21
          Width = 145
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited Label1: TLabel
          Top = 224
        end
        inherited cxGrd: TcxGrid
          Width = 541
          Height = 209
          inherited cxTblView: TcxGridDBTableView
            FilterBox.Visible = fvNever
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            FilterRow.Visible = True
            OptionsData.Deleting = False
            OptionsView.GroupByBox = False
            object cxGrdDBTableView1namauser: TcxGridDBColumn
              Caption = 'Nama User'
              DataBinding.FieldName = 'nama'
              Options.Editing = False
              Width = 359
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 366
    Width = 563
    inherited btnHapus: TButton
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_user WHERE f_aktif = 1')
  end
  inherited ds: TDataSource
    Left = 390
  end
  object zqrAtasan2: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nama FROM tbl_user '
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    MasterSource = dsAtasan1
    Left = 380
    Top = 200
  end
  object dsAtasan2: TDataSource
    DataSet = zqrAtasan2
    Left = 405
    Top = 200
  end
  object zqrAtasan1: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nama FROM tbl_user '
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 385
    Top = 170
  end
  object dsAtasan1: TDataSource
    DataSet = zqrAtasan1
    Left = 410
    Top = 170
  end
end
