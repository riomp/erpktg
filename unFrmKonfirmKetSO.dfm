object frmKonfirmKetSO: TfrmKonfirmKetSO
  Left = 182
  Top = 100
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Konfirmasi Keterangan SO'
  ClientHeight = 393
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxrGrd: TcxGrid
    Left = 14
    Top = 17
    Width = 957
    Height = 336
    TabOrder = 0
    object cxTbl: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxTblColumn1: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
        Width = 82
      end
      object cxTblColumn2: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 291
      end
      object cxTblColumn4: TcxGridDBColumn
        Caption = 'Qty. SO'
        DataBinding.FieldName = 'qty'
      end
      object cxTblColumn3: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 495
      end
    end
    object cxrGrdLevel1: TcxGridLevel
      GridView = cxTbl
    end
  end
  object Button1: TButton
    Left = 15
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Simpan'
    ModalResult = 1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 95
    Top = 360
    Width = 126
    Height = 25
    Caption = 'Batal Simpan'
    ModalResult = 2
    TabOrder = 2
  end
  object zqrKetSO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.kode_brg, b.deskripsi, a.qty, a.keterangan'
      'FROM _tmp_ket_so a'
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode'
      'ORDER BY a.kode_brg')
    Params = <>
    Left = 240
    Top = 70
  end
  object ds: TDataSource
    DataSet = zqrKetSO
    Left = 270
    Top = 70
  end
end
