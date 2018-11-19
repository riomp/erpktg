inherited frmLHP: TfrmLHP
  Left = 406
  Top = 236
  VertScrollBar.Range = 0
  Align = alClient
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Laporan Hasil Produksi'
  ClientHeight = 528
  ClientWidth = 1068
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1068
    Height = 46
    inherited lblJudul: TLabel
      Top = 16
      Width = 374
      Caption = 'LAPORAN HASIL PRODUKSI DAN KARANTINA'
    end
  end
  inherited pnlTengah: TPanel
    Top = 46
    Width = 1068
    Height = 417
    Align = alClient
    object pg: TcxPageControl
      Left = 1
      Top = 1
      Width = 1066
      Height = 415
      ActivePage = cxTabSheet2
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 415
      ClientRectRight = 1066
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'LHP'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 41
          Width = 1066
          Height = 350
          Align = alClient
          TabOrder = 0
          object tblLHP: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsHslPrd
            DataController.KeyFieldNames = 'no_bukti'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsView.GroupByBox = False
            object tblLHPid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
              Width = 31
            end
            object tblLHPf_posted: TcxGridDBColumn
              Caption = 'Posting'
              DataBinding.FieldName = 'f_posted'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ReadOnly = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 32
            end
            object tblLHPno_spk: TcxGridDBColumn
              Caption = 'No.SPK'
              DataBinding.FieldName = 'no_spk'
              Width = 110
            end
            object tblLHPno_bukti: TcxGridDBColumn
              Caption = 'No.LHP'
              DataBinding.FieldName = 'no_bukti'
              Width = 97
            end
            object tblLHPtanggal: TcxGridDBColumn
              Caption = 'Tgl.Prd'
              DataBinding.FieldName = 'tanggal'
            end
            object tblLHPjam1: TcxGridDBColumn
              Caption = 'Start'
              DataBinding.FieldName = 'jam1'
              Width = 133
            end
            object tblLHPjam2: TcxGridDBColumn
              Caption = 'Finish'
              DataBinding.FieldName = 'jam2'
              Width = 128
            end
            object tblLHPshift: TcxGridDBColumn
              Caption = 'Shift'
              DataBinding.FieldName = 'shift'
              Width = 31
            end
            object tblLHPsatuan: TcxGridDBColumn
              Caption = 'Unit'
              DataBinding.FieldName = 'satuan'
              Width = 33
            end
            object tblLHPqty_prod: TcxGridDBColumn
              Caption = 'Qty.Prd'
              DataBinding.FieldName = 'qty_prod'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.AssignedValues.DisplayFormat = True
              Properties.ValueType = vtFloat
            end
            object tblLHPqty_prod_kg: TcxGridDBColumn
              Caption = 'Qty.Prd(Kg)'
              DataBinding.FieldName = 'qty_prod_kg'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.AssignedValues.DisplayFormat = True
              Properties.ValueType = vtFloat
            end
            object tblLHPqty_reject: TcxGridDBColumn
              Caption = 'Qty.Rejct'
              DataBinding.FieldName = 'qty_reject'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.AssignedValues.DisplayFormat = True
              Properties.ValueType = vtFloat
            end
            object tblLHPkarantina: TcxGridDBColumn
              Caption = 'Karantina (KG)'
              DataBinding.FieldName = 'karantina'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Width = 92
            end
            object tblLHPbahan: TcxGridDBColumn
              Caption = 'Bahan (KG)'
              DataBinding.FieldName = 'bahan'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 78
            end
            object tblLHPmesin: TcxGridDBColumn
              Caption = 'Mesin'
              DataBinding.FieldName = 'mesin'
              Width = 40
            end
            object tblLHPkode_brg: TcxGridDBColumn
              Caption = 'Kode Barang'
              DataBinding.FieldName = 'kode_brg'
              Width = 91
            end
            object tblLHPdeskripsi: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Width = 330
            end
            object tblLHProuting: TcxGridDBColumn
              Caption = 'Routing'
              DataBinding.FieldName = 'routing'
              Width = 59
            end
            object tblLHPtgl_input: TcxGridDBColumn
              Caption = 'Tgl.Input'
              DataBinding.FieldName = 'tgl_input'
              Width = 132
            end
          end
          object tblAfal: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsAfal
            DataController.DetailKeyFieldNames = 'no_bukti'
            DataController.MasterKeyFieldNames = 'no_bukti'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object tblAfalid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object tblAfalno_spk: TcxGridDBColumn
              DataBinding.FieldName = 'no_spk'
              Visible = False
            end
            object tblAfalno_bukti: TcxGridDBColumn
              DataBinding.FieldName = 'no_bukti'
              Visible = False
            end
            object tblAfaltanggal: TcxGridDBColumn
              DataBinding.FieldName = 'tanggal'
              Visible = False
            end
            object tblAfalkategori: TcxGridDBColumn
              Caption = 'Kategori Afval'
              DataBinding.FieldName = 'kategori'
            end
            object tblAfaljenis: TcxGridDBColumn
              Caption = 'Jenis Afval'
              DataBinding.FieldName = 'jenis'
            end
            object tblAfalketerangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
            end
            object tblAfalqty: TcxGridDBColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'qty'
            end
            object tblAfalsatuan: TcxGridDBColumn
              Caption = 'Satuan'
              DataBinding.FieldName = 'satuan'
            end
            object tblAfalf_id: TcxGridDBColumn
              DataBinding.FieldName = 'f_id'
              Visible = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = tblLHP
            object cxGrid1Level2: TcxGridLevel
              GridView = tblAfal
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1066
          Height = 41
          Align = alTop
          TabOrder = 1
          object cxLabel1: TcxLabel
            Left = 10
            Top = 12
            Caption = 'Tanggal'
          end
          object cxdTgl1: TcxDateEdit
            Left = 60
            Top = 10
            TabOrder = 1
            Width = 121
          end
          object cxLabel2: TcxLabel
            Left = 185
            Top = 12
            Caption = 'S/D'
          end
          object cxdTgl2: TcxDateEdit
            Left = 213
            Top = 10
            TabOrder = 3
            Width = 121
          end
          object btnProses: TButton
            Left = 342
            Top = 7
            Width = 75
            Height = 25
            Caption = 'Proses'
            TabOrder = 4
            OnClick = btnProsesClick
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Karantina'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 21
          Width = 1066
          Height = 370
          Align = alClient
          TabOrder = 0
          object tblKarantina: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsKarantina
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsView.GroupByBox = False
            object tblKarantinano_bukti: TcxGridDBColumn
              Caption = 'No.LHP'
              DataBinding.FieldName = 'no_bukti'
              Width = 116
            end
            object tblKarantinano_spk: TcxGridDBColumn
              Caption = 'No.SPK'
              DataBinding.FieldName = 'no_spk'
              Width = 164
            end
            object tblKarantinatanggal: TcxGridDBColumn
              Caption = 'Tgl.Prd'
              DataBinding.FieldName = 'tanggal'
              Width = 109
            end
            object tblKarantinashift: TcxGridDBColumn
              Caption = 'Shift'
              DataBinding.FieldName = 'shift'
              Width = 50
            end
            object tblKarantinasatuan: TcxGridDBColumn
              Caption = 'Satuan'
              DataBinding.FieldName = 'satuan'
              Width = 53
            end
            object tblKarantinaqty_hasil: TcxGridDBColumn
              Caption = 'Qty.Tandon'
              DataBinding.FieldName = 'qty_hasil'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Width = 103
            end
            object tblKarantinaqty_kg: TcxGridDBColumn
              Caption = 'Qty.KG'
              DataBinding.FieldName = 'qty_kg'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Width = 132
            end
          end
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsAfal
            DataController.DetailKeyFieldNames = 'no_spk'
            DataController.MasterKeyFieldNames = 'no_spk'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGridDBColumn17: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object cxGridDBColumn18: TcxGridDBColumn
              DataBinding.FieldName = 'no_spk'
            end
            object cxGridDBColumn19: TcxGridDBColumn
              DataBinding.FieldName = 'no_bukti'
            end
            object cxGridDBColumn20: TcxGridDBColumn
              DataBinding.FieldName = 'tanggal'
            end
            object cxGridDBColumn21: TcxGridDBColumn
              DataBinding.FieldName = 'kategori'
            end
            object cxGridDBColumn22: TcxGridDBColumn
              DataBinding.FieldName = 'jenis'
            end
            object cxGridDBColumn23: TcxGridDBColumn
              DataBinding.FieldName = 'keterangan'
            end
            object cxGridDBColumn24: TcxGridDBColumn
              DataBinding.FieldName = 'qty'
            end
            object cxGridDBColumn25: TcxGridDBColumn
              DataBinding.FieldName = 'satuan'
            end
            object cxGridDBColumn26: TcxGridDBColumn
              DataBinding.FieldName = 'f_id'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = tblKarantina
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1066
          Height = 21
          Align = alTop
          TabOrder = 1
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 463
    Width = 1068
    Height = 65
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 967
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 95
      Caption = '&Edit LHP'
      Visible = True
    end
    inherited btnHapus: TButton
      Left = 175
      Caption = '&Hapus LHP'
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Caption = '&Tambah LHP'
    end
    object btnRework: TButton
      Left = 255
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Rework'
      TabOrder = 6
      OnClick = btnReworkClick
    end
  end
  object zqrHslPrd: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*,b.kode_brg,b.deskripsi,(SELECT satuan FROM tbl_hsl_pr' +
        'd WHERE no_bukti=a.no_bukti LIMIT 1) satuan,b.routing,'
      
        'IFNULL((SELECT if(satuan='#39'GR'#39',(sum(qty)/1000),sum(qty)) FROM `tb' +
        'l_pemakaian_bahan` where no_bukti=a.no_bukti and satuan in ('#39'KG'#39 +
        ','#39'GR'#39')),0)bahan,'
      
        'IFNULL((SELECT sum(qty_kg) FROM tbl_karantina_hdr where no_bukti' +
        '=a.no_bukti),0)karantina   FROM tbl_hsl_prd as a'
      'join v_spk as b on a.no_spk=b.no_spk'
      'WHERE (a.tanggal BETWEEN :tgl1 AND :tgl2)')
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
    Left = 465
    Top = 13
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
  object dsHslPrd: TDataSource
    DataSet = zqrHslPrd
    Left = 435
    Top = 13
  end
  object dsAfal: TDataSource
    DataSet = zqrAfal
    Left = 500
    Top = 8
  end
  object zqrAfal: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_hsl_prd_afvaldt')
    Params = <>
    Left = 530
    Top = 8
  end
  object dsKarantina: TDataSource
    DataSet = zqrKarantina
    Left = 565
    Top = 8
  end
  object zqrKarantina: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_karantina_hdr where f_rework=0')
    Params = <>
    Left = 595
    Top = 8
  end
end
