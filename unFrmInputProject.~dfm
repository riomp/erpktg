inherited frmTransProject: TfrmTransProject
  Left = 727
  Top = 206
  Width = 595
  Height = 630
  Caption = 'Input Project'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 579
    inherited lblJudul: TLabel
      Width = 100
      Caption = 'Project RND'
    end
  end
  inherited pnlTengah: TPanel
    Width = 579
    Height = 447
    object Label3: TLabel
      Left = 7
      Top = 13
      Width = 17
      Height = 13
      Caption = 'No.'
    end
    object Label4: TLabel
      Left = 7
      Top = 38
      Width = 56
      Height = 13
      Caption = 'Dibuat Oleh'
    end
    object Label6: TLabel
      Left = 7
      Top = 64
      Width = 39
      Height = 13
      Caption = 'Tanggal'
    end
    object Label2: TLabel
      Left = 7
      Top = 100
      Width = 61
      Height = 13
      Caption = 'Judul Project'
    end
    object Label1: TLabel
      Left = 283
      Top = 38
      Width = 63
      Height = 13
      Caption = 'Finish Project'
    end
    object Label20: TLabel
      Left = 7
      Top = 124
      Width = 79
      Height = 13
      Caption = 'Deskripsi Project'
    end
    object Label5: TLabel
      Left = 283
      Top = 14
      Width = 58
      Height = 13
      Caption = 'Start Project'
    end
    object Label7: TLabel
      Left = 283
      Top = 62
      Width = 27
      Height = 13
      Caption = 'No.IS'
    end
    object cxeNoFRK: TcxTextEdit
      Tag = 1
      Left = 100
      Top = 10
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 0
      Width = 171
    end
    object cxeDibuatOleh: TcxTextEdit
      Tag = 1
      Left = 100
      Top = 35
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 1
      Width = 171
    end
    object cxeTanggal: TcxTextEdit
      Tag = 1
      Left = 100
      Top = 61
      TabStop = False
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 2
      Width = 108
    end
    object cxtJudul: TcxTextEdit
      Left = 96
      Top = 96
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 417
    end
    object cxdTgl2: TcxDateEdit
      Left = 352
      Top = 32
      TabOrder = 4
      Width = 121
    end
    object cxmDeskProject: TcxMemo
      Left = 8
      Top = 144
      Properties.CharCase = ecUpperCase
      Style.BorderStyle = ebsFlat
      TabOrder = 5
      Height = 97
      Width = 553
    end
    object cxdTgl1: TcxDateEdit
      Left = 352
      Top = 8
      TabOrder = 6
      Width = 121
    end
    object cbbIS: TcxLookupComboBox
      Left = 352
      Top = 62
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_is'
      Properties.ListColumns = <
        item
          FieldName = 'no_is'
        end
        item
          FieldName = 'nama'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsQuote
      TabOrder = 7
      Width = 217
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 256
      Width = 553
      Height = 177
      TabOrder = 8
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1TableView1: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
          end
          item
            Kind = skSum
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###'
            Kind = skSum
            DisplayText = 'Total'
          end
          item
            Format = '#,###'
            Kind = skSum
            VisibleForCustomization = False
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        object cxColNo: TcxGridColumn
          Caption = 'No.'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.UseCtrlIncrement = True
          OnGetDisplayText = cxColNoGetDisplayText
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 51
        end
        object cxColPIC: TcxGridColumn
          Caption = 'PIC'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'nama'
          Properties.ListColumns = <
            item
              FieldName = 'nama'
            end>
          Properties.ListSource = DataSource1
          Width = 125
        end
        object cxColDeskripsi: TcxGridColumn
          Caption = 'Deskripsi Tugas'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          HeaderAlignmentHorz = taCenter
          Width = 290
        end
        object cxColStart: TcxGridColumn
          Caption = 'Start Date'
          DataBinding.ValueType = 'DateTime'
          PropertiesClassName = 'TcxDateEditProperties'
        end
        object cxColDue: TcxGridColumn
          Caption = 'Due Date'
          DataBinding.ValueType = 'DateTime'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 71
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1TableView1
      end
    end
    object cxChkAktif: TcxCheckBox
      Left = 475
      Top = 5
      Caption = 'Enginering'
      Properties.NullStyle = nssUnchecked
      TabOrder = 9
      Width = 91
    end
  end
  inherited pnlBawah: TPanel
    Top = 513
    Width = 579
  end
  object zQuote: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.no_is,b.nama FROM tbl_is2 as a join tbl_customer as b'
      ' on a.kode_customer=b.kode order by a.no_is desc')
    Params = <>
    Left = 181
    Top = 20
  end
  object dsQuote: TDataSource
    DataSet = zQuote
    Left = 211
    Top = 28
  end
  object ZQuery1: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_member_rnd')
    Params = <>
    Left = 261
    Top = 20
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 291
    Top = 28
  end
end
