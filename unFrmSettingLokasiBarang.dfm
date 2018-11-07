inherited frmSettingLokasiBarang: TfrmSettingLokasiBarang
  Left = 231
  Top = 125
  Caption = 'Lokasi dan Grid Barang'
  ClientHeight = 407
  ClientWidth = 889
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 889
    inherited lblJudul: TLabel
      Width = 189
      Caption = 'Lokasi dan Grid Barang'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
    object btnImport: TButton
      Left = 785
      Top = 30
      Width = 91
      Height = 25
      Caption = 'Import Excel'
      TabOrder = 1
      OnClick = btnImportClick
    end
    object prgBar: TProgressBar
      Left = 520
      Top = 35
      Width = 260
      Height = 17
      TabOrder = 2
      Visible = False
    end
  end
  inherited pnlTengah: TPanel
    Width = 889
    Height = 294
    inherited pg: TPageControl
      Left = 750
      Top = 75
      Width = 561
      Height = 177
      Align = alNone
      Visible = False
    end
    object cxGrdBrg: TcxGrid
      Left = 10
      Top = 11
      Width = 866
      Height = 270
      TabOrder = 1
      object cxTblBrg: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        object cxTblBrgkode: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
          Width = 63
        end
        object cxTblBrgdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 384
        end
        object cxTblBrgkategori: TcxGridDBColumn
          Caption = 'Kategori'
          DataBinding.FieldName = 'kategori'
          Options.Editing = False
          Width = 124
        end
        object cxTblBrgstok: TcxGridDBColumn
          Caption = 'Stok'
          DataBinding.FieldName = 'stok'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object cxTblBrglokasi: TcxGridDBColumn
          Caption = 'Lokasi'
          DataBinding.FieldName = 'lokasi'
          Width = 91
        end
        object cxTblBrglokasi_grid: TcxGridDBColumn
          Caption = 'Grid'
          DataBinding.FieldName = 'lokasi_grid'
          Width = 94
        end
      end
      object cxGrdBrgLevel1: TcxGridLevel
        GridView = cxTblBrg
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 360
    Width = 889
    Height = 47
    inherited btnKeluar: TButton
      Left = 15
      Top = 10
    end
    inherited btnTambah: TButton
      Left = 585
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 660
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 735
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 400
      Top = 10
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 300
      Top = 15
      Visible = False
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT kode, deskripsi, kategori, stok, lokasi, lokasi_grid '
      'FROM tbl_barang'
      'ORDER BY deskripsi')
  end
end
