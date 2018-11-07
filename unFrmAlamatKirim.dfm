inherited frmAlamatKirim: TfrmAlamatKirim
  Left = 360
  Top = 203
  Caption = 'Alamat Pengiriman'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 157
      Caption = 'Alamat Pengiriman'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    inherited pg: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Input'
        object cxLabel1: TcxLabel
          Left = 10
          Top = 10
          Caption = 'Nama'
        end
        object cxtNama: TcxTextEdit
          Tag = 1
          Left = 79
          Top = 10
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 292
        end
        object cxLabel2: TcxLabel
          Left = 10
          Top = 35
          Caption = 'Alamat'
        end
        object cxtAlamat: TcxTextEdit
          Tag = 1
          Left = 79
          Top = 35
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 407
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 60
          Caption = 'Kota'
        end
        object cxtKota: TcxTextEdit
          Tag = 1
          Left = 79
          Top = 60
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 292
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 85
          Caption = 'Kode Pos'
        end
        object cxtKodePos: TcxTextEdit
          Tag = 1
          Left = 79
          Top = 85
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 122
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 110
          Caption = 'Negara'
        end
        object cxtNegara: TcxTextEdit
          Tag = 1
          Left = 79
          Top = 110
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 292
        end
        object cxtKode: TcxTextEdit
          Tag = 1
          Left = 510
          Top = 10
          TabOrder = 10
          Visible = False
          Width = 121
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited cxGrd: TcxGrid
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTblViewkode: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kode'
              Width = 99
            end
            object cxTblViewnama: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'nama'
              Width = 562
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    inherited btnSimpan: TButton
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_alamat_kirim ORDER BY nama')
  end
end
