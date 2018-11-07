inherited FrmVerifikasiMasterBarang: TFrmVerifikasiMasterBarang
  Left = 519
  Top = 236
  Height = 532
  Caption = 'Verifikasi Master Data'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 229
      Caption = 'Verifikasi Akun Master Data'
    end
  end
  inherited pnlTengah: TPanel
    Height = 350
    object pg: TcxPageControl
      Left = 1
      Top = 1
      Width = 810
      Height = 348
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 348
      ClientRectRight = 810
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Customer'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 4
          Top = 7
          Width = 801
          Height = 274
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxTblVerifikasi: TcxGridTableView
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
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnRecordChanged = cxTblVerifikasiDataControllerRecordChanged
            FilterRow.Visible = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            object cxColKode: TcxGridColumn
              Caption = 'Kode Customer'
              Options.Editing = False
              Width = 87
            end
            object cxColNama: TcxGridColumn
              Caption = 'Nama Customer'
              Width = 323
            end
            object cxColAkun: TcxGridColumn
              Caption = 'Akun Piutang'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListSource = dsCoa
              Width = 236
            end
            object cxColNoAkun: TcxGridColumn
              Caption = 'No.Akun'
              Width = 81
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxTblVerifikasi
          end
        end
        object Button1: TButton
          Left = 15
          Top = 295
          Width = 75
          Height = 25
          Caption = '&Simpan'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Supplier'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 5
          Top = 5
          Width = 801
          Height = 274
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxTblSupplier: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnRecordChanged = cxTblSupplierDataControllerRecordChanged
            FilterRow.Visible = True
            OptionsView.GroupByBox = False
            object cxColKode1: TcxGridColumn
              Caption = 'Kode Supplier'
              Width = 85
            end
            object cxColNama1: TcxGridColumn
              Caption = 'Nama Supplier'
              Width = 272
            end
            object cxColAkun1: TcxGridColumn
              Caption = 'Akun Piutang'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListSource = dsCoa1
              Width = 220
            end
            object cxColNoAkun1: TcxGridColumn
              Caption = 'No.Akun'
              Width = 114
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxTblSupplier
          end
        end
        object Button2: TButton
          Left = 10
          Top = 290
          Width = 75
          Height = 25
          Caption = '&Simpan'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 416
    inherited btnKeluar: TButton
      Left = 717
      Top = 20
    end
    inherited btnBaru: TButton
      Left = 495
      Top = 20
    end
    inherited btnEdit: TButton
      Left = 565
      Top = 15
    end
    inherited btnHapus: TButton
      Left = 575
      Top = 45
    end
    inherited btnBatal: TButton
      Left = 420
      Top = 20
    end
    inherited btnSimpan: TButton
      Left = 175
      Visible = False
    end
  end
  object dsVerifikasi: TDataSource
    DataSet = zqrVerifikasi
    Left = 270
    Top = 25
  end
  object zqrJenis: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT DISTINCT jenis FROM tbl_barang ORDER BY jenis')
    Params = <>
    Left = 305
    Top = 25
  end
  object dsJenis: TDataSource
    DataSet = zqrJenis
    Left = 335
    Top = 25
  end
  object zqrVerifikasi: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT kode,deskripsi,kategori,subkategori,jenis FROM tbl_barang' +
        ' '
      'WHERE f_aktif=1 and f_approval=0')
    Params = <>
    Left = 240
    Top = 25
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT kode,deskripsi,kategori,subkategori,jenis FROM tbl_barang' +
        ' '
      'WHERE f_aktif=1 and f_approval=0')
    Params = <>
    Left = 370
    Top = 25
  end
  object ds1: TDataSource
    DataSet = ZReadOnlyQuery1
    Left = 400
    Top = 25
  end
  object zqrCoa: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.noakun, a.nama FROM tbl_coa a WHERE f_aktif = 1'
      'AND (SELECT COUNT(*) FROM tbl_coa WHERE induk = a.noakun) = 0 '
      'ORDER BY a.noakun')
    Params = <>
    Left = 440
    Top = 25
  end
  object dsCoa: TDataSource
    DataSet = zqrCoa
    Left = 470
    Top = 25
  end
  object zqrCoa1: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.noakun, a.nama FROM tbl_coa a WHERE f_aktif = 1'
      'AND (SELECT COUNT(*) FROM tbl_coa WHERE induk = a.noakun) = 0 '
      'ORDER BY a.noakun')
    Params = <>
    Left = 500
    Top = 25
  end
  object dsCoa1: TDataSource
    DataSet = zqrCoa1
    Left = 530
    Top = 25
  end
end
