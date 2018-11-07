inherited frmTrsMutasiPlusMinusPeletan: TfrmTrsMutasiPlusMinusPeletan
  Left = 200
  Top = 153
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Plus Minus Peletan'
  ClientHeight = 407
  ClientWidth = 1016
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1016
    inherited lblJudul: TLabel
      Width = 213
      Caption = 'Mutasi Plus Minus Peletan'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1016
    Height = 285
    object nxGrd: TNextGrid
      Left = 9
      Top = 19
      Width = 996
      Height = 224
      Options = [goGrid, goHeader]
      TabOrder = 0
      TabStop = True
      OnAfterEdit = nxGrdAfterEdit
      object nxColNoUrut: TNxIncrementColumn
        DefaultWidth = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Position = 0
        SortType = stAlphabetic
        Width = 24
      end
      object nxColCheck: TNxCheckBoxColumn
        Alignment = taCenter
        DefaultWidth = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Pilih'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 1
        SortType = stBoolean
        Width = 29
      end
      object nxColNoSPK: TNxTextColumn
        DefaultWidth = 95
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SPK'
        Position = 2
        SortType = stAlphabetic
        Width = 95
      end
      object nxColNoSO: TNxTextColumn
        DefaultWidth = 91
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SO'
        Position = 3
        SortType = stAlphabetic
        Width = 91
      end
      object nxColCust: TNxTextColumn
        DefaultWidth = 262
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Customer'
        Position = 4
        SortType = stAlphabetic
        Width = 262
      end
      object nxColQtySO: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. SO'
        Position = 5
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColQtyBaik: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Baik'
        Position = 6
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColQtyAfkir: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Afkir'
        Position = 7
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColQtyRetur: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Retur'
        Position = 8
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColPlusMinus: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 68
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Plus / Minus'
        Position = 9
        SortType = stNumeric
        Width = 68
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKodeBrg: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kode Brg.'
        Position = 10
        SortType = stAlphabetic
      end
      object nxColDesk: TNxTextColumn
        DefaultWidth = 197
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nama Barang'
        Position = 11
        SortType = stAlphabetic
        Width = 197
      end
      object nxColGAsis: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 55
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'G-ASIS'
        Position = 12
        SortType = stNumeric
        Width = 55
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColQtyMutasi: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 62
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Mutasi'
        Position = 13
        SortType = stNumeric
        Width = 62
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColJenis: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Position = 14
        SortType = stAlphabetic
        Visible = False
      end
    end
    object btnRefresh: TButton
      Left = 9
      Top = 250
      Width = 107
      Height = 25
      Caption = 'Refresh G-ASIS'
      TabOrder = 1
      OnClick = btnRefreshClick
    end
  end
  inherited pnlBawah: TPanel
    Top = 351
    Width = 1016
    Height = 56
    inherited btnKeluar: TButton
      Left = 87
      Top = 15
    end
    inherited btnSimpan: TButton
      Left = 9
      Top = 15
    end
  end
  object zqrPM: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_spk, a.no_so, a.nama, a.kode_brg, a.deskripsi, a.qty' +
        '_prod, a.qty_baik, a.qty_afkir, a.qty_retur,'
      
        'if(abs(plusminus) < 0.1, round(plusminus), plusminus) plusminus2' +
        ', b.qty qty_so, sum(c.qty) qty_sj '
      'FROM v_spk_pel a '
      
        'left join tbl_so_det b on b.no_bukti = a.no_so and b.kode_brg = ' +
        'a.kode_brg'
      
        'left join tbl_sj_det c on c.no_so = a.no_so and c.kode_brg = b.k' +
        'ode_brg'
      
        'WHERE if(abs(plusminus) < 0.1, round(plusminus), plusminus) <> 0' +
        ' '
      'AND no_trsplusminus IS NULL'
      
        'group by a.no_spk, a.no_so, a.nama, b.qty, a.kode_brg, a.deskrip' +
        'si, a.qty_prod, a.qty_baik, a.qty_afkir, a.qty_retur;'
      ''
      
        '-- SELECT a.*, if(abs(plusminus) < 0.1, round(plusminus), plusmi' +
        'nus) plusminus2 FROM v_spk_pel a '
      
        '-- WHERE if(abs(plusminus) < 0.1, round(plusminus), plusminus) <' +
        '> 0 AND no_trsplusminus IS NULL')
    Params = <>
    Left = 610
    Top = 20
  end
end
