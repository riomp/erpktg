inherited frmRekapCIO: TfrmRekapCIO
  Left = 188
  Top = 63
  Width = 1080
  Height = 661
  VertScrollBar.Visible = False
  Caption = 'Rekap Check IN - IUT'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1064
    Height = 46
    inherited lblJudul: TLabel
      Top = 12
      Width = 182
      Caption = 'Rekap Check IN - OUT'
    end
  end
  inherited pnlTengah: TPanel
    Top = 46
    Width = 1064
    Height = 531
    Align = alClient
    object cxLabel1: TcxLabel
      Left = 15
      Top = 11
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 9
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 11
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 219
      Top = 9
      TabOrder = 3
      Width = 121
    end
    object Button1: TButton
      Left = 506
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = Button1Click
    end
    object cxGrid1: TcxGrid
      Left = 18
      Top = 40
      Width = 1029
      Height = 342
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblFocusedRecordChanged
        DataController.DataSource = dsH
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,#'
            Kind = skSum
            Column = cxTbljml_tk
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsView.Footer = True
        object cxTbllokasi: TcxGridDBColumn
          Caption = 'Lokasi'
          DataBinding.FieldName = 'lokasi'
          Visible = False
          GroupIndex = 0
          Width = 116
        end
        object cxTbltanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTbldivisi: TcxGridDBColumn
          Caption = 'Divisi'
          DataBinding.FieldName = 'divisi'
        end
        object cxTblmesin: TcxGridDBColumn
          Caption = 'Mesin'
          DataBinding.FieldName = 'mesin'
        end
        object cxTblkegiatan: TcxGridDBColumn
          Caption = 'Kegiatan'
          DataBinding.FieldName = 'kegiatan'
          Width = 221
        end
        object cxTblshift: TcxGridDBColumn
          Caption = 'Shift'
          DataBinding.FieldName = 'shift'
          Width = 54
        end
        object cxTblmasuk: TcxGridDBColumn
          Caption = 'Masuk'
          DataBinding.FieldName = 'masuk'
        end
        object cxTblpulang: TcxGridDBColumn
          Caption = 'Pulang'
          DataBinding.FieldName = 'pulang'
        end
        object cxTbljml_tk: TcxGridDBColumn
          Caption = 'Jumlah TK.'
          DataBinding.FieldName = 'jml_tk'
          Width = 83
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxGrid2: TcxGrid
      Left = 18
      Top = 405
      Width = 1029
      Height = 116
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 6
      object cxTbl2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxTbl2nik: TcxGridDBColumn
          Caption = 'NIK'
          DataBinding.FieldName = 'nik'
          Width = 65
        end
        object cxTbl2nama: TcxGridDBColumn
          Caption = 'Nama '
          DataBinding.FieldName = 'nama'
          Width = 337
        end
        object cxTbl2jabatan: TcxGridDBColumn
          Caption = 'Jabatan'
          DataBinding.FieldName = 'jabatan'
        end
        object cxTbl2Column1: TcxGridDBColumn
          Caption = 'Nama SL'
          DataBinding.FieldName = 'nama_sl'
          Width = 241
        end
        object cxTbl2_in: TcxGridDBColumn
          Caption = 'Awal'
          DataBinding.FieldName = '_in'
        end
        object cxTbl2_out: TcxGridDBColumn
          Caption = 'Akhir'
          DataBinding.FieldName = '_out'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxTbl2
      end
    end
    object cxLabel3: TcxLabel
      Left = 18
      Top = 385
      Caption = 'Detail :'
    end
    object cxLabel4: TcxLabel
      Left = 345
      Top = 11
      Caption = 'Jenis'
    end
    object cxCmbJenis: TcxComboBox
      Left = 380
      Top = 9
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 9
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Top = 577
    Width = 1064
    Height = 46
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 932
      Top = 5
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 855
      Top = 5
      Visible = False
    end
    object btnKeluar2: TButton
      Left = 18
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 6
      OnClick = btnKeluar2Click
    end
  end
  object zqrH: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.lokasi,a.tanggal, a.divisi, a.mesin, a.kegiatan, b.masu' +
        'k, b.pulang, a.shift, count(a.nik) jml_tk '
      'from tbl_check_in_out a'
      'left join tbl_shift b on a.shift = b.shift'
      'where tanggal between :tgl1 and :tgl2 and a.jenis = :jenis'
      
        'group by a.lokasi, a.tanggal, a.divisi, a.mesin, a.kegiatan, b.m' +
        'asuk, b.pulang, a.shift'
      'order by a.lokasi, a.tanggal, a.mesin, a.kegiatan;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'jenis'
        ParamType = ptUnknown
      end>
    Left = 430
    Top = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'jenis'
        ParamType = ptUnknown
      end>
  end
  object dsH: TDataSource
    DataSet = zqrH
    Left = 460
    Top = 201
  end
  object zqrD: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nik, nama, jabatan, _in, _out, nama_sl '
      'FROM tbl_check_in_out '
      'WHERE tanggal = :tanggal AND '
      'lokasi = :lokasi AND '
      'shift = :shift AND '
      'divisi = :divisi AND'
      '-- '
      '-- '
      'jenis = :jenis')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lokasi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'divisi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'jenis'
        ParamType = ptUnknown
      end>
    Left = 430
    Top = 231
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tanggal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lokasi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'shift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'divisi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'jenis'
        ParamType = ptUnknown
      end>
  end
  object dsD: TDataSource
    DataSet = zqrD
    Left = 460
    Top = 231
  end
end
