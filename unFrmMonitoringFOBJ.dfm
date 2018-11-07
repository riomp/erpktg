inherited frmMonitoringFOBJ: TfrmMonitoringFOBJ
  Left = 160
  Top = 87
  Width = 987
  Height = 589
  VertScrollBar.Visible = False
  Caption = 'Monitoring FOBJ'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 971
    inherited lblJudul: TLabel
      Width = 133
      Caption = 'Monitoring FOBJ'
    end
  end
  inherited pnlTengah: TPanel
    Width = 971
    Height = 411
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 9
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 189
      Top = 10
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 216
      Top = 9
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
    object cxGrd: TcxGrid
      Left = 20
      Top = 40
      Width = 930
      Height = 343
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsFOBJ
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        object cxTblf_app: TcxGridDBColumn
          Caption = 'Approval'
          DataBinding.FieldName = 'f_app'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 50
        end
        object cxTblno_bukti: TcxGridDBColumn
          Caption = 'No. FOBJ'
          DataBinding.FieldName = 'no_bukti'
          Width = 98
        end
        object cxTbltgl_fobj: TcxGridDBColumn
          Caption = 'Tgl. FOBJ'
          DataBinding.FieldName = 'tgl_fobj'
          Width = 71
        end
        object cxTbltgl_diperlukan: TcxGridDBColumn
          Caption = 'Tgl. Diperlukan'
          DataBinding.FieldName = 'tgl_diperlukan'
          Width = 91
        end
        object cxTbldiajukan_oleh: TcxGridDBColumn
          Caption = 'Diajukan Oleh'
          DataBinding.FieldName = 'diajukan_oleh'
          Width = 102
        end
        object cxTbldiajukan_dept: TcxGridDBColumn
          Caption = 'Dept'
          DataBinding.FieldName = 'diajukan_dept'
          Width = 63
        end
        object cxTblno_po: TcxGridDBColumn
          Caption = 'No. PO'
          DataBinding.FieldName = 'no_po'
          Width = 82
        end
        object cxTbltgl_po: TcxGridDBColumn
          Caption = 'Tgl. PO'
          DataBinding.FieldName = 'tgl_po'
          Width = 69
        end
        object cxTblkode_supp: TcxGridDBColumn
          Caption = 'KD. Supp'
          DataBinding.FieldName = 'kode_supp'
          Width = 56
        end
        object cxTblnama_supplier: TcxGridDBColumn
          Caption = 'Nama Supplier'
          DataBinding.FieldName = 'nama_supplier'
          Width = 242
        end
        object cxTblkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTbldeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 371
        end
        object cxTblqty_fobj: TcxGridDBColumn
          Caption = 'Qty. FOBJ'
          DataBinding.FieldName = 'qty_fobj'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Width = 64
        end
        object cxTblqty_po: TcxGridDBColumn
          Caption = 'Qty. PO'
          DataBinding.FieldName = 'qty_po'
          PropertiesClassName = 'TcxSpinEditProperties'
        end
        object cxTblqty_pb: TcxGridDBColumn
          Caption = 'Qty. Terima'
          DataBinding.FieldName = 'qty_pb'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxLabel3: TcxLabel
      Left = 20
      Top = 387
      Caption = 'Keterangan :'
    end
    object cxCheckBox1: TcxCheckBox
      Left = 84
      Top = 386
      Caption = 'Blm. Approval'
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 92
    end
    object cxCheckBox2: TcxCheckBox
      Left = 175
      Top = 386
      Caption = 'Approval / Disetujui'
      Properties.ReadOnly = True
      State = cbsChecked
      TabOrder = 8
      Width = 131
    end
    object cxCheckBox3: TcxCheckBox
      Left = 294
      Top = 386
      Caption = 'Tidak Approval'
      Properties.AllowGrayed = True
      Properties.ReadOnly = True
      Properties.ValueGrayed = -1
      Properties.ValueUnchecked = 0
      State = cbsGrayed
      TabOrder = 9
      Width = 102
    end
  end
  inherited pnlBawah: TPanel
    Top = 477
    Width = 971
    inherited btnKeluar: TButton
      Left = 97
      Top = 20
    end
    inherited btnSimpan: TButton
      Left = 785
      Visible = False
    end
    object btnExcel: TButton
      Left = 20
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 6
      OnClick = btnExcelClick
    end
  end
  object zqrFOBJ: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      
        'select a.f_app, a.diajukan_oleh, a.diajukan_dept, a.no_bukti, a.' +
        'tanggal tgl_fobj, a.tgl_diperlukan, b.no_bukti no_po, b.tanggal ' +
        'tgl_po, '
      
        'b.kode_supp, d.nama nama_supplier, aa.kode_brg, e.deskripsi, aa.' +
        'qty qty_fobj, c.qty qty_po,'
      
        'ifnull((select sum(qty) from tbl_spbb_det where no_po = b.no_buk' +
        'ti and kode_brg = aa.kode_brg and ifnull(no_penerimaan,'#39#39') <> '#39#39 +
        '),0) qty_pb'
      'from tbl_fobj_head a'
      'inner join tbl_fobj_det aa on aa.no_bukti = a.no_bukti'
      'left join tbl_po_head b on a.no_bukti = b.no_fobj'
      'left join tbl_po_det c on c.no_bukti = b.no_bukti'
      'left join tbl_supplier d on d.kode = b.kode_supp'
      'left join tbl_barang e on e.kode = aa.kode_brg'
      'where a.tanggal between :tgl1 and :tgl2'
      'order by tgl_fobj desc;')
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
    Left = 460
    Top = 20
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
  object dsFOBJ: TDataSource
    DataSet = zqrFOBJ
    Left = 490
    Top = 20
  end
end
