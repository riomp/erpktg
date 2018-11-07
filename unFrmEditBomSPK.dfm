inherited frmEditBomSPK: TfrmEditBomSPK
  Left = 318
  Top = 73
  Caption = 'Edit BOM SPK'
  ClientHeight = 442
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 111
      Caption = 'Edit BOM SPK'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
      Visible = False
    end
  end
  inherited pnlTengah: TPanel
    Height = 300
    inherited pg: TPageControl
      Height = 298
      inherited TabSheet1: TTabSheet
        Caption = 'SPK'
        object cxLabel1: TcxLabel
          Left = 10
          Top = 10
          Caption = 'No. SPK / No. SO'
          Transparent = True
        end
        object cxtNoSPK: TcxTextEdit
          Left = 100
          Top = 10
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 121
        end
        object cxtKodeBrg: TcxTextEdit
          Left = 100
          Top = 35
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 121
        end
        object cxLabel2: TcxLabel
          Left = 10
          Top = 35
          Caption = 'Kode / Desk.'
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 85
          Caption = 'Customer'
          Transparent = True
        end
        object cxtDesk: TcxTextEdit
          Left = 225
          Top = 35
          Properties.ReadOnly = True
          TabOrder = 5
          Width = 366
        end
        object cxtNoSO: TcxTextEdit
          Left = 225
          Top = 10
          Properties.ReadOnly = True
          TabOrder = 6
          Width = 121
        end
        object cxtCustomer: TcxTextEdit
          Left = 100
          Top = 85
          Properties.ReadOnly = True
          TabOrder = 7
          Width = 381
        end
        object nxGrd: TNextGrid
          Left = 10
          Top = 132
          Width = 691
          Height = 116
          TabOrder = 8
          TabStop = True
          object nxColKodeBrg: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Kode Brg.'
            ParentFont = False
            Position = 0
            SortType = stAlphabetic
          end
          object nxColDesk: TNxTextColumn
            DefaultWidth = 346
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Deskripsi'
            ParentFont = False
            Position = 1
            SortType = stAlphabetic
            Width = 346
          end
          object nxColQtyBom: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Qty. Bom'
            Header.Alignment = taRightJustify
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 2
            SortType = stNumeric
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColQtyRev: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Revisi Qty.'
            Header.Alignment = taRightJustify
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 3
            SortType = stNumeric
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 112
          Caption = 'Detail Bom'
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 60
          Caption = 'Qty. SPK'
          Transparent = True
        end
        object cxsQtySPK: TcxSpinEdit
          Left = 100
          Top = 60
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 11
          Width = 121
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari SPK'
        inherited Label1: TLabel
          Top = 218
        end
        inherited cxGrd: TcxGrid
          Top = 7
          Width = 723
          Height = 206
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = False
            object cxTblViewno_spk: TcxGridDBColumn
              Caption = 'No. SPK'
              DataBinding.FieldName = 'no_spk'
              Width = 90
            end
            object cxTblViewno_so: TcxGridDBColumn
              Caption = 'No. SO'
              DataBinding.FieldName = 'no_so'
              Width = 96
            end
            object cxTblViewColumn1: TcxGridDBColumn
              Caption = 'Customer'
              DataBinding.FieldName = 'nama'
              Width = 203
            end
            object cxTblViewkode_brg: TcxGridDBColumn
              Caption = 'Kode Brg.'
              DataBinding.FieldName = 'kode_brg'
            end
            object cxTblViewdeskripsi: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Width = 330
            end
            object cxTblViewqty: TcxGridDBColumn
              Caption = 'Qty.'
              DataBinding.FieldName = 'qty'
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 366
    inherited btnKeluar: TButton
      Left = 240
    end
    inherited btnTambah: TButton
      Left = 640
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 165
    end
    inherited btnHapus: TButton
      Left = 560
      Top = 30
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 90
    end
    inherited btnSimpan: TButton
      Left = 15
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select a.no_spk, b.no_so, a.kode_brg, c.deskripsi, a.qty, e.nama'
      'from tbl_spk a'
      'left join tbl_mo b on a.no_spk = b.no_spk'
      'left join tbl_barang c on a.kode_brg = c.kode'
      'left join tbl_so_head d on d.no_bukti = b.no_so '
      'left join tbl_customer e on e.kode = d.kode_customer'
      
        'inner join (select distinct no_spk from tbl_bom_det) f on f.no_s' +
        'pk = a.no_spk')
  end
end
