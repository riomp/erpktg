unit unFrmLapExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, ShellAPI, cxGridExportLink,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmLapExcel = class(TfrmTplMaster)
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    cxTblBrg: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnExcelBrg: TButton;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxTblBrgid: TcxGridDBColumn;
    cxTblBrgno_is: TcxGridDBColumn;
    cxTblBrgno_cp: TcxGridDBColumn;
    cxTblBrgkode: TcxGridDBColumn;
    cxTblBrgkode_zahir: TcxGridDBColumn;
    cxTblBrgdeskripsi: TcxGridDBColumn;
    cxTblBrgstok: TcxGridDBColumn;
    cxTblBrgb_stok: TcxGridDBColumn;
    cxTblBrgsatuan: TcxGridDBColumn;
    cxTblBrgtipe: TcxGridDBColumn;
    cxTblBrgkategori: TcxGridDBColumn;
    cxTblBrgsubkategori: TcxGridDBColumn;
    cxTblBrgdivisi: TcxGridDBColumn;
    cxTblBrgpackinfo: TcxGridDBColumn;
    cxTblBrgf_aktif: TcxGridDBColumn;
    cxTblBrguser_input: TcxGridDBColumn;
    cxTblBrgtgl_input: TcxGridDBColumn;
    cxTblBrguser_edit: TcxGridDBColumn;
    cxTblBrgtgl_edit: TcxGridDBColumn;
    cxTblBrgberat: TcxGridDBColumn;
    cxTblBrgpacking: TcxGridDBColumn;
    cxTblBrgberat_per_unit: TcxGridDBColumn;
    cxTblBrgs_berat: TcxGridDBColumn;
    cxTblBrgisi_pak: TcxGridDBColumn;
    cxTblBrgimage: TcxGridDBColumn;
    cxTblBrgwarna: TcxGridDBColumn;
    cxTblBrg_panjang: TcxGridDBColumn;
    cxTblBrgs_panjang: TcxGridDBColumn;
    cxTblBrglebar: TcxGridDBColumn;
    cxTblBrgs_lebar: TcxGridDBColumn;
    cxTblBrg_tebal: TcxGridDBColumn;
    cxTblBrgs_tebal: TcxGridDBColumn;
    cxTblBrgdiameter: TcxGridDBColumn;
    cxTblBrgs_diameter: TcxGridDBColumn;
    cxTblBrgberat_per_unit_b: TcxGridDBColumn;
    cxTblBrgs_berat_per_unit_b: TcxGridDBColumn;
    cxTblBrgf_dijual: TcxGridDBColumn;
    cxTblBrgf_dibeli: TcxGridDBColumn;
    cxTblBrgf_joborder: TcxGridDBColumn;
    cxTblBrgflow_process: TcxGridDBColumn;
    cxTblBrgdiameter_dalam: TcxGridDBColumn;
    cxTblBrgs_diameter_dalam: TcxGridDBColumn;
    cxTblBrgdiameter_luar: TcxGridDBColumn;
    cxTblBrgs_diameter_luar: TcxGridDBColumn;
    cxTblBrgpanjang_lurus: TcxGridDBColumn;
    cxTblBrgberat_per_unit_old: TcxGridDBColumn;
    cxTblBrgf_ed: TcxGridDBColumn;
    cxTblBrged: TcxGridDBColumn;
    cxTblBrgf_tds: TcxGridDBColumn;
    cxTblBrgtds: TcxGridDBColumn;
    cxTblBrghrg_kel1: TcxGridDBColumn;
    cxTblBrghrg_kel2: TcxGridDBColumn;
    cxTblBrgtargetbal_7jam: TcxGridDBColumn;
    cxTblBrglokasi: TcxGridDBColumn;
    cxTblBrglokasi_grid: TcxGridDBColumn;
    cxTblBrgf_consumable: TcxGridDBColumn;
    cxTblBrgdia_rope: TcxGridDBColumn;
    cxTblBrgs_dia_rope: TcxGridDBColumn;
    cxTblBrgstrand: TcxGridDBColumn;
    cxTblBrgtpm: TcxGridDBColumn;
    cxTblBrgbps: TcxGridDBColumn;
    cxTblBrgs_bps: TcxGridDBColumn;
    cxTblBrgdps: TcxGridDBColumn;
    cxTblBrgdpb: TcxGridDBColumn;
    cxTblBrgwarna_rope: TcxGridDBColumn;
    cxTblBrgfpb: TcxGridDBColumn;
    cxTblBrgdpf: TcxGridDBColumn;
    cxTblBrggpm_pf: TcxGridDBColumn;
    cxTblBrgs_gpm_pf: TcxGridDBColumn;
    cxTblBrggpm_pb: TcxGridDBColumn;
    cxTblBrgs_gpm_pb: TcxGridDBColumn;
    cxTblBrgtwist: TcxGridDBColumn;
    cxTblBrglay: TcxGridDBColumn;
    cxTblBrgpanjang_rope: TcxGridDBColumn;
    cxTblBrgs_panjang_rope: TcxGridDBColumn;
    cxTblBrgberat_per_unit_pack: TcxGridDBColumn;
    cxTblBrgf_lotnumber: TcxGridDBColumn;
    cxTblBrgf_sml: TcxGridDBColumn;
    cxTblBrgf_fai: TcxGridDBColumn;
    cxTblBrgkode_customer: TcxGridDBColumn;
    cxTblBrgkode_supplier: TcxGridDBColumn;
    cxTblBrgfungsi: TcxGridDBColumn;
    cxTblBrgbase_material: TcxGridDBColumn;
    cxTblBrgsheet_tube: TcxGridDBColumn;
    cxTblBrgberat_jenis: TcxGridDBColumn;
    cxTblBrgtebal: TcxGridDBColumn;
    cxTblBrgtebal_ol: TcxGridDBColumn;
    cxTblBrgtebal_mid: TcxGridDBColumn;
    cxTblBrgtebal_in: TcxGridDBColumn;
    cxTblBrgberat_kotor: TcxGridDBColumn;
    cxTblBrgberat_bersih: TcxGridDBColumn;
    cxTblBrgberat_meter: TcxGridDBColumn;
    cxTblBrgberat_fg: TcxGridDBColumn;
    cxTblBrglebar_buka: TcxGridDBColumn;
    cxTblBrglebar_jadi: TcxGridDBColumn;
    cxTblBrgpanjang: TcxGridDBColumn;
    cxTblBrgpanjang_jadi: TcxGridDBColumn;
    cxTblBrglebar_tube: TcxGridDBColumn;
    cxTblBrgpanjang_plong: TcxGridDBColumn;
    cxTblBrglebar_plong: TcxGridDBColumn;
    cxTblBrgtop_fold: TcxGridDBColumn;
    cxTblBrggusset: TcxGridDBColumn;
    cxTblBrglebar_handle: TcxGridDBColumn;
    cxTblBrgaksesoris: TcxGridDBColumn;
    cxTblBrgberat_aksesoris: TcxGridDBColumn;
    cxTblBrgt_aksesoris: TcxGridDBColumn;
    cxTblBrgl_aksesoris: TcxGridDBColumn;
    cxTblBrgp_aksesoris: TcxGridDBColumn;
    cxTblBrgbase_aksesoris: TcxGridDBColumn;
    cxTblBrgair_hole: TcxGridDBColumn;
    cxTblBrgcut: TcxGridDBColumn;
    cxTblBrgbentuk_produk: TcxGridDBColumn;
    cxTblBrgdesain_produk: TcxGridDBColumn;
    cxTblBrgwarna_film: TcxGridDBColumn;
    cxTblBrgvisual: TcxGridDBColumn;
    cxTblBrgsurface: TcxGridDBColumn;
    cxTblBrgmin_std: TcxGridDBColumn;
    cxTblBrgmax_std: TcxGridDBColumn;
    cxTblBrgmin_smd: TcxGridDBColumn;
    cxTblBrgmas_smd: TcxGridDBColumn;
    cxTblBrgunit_tstrength: TcxGridDBColumn;
    cxTblBrgmin_etd: TcxGridDBColumn;
    cxTblBrgmax_etd: TcxGridDBColumn;
    cxTblBrgunit_tlongation: TcxGridDBColumn;
    cxTblBrgmin_teartd: TcxGridDBColumn;
    cxTblBrgmax_teartd: TcxGridDBColumn;
    cxTblBrgmin_tearmd: TcxGridDBColumn;
    cxTblBrgmax_tearmd: TcxGridDBColumn;
    cxTblBrgmin_resistance: TcxGridDBColumn;
    cxTblBrgmax_resistance: TcxGridDBColumn;
    cxTblBrgunit_resistance: TcxGridDBColumn;
    cxTblBrgmin_emd: TcxGridDBColumn;
    cxTblBrgmax_emd: TcxGridDBColumn;
    cxTblBrgunit_tear: TcxGridDBColumn;
    cxTblBrgmin_impact: TcxGridDBColumn;
    cxTblBrgmax_impact: TcxGridDBColumn;
    cxTblBrgunit_impact: TcxGridDBColumn;
    cxTblBrgmin_opasitas: TcxGridDBColumn;
    cxTblBrgmax_opasitas: TcxGridDBColumn;
    cxTblBrgunit_opasitas: TcxGridDBColumn;
    cxTblBrgstd_warnafilm: TcxGridDBColumn;
    cxTblBrgcritical_point: TcxGridDBColumn;
    cxTblBrg_kode: TcxGridDBColumn;
    cxTblBrgunitid: TcxGridDBColumn;
    cxTblBrgmax_smd: TcxGridDBColumn;
    cxTblBrgunitsetid: TcxGridDBColumn;
    cxTblBrgstd_std: TcxGridDBColumn;
    cxTblBrgstd_smd: TcxGridDBColumn;
    cxTblBrgstd_etd: TcxGridDBColumn;
    cxTblBrgstd_emd: TcxGridDBColumn;
    cxTblBrgstd_teartd: TcxGridDBColumn;
    cxTblBrgstd_tearmd: TcxGridDBColumn;
    cxTblBrgstd_resistance: TcxGridDBColumn;
    cxTblBrgstd_impact: TcxGridDBColumn;
    cxTblBrgstd_opasitas: TcxGridDBColumn;
    cxTblBrgf_draft: TcxGridDBColumn;
    cxTblBrgspeed: TcxGridDBColumn;
    cxTblBrghpp: TcxGridDBColumn;
    cxTblBrgkelompok: TcxGridDBColumn;
    cxTblBrgsub_kelompok: TcxGridDBColumn;
    cxTblBrgtinggi_total: TcxGridDBColumn;
    cxTblBrgbentuk: TcxGridDBColumn;
    cxTblBrgprice: TcxGridDBColumn;
    cxTblBrgprice_date: TcxGridDBColumn;
    cxTblBrgconv1: TcxGridDBColumn;
    cxTblBrgconv2: TcxGridDBColumn;
    cxTblBrgconv3: TcxGridDBColumn;
    cxTblBrgconv4: TcxGridDBColumn;
    cxTblBrgconv5: TcxGridDBColumn;
    cxTblBrgsat1: TcxGridDBColumn;
    cxTblBrgsat2: TcxGridDBColumn;
    cxTblBrgsat3: TcxGridDBColumn;
    cxTblBrgsat4: TcxGridDBColumn;
    cxTblBrgsat5: TcxGridDBColumn;
    cxTblBrgunit_ktg: TcxGridDBColumn;
    cxTblBrgcp_fgel: TcxGridDBColumn;
    cxTblBrgcp_fblorok: TcxGridDBColumn;
    cxTblBrgcp_fgaler: TcxGridDBColumn;
    cxTblBrgcp_fnjeruk: TcxGridDBColumn;
    cxTblBrgcp_mataikan: TcxGridDBColumn;
    cxTblBrgcp_flengket: TcxGridDBColumn;
    cxTblBrgcp_fbau: TcxGridDBColumn;
    cxTblBrgcp_fkuat: TcxGridDBColumn;
    cxTblBrgcp_petal: TcxGridDBColumn;
    cxTblBrgcp_pecah: TcxGridDBColumn;
    cxTblBrgcp_jembret: TcxGridDBColumn;
    cxTblBrgtd_tebal_film: TcxGridDBColumn;
    cxTblBrgtd_repeat_print: TcxGridDBColumn;
    cxTblBrgtd_berat_jadi: TcxGridDBColumn;
    cxTblBrgtd_lebar_film: TcxGridDBColumn;
    cxTblBrgtd_gbr_tepi_kanan: TcxGridDBColumn;
    cxTblBrgtd_panjang_jadi: TcxGridDBColumn;
    cxTblBrgtd_berat_per_meter: TcxGridDBColumn;
    cxTblBrgtd_gbr_tepi_kiri: TcxGridDBColumn;
    cxTblBrgmt_out: TcxGridDBColumn;
    cxTblBrgmt_mid: TcxGridDBColumn;
    cxTblBrgmt_in: TcxGridDBColumn;
    cxTblBrgmtp_out: TcxGridDBColumn;
    cxTblBrgmtp_mid: TcxGridDBColumn;
    cxTblBrgmtp_in: TcxGridDBColumn;
    cxTblBrgfina_kode: TcxGridDBColumn;
    cxTblBrgfina_nama: TcxGridDBColumn;
    cxTblBrgcp_fgel_ukuran: TcxGridDBColumn;
    cxTblBrgcp_fblorok_ukuran: TcxGridDBColumn;
    cxTblBrgcp_fgaler_ukuran: TcxGridDBColumn;
    cxTblBrgcp_fnjeruk_ukuran: TcxGridDBColumn;
    cxTblBrgcp_mataikan_ukuran: TcxGridDBColumn;
    cxTblBrgcp_flengket_ukuran: TcxGridDBColumn;
    cxTblBrgcp_petal_ukuran: TcxGridDBColumn;
    cxTblBrgcp_pecah_ukuran: TcxGridDBColumn;
    cxTblBrgcp_jembret_ukuran: TcxGridDBColumn;
    cxTblBrgcp_fgel_min: TcxGridDBColumn;
    cxTblBrgcp_fblorok_min: TcxGridDBColumn;
    cxTblBrgcp_fgaler_min: TcxGridDBColumn;
    cxTblBrgcp_fnjeruk_min: TcxGridDBColumn;
    cxTblBrgcp_mataikan_min: TcxGridDBColumn;
    cxTblBrgcp_flengket_min: TcxGridDBColumn;
    cxTblBrgcp_petal_min: TcxGridDBColumn;
    cxTblBrgcp_pecah_min: TcxGridDBColumn;
    cxTblBrgcp_jembret_min: TcxGridDBColumn;
    cxTblBrgcp_fgel_max: TcxGridDBColumn;
    cxTblBrgcp_fblorok_max: TcxGridDBColumn;
    cxTblBrgcp_fgaler_max: TcxGridDBColumn;
    cxTblBrgcp_fnjeruk_max: TcxGridDBColumn;
    cxTblBrgcp_mataikan_max: TcxGridDBColumn;
    cxTblBrgcp_flengket_max: TcxGridDBColumn;
    cxTblBrgcp_petal_max: TcxGridDBColumn;
    cxTblBrgcp_pecah_max: TcxGridDBColumn;
    cxTblBrgcp_jembret_max: TcxGridDBColumn;
    cxTblBrgline: TcxGridDBColumn;
    cxTblBrglead_time: TcxGridDBColumn;
    cxTblBrgtreat_luar: TcxGridDBColumn;
    cxTblBrgtreat_dalam: TcxGridDBColumn;
    cxTblBrgpola_tl: TcxGridDBColumn;
    cxTblBrgpola_td: TcxGridDBColumn;
    cxTblBrgjumlah_warna1: TcxGridDBColumn;
    cxTblBrgjumlah_warna2: TcxGridDBColumn;
    cxTblBrgdetail_warna1: TcxGridDBColumn;
    cxTblBrgdetail_warna2: TcxGridDBColumn;
    cxTblBrgtepi_kiri: TcxGridDBColumn;
    cxTblBrgtepi_kanan: TcxGridDBColumn;
    cxTblBrgtepi_atas: TcxGridDBColumn;
    cxTblBrgtepi_bawah: TcxGridDBColumn;
    cxTblBrglebar_cyl: TcxGridDBColumn;
    cxTblBrgpanjang_cyl: TcxGridDBColumn;
    cxTblBrgtoleransi: TcxGridDBColumn;
    cxTblBrgarah_gulung: TcxGridDBColumn;
    cxTblBrgarah_film: TcxGridDBColumn;
    cxTblBrgjumlah_md: TcxGridDBColumn;
    cxTblBrgjumlah_td: TcxGridDBColumn;
    cxTblBrgcm_md: TcxGridDBColumn;
    cxTblBrgcm_td: TcxGridDBColumn;
    cxTblBrgjumlah_cyl: TcxGridDBColumn;
    cxTblBrgkeliling: TcxGridDBColumn;
    cxTblBrgrepeat_print: TcxGridDBColumn;
    cxTblBrgpack_unit1_qty: TcxGridDBColumn;
    cxTblBrgpack_unit2_qty: TcxGridDBColumn;
    cxTblBrgpack_unit3_qty: TcxGridDBColumn;
    cxTblBrgpack_unit4_qty: TcxGridDBColumn;
    cxTblBrgpack_unit5_qty: TcxGridDBColumn;
    cxTblBrgpack_unit1_unit: TcxGridDBColumn;
    cxTblBrgpack_unit2_unit: TcxGridDBColumn;
    cxTblBrgpack_unit3_unit: TcxGridDBColumn;
    cxTblBrgpack_unit4_unit: TcxGridDBColumn;
    cxTblBrgpack_unit5_unit: TcxGridDBColumn;
    cxTblBrgfolding1: TcxGridDBColumn;
    cxTblBrgfolding2: TcxGridDBColumn;
    cxTblBrgpack_acc: TcxGridDBColumn;
    cxTblBrgpack_acc_core: TcxGridDBColumn;
    cxTblBrgpack_acc_inner: TcxGridDBColumn;
    cxTblBrgpack_acc_thickness: TcxGridDBColumn;
    cxTblBrgpack_acc_length: TcxGridDBColumn;
    cxTblBrgpack_acc_other: TcxGridDBColumn;
    cxTblBrgmaterial_inout: TcxGridDBColumn;
    cxTblBrgmaterial_label_pb: TcxGridDBColumn;
    cxTblBrgmaterial_outer: TcxGridDBColumn;
    cxTblBrgmaterial_dispenser: TcxGridDBColumn;
    cxTblBrgcolours_inout: TcxGridDBColumn;
    cxTblBrgcolours_label_pb: TcxGridDBColumn;
    cxTblBrgcolours_outer: TcxGridDBColumn;
    cxTblBrgcolours_dispenser: TcxGridDBColumn;
    cxTblBrgu_per_gsm_inout: TcxGridDBColumn;
    cxTblBrgu_per_gsm_label_pb: TcxGridDBColumn;
    cxTblBrgu_per_gsm_outer: TcxGridDBColumn;
    cxTblBrgu_per_gsm_dispenser: TcxGridDBColumn;
    cxTblBrgwidth_inout: TcxGridDBColumn;
    cxTblBrgwidth_label_pb: TcxGridDBColumn;
    cxTblBrgwidth_outer: TcxGridDBColumn;
    cxTblBrgwidth_dispenser: TcxGridDBColumn;
    cxTblBrglength_inout: TcxGridDBColumn;
    cxTblBrglength_label_pb: TcxGridDBColumn;
    cxTblBrglength_outer: TcxGridDBColumn;
    cxTblBrglength_dispenser: TcxGridDBColumn;
    cxTblBrgprintdet_colours_inout: TcxGridDBColumn;
    cxTblBrgprintdet_colours_label_pb: TcxGridDBColumn;
    cxTblBrgprintdet_colours_outer: TcxGridDBColumn;
    cxTblBrgprintdet_colours_dispenser: TcxGridDBColumn;
    cxTblBrgprintdet_sides_inout: TcxGridDBColumn;
    cxTblBrgprintdet_sides_label_pb: TcxGridDBColumn;
    cxTblBrgprintdet_sides_outer: TcxGridDBColumn;
    cxTblBrgprintdet_sides_dispenser: TcxGridDBColumn;
    cxTblBrgfp_material_inner: TcxGridDBColumn;
    cxTblBrgfp_material_outer: TcxGridDBColumn;
    cxTblBrgfp_width_inner: TcxGridDBColumn;
    cxTblBrgfp_width_outer: TcxGridDBColumn;
    cxTblBrgfp_length_inner: TcxGridDBColumn;
    cxTblBrgfp_length_outer: TcxGridDBColumn;
    cxTblBrgfp_height_inner: TcxGridDBColumn;
    cxTblBrgfp_height_outer: TcxGridDBColumn;
    cxTblBrgfp_gsm: TcxGridDBColumn;
    cxTblBrgfp_colours: TcxGridDBColumn;
    cxTblBrgfp_sides: TcxGridDBColumn;
    cxTblBrgpallet_width: TcxGridDBColumn;
    cxTblBrgpallet_length: TcxGridDBColumn;
    cxTblBrgpallet_height: TcxGridDBColumn;
    cxTblBrgpallet_entry: TcxGridDBColumn;
    cxTblBrgpallet_requirement: TcxGridDBColumn;
    cxTblBrgcompiling_packaging: TcxGridDBColumn;
    cxTblBrgregister: TcxGridDBColumn;
    cxTblBrgnama_design: TcxGridDBColumn;
    cxTblBrgjenis_gusset: TcxGridDBColumn;
    cxTblBrgproses_gusset: TcxGridDBColumn;
    cxTblBrgg_lebarjadi: TcxGridDBColumn;
    cxTblBrgg_arahfilm: TcxGridDBColumn;
    cxTblBrgg_toleransi: TcxGridDBColumn;
    cxTblBrgc_keterangan: TcxGridDBColumn;
    cxTblBrgc_jaraklas: TcxGridDBColumn;
    cxTblBrgc_panjanglas: TcxGridDBColumn;
    cxTblBrgc_arahfilm: TcxGridDBColumn;
    cxTblBrgc_jarakga: TcxGridDBColumn;
    cxTblBrgc_jarakgb: TcxGridDBColumn;
    cxTblBrgsub_group: TcxGridDBColumn;
    cxTblBrgket_treat: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxTblCust: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btnExcelCust: TButton;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    cxTblCustid: TcxGridDBColumn;
    cxTblCustkode: TcxGridDBColumn;
    cxTblCustnama: TcxGridDBColumn;
    cxTblCustkontak: TcxGridDBColumn;
    cxTblCustalamat: TcxGridDBColumn;
    cxTblCustalamat2: TcxGridDBColumn;
    cxTblCustkelurahan: TcxGridDBColumn;
    cxTblCustkecamatan: TcxGridDBColumn;
    cxTblCustkota: TcxGridDBColumn;
    cxTblCustprovinsi: TcxGridDBColumn;
    cxTblCustnegara: TcxGridDBColumn;
    cxTblCusttelpon: TcxGridDBColumn;
    cxTblCustfax: TcxGridDBColumn;
    cxTblCusthp: TcxGridDBColumn;
    cxTblCustdirect: TcxGridDBColumn;
    cxTblCustf_aktif: TcxGridDBColumn;
    cxTblCustuserweb: TcxGridDBColumn;
    cxTblCustpassword: TcxGridDBColumn;
    cxTblCustreal_password: TcxGridDBColumn;
    cxTblCustemail: TcxGridDBColumn;
    cxTblCustjenis: TcxGridDBColumn;
    cxTblCustkelompok: TcxGridDBColumn;
    cxTblCustnpwp: TcxGridDBColumn;
    cxTblCustpkp: TcxGridDBColumn;
    cxTblCustjenis_usaha: TcxGridDBColumn;
    cxTblCustbrand: TcxGridDBColumn;
    cxTblCuststatus_perusahaan: TcxGridDBColumn;
    cxTblCustpemilik: TcxGridDBColumn;
    cxTblCusttlp_pemilik: TcxGridDBColumn;
    cxTblCuststatus_gedung: TcxGridDBColumn;
    cxTblCustsales: TcxGridDBColumn;
    cxTblCustwebsite: TcxGridDBColumn;
    cxTblCustmarket: TcxGridDBColumn;
    cxTblCustkaryawan: TcxGridDBColumn;
    cxTblCustkendaraan: TcxGridDBColumn;
    cxTblCustlama_usaha: TcxGridDBColumn;
    cxTblCustbisnis_usaha: TcxGridDBColumn;
    cxTblCustproduk: TcxGridDBColumn;
    cxTblCustkapasitas: TcxGridDBColumn;
    cxTblCustrekening: TcxGridDBColumn;
    cxTblCustatasnama: TcxGridDBColumn;
    cxTblCustpurchasing: TcxGridDBColumn;
    cxTblCustterms: TcxGridDBColumn;
    cxTblCustlimit_kredit: TcxGridDBColumn;
    cxTblCustkomisi_pihak3: TcxGridDBColumn;
    cxTblCustketerangan: TcxGridDBColumn;
    cxTblCustevaluasi: TcxGridDBColumn;
    cxTblCusttanggung_jawab: TcxGridDBColumn;
    cxTblCustalamat_kirim: TcxGridDBColumn;
    cxTblCustjenis_kepemilikan: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    btnExcelSupp: TButton;
    zqrSupp: TZReadOnlyQuery;
    dsSupp: TDataSource;
    cxGridDBTableView1kode: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1kontak: TcxGridDBColumn;
    cxGridDBTableView1title: TcxGridDBColumn;
    cxGridDBTableView1alamat: TcxGridDBColumn;
    cxGridDBTableView1alamat2: TcxGridDBColumn;
    cxGridDBTableView1kota: TcxGridDBColumn;
    cxGridDBTableView1kodepos: TcxGridDBColumn;
    cxGridDBTableView1provinsi: TcxGridDBColumn;
    cxGridDBTableView1negara: TcxGridDBColumn;
    cxGridDBTableView1telpon: TcxGridDBColumn;
    cxGridDBTableView1fax: TcxGridDBColumn;
    cxGridDBTableView1hp: TcxGridDBColumn;
    cxGridDBTableView1direct: TcxGridDBColumn;
    cxGridDBTableView1pembayaran: TcxGridDBColumn;
    cxGridDBTableView1email: TcxGridDBColumn;
    cxGridDBTableView1f_aktif: TcxGridDBColumn;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    btnExcelMesin: TButton;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    cxGridDBTableView2kode: TcxGridDBColumn;
    cxGridDBTableView2nama: TcxGridDBColumn;
    cxGridDBTableView2lokasi: TcxGridDBColumn;
    cxGridDBTableView2jenis: TcxGridDBColumn;
    cxGridDBTableView2group_mesin: TcxGridDBColumn;
    cxGridDBTableView2inisial_start: TcxGridDBColumn;
    cxGridDBTableView2f_aktif: TcxGridDBColumn;
    cxGridDBTableView2jml_personil: TcxGridDBColumn;
    cxGridDBTableView2spv_prd: TcxGridDBColumn;
    cxGridDBTableView2cycle_time: TcxGridDBColumn;
    cxGridDBTableView2setup_time: TcxGridDBColumn;
    cxGridDBTableView2wait_time: TcxGridDBColumn;
    cxGridDBTableView2output: TcxGridDBColumn;
    cxGridDBTableView2daya_motor: TcxGridDBColumn;
    cxGridDBTableView2daya_heater: TcxGridDBColumn;
    cxGridDBTableView2line: TcxGridDBColumn;
    cxGridDBTableView2satuan: TcxGridDBColumn;
    cxGridDBTableView2warna: TcxGridDBColumn;
    cxGridDBTableView2operator_setup: TcxGridDBColumn;
    cxGridDBTableView2die: TcxGridDBColumn;
    cxGridDBTableView2lebar_mesin_min: TcxGridDBColumn;
    cxGridDBTableView2lebar_mesin_max: TcxGridDBColumn;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    btnExcelSPK: TButton;
    cxLabel1: TcxLabel;
    cxGrid6: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    btnExcelUnitSet: TButton;
    zqrUnitSet: TZReadOnlyQuery;
    dsUnitSet: TDataSource;
    cxGridDBTableView4unitsetid: TcxGridDBColumn;
    cxGridDBTableView4description: TcxGridDBColumn;
    cxGridDBTableView4unitid: TcxGridDBColumn;
    cxGridDBTableView4qty: TcxGridDBColumn;
    cxGridDBTableView4no: TcxGridDBColumn;
    cxGridDBTableView4unitid_1: TcxGridDBColumn;
    cxGridDBTableView4convert: TcxGridDBColumn;
    cxGridDBTableView4unitsetid_1: TcxGridDBColumn;
    cxdTglSPK1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTglSPK2: TcxDateEdit;
    btnProses: TButton;
    cxGrid7: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    Button2: TButton;
    cxLabel3: TcxLabel;
    cxdTglSO1: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxdTglSO2: TcxDateEdit;
    Button3: TButton;
    zqrSPK: TZReadOnlyQuery;
    dsSPK: TDataSource;
    cxGridDBTableView3id: TcxGridDBColumn;
    cxGridDBTableView3no_mo: TcxGridDBColumn;
    cxGridDBTableView3no_spk: TcxGridDBColumn;
    cxGridDBTableView3jenis_spk: TcxGridDBColumn;
    cxGridDBTableView3tanggal: TcxGridDBColumn;
    cxGridDBTableView3jam: TcxGridDBColumn;
    cxGridDBTableView3kode_brg: TcxGridDBColumn;
    cxGridDBTableView3qty: TcxGridDBColumn;
    cxGridDBTableView3kode_mesin: TcxGridDBColumn;
    cxGridDBTableView3kode_formula: TcxGridDBColumn;
    cxGridDBTableView3f_completed: TcxGridDBColumn;
    cxGridDBTableView3keterangan: TcxGridDBColumn;
    cxGridDBTableView3is_tambahan: TcxGridDBColumn;
    cxGridDBTableView3f_app_prd: TcxGridDBColumn;
    cxGridDBTableView3app_by: TcxGridDBColumn;
    cxGridDBTableView3f_cetak: TcxGridDBColumn;
    cxGridDBTableView3tgl_p_mulai: TcxGridDBColumn;
    cxGridDBTableView3tgl_p_selesai: TcxGridDBColumn;
    cxGridDBTableView3toleransi: TcxGridDBColumn;
    cxGridDBTableView3lain_lain: TcxGridDBColumn;
    cxGridDBTableView3ket_ppic: TcxGridDBColumn;
    cxGridDBTableView3scanned_spk: TcxGridDBColumn;
    cxGridDBTableView3scanned_st: TcxGridDBColumn;
    cxGridDBTableView3no_trsplusminus: TcxGridDBColumn;
    cxGridDBTableView3lokasi: TcxGridDBColumn;
    cxGridDBTableView3kondisi: TcxGridDBColumn;
    cxGridDBTableView3no_po_plt: TcxGridDBColumn;
    cxGridDBTableView3f_edit: TcxGridDBColumn;
    cxGridDBTableView3tgl_edit: TcxGridDBColumn;
    cxGridDBTableView3user_edit: TcxGridDBColumn;
    cxGridDBTableView3kode_brg_input: TcxGridDBColumn;
    cxGridDBTableView3tgl_tutup: TcxGridDBColumn;
    cxGridDBTableView3user_tutup: TcxGridDBColumn;
    cxGridDBTableView3no_trial: TcxGridDBColumn;
    cxGridDBTableView3no_spk_induk: TcxGridDBColumn;
    cxGridDBTableView3f_prd_check: TcxGridDBColumn;
    cxGridDBTableView3tgl_prd_check: TcxGridDBColumn;
    cxGridDBTableView3target: TcxGridDBColumn;
    cxGridDBTableView3target_kg: TcxGridDBColumn;
    cxGridDBTableView3f_wip: TcxGridDBColumn;
    cxGridDBTableView3f_wip_awal: TcxGridDBColumn;
    cxGridDBTableView3f_wip_akhir: TcxGridDBColumn;
    cxGridDBTableView3f_fai: TcxGridDBColumn;
    cxGridDBTableView3routing: TcxGridDBColumn;
    cxGridDBTableView3startup: TcxGridDBColumn;
    cxGridDBTableView3mulai: TcxGridDBColumn;
    cxGridDBTableView3selesai: TcxGridDBColumn;
    cxGridDBTableView3no_urut: TcxGridDBColumn;
    cxGridDBTableView3target_tgl_kirim: TcxGridDBColumn;
    cxGridDBTableView3deskripsi: TcxGridDBColumn;
    zqrSO: TZReadOnlyQuery;
    dsSO: TDataSource;
    cxGridDBTableView5no_bukti: TcxGridDBColumn;
    cxGridDBTableView5tanggal: TcxGridDBColumn;
    cxGridDBTableView5jam: TcxGridDBColumn;
    cxGridDBTableView5kode_customer: TcxGridDBColumn;
    cxGridDBTableView5ex_customer: TcxGridDBColumn;
    cxGridDBTableView5kategori_so: TcxGridDBColumn;
    cxGridDBTableView5f_completed: TcxGridDBColumn;
    cxGridDBTableView5po: TcxGridDBColumn;
    cxGridDBTableView5sc: TcxGridDBColumn;
    cxGridDBTableView5tgl_required: TcxGridDBColumn;
    cxGridDBTableView5payment: TcxGridDBColumn;
    cxGridDBTableView5notes: TcxGridDBColumn;
    cxGridDBTableView5f_revisi: TcxGridDBColumn;
    cxGridDBTableView5tgl_input: TcxGridDBColumn;
    cxGridDBTableView5user: TcxGridDBColumn;
    cxGridDBTableView5user_dept: TcxGridDBColumn;
    cxGridDBTableView5f_email: TcxGridDBColumn;
    cxGridDBTableView5kategori1: TcxGridDBColumn;
    cxGridDBTableView5kategori2: TcxGridDBColumn;
    cxGridDBTableView5kategori3: TcxGridDBColumn;
    cxGridDBTableView5user_edit: TcxGridDBColumn;
    cxGridDBTableView5tgl_edit: TcxGridDBColumn;
    cxGridDBTableView5host: TcxGridDBColumn;
    cxGridDBTableView5no_sj_plt: TcxGridDBColumn;
    cxGridDBTableView5susut: TcxGridDBColumn;
    cxGridDBTableView5f_posted: TcxGridDBColumn;
    cxGridDBTableView5nopol: TcxGridDBColumn;
    cxGridDBTableView5driver: TcxGridDBColumn;
    cxGridDBTableView5keterangan_tutup: TcxGridDBColumn;
    cxGridDBTableView5f_tutupmanual: TcxGridDBColumn;
    cxGridDBTableView5f_wip: TcxGridDBColumn;
    cxGridDBTableView5f_wip_awal: TcxGridDBColumn;
    cxGridDBTableView5f_wip_akhir: TcxGridDBColumn;
    cxGridDBTableView5id: TcxGridDBColumn;
    cxGridDBTableView5no_bukti_1: TcxGridDBColumn;
    cxGridDBTableView5kode_brg: TcxGridDBColumn;
    cxGridDBTableView5qty: TcxGridDBColumn;
    cxGridDBTableView5qty_lama: TcxGridDBColumn;
    cxGridDBTableView5satuan: TcxGridDBColumn;
    cxGridDBTableView5f_completed_1: TcxGridDBColumn;
    cxGridDBTableView5notes_1: TcxGridDBColumn;
    cxGridDBTableView5ket_harga: TcxGridDBColumn;
    cxGridDBTableView5jml_revisi: TcxGridDBColumn;
    cxGridDBTableView5user_edit_1: TcxGridDBColumn;
    cxGridDBTableView5tgl_jam_edit: TcxGridDBColumn;
    cxGridDBTableView5jenis_edit: TcxGridDBColumn;
    cxGridDBTableView5harga: TcxGridDBColumn;
    cxGridDBTableView5lokasi: TcxGridDBColumn;
    cxGridDBTableView5kondisi: TcxGridDBColumn;
    cxGridDBTableView5plt_completed: TcxGridDBColumn;
    cxGridDBTableView5kode_brg_input: TcxGridDBColumn;
    cxGridDBTableView5qty_non_kg: TcxGridDBColumn;
    cxGridDBTableView5qty_brg_hsl: TcxGridDBColumn;
    cxGridDBTableView5deskripsi: TcxGridDBColumn;
    cxGridDBTableView5nama: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnExcelBrgClick(Sender: TObject);
    procedure btnExcelCustClick(Sender: TObject);
    procedure btnExcelSuppClick(Sender: TObject);
    procedure btnExcelMesinClick(Sender: TObject);
    procedure btnExcelUnitSetClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnExcelSPKClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLapExcel: TfrmLapExcel;

implementation

uses unAplikasi, unTools, unDm;

{$R *.dfm}

procedure TfrmLapExcel.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  Screen.Cursor := crSQLWait;
  pg.ActivePageIndex := 0;
  zqrBrg.Open;
  zqrCust.Open;
  zqrSupp.Open;
  zqrMesin.Open;
  zqrUnitSet.Open;
  Screen.Cursor := crDefault;
end;

procedure TfrmLapExcel.btnExcelBrgClick(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmpBrg.xls', cxGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpBrg.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmLapExcel.btnExcelCustClick(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmpCust.xls', cxGrid2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpCust.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmLapExcel.btnExcelSuppClick(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmpSupp.xls', cxGrid3);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpSupp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;

end;

procedure TfrmLapExcel.btnExcelMesinClick(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmpMesin.xls', cxGrid4);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpMesin.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmLapExcel.btnExcelUnitSetClick(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmpUnitSet.xls', cxGrid6);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpUnitSet.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmLapExcel.btnProsesClick(Sender: TObject);
begin
  inherited;
  zqrSPK.Close;
  zqrSPK.ParamByName('tgl1').AsDateTime := cxdTglSPK1.Date;
  zqrSPK.ParamByName('tgl2').AsDateTime := cxdTglSPK2.Date;
  zqrSPK.Open;
end;

procedure TfrmLapExcel.btnExcelSPKClick(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmpSPK.xls', cxGrid5);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpSPK.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmLapExcel.Button3Click(Sender: TObject);
begin
  inherited;
  zqrSO.Close;
  zqrSO.ParamByName('tgl1').AsDateTime := cxdTglSO1.Date;
  zqrSO.ParamByName('tgl2').AsDateTime := cxdTglSO2.Date;
  zqrSO.Open;
end;

procedure TfrmLapExcel.Button2Click(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmpSO.xls', cxGrid7);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpSO.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
