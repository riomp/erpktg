inherited frmLapExcel: TfrmLapExcel
  Left = 252
  Top = 70
  Caption = 'Laporan Excel'
  ClientHeight = 518
  ClientWidth = 1040
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1040
    inherited lblJudul: TLabel
      Width = 114
      Caption = 'Laporan Excel'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
      Visible = False
    end
  end
  inherited pnlTengah: TPanel
    Width = 1040
    Height = 395
    inherited pg: TPageControl
      Width = 1038
      Height = 393
      ActivePage = TabSheet2
      inherited TabSheet1: TTabSheet
        Caption = 'Barang'
        object cxGrid1: TcxGrid
          Left = 10
          Top = 10
          Width = 1008
          Height = 319
          TabOrder = 0
          object cxTblBrg: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsBrg
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTblBrgid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object cxTblBrgno_is: TcxGridDBColumn
              DataBinding.FieldName = 'no_is'
              Width = 105
            end
            object cxTblBrgno_cp: TcxGridDBColumn
              DataBinding.FieldName = 'no_cp'
              Width = 125
            end
            object cxTblBrgkode: TcxGridDBColumn
              DataBinding.FieldName = 'kode'
              Width = 135
            end
            object cxTblBrgkode_zahir: TcxGridDBColumn
              DataBinding.FieldName = 'kode_zahir'
              Visible = False
            end
            object cxTblBrgdeskripsi: TcxGridDBColumn
              DataBinding.FieldName = 'deskripsi'
              Width = 393
            end
            object cxTblBrgstok: TcxGridDBColumn
              DataBinding.FieldName = 'stok'
            end
            object cxTblBrgb_stok: TcxGridDBColumn
              DataBinding.FieldName = 'b_stok'
            end
            object cxTblBrgsatuan: TcxGridDBColumn
              DataBinding.FieldName = 'satuan'
              Width = 90
            end
            object cxTblBrgtipe: TcxGridDBColumn
              DataBinding.FieldName = 'tipe'
            end
            object cxTblBrgkategori: TcxGridDBColumn
              DataBinding.FieldName = 'kategori'
            end
            object cxTblBrgsubkategori: TcxGridDBColumn
              DataBinding.FieldName = 'subkategori'
            end
            object cxTblBrgdivisi: TcxGridDBColumn
              DataBinding.FieldName = 'divisi'
            end
            object cxTblBrgpackinfo: TcxGridDBColumn
              DataBinding.FieldName = 'packinfo'
            end
            object cxTblBrgf_aktif: TcxGridDBColumn
              DataBinding.FieldName = 'f_aktif'
            end
            object cxTblBrguser_input: TcxGridDBColumn
              DataBinding.FieldName = 'user_input'
            end
            object cxTblBrgtgl_input: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_input'
            end
            object cxTblBrguser_edit: TcxGridDBColumn
              DataBinding.FieldName = 'user_edit'
            end
            object cxTblBrgtgl_edit: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_edit'
            end
            object cxTblBrgberat: TcxGridDBColumn
              DataBinding.FieldName = 'berat'
            end
            object cxTblBrgpacking: TcxGridDBColumn
              DataBinding.FieldName = 'packing'
            end
            object cxTblBrgberat_per_unit: TcxGridDBColumn
              DataBinding.FieldName = 'berat_per_unit'
            end
            object cxTblBrgs_berat: TcxGridDBColumn
              DataBinding.FieldName = 's_berat'
            end
            object cxTblBrgisi_pak: TcxGridDBColumn
              DataBinding.FieldName = 'isi_pak'
            end
            object cxTblBrgimage: TcxGridDBColumn
              DataBinding.FieldName = 'image'
            end
            object cxTblBrgwarna: TcxGridDBColumn
              DataBinding.FieldName = 'warna'
            end
            object cxTblBrg_panjang: TcxGridDBColumn
              DataBinding.FieldName = '_panjang'
            end
            object cxTblBrgs_panjang: TcxGridDBColumn
              DataBinding.FieldName = 's_panjang'
            end
            object cxTblBrglebar: TcxGridDBColumn
              DataBinding.FieldName = 'lebar'
            end
            object cxTblBrgs_lebar: TcxGridDBColumn
              DataBinding.FieldName = 's_lebar'
            end
            object cxTblBrg_tebal: TcxGridDBColumn
              DataBinding.FieldName = '_tebal'
            end
            object cxTblBrgs_tebal: TcxGridDBColumn
              DataBinding.FieldName = 's_tebal'
            end
            object cxTblBrgdiameter: TcxGridDBColumn
              DataBinding.FieldName = 'diameter'
            end
            object cxTblBrgs_diameter: TcxGridDBColumn
              DataBinding.FieldName = 's_diameter'
            end
            object cxTblBrgberat_per_unit_b: TcxGridDBColumn
              DataBinding.FieldName = 'berat_per_unit_b'
            end
            object cxTblBrgs_berat_per_unit_b: TcxGridDBColumn
              DataBinding.FieldName = 's_berat_per_unit_b'
            end
            object cxTblBrgf_dijual: TcxGridDBColumn
              DataBinding.FieldName = 'f_dijual'
            end
            object cxTblBrgf_dibeli: TcxGridDBColumn
              DataBinding.FieldName = 'f_dibeli'
            end
            object cxTblBrgf_joborder: TcxGridDBColumn
              DataBinding.FieldName = 'f_joborder'
            end
            object cxTblBrgflow_process: TcxGridDBColumn
              DataBinding.FieldName = 'flow_process'
            end
            object cxTblBrgdiameter_dalam: TcxGridDBColumn
              DataBinding.FieldName = 'diameter_dalam'
            end
            object cxTblBrgs_diameter_dalam: TcxGridDBColumn
              DataBinding.FieldName = 's_diameter_dalam'
            end
            object cxTblBrgdiameter_luar: TcxGridDBColumn
              DataBinding.FieldName = 'diameter_luar'
            end
            object cxTblBrgs_diameter_luar: TcxGridDBColumn
              DataBinding.FieldName = 's_diameter_luar'
            end
            object cxTblBrgpanjang_lurus: TcxGridDBColumn
              DataBinding.FieldName = 'panjang_lurus'
            end
            object cxTblBrgberat_per_unit_old: TcxGridDBColumn
              DataBinding.FieldName = 'berat_per_unit_old'
            end
            object cxTblBrgf_ed: TcxGridDBColumn
              DataBinding.FieldName = 'f_ed'
            end
            object cxTblBrged: TcxGridDBColumn
              DataBinding.FieldName = 'ed'
            end
            object cxTblBrgf_tds: TcxGridDBColumn
              DataBinding.FieldName = 'f_tds'
            end
            object cxTblBrgtds: TcxGridDBColumn
              DataBinding.FieldName = 'tds'
            end
            object cxTblBrghrg_kel1: TcxGridDBColumn
              DataBinding.FieldName = 'hrg_kel1'
            end
            object cxTblBrghrg_kel2: TcxGridDBColumn
              DataBinding.FieldName = 'hrg_kel2'
            end
            object cxTblBrgtargetbal_7jam: TcxGridDBColumn
              DataBinding.FieldName = 'targetbal_7jam'
            end
            object cxTblBrglokasi: TcxGridDBColumn
              DataBinding.FieldName = 'lokasi'
            end
            object cxTblBrglokasi_grid: TcxGridDBColumn
              DataBinding.FieldName = 'lokasi_grid'
            end
            object cxTblBrgf_consumable: TcxGridDBColumn
              DataBinding.FieldName = 'f_consumable'
            end
            object cxTblBrgdia_rope: TcxGridDBColumn
              DataBinding.FieldName = 'dia_rope'
            end
            object cxTblBrgs_dia_rope: TcxGridDBColumn
              DataBinding.FieldName = 's_dia_rope'
            end
            object cxTblBrgstrand: TcxGridDBColumn
              DataBinding.FieldName = 'strand'
            end
            object cxTblBrgtpm: TcxGridDBColumn
              DataBinding.FieldName = 'tpm'
            end
            object cxTblBrgbps: TcxGridDBColumn
              DataBinding.FieldName = 'bps'
            end
            object cxTblBrgs_bps: TcxGridDBColumn
              DataBinding.FieldName = 's_bps'
            end
            object cxTblBrgdps: TcxGridDBColumn
              DataBinding.FieldName = 'dps'
            end
            object cxTblBrgdpb: TcxGridDBColumn
              DataBinding.FieldName = 'dpb'
            end
            object cxTblBrgwarna_rope: TcxGridDBColumn
              DataBinding.FieldName = 'warna_rope'
            end
            object cxTblBrgfpb: TcxGridDBColumn
              DataBinding.FieldName = 'fpb'
            end
            object cxTblBrgdpf: TcxGridDBColumn
              DataBinding.FieldName = 'dpf'
            end
            object cxTblBrggpm_pf: TcxGridDBColumn
              DataBinding.FieldName = 'gpm_pf'
            end
            object cxTblBrgs_gpm_pf: TcxGridDBColumn
              DataBinding.FieldName = 's_gpm_pf'
            end
            object cxTblBrggpm_pb: TcxGridDBColumn
              DataBinding.FieldName = 'gpm_pb'
            end
            object cxTblBrgs_gpm_pb: TcxGridDBColumn
              DataBinding.FieldName = 's_gpm_pb'
            end
            object cxTblBrgtwist: TcxGridDBColumn
              DataBinding.FieldName = 'twist'
            end
            object cxTblBrglay: TcxGridDBColumn
              DataBinding.FieldName = 'lay'
            end
            object cxTblBrgpanjang_rope: TcxGridDBColumn
              DataBinding.FieldName = 'panjang_rope'
            end
            object cxTblBrgs_panjang_rope: TcxGridDBColumn
              DataBinding.FieldName = 's_panjang_rope'
            end
            object cxTblBrgberat_per_unit_pack: TcxGridDBColumn
              DataBinding.FieldName = 'berat_per_unit_pack'
            end
            object cxTblBrgf_lotnumber: TcxGridDBColumn
              DataBinding.FieldName = 'f_lotnumber'
            end
            object cxTblBrgf_sml: TcxGridDBColumn
              DataBinding.FieldName = 'f_sml'
            end
            object cxTblBrgf_fai: TcxGridDBColumn
              DataBinding.FieldName = 'f_fai'
            end
            object cxTblBrgkode_customer: TcxGridDBColumn
              DataBinding.FieldName = 'kode_customer'
            end
            object cxTblBrgkode_supplier: TcxGridDBColumn
              DataBinding.FieldName = 'kode_supplier'
            end
            object cxTblBrgfungsi: TcxGridDBColumn
              DataBinding.FieldName = 'fungsi'
            end
            object cxTblBrgbase_material: TcxGridDBColumn
              DataBinding.FieldName = 'base_material'
            end
            object cxTblBrgsheet_tube: TcxGridDBColumn
              DataBinding.FieldName = 'sheet_tube'
            end
            object cxTblBrgberat_jenis: TcxGridDBColumn
              DataBinding.FieldName = 'berat_jenis'
            end
            object cxTblBrgtebal: TcxGridDBColumn
              DataBinding.FieldName = 'tebal'
            end
            object cxTblBrgtebal_ol: TcxGridDBColumn
              DataBinding.FieldName = 'tebal_ol'
            end
            object cxTblBrgtebal_mid: TcxGridDBColumn
              DataBinding.FieldName = 'tebal_mid'
            end
            object cxTblBrgtebal_in: TcxGridDBColumn
              DataBinding.FieldName = 'tebal_in'
            end
            object cxTblBrgberat_kotor: TcxGridDBColumn
              DataBinding.FieldName = 'berat_kotor'
            end
            object cxTblBrgberat_bersih: TcxGridDBColumn
              DataBinding.FieldName = 'berat_bersih'
            end
            object cxTblBrgberat_meter: TcxGridDBColumn
              DataBinding.FieldName = 'berat_meter'
            end
            object cxTblBrgberat_fg: TcxGridDBColumn
              DataBinding.FieldName = 'berat_fg'
            end
            object cxTblBrglebar_buka: TcxGridDBColumn
              DataBinding.FieldName = 'lebar_buka'
            end
            object cxTblBrglebar_jadi: TcxGridDBColumn
              DataBinding.FieldName = 'lebar_jadi'
            end
            object cxTblBrgpanjang: TcxGridDBColumn
              DataBinding.FieldName = 'panjang'
            end
            object cxTblBrgpanjang_jadi: TcxGridDBColumn
              DataBinding.FieldName = 'panjang_jadi'
            end
            object cxTblBrglebar_tube: TcxGridDBColumn
              DataBinding.FieldName = 'lebar_tube'
            end
            object cxTblBrgpanjang_plong: TcxGridDBColumn
              DataBinding.FieldName = 'panjang_plong'
            end
            object cxTblBrglebar_plong: TcxGridDBColumn
              DataBinding.FieldName = 'lebar_plong'
            end
            object cxTblBrgtop_fold: TcxGridDBColumn
              DataBinding.FieldName = 'top_fold'
            end
            object cxTblBrggusset: TcxGridDBColumn
              DataBinding.FieldName = 'gusset'
            end
            object cxTblBrglebar_handle: TcxGridDBColumn
              DataBinding.FieldName = 'lebar_handle'
            end
            object cxTblBrgaksesoris: TcxGridDBColumn
              DataBinding.FieldName = 'aksesoris'
            end
            object cxTblBrgberat_aksesoris: TcxGridDBColumn
              DataBinding.FieldName = 'berat_aksesoris'
            end
            object cxTblBrgt_aksesoris: TcxGridDBColumn
              DataBinding.FieldName = 't_aksesoris'
            end
            object cxTblBrgl_aksesoris: TcxGridDBColumn
              DataBinding.FieldName = 'l_aksesoris'
            end
            object cxTblBrgp_aksesoris: TcxGridDBColumn
              DataBinding.FieldName = 'p_aksesoris'
            end
            object cxTblBrgbase_aksesoris: TcxGridDBColumn
              DataBinding.FieldName = 'base_aksesoris'
            end
            object cxTblBrgair_hole: TcxGridDBColumn
              DataBinding.FieldName = 'air_hole'
            end
            object cxTblBrgcut: TcxGridDBColumn
              DataBinding.FieldName = 'cut'
            end
            object cxTblBrgbentuk_produk: TcxGridDBColumn
              DataBinding.FieldName = 'bentuk_produk'
            end
            object cxTblBrgdesain_produk: TcxGridDBColumn
              DataBinding.FieldName = 'desain_produk'
            end
            object cxTblBrgwarna_film: TcxGridDBColumn
              DataBinding.FieldName = 'warna_film'
            end
            object cxTblBrgvisual: TcxGridDBColumn
              DataBinding.FieldName = 'visual'
            end
            object cxTblBrgsurface: TcxGridDBColumn
              DataBinding.FieldName = 'surface'
            end
            object cxTblBrgmin_std: TcxGridDBColumn
              DataBinding.FieldName = 'min_std'
            end
            object cxTblBrgmax_std: TcxGridDBColumn
              DataBinding.FieldName = 'max_std'
            end
            object cxTblBrgmin_smd: TcxGridDBColumn
              DataBinding.FieldName = 'min_smd'
            end
            object cxTblBrgmas_smd: TcxGridDBColumn
              DataBinding.FieldName = 'mas_smd'
            end
            object cxTblBrgunit_tstrength: TcxGridDBColumn
              DataBinding.FieldName = 'unit_tstrength'
            end
            object cxTblBrgmin_etd: TcxGridDBColumn
              DataBinding.FieldName = 'min_etd'
            end
            object cxTblBrgmax_etd: TcxGridDBColumn
              DataBinding.FieldName = 'max_etd'
            end
            object cxTblBrgunit_tlongation: TcxGridDBColumn
              DataBinding.FieldName = 'unit_tlongation'
            end
            object cxTblBrgmin_teartd: TcxGridDBColumn
              DataBinding.FieldName = 'min_teartd'
            end
            object cxTblBrgmax_teartd: TcxGridDBColumn
              DataBinding.FieldName = 'max_teartd'
            end
            object cxTblBrgmin_tearmd: TcxGridDBColumn
              DataBinding.FieldName = 'min_tearmd'
            end
            object cxTblBrgmax_tearmd: TcxGridDBColumn
              DataBinding.FieldName = 'max_tearmd'
            end
            object cxTblBrgmin_resistance: TcxGridDBColumn
              DataBinding.FieldName = 'min_resistance'
            end
            object cxTblBrgmax_resistance: TcxGridDBColumn
              DataBinding.FieldName = 'max_resistance'
            end
            object cxTblBrgunit_resistance: TcxGridDBColumn
              DataBinding.FieldName = 'unit_resistance'
            end
            object cxTblBrgmin_emd: TcxGridDBColumn
              DataBinding.FieldName = 'min_emd'
            end
            object cxTblBrgmax_emd: TcxGridDBColumn
              DataBinding.FieldName = 'max_emd'
            end
            object cxTblBrgunit_tear: TcxGridDBColumn
              DataBinding.FieldName = 'unit_tear'
            end
            object cxTblBrgmin_impact: TcxGridDBColumn
              DataBinding.FieldName = 'min_impact'
            end
            object cxTblBrgmax_impact: TcxGridDBColumn
              DataBinding.FieldName = 'max_impact'
            end
            object cxTblBrgunit_impact: TcxGridDBColumn
              DataBinding.FieldName = 'unit_impact'
            end
            object cxTblBrgmin_opasitas: TcxGridDBColumn
              DataBinding.FieldName = 'min_opasitas'
            end
            object cxTblBrgmax_opasitas: TcxGridDBColumn
              DataBinding.FieldName = 'max_opasitas'
            end
            object cxTblBrgunit_opasitas: TcxGridDBColumn
              DataBinding.FieldName = 'unit_opasitas'
            end
            object cxTblBrgstd_warnafilm: TcxGridDBColumn
              DataBinding.FieldName = 'std_warnafilm'
            end
            object cxTblBrgcritical_point: TcxGridDBColumn
              DataBinding.FieldName = 'critical_point'
            end
            object cxTblBrg_kode: TcxGridDBColumn
              DataBinding.FieldName = '_kode'
            end
            object cxTblBrgunitid: TcxGridDBColumn
              DataBinding.FieldName = 'unitid'
            end
            object cxTblBrgmax_smd: TcxGridDBColumn
              DataBinding.FieldName = 'max_smd'
            end
            object cxTblBrgunitsetid: TcxGridDBColumn
              DataBinding.FieldName = 'unitsetid'
            end
            object cxTblBrgstd_std: TcxGridDBColumn
              DataBinding.FieldName = 'std_std'
            end
            object cxTblBrgstd_smd: TcxGridDBColumn
              DataBinding.FieldName = 'std_smd'
            end
            object cxTblBrgstd_etd: TcxGridDBColumn
              DataBinding.FieldName = 'std_etd'
            end
            object cxTblBrgstd_emd: TcxGridDBColumn
              DataBinding.FieldName = 'std_emd'
            end
            object cxTblBrgstd_teartd: TcxGridDBColumn
              DataBinding.FieldName = 'std_teartd'
            end
            object cxTblBrgstd_tearmd: TcxGridDBColumn
              DataBinding.FieldName = 'std_tearmd'
            end
            object cxTblBrgstd_resistance: TcxGridDBColumn
              DataBinding.FieldName = 'std_resistance'
            end
            object cxTblBrgstd_impact: TcxGridDBColumn
              DataBinding.FieldName = 'std_impact'
            end
            object cxTblBrgstd_opasitas: TcxGridDBColumn
              DataBinding.FieldName = 'std_opasitas'
            end
            object cxTblBrgf_draft: TcxGridDBColumn
              DataBinding.FieldName = 'f_draft'
            end
            object cxTblBrgspeed: TcxGridDBColumn
              DataBinding.FieldName = 'speed'
            end
            object cxTblBrghpp: TcxGridDBColumn
              DataBinding.FieldName = 'hpp'
            end
            object cxTblBrgkelompok: TcxGridDBColumn
              DataBinding.FieldName = 'kelompok'
            end
            object cxTblBrgsub_kelompok: TcxGridDBColumn
              DataBinding.FieldName = 'sub_kelompok'
            end
            object cxTblBrgtinggi_total: TcxGridDBColumn
              DataBinding.FieldName = 'tinggi_total'
            end
            object cxTblBrgbentuk: TcxGridDBColumn
              DataBinding.FieldName = 'bentuk'
            end
            object cxTblBrgprice: TcxGridDBColumn
              DataBinding.FieldName = 'price'
            end
            object cxTblBrgprice_date: TcxGridDBColumn
              DataBinding.FieldName = 'price_date'
            end
            object cxTblBrgconv1: TcxGridDBColumn
              DataBinding.FieldName = 'conv1'
            end
            object cxTblBrgconv2: TcxGridDBColumn
              DataBinding.FieldName = 'conv2'
            end
            object cxTblBrgconv3: TcxGridDBColumn
              DataBinding.FieldName = 'conv3'
            end
            object cxTblBrgconv4: TcxGridDBColumn
              DataBinding.FieldName = 'conv4'
            end
            object cxTblBrgconv5: TcxGridDBColumn
              DataBinding.FieldName = 'conv5'
            end
            object cxTblBrgsat1: TcxGridDBColumn
              DataBinding.FieldName = 'sat1'
            end
            object cxTblBrgsat2: TcxGridDBColumn
              DataBinding.FieldName = 'sat2'
            end
            object cxTblBrgsat3: TcxGridDBColumn
              DataBinding.FieldName = 'sat3'
            end
            object cxTblBrgsat4: TcxGridDBColumn
              DataBinding.FieldName = 'sat4'
            end
            object cxTblBrgsat5: TcxGridDBColumn
              DataBinding.FieldName = 'sat5'
            end
            object cxTblBrgunit_ktg: TcxGridDBColumn
              DataBinding.FieldName = 'unit_ktg'
            end
            object cxTblBrgcp_fgel: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fgel'
            end
            object cxTblBrgcp_fblorok: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fblorok'
            end
            object cxTblBrgcp_fgaler: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fgaler'
            end
            object cxTblBrgcp_fnjeruk: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fnjeruk'
            end
            object cxTblBrgcp_mataikan: TcxGridDBColumn
              DataBinding.FieldName = 'cp_mataikan'
            end
            object cxTblBrgcp_flengket: TcxGridDBColumn
              DataBinding.FieldName = 'cp_flengket'
            end
            object cxTblBrgcp_fbau: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fbau'
            end
            object cxTblBrgcp_fkuat: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fkuat'
            end
            object cxTblBrgcp_petal: TcxGridDBColumn
              DataBinding.FieldName = 'cp_petal'
            end
            object cxTblBrgcp_pecah: TcxGridDBColumn
              DataBinding.FieldName = 'cp_pecah'
            end
            object cxTblBrgcp_jembret: TcxGridDBColumn
              DataBinding.FieldName = 'cp_jembret'
            end
            object cxTblBrgtd_tebal_film: TcxGridDBColumn
              DataBinding.FieldName = 'td_tebal_film'
            end
            object cxTblBrgtd_repeat_print: TcxGridDBColumn
              DataBinding.FieldName = 'td_repeat_print'
            end
            object cxTblBrgtd_berat_jadi: TcxGridDBColumn
              DataBinding.FieldName = 'td_berat_jadi'
            end
            object cxTblBrgtd_lebar_film: TcxGridDBColumn
              DataBinding.FieldName = 'td_lebar_film'
            end
            object cxTblBrgtd_gbr_tepi_kanan: TcxGridDBColumn
              DataBinding.FieldName = 'td_gbr_tepi_kanan'
            end
            object cxTblBrgtd_panjang_jadi: TcxGridDBColumn
              DataBinding.FieldName = 'td_panjang_jadi'
            end
            object cxTblBrgtd_berat_per_meter: TcxGridDBColumn
              DataBinding.FieldName = 'td_berat_per_meter'
            end
            object cxTblBrgtd_gbr_tepi_kiri: TcxGridDBColumn
              DataBinding.FieldName = 'td_gbr_tepi_kiri'
            end
            object cxTblBrgmt_out: TcxGridDBColumn
              DataBinding.FieldName = 'mt_out'
            end
            object cxTblBrgmt_mid: TcxGridDBColumn
              DataBinding.FieldName = 'mt_mid'
            end
            object cxTblBrgmt_in: TcxGridDBColumn
              DataBinding.FieldName = 'mt_in'
            end
            object cxTblBrgmtp_out: TcxGridDBColumn
              DataBinding.FieldName = 'mtp_out'
            end
            object cxTblBrgmtp_mid: TcxGridDBColumn
              DataBinding.FieldName = 'mtp_mid'
            end
            object cxTblBrgmtp_in: TcxGridDBColumn
              DataBinding.FieldName = 'mtp_in'
            end
            object cxTblBrgfina_kode: TcxGridDBColumn
              DataBinding.FieldName = 'fina_kode'
            end
            object cxTblBrgfina_nama: TcxGridDBColumn
              DataBinding.FieldName = 'fina_nama'
            end
            object cxTblBrgcp_fgel_ukuran: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fgel_ukuran'
            end
            object cxTblBrgcp_fblorok_ukuran: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fblorok_ukuran'
            end
            object cxTblBrgcp_fgaler_ukuran: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fgaler_ukuran'
            end
            object cxTblBrgcp_fnjeruk_ukuran: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fnjeruk_ukuran'
            end
            object cxTblBrgcp_mataikan_ukuran: TcxGridDBColumn
              DataBinding.FieldName = 'cp_mataikan_ukuran'
            end
            object cxTblBrgcp_flengket_ukuran: TcxGridDBColumn
              DataBinding.FieldName = 'cp_flengket_ukuran'
            end
            object cxTblBrgcp_petal_ukuran: TcxGridDBColumn
              DataBinding.FieldName = 'cp_petal_ukuran'
            end
            object cxTblBrgcp_pecah_ukuran: TcxGridDBColumn
              DataBinding.FieldName = 'cp_pecah_ukuran'
            end
            object cxTblBrgcp_jembret_ukuran: TcxGridDBColumn
              DataBinding.FieldName = 'cp_jembret_ukuran'
            end
            object cxTblBrgcp_fgel_min: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fgel_min'
            end
            object cxTblBrgcp_fblorok_min: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fblorok_min'
            end
            object cxTblBrgcp_fgaler_min: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fgaler_min'
            end
            object cxTblBrgcp_fnjeruk_min: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fnjeruk_min'
            end
            object cxTblBrgcp_mataikan_min: TcxGridDBColumn
              DataBinding.FieldName = 'cp_mataikan_min'
            end
            object cxTblBrgcp_flengket_min: TcxGridDBColumn
              DataBinding.FieldName = 'cp_flengket_min'
            end
            object cxTblBrgcp_petal_min: TcxGridDBColumn
              DataBinding.FieldName = 'cp_petal_min'
            end
            object cxTblBrgcp_pecah_min: TcxGridDBColumn
              DataBinding.FieldName = 'cp_pecah_min'
            end
            object cxTblBrgcp_jembret_min: TcxGridDBColumn
              DataBinding.FieldName = 'cp_jembret_min'
            end
            object cxTblBrgcp_fgel_max: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fgel_max'
            end
            object cxTblBrgcp_fblorok_max: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fblorok_max'
            end
            object cxTblBrgcp_fgaler_max: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fgaler_max'
            end
            object cxTblBrgcp_fnjeruk_max: TcxGridDBColumn
              DataBinding.FieldName = 'cp_fnjeruk_max'
            end
            object cxTblBrgcp_mataikan_max: TcxGridDBColumn
              DataBinding.FieldName = 'cp_mataikan_max'
            end
            object cxTblBrgcp_flengket_max: TcxGridDBColumn
              DataBinding.FieldName = 'cp_flengket_max'
            end
            object cxTblBrgcp_petal_max: TcxGridDBColumn
              DataBinding.FieldName = 'cp_petal_max'
            end
            object cxTblBrgcp_pecah_max: TcxGridDBColumn
              DataBinding.FieldName = 'cp_pecah_max'
            end
            object cxTblBrgcp_jembret_max: TcxGridDBColumn
              DataBinding.FieldName = 'cp_jembret_max'
            end
            object cxTblBrgline: TcxGridDBColumn
              DataBinding.FieldName = 'line'
            end
            object cxTblBrglead_time: TcxGridDBColumn
              DataBinding.FieldName = 'lead_time'
            end
            object cxTblBrgtreat_luar: TcxGridDBColumn
              DataBinding.FieldName = 'treat_luar'
            end
            object cxTblBrgtreat_dalam: TcxGridDBColumn
              DataBinding.FieldName = 'treat_dalam'
            end
            object cxTblBrgpola_tl: TcxGridDBColumn
              DataBinding.FieldName = 'pola_tl'
            end
            object cxTblBrgpola_td: TcxGridDBColumn
              DataBinding.FieldName = 'pola_td'
            end
            object cxTblBrgjumlah_warna1: TcxGridDBColumn
              DataBinding.FieldName = 'jumlah_warna1'
            end
            object cxTblBrgjumlah_warna2: TcxGridDBColumn
              DataBinding.FieldName = 'jumlah_warna2'
            end
            object cxTblBrgdetail_warna1: TcxGridDBColumn
              DataBinding.FieldName = 'detail_warna1'
            end
            object cxTblBrgdetail_warna2: TcxGridDBColumn
              DataBinding.FieldName = 'detail_warna2'
            end
            object cxTblBrgtepi_kiri: TcxGridDBColumn
              DataBinding.FieldName = 'tepi_kiri'
            end
            object cxTblBrgtepi_kanan: TcxGridDBColumn
              DataBinding.FieldName = 'tepi_kanan'
            end
            object cxTblBrgtepi_atas: TcxGridDBColumn
              DataBinding.FieldName = 'tepi_atas'
            end
            object cxTblBrgtepi_bawah: TcxGridDBColumn
              DataBinding.FieldName = 'tepi_bawah'
            end
            object cxTblBrglebar_cyl: TcxGridDBColumn
              DataBinding.FieldName = 'lebar_cyl'
            end
            object cxTblBrgpanjang_cyl: TcxGridDBColumn
              DataBinding.FieldName = 'panjang_cyl'
            end
            object cxTblBrgtoleransi: TcxGridDBColumn
              DataBinding.FieldName = 'toleransi'
            end
            object cxTblBrgarah_gulung: TcxGridDBColumn
              DataBinding.FieldName = 'arah_gulung'
            end
            object cxTblBrgarah_film: TcxGridDBColumn
              DataBinding.FieldName = 'arah_film'
            end
            object cxTblBrgjumlah_md: TcxGridDBColumn
              DataBinding.FieldName = 'jumlah_md'
            end
            object cxTblBrgjumlah_td: TcxGridDBColumn
              DataBinding.FieldName = 'jumlah_td'
            end
            object cxTblBrgcm_md: TcxGridDBColumn
              DataBinding.FieldName = 'cm_md'
            end
            object cxTblBrgcm_td: TcxGridDBColumn
              DataBinding.FieldName = 'cm_td'
            end
            object cxTblBrgjumlah_cyl: TcxGridDBColumn
              DataBinding.FieldName = 'jumlah_cyl'
            end
            object cxTblBrgkeliling: TcxGridDBColumn
              DataBinding.FieldName = 'keliling'
            end
            object cxTblBrgrepeat_print: TcxGridDBColumn
              DataBinding.FieldName = 'repeat_print'
            end
            object cxTblBrgpack_unit1_qty: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit1_qty'
            end
            object cxTblBrgpack_unit2_qty: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit2_qty'
            end
            object cxTblBrgpack_unit3_qty: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit3_qty'
            end
            object cxTblBrgpack_unit4_qty: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit4_qty'
            end
            object cxTblBrgpack_unit5_qty: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit5_qty'
            end
            object cxTblBrgpack_unit1_unit: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit1_unit'
            end
            object cxTblBrgpack_unit2_unit: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit2_unit'
            end
            object cxTblBrgpack_unit3_unit: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit3_unit'
            end
            object cxTblBrgpack_unit4_unit: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit4_unit'
            end
            object cxTblBrgpack_unit5_unit: TcxGridDBColumn
              DataBinding.FieldName = 'pack_unit5_unit'
            end
            object cxTblBrgfolding1: TcxGridDBColumn
              DataBinding.FieldName = 'folding1'
            end
            object cxTblBrgfolding2: TcxGridDBColumn
              DataBinding.FieldName = 'folding2'
            end
            object cxTblBrgpack_acc: TcxGridDBColumn
              DataBinding.FieldName = 'pack_acc'
            end
            object cxTblBrgpack_acc_core: TcxGridDBColumn
              DataBinding.FieldName = 'pack_acc_core'
            end
            object cxTblBrgpack_acc_inner: TcxGridDBColumn
              DataBinding.FieldName = 'pack_acc_inner'
            end
            object cxTblBrgpack_acc_thickness: TcxGridDBColumn
              DataBinding.FieldName = 'pack_acc_thickness'
            end
            object cxTblBrgpack_acc_length: TcxGridDBColumn
              DataBinding.FieldName = 'pack_acc_length'
            end
            object cxTblBrgpack_acc_other: TcxGridDBColumn
              DataBinding.FieldName = 'pack_acc_other'
            end
            object cxTblBrgmaterial_inout: TcxGridDBColumn
              DataBinding.FieldName = 'material_inout'
            end
            object cxTblBrgmaterial_label_pb: TcxGridDBColumn
              DataBinding.FieldName = 'material_label_pb'
            end
            object cxTblBrgmaterial_outer: TcxGridDBColumn
              DataBinding.FieldName = 'material_outer'
            end
            object cxTblBrgmaterial_dispenser: TcxGridDBColumn
              DataBinding.FieldName = 'material_dispenser'
            end
            object cxTblBrgcolours_inout: TcxGridDBColumn
              DataBinding.FieldName = 'colours_inout'
            end
            object cxTblBrgcolours_label_pb: TcxGridDBColumn
              DataBinding.FieldName = 'colours_label_pb'
            end
            object cxTblBrgcolours_outer: TcxGridDBColumn
              DataBinding.FieldName = 'colours_outer'
            end
            object cxTblBrgcolours_dispenser: TcxGridDBColumn
              DataBinding.FieldName = 'colours_dispenser'
            end
            object cxTblBrgu_per_gsm_inout: TcxGridDBColumn
              DataBinding.FieldName = 'u_per_gsm_inout'
            end
            object cxTblBrgu_per_gsm_label_pb: TcxGridDBColumn
              DataBinding.FieldName = 'u_per_gsm_label_pb'
            end
            object cxTblBrgu_per_gsm_outer: TcxGridDBColumn
              DataBinding.FieldName = 'u_per_gsm_outer'
            end
            object cxTblBrgu_per_gsm_dispenser: TcxGridDBColumn
              DataBinding.FieldName = 'u_per_gsm_dispenser'
            end
            object cxTblBrgwidth_inout: TcxGridDBColumn
              DataBinding.FieldName = 'width_inout'
            end
            object cxTblBrgwidth_label_pb: TcxGridDBColumn
              DataBinding.FieldName = 'width_label_pb'
            end
            object cxTblBrgwidth_outer: TcxGridDBColumn
              DataBinding.FieldName = 'width_outer'
            end
            object cxTblBrgwidth_dispenser: TcxGridDBColumn
              DataBinding.FieldName = 'width_dispenser'
            end
            object cxTblBrglength_inout: TcxGridDBColumn
              DataBinding.FieldName = 'length_inout'
            end
            object cxTblBrglength_label_pb: TcxGridDBColumn
              DataBinding.FieldName = 'length_label_pb'
            end
            object cxTblBrglength_outer: TcxGridDBColumn
              DataBinding.FieldName = 'length_outer'
            end
            object cxTblBrglength_dispenser: TcxGridDBColumn
              DataBinding.FieldName = 'length_dispenser'
            end
            object cxTblBrgprintdet_colours_inout: TcxGridDBColumn
              DataBinding.FieldName = 'printdet_colours_inout'
            end
            object cxTblBrgprintdet_colours_label_pb: TcxGridDBColumn
              DataBinding.FieldName = 'printdet_colours_label_pb'
            end
            object cxTblBrgprintdet_colours_outer: TcxGridDBColumn
              DataBinding.FieldName = 'printdet_colours_outer'
            end
            object cxTblBrgprintdet_colours_dispenser: TcxGridDBColumn
              DataBinding.FieldName = 'printdet_colours_dispenser'
            end
            object cxTblBrgprintdet_sides_inout: TcxGridDBColumn
              DataBinding.FieldName = 'printdet_sides_inout'
            end
            object cxTblBrgprintdet_sides_label_pb: TcxGridDBColumn
              DataBinding.FieldName = 'printdet_sides_label_pb'
            end
            object cxTblBrgprintdet_sides_outer: TcxGridDBColumn
              DataBinding.FieldName = 'printdet_sides_outer'
            end
            object cxTblBrgprintdet_sides_dispenser: TcxGridDBColumn
              DataBinding.FieldName = 'printdet_sides_dispenser'
            end
            object cxTblBrgfp_material_inner: TcxGridDBColumn
              DataBinding.FieldName = 'fp_material_inner'
            end
            object cxTblBrgfp_material_outer: TcxGridDBColumn
              DataBinding.FieldName = 'fp_material_outer'
            end
            object cxTblBrgfp_width_inner: TcxGridDBColumn
              DataBinding.FieldName = 'fp_width_inner'
            end
            object cxTblBrgfp_width_outer: TcxGridDBColumn
              DataBinding.FieldName = 'fp_width_outer'
            end
            object cxTblBrgfp_length_inner: TcxGridDBColumn
              DataBinding.FieldName = 'fp_length_inner'
            end
            object cxTblBrgfp_length_outer: TcxGridDBColumn
              DataBinding.FieldName = 'fp_length_outer'
            end
            object cxTblBrgfp_height_inner: TcxGridDBColumn
              DataBinding.FieldName = 'fp_height_inner'
            end
            object cxTblBrgfp_height_outer: TcxGridDBColumn
              DataBinding.FieldName = 'fp_height_outer'
            end
            object cxTblBrgfp_gsm: TcxGridDBColumn
              DataBinding.FieldName = 'fp_gsm'
            end
            object cxTblBrgfp_colours: TcxGridDBColumn
              DataBinding.FieldName = 'fp_colours'
            end
            object cxTblBrgfp_sides: TcxGridDBColumn
              DataBinding.FieldName = 'fp_sides'
            end
            object cxTblBrgpallet_width: TcxGridDBColumn
              DataBinding.FieldName = 'pallet_width'
            end
            object cxTblBrgpallet_length: TcxGridDBColumn
              DataBinding.FieldName = 'pallet_length'
            end
            object cxTblBrgpallet_height: TcxGridDBColumn
              DataBinding.FieldName = 'pallet_height'
            end
            object cxTblBrgpallet_entry: TcxGridDBColumn
              DataBinding.FieldName = 'pallet_entry'
            end
            object cxTblBrgpallet_requirement: TcxGridDBColumn
              DataBinding.FieldName = 'pallet_requirement'
            end
            object cxTblBrgcompiling_packaging: TcxGridDBColumn
              DataBinding.FieldName = 'compiling_packaging'
            end
            object cxTblBrgregister: TcxGridDBColumn
              DataBinding.FieldName = 'register'
            end
            object cxTblBrgnama_design: TcxGridDBColumn
              DataBinding.FieldName = 'nama_design'
            end
            object cxTblBrgjenis_gusset: TcxGridDBColumn
              DataBinding.FieldName = 'jenis_gusset'
            end
            object cxTblBrgproses_gusset: TcxGridDBColumn
              DataBinding.FieldName = 'proses_gusset'
            end
            object cxTblBrgg_lebarjadi: TcxGridDBColumn
              DataBinding.FieldName = 'g_lebarjadi'
            end
            object cxTblBrgg_arahfilm: TcxGridDBColumn
              DataBinding.FieldName = 'g_arahfilm'
            end
            object cxTblBrgg_toleransi: TcxGridDBColumn
              DataBinding.FieldName = 'g_toleransi'
            end
            object cxTblBrgc_keterangan: TcxGridDBColumn
              DataBinding.FieldName = 'c_keterangan'
            end
            object cxTblBrgc_jaraklas: TcxGridDBColumn
              DataBinding.FieldName = 'c_jaraklas'
            end
            object cxTblBrgc_panjanglas: TcxGridDBColumn
              DataBinding.FieldName = 'c_panjanglas'
            end
            object cxTblBrgc_arahfilm: TcxGridDBColumn
              DataBinding.FieldName = 'c_arahfilm'
            end
            object cxTblBrgc_jarakga: TcxGridDBColumn
              DataBinding.FieldName = 'c_jarakga'
            end
            object cxTblBrgc_jarakgb: TcxGridDBColumn
              DataBinding.FieldName = 'c_jarakgb'
            end
            object cxTblBrgsub_group: TcxGridDBColumn
              DataBinding.FieldName = 'sub_group'
            end
            object cxTblBrgket_treat: TcxGridDBColumn
              DataBinding.FieldName = 'ket_treat'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxTblBrg
          end
        end
        object btnExcelBrg: TButton
          Left = 10
          Top = 335
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = btnExcelBrgClick
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Customer'
        inherited Label1: TLabel
          Left = 916
          Top = 350
          Visible = False
        end
        inherited cxGrd: TcxGrid
          Left = 915
          Top = 210
          Visible = False
        end
        object cxGrid2: TcxGrid
          Left = 10
          Top = 10
          Width = 1008
          Height = 319
          TabOrder = 1
          object cxTblCust: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsCust
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTblCustid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object cxTblCustkode: TcxGridDBColumn
              DataBinding.FieldName = 'kode'
            end
            object cxTblCustnama: TcxGridDBColumn
              DataBinding.FieldName = 'nama'
              Width = 271
            end
            object cxTblCustkontak: TcxGridDBColumn
              DataBinding.FieldName = 'kontak'
            end
            object cxTblCustalamat: TcxGridDBColumn
              DataBinding.FieldName = 'alamat'
            end
            object cxTblCustalamat2: TcxGridDBColumn
              DataBinding.FieldName = 'alamat2'
            end
            object cxTblCustkelurahan: TcxGridDBColumn
              DataBinding.FieldName = 'kelurahan'
            end
            object cxTblCustkecamatan: TcxGridDBColumn
              DataBinding.FieldName = 'kecamatan'
            end
            object cxTblCustkota: TcxGridDBColumn
              DataBinding.FieldName = 'kota'
            end
            object cxTblCustprovinsi: TcxGridDBColumn
              DataBinding.FieldName = 'provinsi'
            end
            object cxTblCustnegara: TcxGridDBColumn
              DataBinding.FieldName = 'negara'
            end
            object cxTblCusttelpon: TcxGridDBColumn
              DataBinding.FieldName = 'telpon'
            end
            object cxTblCustfax: TcxGridDBColumn
              DataBinding.FieldName = 'fax'
            end
            object cxTblCusthp: TcxGridDBColumn
              DataBinding.FieldName = 'hp'
            end
            object cxTblCustdirect: TcxGridDBColumn
              DataBinding.FieldName = 'direct'
            end
            object cxTblCustf_aktif: TcxGridDBColumn
              DataBinding.FieldName = 'f_aktif'
            end
            object cxTblCustuserweb: TcxGridDBColumn
              DataBinding.FieldName = 'userweb'
            end
            object cxTblCustpassword: TcxGridDBColumn
              DataBinding.FieldName = 'password'
            end
            object cxTblCustreal_password: TcxGridDBColumn
              DataBinding.FieldName = 'real_password'
            end
            object cxTblCustemail: TcxGridDBColumn
              DataBinding.FieldName = 'email'
            end
            object cxTblCustjenis: TcxGridDBColumn
              DataBinding.FieldName = 'jenis'
            end
            object cxTblCustkelompok: TcxGridDBColumn
              DataBinding.FieldName = 'kelompok'
            end
            object cxTblCustnpwp: TcxGridDBColumn
              DataBinding.FieldName = 'npwp'
            end
            object cxTblCustpkp: TcxGridDBColumn
              DataBinding.FieldName = 'pkp'
            end
            object cxTblCustjenis_usaha: TcxGridDBColumn
              DataBinding.FieldName = 'jenis_usaha'
            end
            object cxTblCustbrand: TcxGridDBColumn
              DataBinding.FieldName = 'brand'
            end
            object cxTblCuststatus_perusahaan: TcxGridDBColumn
              DataBinding.FieldName = 'status_perusahaan'
            end
            object cxTblCustpemilik: TcxGridDBColumn
              DataBinding.FieldName = 'pemilik'
            end
            object cxTblCusttlp_pemilik: TcxGridDBColumn
              DataBinding.FieldName = 'tlp_pemilik'
            end
            object cxTblCuststatus_gedung: TcxGridDBColumn
              DataBinding.FieldName = 'status_gedung'
            end
            object cxTblCustsales: TcxGridDBColumn
              DataBinding.FieldName = 'sales'
            end
            object cxTblCustwebsite: TcxGridDBColumn
              DataBinding.FieldName = 'website'
            end
            object cxTblCustmarket: TcxGridDBColumn
              DataBinding.FieldName = 'market'
            end
            object cxTblCustkaryawan: TcxGridDBColumn
              DataBinding.FieldName = 'karyawan'
            end
            object cxTblCustkendaraan: TcxGridDBColumn
              DataBinding.FieldName = 'kendaraan'
            end
            object cxTblCustlama_usaha: TcxGridDBColumn
              DataBinding.FieldName = 'lama_usaha'
            end
            object cxTblCustbisnis_usaha: TcxGridDBColumn
              DataBinding.FieldName = 'bisnis_usaha'
            end
            object cxTblCustproduk: TcxGridDBColumn
              DataBinding.FieldName = 'produk'
            end
            object cxTblCustkapasitas: TcxGridDBColumn
              DataBinding.FieldName = 'kapasitas'
            end
            object cxTblCustrekening: TcxGridDBColumn
              DataBinding.FieldName = 'rekening'
            end
            object cxTblCustatasnama: TcxGridDBColumn
              DataBinding.FieldName = 'atasnama'
            end
            object cxTblCustpurchasing: TcxGridDBColumn
              DataBinding.FieldName = 'purchasing'
            end
            object cxTblCustterms: TcxGridDBColumn
              DataBinding.FieldName = 'terms'
            end
            object cxTblCustlimit_kredit: TcxGridDBColumn
              DataBinding.FieldName = 'limit_kredit'
            end
            object cxTblCustkomisi_pihak3: TcxGridDBColumn
              DataBinding.FieldName = 'komisi_pihak3'
            end
            object cxTblCustketerangan: TcxGridDBColumn
              DataBinding.FieldName = 'keterangan'
            end
            object cxTblCustevaluasi: TcxGridDBColumn
              DataBinding.FieldName = 'evaluasi'
            end
            object cxTblCusttanggung_jawab: TcxGridDBColumn
              DataBinding.FieldName = 'tanggung_jawab'
            end
            object cxTblCustalamat_kirim: TcxGridDBColumn
              DataBinding.FieldName = 'alamat_kirim'
            end
            object cxTblCustjenis_kepemilikan: TcxGridDBColumn
              DataBinding.FieldName = 'jenis_kepemilikan'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxTblCust
          end
        end
        object btnExcelCust: TButton
          Left = 10
          Top = 335
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 2
          OnClick = btnExcelCustClick
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Supplier'
        ImageIndex = 2
        object cxGrid3: TcxGrid
          Left = 10
          Top = 10
          Width = 1008
          Height = 319
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsSupp
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBTableView1kode: TcxGridDBColumn
              DataBinding.FieldName = 'kode'
            end
            object cxGridDBTableView1nama: TcxGridDBColumn
              DataBinding.FieldName = 'nama'
            end
            object cxGridDBTableView1kontak: TcxGridDBColumn
              DataBinding.FieldName = 'kontak'
            end
            object cxGridDBTableView1title: TcxGridDBColumn
              DataBinding.FieldName = 'title'
            end
            object cxGridDBTableView1alamat: TcxGridDBColumn
              DataBinding.FieldName = 'alamat'
            end
            object cxGridDBTableView1alamat2: TcxGridDBColumn
              DataBinding.FieldName = 'alamat2'
            end
            object cxGridDBTableView1kota: TcxGridDBColumn
              DataBinding.FieldName = 'kota'
            end
            object cxGridDBTableView1kodepos: TcxGridDBColumn
              DataBinding.FieldName = 'kodepos'
            end
            object cxGridDBTableView1provinsi: TcxGridDBColumn
              DataBinding.FieldName = 'provinsi'
            end
            object cxGridDBTableView1negara: TcxGridDBColumn
              DataBinding.FieldName = 'negara'
            end
            object cxGridDBTableView1telpon: TcxGridDBColumn
              DataBinding.FieldName = 'telpon'
            end
            object cxGridDBTableView1fax: TcxGridDBColumn
              DataBinding.FieldName = 'fax'
            end
            object cxGridDBTableView1hp: TcxGridDBColumn
              DataBinding.FieldName = 'hp'
            end
            object cxGridDBTableView1direct: TcxGridDBColumn
              DataBinding.FieldName = 'direct'
            end
            object cxGridDBTableView1pembayaran: TcxGridDBColumn
              DataBinding.FieldName = 'pembayaran'
            end
            object cxGridDBTableView1email: TcxGridDBColumn
              DataBinding.FieldName = 'email'
            end
            object cxGridDBTableView1f_aktif: TcxGridDBColumn
              DataBinding.FieldName = 'f_aktif'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object btnExcelSupp: TButton
          Left = 10
          Top = 335
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = btnExcelSuppClick
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Mesin'
        ImageIndex = 3
        object cxGrid4: TcxGrid
          Left = 10
          Top = 10
          Width = 1008
          Height = 319
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMesin
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBTableView2kode: TcxGridDBColumn
              DataBinding.FieldName = 'kode'
            end
            object cxGridDBTableView2nama: TcxGridDBColumn
              DataBinding.FieldName = 'nama'
            end
            object cxGridDBTableView2lokasi: TcxGridDBColumn
              DataBinding.FieldName = 'lokasi'
            end
            object cxGridDBTableView2jenis: TcxGridDBColumn
              DataBinding.FieldName = 'jenis'
            end
            object cxGridDBTableView2group_mesin: TcxGridDBColumn
              DataBinding.FieldName = 'group_mesin'
            end
            object cxGridDBTableView2inisial_start: TcxGridDBColumn
              DataBinding.FieldName = 'inisial_start'
            end
            object cxGridDBTableView2f_aktif: TcxGridDBColumn
              DataBinding.FieldName = 'f_aktif'
            end
            object cxGridDBTableView2jml_personil: TcxGridDBColumn
              DataBinding.FieldName = 'jml_personil'
            end
            object cxGridDBTableView2spv_prd: TcxGridDBColumn
              DataBinding.FieldName = 'spv_prd'
            end
            object cxGridDBTableView2cycle_time: TcxGridDBColumn
              DataBinding.FieldName = 'cycle_time'
            end
            object cxGridDBTableView2setup_time: TcxGridDBColumn
              DataBinding.FieldName = 'setup_time'
            end
            object cxGridDBTableView2wait_time: TcxGridDBColumn
              DataBinding.FieldName = 'wait_time'
            end
            object cxGridDBTableView2output: TcxGridDBColumn
              DataBinding.FieldName = 'output'
            end
            object cxGridDBTableView2daya_motor: TcxGridDBColumn
              DataBinding.FieldName = 'daya_motor'
            end
            object cxGridDBTableView2daya_heater: TcxGridDBColumn
              DataBinding.FieldName = 'daya_heater'
            end
            object cxGridDBTableView2line: TcxGridDBColumn
              DataBinding.FieldName = 'line'
            end
            object cxGridDBTableView2satuan: TcxGridDBColumn
              DataBinding.FieldName = 'satuan'
            end
            object cxGridDBTableView2warna: TcxGridDBColumn
              DataBinding.FieldName = 'warna'
            end
            object cxGridDBTableView2operator_setup: TcxGridDBColumn
              DataBinding.FieldName = 'operator_setup'
            end
            object cxGridDBTableView2die: TcxGridDBColumn
              DataBinding.FieldName = 'die'
            end
            object cxGridDBTableView2lebar_mesin_min: TcxGridDBColumn
              DataBinding.FieldName = 'lebar_mesin_min'
            end
            object cxGridDBTableView2lebar_mesin_max: TcxGridDBColumn
              DataBinding.FieldName = 'lebar_mesin_max'
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object btnExcelMesin: TButton
          Left = 10
          Top = 335
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = btnExcelMesinClick
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Unit Set'
        ImageIndex = 4
        object cxGrid6: TcxGrid
          Left = 10
          Top = 10
          Width = 1008
          Height = 319
          TabOrder = 0
          object cxGridDBTableView4: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsUnitSet
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBTableView4unitsetid: TcxGridDBColumn
              DataBinding.FieldName = 'unitsetid'
            end
            object cxGridDBTableView4description: TcxGridDBColumn
              DataBinding.FieldName = 'description'
            end
            object cxGridDBTableView4unitid: TcxGridDBColumn
              DataBinding.FieldName = 'unitid'
            end
            object cxGridDBTableView4qty: TcxGridDBColumn
              DataBinding.FieldName = 'qty'
            end
            object cxGridDBTableView4no: TcxGridDBColumn
              DataBinding.FieldName = 'no'
            end
            object cxGridDBTableView4unitid_1: TcxGridDBColumn
              DataBinding.FieldName = 'unitid_1'
            end
            object cxGridDBTableView4convert: TcxGridDBColumn
              DataBinding.FieldName = 'convert'
            end
            object cxGridDBTableView4unitsetid_1: TcxGridDBColumn
              DataBinding.FieldName = 'unitsetid_1'
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
        object btnExcelUnitSet: TButton
          Left = 10
          Top = 335
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = btnExcelUnitSetClick
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'List SPK'
        ImageIndex = 5
        object cxGrid5: TcxGrid
          Left = 10
          Top = 43
          Width = 1008
          Height = 286
          TabOrder = 0
          object cxGridDBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsSPK
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBTableView3id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object cxGridDBTableView3no_mo: TcxGridDBColumn
              DataBinding.FieldName = 'no_mo'
            end
            object cxGridDBTableView3no_spk: TcxGridDBColumn
              DataBinding.FieldName = 'no_spk'
            end
            object cxGridDBTableView3jenis_spk: TcxGridDBColumn
              DataBinding.FieldName = 'jenis_spk'
            end
            object cxGridDBTableView3tanggal: TcxGridDBColumn
              DataBinding.FieldName = 'tanggal'
            end
            object cxGridDBTableView3jam: TcxGridDBColumn
              DataBinding.FieldName = 'jam'
            end
            object cxGridDBTableView3kode_brg: TcxGridDBColumn
              DataBinding.FieldName = 'kode_brg'
            end
            object cxGridDBTableView3deskripsi: TcxGridDBColumn
              DataBinding.FieldName = 'deskripsi'
            end
            object cxGridDBTableView3qty: TcxGridDBColumn
              DataBinding.FieldName = 'qty'
            end
            object cxGridDBTableView3kode_mesin: TcxGridDBColumn
              DataBinding.FieldName = 'kode_mesin'
            end
            object cxGridDBTableView3kode_formula: TcxGridDBColumn
              DataBinding.FieldName = 'kode_formula'
            end
            object cxGridDBTableView3f_completed: TcxGridDBColumn
              DataBinding.FieldName = 'f_completed'
            end
            object cxGridDBTableView3keterangan: TcxGridDBColumn
              DataBinding.FieldName = 'keterangan'
            end
            object cxGridDBTableView3is_tambahan: TcxGridDBColumn
              DataBinding.FieldName = 'is_tambahan'
            end
            object cxGridDBTableView3f_app_prd: TcxGridDBColumn
              DataBinding.FieldName = 'f_app_prd'
            end
            object cxGridDBTableView3app_by: TcxGridDBColumn
              DataBinding.FieldName = 'app_by'
            end
            object cxGridDBTableView3f_cetak: TcxGridDBColumn
              DataBinding.FieldName = 'f_cetak'
            end
            object cxGridDBTableView3tgl_p_mulai: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_p_mulai'
            end
            object cxGridDBTableView3tgl_p_selesai: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_p_selesai'
            end
            object cxGridDBTableView3toleransi: TcxGridDBColumn
              DataBinding.FieldName = 'toleransi'
            end
            object cxGridDBTableView3lain_lain: TcxGridDBColumn
              DataBinding.FieldName = 'lain_lain'
            end
            object cxGridDBTableView3ket_ppic: TcxGridDBColumn
              DataBinding.FieldName = 'ket_ppic'
            end
            object cxGridDBTableView3scanned_spk: TcxGridDBColumn
              DataBinding.FieldName = 'scanned_spk'
            end
            object cxGridDBTableView3scanned_st: TcxGridDBColumn
              DataBinding.FieldName = 'scanned_st'
            end
            object cxGridDBTableView3no_trsplusminus: TcxGridDBColumn
              DataBinding.FieldName = 'no_trsplusminus'
            end
            object cxGridDBTableView3lokasi: TcxGridDBColumn
              DataBinding.FieldName = 'lokasi'
            end
            object cxGridDBTableView3kondisi: TcxGridDBColumn
              DataBinding.FieldName = 'kondisi'
            end
            object cxGridDBTableView3no_po_plt: TcxGridDBColumn
              DataBinding.FieldName = 'no_po_plt'
            end
            object cxGridDBTableView3f_edit: TcxGridDBColumn
              DataBinding.FieldName = 'f_edit'
            end
            object cxGridDBTableView3tgl_edit: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_edit'
            end
            object cxGridDBTableView3user_edit: TcxGridDBColumn
              DataBinding.FieldName = 'user_edit'
            end
            object cxGridDBTableView3kode_brg_input: TcxGridDBColumn
              DataBinding.FieldName = 'kode_brg_input'
            end
            object cxGridDBTableView3tgl_tutup: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_tutup'
            end
            object cxGridDBTableView3user_tutup: TcxGridDBColumn
              DataBinding.FieldName = 'user_tutup'
            end
            object cxGridDBTableView3no_trial: TcxGridDBColumn
              DataBinding.FieldName = 'no_trial'
            end
            object cxGridDBTableView3no_spk_induk: TcxGridDBColumn
              DataBinding.FieldName = 'no_spk_induk'
            end
            object cxGridDBTableView3f_prd_check: TcxGridDBColumn
              DataBinding.FieldName = 'f_prd_check'
            end
            object cxGridDBTableView3tgl_prd_check: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_prd_check'
            end
            object cxGridDBTableView3target: TcxGridDBColumn
              DataBinding.FieldName = 'target'
            end
            object cxGridDBTableView3target_kg: TcxGridDBColumn
              DataBinding.FieldName = 'target_kg'
            end
            object cxGridDBTableView3f_wip: TcxGridDBColumn
              DataBinding.FieldName = 'f_wip'
            end
            object cxGridDBTableView3f_wip_awal: TcxGridDBColumn
              DataBinding.FieldName = 'f_wip_awal'
            end
            object cxGridDBTableView3f_wip_akhir: TcxGridDBColumn
              DataBinding.FieldName = 'f_wip_akhir'
            end
            object cxGridDBTableView3f_fai: TcxGridDBColumn
              DataBinding.FieldName = 'f_fai'
            end
            object cxGridDBTableView3routing: TcxGridDBColumn
              DataBinding.FieldName = 'routing'
            end
            object cxGridDBTableView3startup: TcxGridDBColumn
              DataBinding.FieldName = 'startup'
            end
            object cxGridDBTableView3mulai: TcxGridDBColumn
              DataBinding.FieldName = 'mulai'
            end
            object cxGridDBTableView3selesai: TcxGridDBColumn
              DataBinding.FieldName = 'selesai'
            end
            object cxGridDBTableView3no_urut: TcxGridDBColumn
              DataBinding.FieldName = 'no_urut'
            end
            object cxGridDBTableView3target_tgl_kirim: TcxGridDBColumn
              DataBinding.FieldName = 'target_tgl_kirim'
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
        object btnExcelSPK: TButton
          Left = 10
          Top = 335
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = btnExcelSPKClick
        end
        object cxLabel1: TcxLabel
          Left = 10
          Top = 12
          Caption = 'Tanggal'
        end
        object cxdTglSPK1: TcxDateEdit
          Left = 56
          Top = 10
          TabOrder = 3
          Width = 121
        end
        object cxLabel2: TcxLabel
          Left = 180
          Top = 12
          Caption = 'S/D'
        end
        object cxdTglSPK2: TcxDateEdit
          Left = 204
          Top = 10
          TabOrder = 5
          Width = 121
        end
        object btnProses: TButton
          Left = 330
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 6
          OnClick = btnProsesClick
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'List SO'
        ImageIndex = 6
        object cxGrid7: TcxGrid
          Left = 10
          Top = 43
          Width = 1008
          Height = 286
          TabOrder = 0
          object cxGridDBTableView5: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsSO
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBTableView5no_bukti: TcxGridDBColumn
              DataBinding.FieldName = 'no_bukti'
            end
            object cxGridDBTableView5tanggal: TcxGridDBColumn
              DataBinding.FieldName = 'tanggal'
            end
            object cxGridDBTableView5jam: TcxGridDBColumn
              DataBinding.FieldName = 'jam'
            end
            object cxGridDBTableView5kode_customer: TcxGridDBColumn
              DataBinding.FieldName = 'kode_customer'
            end
            object cxGridDBTableView5nama: TcxGridDBColumn
              DataBinding.FieldName = 'nama'
              Width = 370
            end
            object cxGridDBTableView5ex_customer: TcxGridDBColumn
              DataBinding.FieldName = 'ex_customer'
              Visible = False
            end
            object cxGridDBTableView5kategori_so: TcxGridDBColumn
              DataBinding.FieldName = 'kategori_so'
            end
            object cxGridDBTableView5f_completed: TcxGridDBColumn
              DataBinding.FieldName = 'f_completed'
            end
            object cxGridDBTableView5po: TcxGridDBColumn
              DataBinding.FieldName = 'po#'
            end
            object cxGridDBTableView5sc: TcxGridDBColumn
              DataBinding.FieldName = 'sc#'
            end
            object cxGridDBTableView5tgl_required: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_required'
            end
            object cxGridDBTableView5payment: TcxGridDBColumn
              DataBinding.FieldName = 'payment'
            end
            object cxGridDBTableView5notes: TcxGridDBColumn
              DataBinding.FieldName = 'notes'
            end
            object cxGridDBTableView5f_revisi: TcxGridDBColumn
              DataBinding.FieldName = 'f_revisi'
            end
            object cxGridDBTableView5tgl_input: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_input'
            end
            object cxGridDBTableView5user: TcxGridDBColumn
              DataBinding.FieldName = 'user'
            end
            object cxGridDBTableView5user_dept: TcxGridDBColumn
              DataBinding.FieldName = 'user_dept'
            end
            object cxGridDBTableView5f_email: TcxGridDBColumn
              DataBinding.FieldName = 'f_email'
            end
            object cxGridDBTableView5kategori1: TcxGridDBColumn
              DataBinding.FieldName = 'kategori1'
            end
            object cxGridDBTableView5kategori2: TcxGridDBColumn
              DataBinding.FieldName = 'kategori2'
            end
            object cxGridDBTableView5kategori3: TcxGridDBColumn
              DataBinding.FieldName = 'kategori3'
            end
            object cxGridDBTableView5user_edit: TcxGridDBColumn
              DataBinding.FieldName = 'user_edit'
            end
            object cxGridDBTableView5tgl_edit: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_edit'
            end
            object cxGridDBTableView5host: TcxGridDBColumn
              DataBinding.FieldName = 'host'
            end
            object cxGridDBTableView5no_sj_plt: TcxGridDBColumn
              DataBinding.FieldName = 'no_sj_plt'
            end
            object cxGridDBTableView5susut: TcxGridDBColumn
              DataBinding.FieldName = 'susut'
            end
            object cxGridDBTableView5f_posted: TcxGridDBColumn
              DataBinding.FieldName = 'f_posted'
            end
            object cxGridDBTableView5nopol: TcxGridDBColumn
              DataBinding.FieldName = 'nopol'
            end
            object cxGridDBTableView5driver: TcxGridDBColumn
              DataBinding.FieldName = 'driver'
            end
            object cxGridDBTableView5keterangan_tutup: TcxGridDBColumn
              DataBinding.FieldName = 'keterangan_tutup'
            end
            object cxGridDBTableView5f_tutupmanual: TcxGridDBColumn
              DataBinding.FieldName = 'f_tutupmanual'
            end
            object cxGridDBTableView5f_wip: TcxGridDBColumn
              DataBinding.FieldName = 'f_wip'
            end
            object cxGridDBTableView5f_wip_awal: TcxGridDBColumn
              DataBinding.FieldName = 'f_wip_awal'
            end
            object cxGridDBTableView5f_wip_akhir: TcxGridDBColumn
              DataBinding.FieldName = 'f_wip_akhir'
            end
            object cxGridDBTableView5id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object cxGridDBTableView5no_bukti_1: TcxGridDBColumn
              DataBinding.FieldName = 'no_bukti_1'
            end
            object cxGridDBTableView5kode_brg: TcxGridDBColumn
              DataBinding.FieldName = 'kode_brg'
            end
            object cxGridDBTableView5qty: TcxGridDBColumn
              DataBinding.FieldName = 'qty'
            end
            object cxGridDBTableView5deskripsi: TcxGridDBColumn
              DataBinding.FieldName = 'deskripsi'
            end
            object cxGridDBTableView5qty_lama: TcxGridDBColumn
              DataBinding.FieldName = 'qty_lama'
            end
            object cxGridDBTableView5satuan: TcxGridDBColumn
              DataBinding.FieldName = 'satuan'
            end
            object cxGridDBTableView5f_completed_1: TcxGridDBColumn
              DataBinding.FieldName = 'f_completed_1'
            end
            object cxGridDBTableView5notes_1: TcxGridDBColumn
              DataBinding.FieldName = 'notes_1'
            end
            object cxGridDBTableView5ket_harga: TcxGridDBColumn
              DataBinding.FieldName = 'ket_harga'
            end
            object cxGridDBTableView5jml_revisi: TcxGridDBColumn
              DataBinding.FieldName = 'jml_revisi'
            end
            object cxGridDBTableView5user_edit_1: TcxGridDBColumn
              DataBinding.FieldName = 'user_edit_1'
            end
            object cxGridDBTableView5tgl_jam_edit: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_jam_edit'
            end
            object cxGridDBTableView5jenis_edit: TcxGridDBColumn
              DataBinding.FieldName = 'jenis_edit'
            end
            object cxGridDBTableView5harga: TcxGridDBColumn
              DataBinding.FieldName = 'harga'
            end
            object cxGridDBTableView5lokasi: TcxGridDBColumn
              DataBinding.FieldName = 'lokasi'
            end
            object cxGridDBTableView5kondisi: TcxGridDBColumn
              DataBinding.FieldName = 'kondisi'
            end
            object cxGridDBTableView5plt_completed: TcxGridDBColumn
              DataBinding.FieldName = 'plt_completed'
            end
            object cxGridDBTableView5kode_brg_input: TcxGridDBColumn
              DataBinding.FieldName = 'kode_brg_input'
            end
            object cxGridDBTableView5qty_non_kg: TcxGridDBColumn
              DataBinding.FieldName = 'qty_non_kg'
            end
            object cxGridDBTableView5qty_brg_hsl: TcxGridDBColumn
              DataBinding.FieldName = 'qty_brg_hsl'
            end
          end
          object cxGridLevel6: TcxGridLevel
            GridView = cxGridDBTableView5
          end
        end
        object Button2: TButton
          Left = 10
          Top = 335
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button2Click
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 12
          Caption = 'Tanggal'
        end
        object cxdTglSO1: TcxDateEdit
          Left = 56
          Top = 10
          TabOrder = 3
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 180
          Top = 12
          Caption = 'S/D'
        end
        object cxdTglSO2: TcxDateEdit
          Left = 204
          Top = 10
          TabOrder = 5
          Width = 121
        end
        object Button3: TButton
          Left = 330
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 6
          OnClick = Button3Click
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 461
    Width = 1040
    inherited btnKeluar: TButton
      Left = 15
      Top = 15
    end
    inherited btnTambah: TButton
      Left = 490
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 565
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 640
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 870
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 795
      Visible = False
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_barang ORDER BY deskripsi')
    Params = <>
    Left = 425
    Top = 20
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 455
    Top = 20
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_customer ORDER BY nama')
    Params = <>
    Left = 485
    Top = 20
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 515
    Top = 20
  end
  object zqrSupp: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_supplier ORDER BY nama')
    Params = <>
    Left = 545
    Top = 20
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 575
    Top = 20
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_mesin ORDER BY nama')
    Params = <>
    Left = 605
    Top = 20
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 635
    Top = 20
  end
  object zqrUnitSet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select * from tbl_unitset_head a INNER JOIN tbl_unitset_det b ON' +
        ' a.unitsetid = b.unitsetid'
      'ORDER BY a.description')
    Params = <>
    Left = 665
    Top = 20
  end
  object dsUnitSet: TDataSource
    DataSet = zqrUnitSet
    Left = 695
    Top = 20
  end
  object zqrSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select a.*, deskripsi from tbl_spk a'
      'left join tbl_barang b on a.kode_brg = b.kode'
      'WHERE a.tanggal BETWEEN :tgl1 AND :tgl2')
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
    MasterSource = ds
    Left = 725
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
  object dsSPK: TDataSource
    DataSet = zqrSPK
    Left = 755
    Top = 20
  end
  object zqrSO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select a.*, b.*, c.deskripsi, d.nama from tbl_so_head a'
      'left join tbl_so_det b on a.no_bukti = b.no_bukti'
      'left join tbl_barang c on c.kode = b.kode_brg'
      'left join tbl_customer d on d.kode = a.kode_customer'
      'WHERE a.tanggal BETWEEN :tgl1 AND :tgl2')
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
    MasterSource = ds
    Left = 725
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
  object dsSO: TDataSource
    DataSet = zqrSO
    Left = 755
    Top = 20
  end
end
