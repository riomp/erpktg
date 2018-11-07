inherited frmUnit: TfrmUnit
  Left = 322
  Top = 160
  Caption = 'Unit'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 110
      Caption = 'Unit / Satuan'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    inherited pg: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Data'
        object Label2: TLabel
          Left = 9
          Top = 18
          Width = 24
          Height = 13
          Caption = 'Kode'
        end
        object Label3: TLabel
          Left = 8
          Top = 40
          Width = 53
          Height = 13
          Caption = 'Description'
        end
        object cxtKode: TcxTextEdit
          Left = 88
          Top = 16
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 169
        end
        object cxtDescription: TcxTextEdit
          Left = 88
          Top = 40
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 401
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited cxGrd: TcxGrid
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            OptionsData.Editing = False
            object cxTblViewunitid: TcxGridDBColumn
              DataBinding.FieldName = 'unitid'
            end
            object cxTblViewdescription: TcxGridDBColumn
              DataBinding.FieldName = 'description'
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    inherited btnHapus: TButton
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_unit')
  end
end
