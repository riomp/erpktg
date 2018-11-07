inherited frmBuatSPK: TfrmBuatSPK
  Height = 446
  Caption = 'SPK'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 32
      Caption = 'SPK'
    end
  end
  inherited pnlTengah: TPanel
    object cxLabel1: TcxLabel
      Left = 15
      Top = 15
      Caption = 'No. Sales Order'
    end
    object cxtNoSO: TcxTextEdit
      Left = 103
      Top = 13
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 125
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 41
      Caption = 'Customer'
    end
    object cxtCustomer: TcxTextEdit
      Left = 103
      Top = 39
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 368
    end
    object cxGrd: TcxGrid
      Left = 17
      Top = 77
      Width = 749
      Height = 149
      TabOrder = 4
      object cxTbl: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxColKode: TcxGridColumn
          Caption = 'Kode Brg.'
          Width = 79
        end
        object cxColDesk: TcxGridColumn
          Caption = 'Deskripsi'
          Width = 298
        end
        object cxColJenis: TcxGridColumn
          Caption = 'Jenis'
          Width = 101
        end
        object cxColQtySO: TcxGridColumn
          Caption = 'Qty. SO'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 88
        end
        object cxColQtySPK: TcxGridColumn
          Caption = 'Qty. SPK'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Width = 96
        end
        object cxTblColumn1: TcxGridColumn
          Caption = 'Check'
          PropertiesClassName = 'TcxCheckBoxProperties'
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object Button1: TButton
      Left = 17
      Top = 230
      Width = 75
      Height = 25
      Caption = 'Proses SPK'
      TabOrder = 5
    end
  end
  inherited pnlBawah: TPanel
    inherited btnKeluar: TButton
      Left = 772
      Top = 5
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 695
      Top = 5
      Visible = False
    end
    object Button2: TButton
      Left = 17
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
end
