object frmScheduleKriripPP: TfrmScheduleKriripPP
  Left = 613
  Top = 229
  BorderStyle = bsDialog
  Caption = 'Schedule Kirim'
  ClientHeight = 455
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    565
    455)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 15
    Width = 37
    Height = 13
    Caption = 'No.PP :'
  end
  object Label2: TLabel
    Left = 15
    Top = 40
    Width = 43
    Height = 13
    Caption = 'No.Urut :'
  end
  object Label3: TLabel
    Left = 15
    Top = 65
    Width = 68
    Height = 13
    Caption = 'Kode Barang :'
  end
  object Label4: TLabel
    Left = 15
    Top = 85
    Width = 22
    Height = 13
    Caption = 'Qty :'
  end
  object cxsReject: TcxSpinEdit
    Left = 95
    Top = 85
    Properties.DisplayFormat = '#,#0.00'
    Properties.EditFormat = '#,#0.00'
    Properties.ReadOnly = True
    Properties.ValueType = vtFloat
    TabOrder = 0
    Width = 121
  end
  object cxgrdPP: TcxGrid
    Left = 8
    Top = 119
    Width = 533
    Height = 293
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    object cxGrdTblPP: TcxGridTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Append.Visible = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##.00'
          Kind = skSum
          Column = cxColQty
        end
        item
          Format = '#,##.00'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxColNo: TcxGridColumn
        Caption = 'No'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 42
      end
      object cxGrdTblPPColumn1: TcxGridColumn
        Caption = 'Tgl.Permintaan'
        DataBinding.ValueType = 'DateTime'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 113
      end
      object cxColQty: TcxGridColumn
        Caption = 'Qty'
        DataBinding.ValueType = 'Float'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Properties.EditFormat = '#,##0.00'
      end
      object cxColKeterangan: TcxGridColumn
        Caption = 'Keterangan'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 306
      end
    end
    object cxgrdlvl1Grid1Level1: TcxGridLevel
      GridView = cxGrdTblPP
    end
  end
  object Button1: TButton
    Left = 10
    Top = 420
    Width = 75
    Height = 25
    Caption = '&Simpan'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 90
    Top = 420
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 3
  end
end
