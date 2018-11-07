inherited frmBarangSlowMoving: TfrmBarangSlowMoving
  Left = 191
  Top = 175
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Barang Slow Moving'
  ClientHeight = 448
  ClientWidth = 993
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 993
    inherited lblJudul: TLabel
      Width = 165
      Caption = 'Barang Slow Moving'
    end
  end
  inherited pnlTengah: TPanel
    Width = 993
    Height = 306
    object cxGrid1: TcxGrid
      Left = 15
      Top = 10
      Width = 961
      Height = 282
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsView.GroupByBox = False
        object cxTblkode: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTbldeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 291
        end
        object cxTblColumn1: TcxGridDBColumn
          Caption = 'Tipe'
          DataBinding.FieldName = 'tipe'
          Width = 161
        end
        object cxTblColumn2: TcxGridDBColumn
          Caption = 'Kategori'
          DataBinding.FieldName = 'kategori'
          Width = 151
        end
        object cxTblColumn3: TcxGridDBColumn
          Caption = 'Sub Kategori'
          DataBinding.FieldName = 'subkategori'
          Width = 109
        end
        object cxTblstok: TcxGridDBColumn
          Caption = 'Stok (G-SDP)'
          DataBinding.FieldName = 'stok'
          Width = 74
        end
        object cxTbltgl_sj_terakhir: TcxGridDBColumn
          Caption = 'Tgl. SJ Terakhir'
          DataBinding.FieldName = 'tgl_sj'
          Width = 103
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 372
    Width = 993
    inherited btnKeluar: TButton
      Left = 472
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 395
      Visible = False
    end
    object btnCetakExcel: TButton
      Left = 15
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Cetak Excel'
      TabOrder = 6
      OnClick = btnCetakExcelClick
    end
    object btnKeluar2: TButton
      Left = 95
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 7
      OnClick = btnKeluar2Click
    end
  end
  object zqrSM: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.kode_brg, b.deskripsi, b.tipe, b.kategori, b.subkategor' +
        'i, sf_get_stok2(a.kode_brg, '#39'G01'#39') stok, tgl_sj'
      'from '
      '( '
      'select kode_brg, max(tanggal) tgl_sj from tbl_history '
      'where left(no_bukti,2) = '#39'SJ'#39
      'group by kode_brg'
      'having max(tanggal) < date_sub(curdate(), INTERVAL 90 DAY)'
      ') a left join '
      'tbl_barang b on a.kode_brg = b.kode'
      'where b.f_aktif = 1;')
    Params = <>
    Left = 350
    Top = 15
  end
  object dsSM: TDataSource
    DataSet = zqrSM
    Left = 380
    Top = 15
  end
end
