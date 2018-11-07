unit unFrmIS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel,
  frxDesgnCtrls, cxSpinEdit, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, ZAbstractRODataset, ZDataset, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdText,
  IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL;

type
  TfrmIS = class(TfrmTplTrans)
    frxScrollBox1: TfrxScrollBox;
    cxLabel1: TcxLabel;
    cxtNoIS: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxdIssueDate: TcxDateEdit;
    cxLabel3: TcxLabel;
    Panel1: TPanel;
    cxlCustomer: TcxLookupComboBox;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    cxlCari: TcxLookupComboBox;
    btnEdit2: TButton;
    zqrCari: TZReadOnlyQuery;
    dsCari: TDataSource;
    zqrSales: TZReadOnlyQuery;
    dsSales: TDataSource;
    idSMTP: TIdSMTP;
    btnTambahPic: TButton;
    cxLabel4: TcxLabel;
    cxtDescOfBag: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtFuncOfBags: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxtDestination: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxtTobGroup: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxtTobSubGroup: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxsThicknessOL: TcxSpinEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxsThicknessMiddle: TcxSpinEdit;
    cxLabel18: TcxLabel;
    cxsThicknessInner: TcxSpinEdit;
    cxsThicknessTotal: TcxSpinEdit;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxsOpenWidth: TcxSpinEdit;
    lblJmlImage: TcxLabel;
    cxLabel21: TcxLabel;
    cxsTotalHeight: TcxSpinEdit;
    cxLabel22: TcxLabel;
    cxsFaceWidth: TcxSpinEdit;
    cxLabel23: TcxLabel;
    cxsFaceHeight: TcxSpinEdit;
    cxLabel24: TcxLabel;
    cxsSideGusset: TcxSpinEdit;
    cxLabel25: TcxLabel;
    cxsBottomGusset: TcxSpinEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxsTopFold: TcxSpinEdit;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxtSide1Colour1: TcxTextEdit;
    cxtSide2Colour1: TcxTextEdit;
    cxLabel35: TcxLabel;
    cxtSide1Colour2: TcxTextEdit;
    cxLabel36: TcxLabel;
    cxtSide2Colour2: TcxTextEdit;
    cxLabel37: TcxLabel;
    cxtSide1Colour3: TcxTextEdit;
    cxLabel38: TcxLabel;
    cxtSide2Colour3: TcxTextEdit;
    cxLabel39: TcxLabel;
    cxtSide1Colour4: TcxTextEdit;
    cxLabel40: TcxLabel;
    cxtSide2Colour4: TcxTextEdit;
    cxLabel41: TcxLabel;
    cxtSide1Colour5: TcxTextEdit;
    cxLabel42: TcxLabel;
    cxtSide2Colour5: TcxTextEdit;
    cxLabel43: TcxLabel;
    cxtSide1Colour6: TcxTextEdit;
    cxLabel44: TcxLabel;
    cxtSide2Colour6: TcxTextEdit;
    cxLabel45: TcxLabel;
    cxtSide1Colour7: TcxTextEdit;
    cxLabel46: TcxLabel;
    cxtSide2Colour7: TcxTextEdit;
    cxLabel47: TcxLabel;
    cxtSide1Colour8: TcxTextEdit;
    cxLabel48: TcxLabel;
    cxtSide2Colour8: TcxTextEdit;
    cxLabel49: TcxLabel;
    cxtCutOut: TcxTextEdit;
    cxLabel50: TcxLabel;
    cxsCoWidth: TcxSpinEdit;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxsCoHeight: TcxSpinEdit;
    cxLabel53: TcxLabel;
    cxsAHSize: TcxSpinEdit;
    cxLabel54: TcxLabel;
    cxsAHPercentCut: TcxSpinEdit;
    cxLabel55: TcxLabel;
    cxsAHRow: TcxSpinEdit;
    cxLabel56: TcxLabel;
    cxsAHColumn: TcxSpinEdit;
    cxLabel57: TcxLabel;
    cxmAHNotes: TcxMemo;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    cxsHThickness: TcxSpinEdit;
    cxLabel60: TcxLabel;
    cxsHWidth: TcxSpinEdit;
    cxLabel61: TcxLabel;
    cxsHLengthWidth: TcxSpinEdit;
    cxLabel62: TcxLabel;
    cxLabel63: TcxLabel;
    cxsHColours: TcxSpinEdit;
    cxsHSides: TcxSpinEdit;
    cxLabel64: TcxLabel;
    cxLabel65: TcxLabel;
    cxsPackQty1: TcxSpinEdit;
    cxsPackQty2: TcxSpinEdit;
    cxsPackQty3: TcxSpinEdit;
    cxsPackQty4: TcxSpinEdit;
    cxsPackQty5: TcxSpinEdit;
    cxLabel66: TcxLabel;
    cxLabel67: TcxLabel;
    cxCmbPackUnit1: TcxComboBox;
    cxCmbPackUnit2: TcxComboBox;
    cxCmbPackUnit3: TcxComboBox;
    cxCmbPackUnit4: TcxComboBox;
    cxCmbPackunit5: TcxComboBox;
    cxLabel68: TcxLabel;
    cxCmbFolding1: TcxComboBox;
    cxCmbFolding2: TcxComboBox;
    cxLabel69: TcxLabel;
    cxCmbPackAcc: TcxComboBox;
    cxsPackAccCore: TcxSpinEdit;
    cxLabel70: TcxLabel;
    cxsPackAccInner: TcxSpinEdit;
    cxLabel71: TcxLabel;
    cxsPackAccThickness: TcxSpinEdit;
    cxLabel72: TcxLabel;
    cxLabel73: TcxLabel;
    cxsPackAccLength: TcxSpinEdit;
    cxLabel74: TcxLabel;
    cxmPackAccNotes: TcxMemo;
    cxLabel75: TcxLabel;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    cxsGsmIO: TcxSpinEdit;
    cxsGsmLabelPB: TcxSpinEdit;
    cxsGSMOuter: TcxSpinEdit;
    cxsGSMDispenser: TcxSpinEdit;
    cxsWidthIO: TcxSpinEdit;
    cxsWidthLabelPB: TcxSpinEdit;
    cxsWidthOuter: TcxSpinEdit;
    cxsWidthDispenser: TcxSpinEdit;
    cxsLengthIO: TcxSpinEdit;
    cxsLengthLabelPB: TcxSpinEdit;
    cxsLengthOuter: TcxSpinEdit;
    cxsLengthDispenser: TcxSpinEdit;
    cxsPDColoursIO: TcxSpinEdit;
    cxsPDColoursLabelPB: TcxSpinEdit;
    cxsPDColoursOuter: TcxSpinEdit;
    cxsPDColoursDispenser: TcxSpinEdit;
    cxsPDSidesIO: TcxSpinEdit;
    cxsPDSidesLabelPB: TcxSpinEdit;
    cxsPDSidesOuter: TcxSpinEdit;
    cxsPDSidesDispenser: TcxSpinEdit;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    cxLabel81: TcxLabel;
    cxLabel82: TcxLabel;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxsFPMaterialInnerSize: TcxSpinEdit;
    cxsFPMaterialOuterSize: TcxSpinEdit;
    cxLabel90: TcxLabel;
    cxLabel91: TcxLabel;
    cxsFPWidthInnerSize: TcxSpinEdit;
    cxsFPWidthOuterSize: TcxSpinEdit;
    cxLabel92: TcxLabel;
    cxsFPLengthInnerSize: TcxSpinEdit;
    cxsFPLengthOuterSize: TcxSpinEdit;
    cxLabel93: TcxLabel;
    cxsFPHeightInnerSize: TcxSpinEdit;
    cxsFPHeightOuterSize: TcxSpinEdit;
    cxLabel94: TcxLabel;
    cxsFPGsm: TcxSpinEdit;
    cxLabel95: TcxLabel;
    cxLabel96: TcxLabel;
    cxsFPLengthColours: TcxSpinEdit;
    cxLabel97: TcxLabel;
    cxsFPHeightSides: TcxSpinEdit;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxsPalletWidth: TcxSpinEdit;
    cxLabel100: TcxLabel;
    cxsPalletEntry: TcxSpinEdit;
    cxsPalletLength: TcxSpinEdit;
    cxLabel101: TcxLabel;
    cxLabel102: TcxLabel;
    cxsPalletRequirement: TcxSpinEdit;
    cxLabel103: TcxLabel;
    cxsPalletHeight: TcxSpinEdit;
    cxLabel104: TcxLabel;
    cxmCompilingPackaging: TcxMemo;
    cxdExpectShipDate: TcxDateEdit;
    cxtBagColour: TcxTextEdit;
    cxtPrintType: TcxTextEdit;
    cxtImageType: TcxTextEdit;
    cxLabel105: TcxLabel;
    cxtHPrint: TcxTextEdit;
    cxLabel106: TcxLabel;
    cxLabel107: TcxLabel;
    cxLabel108: TcxLabel;
    cxLabel109: TcxLabel;
    cxLabel110: TcxLabel;
    cxLabel111: TcxLabel;
    cxLabel112: TcxLabel;
    cxLabel113: TcxLabel;
    cxLabel114: TcxLabel;
    cxLabel115: TcxLabel;
    cxLabel116: TcxLabel;
    cxtMechanicalProperties: TcxTextEdit;
    cxLabel117: TcxLabel;
    cxtVisualProp: TcxTextEdit;
    cxLabel118: TcxLabel;
    cxLabel119: TcxLabel;
    cxtCertification: TcxTextEdit;
    cxLabel120: TcxLabel;
    cxmOthers: TcxMemo;
    Sample: TcxLabel;
    cxCmbSample: TcxComboBox;
    zqrBM: TZReadOnlyQuery;
    dsBM: TDataSource;
    cxlBaseMaterial: TcxLookupComboBox;
    cxlBaseMaterialHandle: TcxLookupComboBox;
    cxlGroup: TcxLookupComboBox;
    zqrGroup: TZReadOnlyQuery;
    dsGroup: TDataSource;
    cxLabel121: TcxLabel;
    cxlUnitKTG: TcxLookupComboBox;
    zqrUnitKTG: TZReadOnlyQuery;
    dsUnitKTG: TDataSource;
    btnLihatImage: TButton;
    cxtMaterialIO: TcxTextEdit;
    cxtMaterialLblPB: TcxTextEdit;
    cxtMaterialOuter: TcxTextEdit;
    cxtMaterialDispenser: TcxTextEdit;
    cxtColoursIO: TcxTextEdit;
    cxtColoursLblPB: TcxTextEdit;
    cxtColoursOuter: TcxTextEdit;
    cxtColourDispenser: TcxTextEdit;
    procedure btnSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure btnTambahPicClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxsThicknessOLPropertiesChange(Sender: TObject);
    procedure btnLihatImageClick(Sender: TObject);
    procedure frxScrollBox1MouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure frxScrollBox1MouseWheelUp(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
  private
    lstImage: TStringList;
    //mJenis: string;
    mNoIS: string;

    procedure ClearAll;
    procedure SendEmail(jml_rev: Integer);
  public
    //property Jenis: string read mJenis write mJenis;
    property NoIS: string read mNoIS write mNoIS;
  end;

var
  frmIS: TfrmIS;

implementation

uses unAplikasi, unDm, unTools, unFrmUploadImageRK, unFrmImageViewerRK;

{$R *.dfm}

procedure TfrmIS.btnSimpanClick(Sender: TObject);
var
  q, qi: TZQuery;
  img: TImage;
  i, jml_rev: Integer;
  sNoIS: string;
begin
  inherited;
  if Trim(cxtNoIS.Text) = '' then begin
    MsgBox('Mohon mengisi Nomer Inquiry Sheet.');
    cxtNoIS.SetFocus;
  end
  else if cxlUnitKTG.Text = '' then begin
    MsgBox('Mohon pilih Unit Usaha.');
    cxlUnitKTG.SetFocus;
  end
  else if cxdIssueDate.Text = '' then begin
    MsgBox('Mohon mengisi Tanggal Issue.');
    cxdIssueDate.SetFocus;
  end
  else if cxlCustomer.Text = '' then begin
    MsgBox('Mohon pilih Customer.');
    cxlCustomer.SetFocus;
  end
  else if cxlBaseMaterial.Text = '' then begin
    MsgBox('Mohon isi Base Material.');
    cxlBaseMaterial.SetFocus;
  end
  else if cxlGroup.Text = '' then begin
    MsgBox('Mohon isi Group.');
    cxlGroup.SetFocus;
  end
  else begin
    try
      dm.zConn.StartTransaction;

      // cek nomer IS apakah sudah ada
      {
      if Self.Jenis = 'edit' then begin
        q := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',[Trim(cxtNoIS.Text)]);
        if not q.IsEmpty then begin
          MsgBox('Nomer Inquiry Sheet ini sudah ada.');
          cxtNoIS.SelectAll;
          cxtNoIS.SetFocus;
          q.Close;
          Abort;
        end;
      end;
      }

      if Self.Jenis = 'edit' then begin
        sNoIS := cxtNoIS.Text;
      end
      else begin
        sNoIS := GetLastFak('inquiry-sheet');
        UpdateFaktur(Copy(sNoIS,1,7));
      end;

      jml_rev := 0;
      
      if Self.jenis = 'edit' then begin
        // ambil jml revisi
        q := OpenRS('SELECT jml_rev FROM tbl_is2 WHERE no_is = ''%s''',[sNoIS]);
        jml_rev := q.FieldByName('jml_rev').AsInteger + 1;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_is2 WHERE no_is = ''' + Trim(cxtNoIS.Text) + '''');
      end;

      q := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',[cxtNoIS.text]);

      with q do begin
        Insert;
        FieldByName('no_is').AsString := Trim(cxtNoIS.Text);
        FieldByName('issue_date').AsDateTime := Aplikasi.NowServer;
        FieldByName('kode_customer').AsString := cxlCustomer.EditValue;
        FieldByName('desc_of_bags').AsString := Trim(cxtDescOfBag.Text);
        FieldByName('func_of_bags').AsString := Trim(cxtFuncOfBags.Text);

        if cxdExpectShipDate.Text <> '' then
          FieldByName('expect_ship_date').AsDateTime := cxdExpectShipDate.Date;

        FieldByName('destination').AsString := Trim(cxtDestination.Text);
        FieldByName('tob_group').AsString := cxlGroup.EditValue;
        FieldByName('tob_subgroup').AsString := Trim(cxtTobSubGroup.Text);
        FieldByName('bm_bag').AsString := cxlBaseMaterial.EditValue;
        FieldByName('bm_handle_tape').Value := cxlBaseMaterialHandle.EditValue;
        FieldByName('thickness_ol').AsFloat := cxsThicknessOL.Value;
        FieldByName('thickness_middle').AsFloat := cxsThicknessMiddle.Value;
        FieldByName('thickness_inner').AsFloat := cxsThicknessInner.Value;
        FieldByName('thickness_total').AsFloat := cxsThicknessTotal.Value;
        FieldByName('open_width').AsFloat := cxsOpenWidth.Value;
        FieldByName('total_height').AsFloat := cxsTotalHeight.Value;
        FieldByName('face_width').AsFloat := cxsFaceWidth.Value;
        FieldByName('face_height').AsFloat := cxsFaceHeight.Value;
        FieldByName('side_gusset').AsFloat := cxsSideGusset.Value;
        FieldByName('bottom_gusset').AsFloat := cxsBottomGusset.Value;
        FieldByName('bag_colour').AsString := Trim(cxtBagColour.Text);
        FieldByName('top_fold').AsFloat := cxsTopFold.Value;
        FieldByName('print_type').AsString := Trim(cxtPrintType.Text);
        FieldByName('image_type').AsString := Trim(cxtImageType.Text);
        FieldByName('side1_colour1').AsString := Trim(cxtSide1Colour1.Text);
        FieldByName('side1_colour2').AsString := Trim(cxtSide1Colour2.Text);
        FieldByName('side1_colour3').AsString := Trim(cxtSide1Colour3.Text);
        FieldByName('side1_colour4').AsString := Trim(cxtSide1Colour4.Text);
        FieldByName('side1_colour5').AsString := Trim(cxtSide1Colour5.Text);
        FieldByName('side1_colour6').AsString := Trim(cxtSide1Colour6.Text);
        FieldByName('side1_colour7').AsString := Trim(cxtSide1Colour7.Text);
        FieldByName('side1_colour8').AsString := Trim(cxtSide1Colour8.Text);

        FieldByName('side2_colour1').AsString := Trim(cxtSide2Colour1.Text);
        FieldByName('side2_colour2').AsString := Trim(cxtSide2Colour2.Text);
        FieldByName('side2_colour3').AsString := Trim(cxtSide2Colour3.Text);
        FieldByName('side2_colour4').AsString := Trim(cxtSide2Colour4.Text);
        FieldByName('side2_colour5').AsString := Trim(cxtSide2Colour5.Text);
        FieldByName('side2_colour6').AsString := Trim(cxtSide2Colour6.Text);
        FieldByName('side2_colour7').AsString := Trim(cxtSide2Colour7.Text);
        FieldByName('side2_colour8').AsString := Trim(cxtSide2Colour8.Text);

        FieldByName('cut_out').AsString := Trim(cxtCutOut.Text);
        FieldByName('cut_out_width').AsFloat := cxsCoWidth.Value;
        FieldByName('cut_out_height').AsFloat := cxsCoHeight.Value;

        FieldByName('air_hole_size').AsFloat := cxsAHSize.Value;
        FieldByName('air_hole_percent_cut').AsFloat := cxsAHPercentCut.Value;
        FieldByName('air_hole_row').AsFloat := cxsAHRow.Value;
        FieldByName('air_hole_column').AsFloat := cxsAHColumn.Value;
        FieldByName('air_hole_notes').AsString := Trim(cxmAHNotes.Text);

        FieldByName('ht_thickness').AsFloat := cxsHThickness.Value;
        FieldByName('ht_width').AsFloat := cxsHWidth.Value;
        FieldByName('ht_length_width').AsFloat := cxsHLengthWidth.Value;
        FieldByName('ht_colour').AsFloat := cxsHColours.Value;
        FieldByName('ht_print').AsString := Trim(cxtHPrint.Text);
        FieldByName('ht_sides').AsFloat := cxsHSides.Value;

        FieldByName('pack_unit1_qty').AsFloat := cxsPackQty1.Value;
        FieldByName('pack_unit2_qty').AsFloat := cxsPackQty2.Value;
        FieldByName('pack_unit3_qty').AsFloat := cxsPackQty3.Value;
        FieldByName('pack_unit4_qty').AsFloat := cxsPackQty4.Value;
        FieldByName('pack_unit5_qty').AsFloat := cxsPackQty5.Value;
        FieldByName('pack_unit1_unit').AsString := cxCmbPackUnit1.Text;
        FieldByName('pack_unit2_unit').AsString := cxCmbPackUnit2.Text;
        FieldByName('pack_unit3_unit').AsString := cxCmbPackUnit3.Text;
        FieldByName('pack_unit4_unit').AsString := cxCmbPackUnit4.Text;
        FieldByName('pack_unit5_unit').AsString := cxCmbPackUnit5.Text;

        FieldByName('folding1').AsString := cxCmbFolding1.Text;
        FieldByName('folding2').AsString := cxCmbFolding2.Text;

        FieldByName('pack_acc').AsString := cxCmbPackAcc.Text;
        FieldByName('pack_acc_core').AsFloat := cxsPackAccCore.Value;
        FieldByName('pack_acc_inner').AsFloat := cxsPackAccInner.Value;
        FieldByName('pack_acc_thickness').AsFloat := cxsPackAccThickness.Value;
        FieldByName('pack_acc_length').AsFloat := cxsPackAccLength.Value;
        FieldByName('pack_acc_other').AsString := Trim(cxmPackAccNotes.Text);

        FieldByName('material_inout').Value := cxtMaterialIO.Text;
        FieldByName('material_label_pb').Value := cxtMaterialLblPB.Text;
        FieldByName('material_outer').Value := cxtMaterialOuter.Text;
        FieldByName('material_dispenser').Value := cxtMaterialDispenser.Text;

        FieldByName('colours_inout').Value := cxtColoursIO.Text;
        FieldByName('colours_label_pb').Value := cxtColoursLblPB.Text;
        FieldByName('colours_outer').Value := cxtColoursOuter.Text;
        FieldByName('colours_dispenser').Value := cxtColourDispenser.Text;

        FieldByName('u_per_gsm_inout').AsFloat := cxsGsmIO.Value;
        FieldByName('u_per_gsm_label_pb').AsFloat := cxsGsmLabelPB.Value;
        FieldByName('u_per_gsm_outer').AsFloat := cxsGSMOuter.Value;
        FieldByName('u_per_gsm_dispenser').AsFloat := cxsGSMDispenser.Value;

        FieldByName('width_inout').AsFloat := cxsWidthIO.Value;
        FieldByName('width_label_pb').AsFloat := cxsWidthLabelPB.Value;
        FieldByName('width_outer').AsFloat := cxsWidthOuter.Value;
        FieldByName('width_dispenser').AsFloat := cxsWidthDispenser.Value;

        FieldByName('length_inout').AsFloat := cxsLengthIO.Value;
        FieldByName('length_label_pb').AsFloat := cxsLengthLabelPB.Value;
        FieldByName('length_outer').AsFloat := cxsLengthOuter.Value;
        FieldByName('length_dispenser').AsFloat := cxsLengthDispenser.Value;

        FieldByName('printdet_colours_inout').AsFloat := cxsPDColoursIO.Value;
        FieldByName('printdet_colours_label_pb').AsFloat := cxsPDColoursLabelPB.Value;
        FieldByName('printdet_colours_outer').AsFloat := cxsPDColoursOuter.Value;
        FieldByName('printdet_colours_dispenser').AsFloat := cxsPDColoursDispenser.Value;

        FieldByName('printdet_sides_inout').AsFloat := cxsPDSidesIO.Value;
        FieldByName('printdet_sides_label_pb').AsFloat := cxsPDSidesLabelPB.Value;
        FieldByName('printdet_sides_outer').AsFloat := cxsPDSidesOuter.Value;
        FieldByName('printdet_sides_dispenser').AsFloat := cxsPDSidesDispenser.Value;

        FieldByName('fp_material_inner').AsFloat := cxsFPMaterialInnerSize.Value;
        FieldByName('fp_material_outer').AsFloat := cxsFPMaterialOuterSize.Value;
        FieldByName('fp_width_inner').AsFloat := cxsFPWidthInnerSize.Value;
        FieldByName('fp_width_outer').AsFloat := cxsFPWidthOuterSize.Value;
        FieldByName('fp_length_inner').AsFloat := cxsFPLengthInnerSize.Value;
        FieldByName('fp_length_outer').AsFloat := cxsFPLengthOuterSize.Value;
        FieldByName('fp_height_inner').AsFloat := cxsFPHeightInnerSize.Value;
        FieldByName('fp_height_outer').AsFloat := cxsFPHeightOuterSize.Value;
        FieldByName('fp_gsm').AsFloat := cxsFPGsm.Value;
        FieldByName('fp_colours').AsFloat := cxsFPLengthColours.Value;
        FieldByName('fp_sides').AsFloat := cxsFPHeightSides.Value;

        FieldByName('pallet_width').AsFloat := cxsPalletWidth.Value;
        FieldByName('pallet_length').AsFloat := cxsPalletLength.Value;
        FieldByName('pallet_height').AsFloat := cxsPalletHeight.Value;
        FieldByName('pallet_entry').AsFloat := cxsPalletEntry.Value;
        FieldByName('pallet_requirement').AsFloat := cxsPalletRequirement.Value;
        FieldByName('compiling_packaging').AsString := cxmCompilingPackaging.Lines.Text;

        FieldByName('tp_mechanical_prop').AsString := cxtMechanicalProperties.Text;
        FieldByName('tp_visual_prop').AsString := cxtVisualProp.Text;
        FieldByName('tp_certification').AsString := cxtCertification.Text;
        FieldByName('others').AsString := cxmOthers.Lines.Text;
        FieldByName('sample').AsString := cxCmbSample.Text;

        FieldByName('user').AsString := Aplikasi.NamaUser;
        FieldByName('user_dept').AsString := Aplikasi.UserDept;

        FieldByName('jml_rev').AsInteger := jml_rev;
        FieldByName('unit_ktg').AsString := cxlUnitKTG.Text;


        
        Post;
      end;

      // simpan image jika ada
      if lstImage.Count > 0 then begin

        img := TImage.Create(Self);
        qi := OpenRS('SElECT * FROM tbl_is_image WHERE no_is = ''%s''',[Trim(cxtNoIS.Text)]);

        for i := 0 to lstImage.Count - 1 do begin
          qi.Insert;
          qi.FieldByName('no_is').AsString := Trim(cxtNoIS.Text);
          TBlobField(qi.FieldByName('image')).LoadFromFile(lstImage.Strings[i]);
          qi.Post;
        end;
        qi.Close;
      end;

      dm.zConn.Commit;

      MsgBox('Inquery Sheet Nomor : ' + cxtNoIS.Text + ' sudah berhasil disimpan.');

      SendEmail(jml_rev);
      ClearAll;

      zqrCari.Close;
      zqrCari.Open;

    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;
end;

procedure TfrmIS.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  zqrCust.Open;
  zqrCari.Open;
  zqrGroup.Open;
  zqrUnitKTG.Open;

  {
  with cxCmbReqTambahan.Properties do begin
    Items.Add('Product Mock-up');
    Items.Add('Packaging Mock-up');
    Items.Add('Plastic Sample');
    Items.Add('Finish Product Sample');
  end;
  cxCmbReqTambahan.ItemIndex := 0;
  }

  lstImage := TStringList.Create;
  cxtNoIS.Text := GetLastFak('inquiry-sheet');

  cxCmbFolding1.Properties.Items.CommaText := 'Flat,Roll';

  cxCmbFolding2.Properties.Items.CommaText :=
    '"Bulk Folded","Individual Fold","Fan Fold","Perforated On Roll","Interleave On Roll",Roll';

  cxCmbPackAcc.Properties.Items.CommaText :=
    'Paper,PVC,Steel';

  cxCmbSample.Properties.Items.CommaText :=
    '"No Sample","Pre Production Sample","Sample From Mass Production"';

  cxdIssueDate.Date := Aplikasi.TanggalServer;

  zqrBM.Open;

  q := OpenRS('SELECT * FROM tbl_unit ORDER BY unitid');
  while not q.Eof do begin
    cxCmbPackUnit1.Properties.Items.Add(q.FieldByName('unitid').AsString);
    cxCmbPackUnit2.Properties.Items.Add(q.FieldByName('unitid').AsString);
    cxCmbPackUnit3.Properties.Items.Add(q.FieldByName('unitid').AsString);
    cxCmbPackUnit4.Properties.Items.Add(q.FieldByName('unitid').AsString);
    cxCmbPackUnit5.Properties.Items.Add(q.FieldByName('unitid').AsString);
    q.Next;
  end;
  q.Close;

  frxScrollBox1.VertScrollBar.Position := 0;
end;

procedure TfrmIS.btnEdit2Click(Sender: TObject);
var
  q, qimg: TZQuery;
begin
  inherited;

  if Trim(cxlCari.Text) = '' then Abort;

  q := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',[cxlCari.EditValue]);

  if not q.IsEmpty then begin
    Self.Jenis := 'edit';
    with q do begin
      cxtNoIS.Text := FieldByName('no_is').AsString;
      cxtNoIS.Properties.ReadOnly := true;

      cxdIssueDate.Date := FieldByName('issue_date').AsDateTime;

      cxlCustomer.EditValue := FieldByName('kode_customer').AsString;
      cxtDescOfBag.Text := FieldByName('desc_of_bags').AsString;
      cxtFuncOfBags.Text := FieldByName('func_of_bags').AsString;
      cxdExpectShipDate.Date := FieldByName('expect_ship_date').AsDateTime;
      cxtDestination.Text := FieldByName('destination').AsString;
      cxlGroup.EditValue := FieldByName('tob_group').AsString;
      cxtTobGroup.Text := FieldByName('tob_group').AsString;
      cxtTobSubGroup.Text := FieldByName('tob_subgroup').AsString;
      //cxtBMBag.Text := FieldByName('bm_bag').AsString;
      //cxtBMHandleTape.Text := FieldByName('bm_handle_tape').AsString;
      cxlBaseMaterial.EditValue := FieldByName('bm_bag').AsString;
      cxlBaseMaterialHandle.EditValue := FieldByname('bm_handle_tape').AsString;
      cxsThicknessOL.Value := FieldByName('thickness_ol').AsFloat;
      cxsThicknessMiddle.Value := FieldByName('thickness_middle').AsFloat;
      cxsThicknessInner.Value := FieldByName('thickness_inner').AsFloat;
      cxsThicknessTotal.Value := FieldByName('thickness_total').AsFloat;
      cxsOpenWidth.Value := FieldByName('open_width').AsFloat;
      cxsTotalHeight.Value := FieldByName('total_height').AsFloat;
      cxsFaceWidth.Value := FieldByName('face_width').AsFloat;
      cxsFaceHeight.Value := FieldByName('face_height').AsFloat;
      cxsSideGusset.Value := FieldByName('side_gusset').AsFloat;
      cxsBottomGusset.Value := FieldByName('bottom_gusset').AsFloat;
      cxtBagColour.Text := FieldByName('bag_colour').AsString;
      cxsTopFold.Value := FieldByName('top_fold').AsFloat;
      cxtPrintType.Text := FieldByName('print_type').AsString;
      cxtImageType.Text := FieldByName('image_type').AsString;

      cxtSide1Colour1.Text := FieldByName('side1_colour1').AsString;
      cxtSide1Colour2.Text := FieldByName('side1_colour2').AsString;
      cxtSide1Colour3.Text := FieldByName('side1_colour3').AsString;
      cxtSide1Colour4.Text := FieldByName('side1_colour4').AsString;
      cxtSide1Colour5.Text := FieldByName('side1_colour5').AsString;
      cxtSide1Colour6.Text := FieldByName('side1_colour6').AsString;
      cxtSide1Colour7.Text := FieldByName('side1_colour7').AsString;
      cxtSide1Colour8.Text := FieldByName('side1_colour8').AsString;

      cxtSide2Colour1.Text := FieldByName('side2_colour1').AsString;
      cxtSide2Colour2.Text := FieldByName('side2_colour2').AsString;
      cxtSide2Colour3.Text := FieldByName('side2_colour3').AsString;
      cxtSide2Colour4.Text := FieldByName('side2_colour4').AsString;
      cxtSide2Colour5.Text := FieldByName('side2_colour5').AsString;
      cxtSide2Colour6.Text := FieldByName('side2_colour6').AsString;
      cxtSide2Colour7.Text := FieldByName('side2_colour7').AsString;
      cxtSide2Colour8.Text := FieldByName('side2_colour8').AsString;

      cxtCutOut.Text    := FieldByName('cut_out').AsString;
      cxsCoWidth.Value  := FieldByName('cut_out_width').AsFloat;
      cxsCoHeight.Value := FieldByName('cut_out_height').AsFloat;

      cxsAHSize.Value       := FieldByName('air_hole_size').AsFloat;
      cxsAHPercentCut.Value := FieldByName('air_hole_percent_cut').AsFloat;
      cxsAHRow.Value        := FieldByName('air_hole_row').AsFloat;
      cxsAHColumn.Value     := FieldByName('air_hole_column').AsFloat;
      cxmAHNotes.Text       := FieldByName('air_hole_notes').AsString;

      cxsHThickness.Value    := FieldByName('ht_thickness').AsFloat;
      cxsHWidth.Value        := FieldByName('ht_width').AsFloat;
      cxsHLengthWidth.Value  := FieldByName('ht_length_width').AsFloat;
      cxsHColours.Value      := FieldByName('ht_colour').AsFloat;
      cxtHPrint.Text         := FieldByName('ht_print').AsString;
      cxsHSides.Value        := FieldByName('ht_sides').AsFloat;

      cxsPackQty1.Value    := FieldByName('pack_unit1_qty').AsFloat;
      cxsPackQty2.Value    := FieldByName('pack_unit2_qty').AsFloat;
      cxsPackQty3.Value    := FieldByName('pack_unit3_qty').AsFloat;
      cxsPackQty4.Value    := FieldByName('pack_unit4_qty').AsFloat;
      cxsPackQty5.Value    := FieldByName('pack_unit5_qty').AsFloat;
      cxCmbPackUnit1.Text  := FieldByName('pack_unit1_unit').AsString;
      cxCmbPackUnit2.Text  := FieldByName('pack_unit2_unit').AsString;
      cxCmbPackUnit3.Text  := FieldByName('pack_unit3_unit').AsString;
      cxCmbPackUnit4.Text  := FieldByName('pack_unit4_unit').AsString;
      cxCmbPackUnit5.Text  := FieldByName('pack_unit5_unit').AsString;

      cxCmbFolding1.Text         := FieldByName('folding1').AsString;
      cxCmbFolding2.Text         := FieldByName('folding2').AsString;

      cxCmbPackAcc.Text          := FieldByName('pack_acc').AsString;
      cxsPackAccCore.Value       := FieldByName('pack_acc_core').AsFloat;
      cxsPackAccInner.Value      := FieldByName('pack_acc_inner').AsFloat;
      cxsPackAccThickness.Value  := FieldByName('pack_acc_thickness').AsFloat;
      cxsPackAccLength.Value     := FieldByName('pack_acc_length').AsFloat;
      cxmPackAccNotes.Text       := FieldByName('pack_acc_other').AsString;

      cxtMaterialIO.Text        := FieldByName('material_inout').AsString;
      cxtMaterialLblPB.Text     := FieldByName('material_label_pb').AsString;
      cxtMaterialOuter.Text     := FieldByName('material_outer').AsString;
      cxtMaterialDispenser.Text := FieldByName('material_dispenser').AsString;

      cxtColoursIO.Text        :=  FieldByName('colours_inout').AsString;
      cxtColoursLblPB.Text     :=  FieldByName('colours_label_pb').AsString;
      cxtColoursOuter.Text     :=  FieldByName('colours_outer').AsString;
      cxtColourDispenser.Text  :=  FieldByName('colours_dispenser').AsString;

      cxsGsmIO.Value            :=  FieldByName('u_per_gsm_inout').AsFloat;
      cxsGsmLabelPB.Value       :=  FieldByName('u_per_gsm_label_pb').AsFloat;
      cxsGSMOuter.Value         :=  FieldByName('u_per_gsm_outer').AsFloat;
      cxsGSMDispenser.Value     :=  FieldByName('u_per_gsm_dispenser').AsFloat;

      cxsWidthIO.Value           :=  FieldByName('width_inout').AsFloat;
      cxsWidthLabelPB.Value      :=  FieldByName('width_label_pb').AsFloat;
      cxsWidthOuter.Value        :=  FieldByName('width_outer').AsFloat;
      cxsWidthDispenser.Value    :=  FieldByName('width_dispenser').AsFloat;

      cxsLengthIO.Value          :=  FieldByName('length_inout').AsFloat;
      cxsLengthLabelPB.Value     :=  FieldByName('length_label_pb').AsFloat;
      cxsLengthOuter.Value       :=  FieldByName('length_outer').AsFloat;
      cxsLengthDispenser.Value   :=  FieldByName('length_dispenser').AsFloat;

      cxsPDColoursIO.Value          := FieldByName('printdet_colours_inout').AsFloat;
      cxsPDColoursLabelPB.Value     := FieldByName('printdet_colours_label_pb').AsFloat;
      cxsPDColoursOuter.Value       := FieldByName('printdet_colours_outer').AsFloat;
      cxsPDColoursDispenser.Value   := FieldByName('printdet_colours_dispenser').AsFloat;

      cxsPDSidesIO.Value        := FieldByName('printdet_sides_inout').AsFloat;
      cxsPDSidesLabelPB.Value   := FieldByName('printdet_sides_label_pb').AsFloat;
      cxsPDSidesOuter.Value     := FieldByName('printdet_sides_outer').AsFloat;
      cxsPDSidesDispenser.Value := FieldByName('printdet_sides_dispenser').AsFloat;

      cxsFPMaterialInnerSize.Value      := FieldByName('fp_material_inner').AsFloat;
      cxsFPMaterialOuterSize.Value      := FieldByName('fp_material_outer').AsFloat;
      cxsFPWidthInnerSize.Value         := FieldByName('fp_width_inner').AsFloat;
      cxsFPWidthOuterSize.Value         := FieldByName('fp_width_outer').AsFloat;
      cxsFPLengthInnerSize.Value        := FieldByName('fp_length_inner').AsFloat;
      cxsFPLengthOuterSize.Value        := FieldByName('fp_length_outer').AsFloat;
      cxsFPHeightInnerSize.Value        := FieldByName('fp_height_inner').AsFloat;
      cxsFPHeightOuterSize.Value        := FieldByName('fp_height_outer').AsFloat;
      cxsFPGsm.Value                    := FieldByName('fp_gsm').AsFloat;
      cxsFPLengthColours.Value          := FieldByName('fp_colours').AsFloat;
      cxsFPHeightSides.Value            := FieldByName('fp_sides').AsFloat;

      cxsPalletWidth.Value              := FieldByName('pallet_width').AsFloat;
      cxsPalletLength.Value             := FieldByName('pallet_length').AsFloat;
      cxsPalletHeight.Value             := FieldByName('pallet_height').AsFloat;
      cxsPalletEntry.Value              := FieldByName('pallet_entry').AsFloat;
      cxsPalletRequirement.Value        := FieldByName('pallet_requirement').AsFloat;
      cxmCompilingPackaging.Lines.Text  := FieldByName('compiling_packaging').AsString;

      cxtMechanicalProperties.Text :=  FieldByName('tp_mechanical_prop').AsString;
      cxtVisualProp.Text           :=  FieldByName('tp_visual_prop').AsString;
      cxtCertification.Text        :=  FieldByName('tp_certification').AsString;
      cxmOthers.Lines.Text         :=  FieldByName('others').AsString;
      cxCmbSample.Text             :=  FieldByName('sample').AsString;

      cxlUnitKTG.EditValue := FieldByName('unit_ktg').AsString;

      qimg := OpenRS('SELECT IFNULL(COUNT(*),0) jml FROM tbl_is_image WHERE no_is = ''%s''',[cxtNoIS.Text]);
      lblJmlImage.Caption := 'Jumlah Image : ' + IntToStr(qimg.FieldByName('jml').AsInteger);
      qimg.Close;
    end;
  end;
  q.Close;
  
end;

procedure TfrmIS.ClearAll;
var
  i: integer;
begin
  for i := 0 to Self.ComponentCount - 1 do begin
    if Components[i].Tag = 11 then begin
      if Components[i].ClassName = 'TcxTextEdit' then
        (Components[i] as TcxTextEdit).Text := ''
      else if Components[i].ClassName = 'TcxDateEdit' then
        (Components[i] as TcxDateEdit).Text := ''
      else if Components[i].ClassName = 'TcxLookupComboBox' then
        (Components[i] as TcxLookupComboBox).Text := ''
      else if Components[i].ClassName = 'TcxSpinEdit' then
        (Components[i] as TcxSpinEdit).Text := ''
      else if Components[i].ClassName = 'TcxMemo' then
        (Components[i] as TcxMemo).Lines.Text := ''
      else if Components[i].ClassName = 'TcxComboBox' then
        (Components[i] as TcxComboBox).Text := '';
    end;
  end;
  Self.Jenis := '';
  lstImage.Clear;
  cxtNoIS.Text := GetLastFak('inquiry-sheet');
  cxdIssueDate.Date := Aplikasi.TanggalServer;
  cxlUnitKTG.Text := '';
end;

procedure TfrmIS.SendEmail(jml_rev: Integer);
var
  email : TIdMessage;
  lstEmail, lst: TStringList;
  bdy: TIdText;
  q: TZQuery;
  idSSLGMail : TIdSSLIOHandlerSocketOpenSSL;
begin

  Screen.Cursor := crHourGlass;

  idSSLGMail                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  idSSLGMail.SSLOptions.Method := sslvTLSv1;
  idSSLGMail.SSLOptions.Mode   := sslmUnassigned;

  idSMTP.AuthType  := satDefault;
  idSMTP.IOHandler := idSSLGMail;
  idSMTP.UseTLS    := utUseImplicitTLS;
  idSMTP.UseTLS    := utUseExplicitTLS;
  idSMTP.Host      := aplikasi.ServerSMTP;
  idSMTP.Port      := Aplikasi.EmailServerPort;
  idSMTP.UserName  := aplikasi.EmailUser;
  idSMTP.Password  := aplikasi.EmailPassword;

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;
    email.From.Name := aplikasi.NamaUser;

    // get email list of dept RND
    lstEmail := TStringList.Create;
    q := OpenRS('SELECT * FROM tbl_user WHERE user_dept = ''RND''');
    while not q.Eof do begin
      lstEmail.Add(q.FieldByName('email').AsString);
      q.Next;
    end;
    q.Close;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := lstEmail.CommaText
    else
      email.Recipients.EMailAddresses := lstEmail.CommaText;

    if jml_rev > 0 then
      email.Subject := 'Approval Inquiry Sheet Nomor : ' + cxtNoIS.Text + ' Revisi : ' + IntToStr(jml_rev)
    else
      email.Subject := 'Approval Inquiry Sheet Nomor : ' + cxtNoIS.Text;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');

    lst.Add('Pengirim : ' + Aplikasi.NamaUser);
    lst.Add('</br>');
    lst.Add('Dept     : ' + Aplikasi.UserDept);
    lst.Add('</br>');

    lst.Add('Ada permintaan Inquiry Sheet yang perlu di Approval, silahkan cek aplikasi KTG');
    lst.Add('</br>');
    lst.Add('Nomor Transaksi : ' + cxtNoIS.Text);
    lst.Add('</br>');
    lst.Add('</br>');
    lst.Add('</body>');
    lst.Add('</html>');

    bdy := TIdText.Create(email.MessageParts, lst);
    bdy.ContentType := 'text/html';

    idSMTP.Connect;
    try
      idSMTP.Send(email);
    finally
      idSMTP.Disconnect;
    end;
  finally
    Screen.Cursor := crDefault;
    email.Free;
  end;
  Screen.Cursor := crDefault;

end;

procedure TfrmIS.btnTambahPicClick(Sender: TObject);
var
  f: TfrmUploadImageRK;
begin
  f := TfrmUploadImageRK.Create(Self);
  f.Jenis := 'IS';

  if lstImage.Count > 0 then
    f.ListImage := lstImage;

  f.ShowModal;
  lblJmlImage.Caption := 'Jumlah Image : ' + IntToStr(f.ListImage.Count);
  lstImage := f.ListImage;
end;

procedure TfrmIS.FormShow(Sender: TObject);
begin
  inherited;
  zqrCari.Open;

  if Self.Jenis = 'edit' then begin
    if mNoIS <> '' then begin
      cxlCari.EditValue := mNoIS;
      btnEdit2Click(nil);
    end;
  end;
end;

procedure TfrmIS.cxsThicknessOLPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxsThicknessTotal.Value :=
      cxsThicknessOL.Value +
      cxsThicknessMiddle.Value +
      cxsThicknessInner.Value;
  except
  end;
end;

procedure TfrmIS.btnLihatImageClick(Sender: TObject);
var
  f: TfrmImageViewerRK;
begin
  if cxtNoIS.Text = '' then Abort;
  f := TfrmImageViewerRK.Create(Self);
  f.Jenis := 'is';
  f.NoIS := cxtNoIS.Text;
  f.ShowModal;
end;

procedure TfrmIS.frxScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  MousePos := ScreenToClient(MousePos);
  If (MousePos.X > frxScrollBox1.Left) and
    (MousePos.Y > frxScrollBox1.Top) and
    (MousePos.X < frxScrollBox1.Left + frxScrollBox1.Width) and
    (MousePos.Y < frxScrollBox1.Top + frxScrollBox1.Height) then
    frxScrollBox1.Perform(WM_VSCROLL,1,0);
end;

procedure TfrmIS.frxScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  MousePos := ScreenToClient(MousePos);
  If
    (MousePos.X > frxScrollBox1.Left) and
    (MousePos.Y > frxScrollBox1.Top) and
    (MousePos.X < frxScrollBox1.Left + frxScrollBox1.Width) and
    (MousePos.Y < frxScrollBox1.Top + frxScrollBox1.Height)
  then
    frxScrollBox1.Perform(WM_VSCROLL,0,0);
end;

end.
