inherited frmMonitoringKaryawan: TfrmMonitoringKaryawan
  Left = 194
  Top = 104
  Width = 1170
  Height = 605
  Caption = 'Monitoring Karyawan'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1154
    inherited lblJudul: TLabel
      Width = 174
      Caption = 'Monitoring Karyawan'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1154
    Height = 449
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 8
      TabOrder = 0
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'Tanggal'
    end
    object cxLabel2: TcxLabel
      Left = 188
      Top = 10
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 215
      Top = 8
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 341
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
    object pg: TPageControl
      Left = 15
      Top = 35
      Width = 1129
      Height = 396
      ActivePage = TabSheet1
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 6
      object TabSheet1: TTabSheet
        Caption = 'Detail'
        DesignSize = (
          1121
          368)
        object cxGrd: TcxGrid
          Left = 6
          Top = 6
          Width = 1106
          Height = 356
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          object cxTbl: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsCIO
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            object cxTbltanggal: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
              Options.Editing = False
            end
            object cxTblnik: TcxGridDBColumn
              Caption = 'NIK'
              DataBinding.FieldName = 'nik'
              Width = 50
            end
            object cxTblnama: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'nama'
              Options.Editing = False
              Width = 179
            end
            object cxTbldivisi: TcxGridDBColumn
              Caption = 'Divisi'
              DataBinding.FieldName = 'divisi'
              Options.Editing = False
              Width = 128
            end
            object cxTbljabatan: TcxGridDBColumn
              Caption = 'Jabatan'
              DataBinding.FieldName = 'jabatan'
              Options.Editing = False
              Width = 157
            end
            object cxTblColumn1: TcxGridDBColumn
              Caption = 'Shift'
              DataBinding.FieldName = 'shift'
              Width = 41
            end
            object cxTbljenis: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'jenis'
              Options.Editing = False
              Width = 95
            end
            object cxTblkegiatan: TcxGridDBColumn
              Caption = 'Kegiatan'
              DataBinding.FieldName = 'kegiatan'
              Options.Editing = False
              Width = 162
            end
            object cxTbl_in: TcxGridDBColumn
              Caption = 'Masuk'
              DataBinding.FieldName = '_in'
              PropertiesClassName = 'TcxTimeEditProperties'
              Options.Editing = False
              Width = 61
            end
            object cxTbl_out: TcxGridDBColumn
              Caption = 'Keluar'
              DataBinding.FieldName = '_out'
              PropertiesClassName = 'TcxTimeEditProperties'
              Options.Editing = False
            end
            object cxTblketerangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
              Options.Editing = False
              Width = 144
            end
            object cxTbljammasuk: TcxGridDBColumn
              DataBinding.FieldName = 'jammasuk'
              Visible = False
              Options.Editing = False
            end
            object cxTbljampulang: TcxGridDBColumn
              DataBinding.FieldName = 'jampulang'
              Visible = False
              Options.Editing = False
            end
            object cxTblflag: TcxGridDBColumn
              DataBinding.FieldName = 'flag'
              Visible = False
              Options.Editing = False
              Width = 52
            end
            object cxTbllokasi: TcxGridDBColumn
              Caption = 'Lokasi'
              DataBinding.FieldName = 'lokasi'
              Options.Editing = False
              Width = 112
            end
            object cxTblnik_sl: TcxGridDBColumn
              DataBinding.FieldName = 'nik_sl'
              Visible = False
              Options.Editing = False
            end
            object cxTblnama_sl: TcxGridDBColumn
              Caption = 'Nama SL / TL (Atasan)'
              DataBinding.FieldName = 'nama_sl'
              Options.Editing = False
              Width = 130
            end
            object cxTblnik_sl_k: TcxGridDBColumn
              DataBinding.FieldName = 'nik_sl_k'
              Visible = False
              Options.Editing = False
            end
            object cxTblf_lokasi: TcxGridDBColumn
              DataBinding.FieldName = 'f_lokasi'
              Visible = False
              Options.Editing = False
            end
            object cxTblip: TcxGridDBColumn
              Caption = 'POE'
              DataBinding.FieldName = 'ip'
              Options.Editing = False
              Width = 72
            end
            object cxTblmesin: TcxGridDBColumn
              Caption = 'Mesin'
              DataBinding.FieldName = 'mesin'
              Options.Editing = False
            end
            object cxTblalokasi: TcxGridDBColumn
              DataBinding.FieldName = 'alokasi'
              Visible = False
              Options.Editing = False
              Width = 73
            end
            object cxTbljam_mulai: TcxGridDBColumn
              DataBinding.FieldName = 'jam_mulai'
              Visible = False
              Options.Editing = False
            end
            object cxTblalokasi_mesin: TcxGridDBColumn
              DataBinding.FieldName = 'alokasi_mesin'
              Visible = False
              Options.Editing = False
            end
          end
          object cxGrdLevel1: TcxGridLevel
            GridView = cxTbl
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Rekap'
        ImageIndex = 1
        object cxGrdRekap: TcxGrid
          Left = 6
          Top = 6
          Width = 1106
          Height = 356
          TabOrder = 0
          object cxTblRekap: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsRekap
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxTblRekaptanggal: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
            end
            object cxTblRekapnik: TcxGridDBColumn
              Caption = 'NIK'
              DataBinding.FieldName = 'nik'
              Width = 56
            end
            object cxTblRekapnama: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'nama'
              Width = 228
            end
            object cxTblRekapdivisi: TcxGridDBColumn
              Caption = 'Divisi'
              DataBinding.FieldName = 'divisi'
            end
            object cxTblRekapjabatan: TcxGridDBColumn
              Caption = 'Jabatan'
              DataBinding.FieldName = 'jabatan'
              Width = 135
            end
            object cxTblRekapmasuk: TcxGridDBColumn
              Caption = 'Masuk'
              DataBinding.FieldName = 'masuk'
              Width = 46
            end
            object cxTblRekappenugasan: TcxGridDBColumn
              Caption = 'Penugasan'
              DataBinding.FieldName = 'penugasan'
              Width = 68
            end
            object cxTblRekapalokasi: TcxGridDBColumn
              Caption = 'Alokasi'
              DataBinding.FieldName = 'alokasi'
              Width = 46
            end
            object cxTblRekapmutasi: TcxGridDBColumn
              Caption = 'Mutasi'
              DataBinding.FieldName = 'mutasi'
              Width = 59
            end
            object cxTblRekappulang: TcxGridDBColumn
              Caption = 'Pulang'
              DataBinding.FieldName = 'pulang'
              Width = 54
            end
            object cxTblRekapjam_masuk: TcxGridDBColumn
              Caption = 'Jam Masuk'
              DataBinding.FieldName = 'jam_masuk'
            end
            object cxTblRekapjam_pulang: TcxGridDBColumn
              Caption = 'Jam Pulang'
              DataBinding.FieldName = 'jam_pulang'
              Width = 71
            end
          end
          object cxGrdRekapLevel1: TcxGridLevel
            GridView = cxTblRekap
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 470
      Top = 6
      Width = 677
      Height = 344
      TabOrder = 5
      Visible = False
      OnExit = Panel1Exit
      object imgFoto: TImage
        Left = 380
        Top = 15
        Width = 256
        Height = 311
        Stretch = True
      end
      object btnClosePanel: TButton
        Left = 652
        Top = 3
        Width = 21
        Height = 21
        Caption = 'X'
        TabOrder = 0
        OnClick = btnClosePanelClick
      end
      object cxLabel3: TcxLabel
        Left = 10
        Top = 15
        Caption = 'Nama'
      end
      object cxtNama: TcxTextEdit
        Left = 76
        Top = 14
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 293
      end
      object cxLabel4: TcxLabel
        Left = 10
        Top = 39
        Caption = 'Divisi'
      end
      object cxtDivisi: TcxTextEdit
        Left = 76
        Top = 38
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 293
      end
      object cxLabel5: TcxLabel
        Left = 10
        Top = 64
        Caption = 'Jabatan'
      end
      object cxtJabatan: TcxTextEdit
        Left = 76
        Top = 63
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 6
        Width = 293
      end
      object btnTutup3: TButton
        Left = 76
        Top = 115
        Width = 75
        Height = 25
        Caption = 'Tutup'
        TabOrder = 7
        OnClick = btnTutup3Click
      end
      object cxLabel6: TcxLabel
        Left = 10
        Top = 89
        Caption = 'Departemen'
      end
      object cxtDept: TcxTextEdit
        Left = 76
        Top = 88
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 9
        Width = 293
      end
      object cxGrdDet: TcxGrid
        Left = 15
        Top = 152
        Width = 354
        Height = 174
        TabOrder = 10
        object cxTblDet: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDet
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxTblDettanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
            Width = 92
          end
          object cxTblDetjenis: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'jenis'
            Width = 117
          end
          object cxTblDetjam: TcxGridDBColumn
            Caption = 'Jam'
            DataBinding.FieldName = 'jam'
            Width = 94
          end
        end
        object cxGrdDetLevel1: TcxGridLevel
          GridView = cxTblDet
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 515
    Width = 1154
    Height = 52
    inherited btnKeluar: TButton
      Left = 882
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 805
      Visible = False
    end
    object Button1: TButton
      Left = 18
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 186
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 7
      OnClick = Button2Click
    end
    object btnDetKary: TButton
      Left = 96
      Top = 14
      Width = 88
      Height = 25
      Caption = 'Detail Karyawan'
      TabOrder = 8
      OnClick = btnDetKaryClick
    end
  end
  object zqrCIO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_check_in_out'
      'WHERE tanggal BETWEEN :tgl1 AND :tgl2'
      'ORDER BY nama, _in')
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
      end>
    Left = 635
    Top = 30
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
      end>
  end
  object dsCIO: TDataSource
    DataSet = zqrCIO
    Left = 665
    Top = 30
  end
  object zqrRekap: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select tanggal, nik, nama, divisi, jabatan,'
      'COUNT(if(jenis='#39'MASUK'#39',jenis,null)) masuk,'
      'COUNT(if(jenis='#39'PENUGASAN'#39',jenis,null)) penugasan, '
      'COUNT(if(jenis='#39'ALOKASI'#39',jenis,null)) alokasi, '
      'COUNT(if(jenis='#39'MUTASI'#39',jenis,null)) mutasi, '
      'COUNT(if(jenis='#39'PULANG'#39',jenis,null)) pulang,'
      'TIME(MIN(if(jenis='#39'MASUK'#39',_in, null))) jam_masuk,'
      'TIME(MAX(if(jenis='#39'PULANG'#39',_out, null))) jam_pulang'
      'from tbl_check_in_out '
      'where tanggal BETWEEN :tgl1 AND :tgl2'
      'group by tanggal, nik, nama, divisi, jabatan'
      '-- having COUNT(if(jenis='#39'MASUK'#39',jenis,null)) > 0 and '
      '-- COUNT(if(jenis='#39'PULANG'#39',jenis,null)) = 0 and '
      '-- TIME(MAX(if(jenis='#39'MASUK'#39',_in, null))) < '#39'14:30:00'#39
      'order by nama, _in;')
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
      end>
    Left = 695
    Top = 30
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
      end>
  end
  object dsRekap: TDataSource
    DataSet = zqrRekap
    Left = 725
    Top = 30
  end
  object zqrDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select tanggal, jenis, time(_in) jam from tbl_check_in_out'
      'where nik = :nik'
      'and tanggal between :tgl1 AND :tgl2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nik'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 755
    Top = 30
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nik'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsDet: TDataSource
    DataSet = zqrDet
    Left = 785
    Top = 30
  end
end
