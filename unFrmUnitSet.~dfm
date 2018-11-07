inherited FrmUnitSet1: TFrmUnitSet1
  Left = 476
  Top = 211
  Caption = 'Unit Set'
  ClientHeight = 473
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 66
      Caption = 'Unit Set'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Height = 335
    inherited pg: TPageControl
      Height = 333
      inherited TabSheet1: TTabSheet
        Caption = 'Data'
        object Label2: TLabel
          Left = 9
          Top = 10
          Width = 27
          Height = 13
          Caption = 'Kode '
        end
        object Label3: TLabel
          Left = 8
          Top = 32
          Width = 53
          Height = 13
          Caption = 'Description'
        end
        object Label5: TLabel
          Left = 8
          Top = 56
          Width = 45
          Height = 13
          Caption = 'Base Unit'
        end
        object Label6: TLabel
          Left = 8
          Top = 88
          Width = 18
          Height = 13
          Caption = 'Qty'
        end
        object cxtKode: TcxTextEdit
          Left = 88
          Top = 8
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 169
        end
        object cxtDescription: TcxTextEdit
          Left = 88
          Top = 32
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 401
        end
        object cxlBase: TcxLookupComboBox
          Left = 88
          Top = 56
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'UnitId'
          Properties.ListColumns = <
            item
              FieldName = 'UnitId'
            end>
          Properties.ListSource = ds1
          TabOrder = 2
          Width = 153
        end
        object cxsQty: TcxSpinEdit
          Left = 88
          Top = 80
          Properties.DisplayFormat = '#,##0.000'
          Properties.EditFormat = '#,##0.000'
          Properties.ValueType = vtFloat
          TabOrder = 3
          Width = 129
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 104
          Width = 705
          Height = 201
          ActivePage = TabSheet3
          TabOrder = 4
          object TabSheet3: TTabSheet
            Caption = 'Unit Set Detail'
            object Label4: TLabel
              Left = 9
              Top = 10
              Width = 13
              Height = 13
              Caption = 'No'
            end
            object Label7: TLabel
              Left = 8
              Top = 40
              Width = 45
              Height = 13
              Caption = 'Base Unit'
            end
            object Label8: TLabel
              Left = 8
              Top = 72
              Width = 33
              Height = 13
              Caption = 'Covert'
            end
            object Label9: TLabel
              Left = 270
              Top = 150
              Width = 155
              Height = 13
              Caption = 'Double Klik pada baris untuk Edit'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cxGrid1: TcxGrid
              Left = 274
              Top = 10
              Width = 407
              Height = 136
              TabOrder = 0
              object cxGridDBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.First.Visible = True
                NavigatorButtons.PriorPage.Visible = True
                NavigatorButtons.Prior.Visible = True
                NavigatorButtons.Next.Visible = True
                NavigatorButtons.NextPage.Visible = True
                NavigatorButtons.Last.Visible = True
                NavigatorButtons.Insert.Visible = True
                NavigatorButtons.Append.Visible = False
                NavigatorButtons.Delete.Visible = True
                NavigatorButtons.Edit.Visible = True
                NavigatorButtons.Post.Visible = True
                NavigatorButtons.Cancel.Visible = True
                NavigatorButtons.Refresh.Visible = True
                NavigatorButtons.SaveBookmark.Visible = True
                NavigatorButtons.GotoBookmark.Visible = True
                NavigatorButtons.Filter.Visible = True
                OnCellDblClick = cxGridDBTableView1CellDblClick
                DataController.DataSource = ds2
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                OptionsView.Footer = True
                object cxGridDBTableView1no: TcxGridDBColumn
                  DataBinding.FieldName = 'no'
                end
                object cxGridDBTableView1unitid: TcxGridDBColumn
                  DataBinding.FieldName = 'unitid'
                end
                object cxGridDBTableView1convert: TcxGridDBColumn
                  DataBinding.FieldName = 'convert'
                end
                object cxGridDBTableView1unitsetid: TcxGridDBColumn
                  DataBinding.FieldName = 'unitsetid'
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
            object cxlUnit: TcxLookupComboBox
              Left = 88
              Top = 32
              Properties.CharCase = ecUpperCase
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'UnitId'
              Properties.ListColumns = <
                item
                  FieldName = 'UnitId'
                end>
              Properties.ListSource = ds1
              TabOrder = 1
              Width = 153
            end
            object cxsConvert: TcxSpinEdit
              Left = 88
              Top = 64
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 2
              Width = 129
            end
            object cxsNo: TcxSpinEdit
              Left = 88
              Top = 8
              Properties.DisplayFormat = '0'
              Properties.EditFormat = '0'
              Properties.ValueType = vtInt
              TabOrder = 3
              Width = 57
            end
            object btnTmbhDet: TButton
              Left = 13
              Top = 104
              Width = 121
              Height = 24
              Caption = '&Tambah / Update'
              TabOrder = 4
              OnClick = btnTmbhDetClick
            end
            object btHapus: TButton
              Left = 141
              Top = 104
              Width = 121
              Height = 24
              Caption = '&Hapus'
              TabOrder = 5
              OnClick = btHapusClick
            end
            object cxtStat1: TcxTextEdit
              Left = 8
              Top = 136
              Properties.CharCase = ecUpperCase
              TabOrder = 6
              Visible = False
              Width = 41
            end
          end
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited Label1: TLabel
          Top = 278
        end
        inherited cxGrd: TcxGrid
          Height = 255
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            FilterRow.Visible = True
            OptionsData.Editing = False
            OptionsView.GroupByBox = False
            object cxTblViewunitsetid: TcxGridDBColumn
              DataBinding.FieldName = 'unitsetid'
            end
            object cxTblViewdescription: TcxGridDBColumn
              DataBinding.FieldName = 'description'
            end
            object cxTblViewunitid: TcxGridDBColumn
              DataBinding.FieldName = 'unitid'
            end
            object cxTblViewqty: TcxGridDBColumn
              DataBinding.FieldName = 'qty'
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 401
    inherited btnSimpan: TButton
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_head')
  end
  object zBase: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT UnitId From tbl_unit')
    Params = <>
    Left = 440
    Top = 32
  end
  object ds1: TDataSource
    DataSet = zBase
    Left = 475
    Top = 28
  end
  object zqry1: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_det WHERE UnitSetId =:unit')
    Params = <
      item
        DataType = ftUnknown
        Name = 'unit'
        ParamType = ptUnknown
      end>
    Left = 517
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'unit'
        ParamType = ptUnknown
      end>
  end
  object ds2: TDataSource
    DataSet = zqry1
    Left = 555
    Top = 28
  end
end
