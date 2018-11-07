unit unFrmApprovalIS;

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
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls,
  cxDropDownEdit, cxMaskEdit, cxSpinEdit, cxTextEdit,
  cxMemo, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdText,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxPC, unFrmTmpControlPlan,
  cxCheckBox, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL;

type
  TfrmApprovalIS = class(TfrmTplMaster)
    zqrIS: TZReadOnlyQuery;
    dsIS: TDataSource;
    btnApprove: TButton;
    btnTidakApprove: TButton;
    btnKeluar2: TButton;
    idSMTP: TIdSMTP;
    cxPg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    ScrollBox1: TScrollBox;
    cxGrdIS: TcxGrid;
    cxTblIS: TcxGridDBTableView;
    cxTblISid: TcxGridDBColumn;
    cxTblISno_is: TcxGridDBColumn;
    cxTblIStgl_issue: TcxGridDBColumn;
    cxTblISnama_produk: TcxGridDBColumn;
    cxTblISpossible_qty_order: TcxGridDBColumn;
    cxTblISColumn1: TcxGridDBColumn;
    cxGrdISLevel1: TcxGridLevel;
    Button1: TButton;
    Button2: TButton;
    cxLabel2: TcxLabel;
    cxtNoIS: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxdIssueDate: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxlCustomer: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxtDescOfBag: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxtFuncOfBags: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxtDestination: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxtTobGroup: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxtTobSubGroup: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxtBMBag: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxtBMHandleTape: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxsThicknessOL: TcxSpinEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxsThicknessMiddle: TcxSpinEdit;
    cxLabel19: TcxLabel;
    cxsThicknessInner: TcxSpinEdit;
    cxsThicknessTotal: TcxSpinEdit;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxsOpenWidth: TcxSpinEdit;
    cxLabel22: TcxLabel;
    cxsTotalHeight: TcxSpinEdit;
    cxLabel23: TcxLabel;
    cxsFaceWidth: TcxSpinEdit;
    cxLabel24: TcxLabel;
    cxsFaceHeight: TcxSpinEdit;
    cxLabel25: TcxLabel;
    cxsSideGusset: TcxSpinEdit;
    cxLabel26: TcxLabel;
    cxsBottomGusset: TcxSpinEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxsTopFold: TcxSpinEdit;
    cxLabel30: TcxLabel;
    cxdExpectShipDate: TcxDateEdit;
    cxtBagColour: TcxTextEdit;
    cxtPrintType: TcxTextEdit;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxtImageType: TcxTextEdit;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel39: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel47: TcxLabel;
    cxtSide1Colour8: TcxTextEdit;
    cxtSide1Colour7: TcxTextEdit;
    cxtSide1Colour6: TcxTextEdit;
    cxtSide1Colour5: TcxTextEdit;
    cxtSide1Colour4: TcxTextEdit;
    cxtSide1Colour3: TcxTextEdit;
    cxtSide1Colour2: TcxTextEdit;
    cxtSide1Colour1: TcxTextEdit;
    cxLabel36: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    cxtSide2Colour8: TcxTextEdit;
    cxtSide2Colour7: TcxTextEdit;
    cxtSide2Colour6: TcxTextEdit;
    cxtSide2Colour5: TcxTextEdit;
    cxtSide2Colour4: TcxTextEdit;
    cxtSide2Colour3: TcxTextEdit;
    cxtSide2Colour2: TcxTextEdit;
    cxtSide2Colour1: TcxTextEdit;
    cxLabel50: TcxLabel;
    cxtCutOut: TcxTextEdit;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxsCoWidth: TcxSpinEdit;
    cxLabel53: TcxLabel;
    cxsCoHeight: TcxSpinEdit;
    cxmAHNotes: TcxMemo;
    cxLabel57: TcxLabel;
    cxsAHSize: TcxSpinEdit;
    cxsAHPercentCut: TcxSpinEdit;
    cxsAHRow: TcxSpinEdit;
    cxsAHColumn: TcxSpinEdit;
    cxLabel56: TcxLabel;
    cxLabel55: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel105: TcxLabel;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel65: TcxLabel;
    cxsHLengthWidth: TcxSpinEdit;
    cxsHWidth: TcxSpinEdit;
    cxsHThickness: TcxSpinEdit;
    cxLabel64: TcxLabel;
    cxLabel63: TcxLabel;
    cxLabel66: TcxLabel;
    cxsHSides: TcxSpinEdit;
    cxsHColours: TcxSpinEdit;
    cxtHPrint: TcxTextEdit;
    cxLabel106: TcxLabel;
    cxLabel107: TcxLabel;
    cxLabel108: TcxLabel;
    cxLabel109: TcxLabel;
    cxLabel110: TcxLabel;
    cxsPackQty5: TcxSpinEdit;
    cxsPackQty4: TcxSpinEdit;
    cxsPackQty3: TcxSpinEdit;
    cxsPackQty2: TcxSpinEdit;
    cxsPackQty1: TcxSpinEdit;
    cxLabel67: TcxLabel;
    cxLabel68: TcxLabel;
    cxCmbPackUnit1: TcxComboBox;
    cxCmbPackUnit2: TcxComboBox;
    cxCmbPackUnit3: TcxComboBox;
    cxCmbPackUnit4: TcxComboBox;
    cxCmbPackunit5: TcxComboBox;
    cxLabel69: TcxLabel;
    cxCmbFolding1: TcxComboBox;
    cxCmbFolding2: TcxComboBox;
    cxLabel70: TcxLabel;
    cxCmbPackAcc: TcxComboBox;
    cxLabel71: TcxLabel;
    cxLabel74: TcxLabel;
    cxsPackAccCore: TcxSpinEdit;
    cxsPackAccInner: TcxSpinEdit;
    cxLabel72: TcxLabel;
    cxLabel73: TcxLabel;
    cxsPackAccThickness: TcxSpinEdit;
    cxLabel75: TcxLabel;
    cxsPackAccLength: TcxSpinEdit;
    cxmPackAccNotes: TcxMemo;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    cxsGSMDispenser: TcxSpinEdit;
    cxsGSMOuter: TcxSpinEdit;
    cxsGsmLabelPB: TcxSpinEdit;
    cxsGsmIO: TcxSpinEdit;
    cxsWidthIO: TcxSpinEdit;
    cxsWidthLabelPB: TcxSpinEdit;
    cxsWidthOuter: TcxSpinEdit;
    cxsWidthDispenser: TcxSpinEdit;
    cxsLengthDispenser: TcxSpinEdit;
    cxsLengthOuter: TcxSpinEdit;
    cxsLengthLabelPB: TcxSpinEdit;
    cxsLengthIO: TcxSpinEdit;
    cxLabel83: TcxLabel;
    cxLabel82: TcxLabel;
    cxLabel81: TcxLabel;
    cxLabel80: TcxLabel;
    cxLabel84: TcxLabel;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    cxsPDColoursIO: TcxSpinEdit;
    cxsPDSidesIO: TcxSpinEdit;
    cxsPDColoursLabelPB: TcxSpinEdit;
    cxsPDSidesLabelPB: TcxSpinEdit;
    cxsPDColoursOuter: TcxSpinEdit;
    cxsPDSidesOuter: TcxSpinEdit;
    cxsPDColoursDispenser: TcxSpinEdit;
    cxsPDSidesDispenser: TcxSpinEdit;
    cxLabel88: TcxLabel;
    cxLabel90: TcxLabel;
    cxLabel89: TcxLabel;
    cxsFPMaterialInnerSize: TcxSpinEdit;
    cxLabel91: TcxLabel;
    cxsFPMaterialOuterSize: TcxSpinEdit;
    cxLabel94: TcxLabel;
    cxsFPGsm: TcxSpinEdit;
    cxsFPLengthColours: TcxSpinEdit;
    cxLabel95: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel97: TcxLabel;
    cxsFPHeightSides: TcxSpinEdit;
    cxsFPHeightOuterSize: TcxSpinEdit;
    cxsFPLengthOuterSize: TcxSpinEdit;
    cxsFPWidthOuterSize: TcxSpinEdit;
    cxsFPWidthInnerSize: TcxSpinEdit;
    cxsFPLengthInnerSize: TcxSpinEdit;
    cxsFPHeightInnerSize: TcxSpinEdit;
    cxLabel93: TcxLabel;
    cxLabel92: TcxLabel;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxLabel100: TcxLabel;
    cxLabel101: TcxLabel;
    cxsPalletWidth: TcxSpinEdit;
    cxsPalletEntry: TcxSpinEdit;
    cxLabel102: TcxLabel;
    cxLabel103: TcxLabel;
    cxsPalletLength: TcxSpinEdit;
    cxsPalletRequirement: TcxSpinEdit;
    cxLabel104: TcxLabel;
    cxsPalletHeight: TcxSpinEdit;
    cxLabel111: TcxLabel;
    cxmCompilingPackaging: TcxMemo;
    cxLabel112: TcxLabel;
    cxLabel113: TcxLabel;
    cxLabel114: TcxLabel;
    cxtMechanicalProperties: TcxTextEdit;
    cxLabel117: TcxLabel;
    cxLabel118: TcxLabel;
    cxtVisualProp: TcxTextEdit;
    cxLabel115: TcxLabel;
    cxLabel116: TcxLabel;
    cxLabel119: TcxLabel;
    cxtCertification: TcxTextEdit;
    cxLabel120: TcxLabel;
    cxLabel121: TcxLabel;
    cxmOthers: TcxMemo;
    Sample: TcxLabel;
    cxCmbSample: TcxComboBox;
    Panel2: TPanel;
    Panel1: TPanel;
    Button3: TButton;
    cxMemoKetTidakApp: TcxMemo;
    cxLabel1: TcxLabel;
    btnSimpanTidakApp: TButton;
    cxTblISColumn2: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    Panel3: TPanel;
    cxLabel122: TcxLabel;
    cxtNoIS2: TcxTextEdit;
    cxLabel123: TcxLabel;
    cxdIssueDate2: TcxDateEdit;
    cxLabel124: TcxLabel;
    cxlCustomer2: TcxLookupComboBox;
    cxPg2: TcxPageControl;
    btnControlPlan: TButton;
    btnSubmitCP: TButton;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    Button4: TButton;
    Panel4: TPanel;
    cxLabel125: TcxLabel;
    cxtKodeBrgSubmit: TcxTextEdit;
    Button5: TButton;
    cxTblISColumn3: TcxGridDBColumn;
    cxTblISColumn4: TcxGridDBColumn;
    cxTblISColumn5: TcxGridDBColumn;
    cxtMaterialIO: TcxTextEdit;
    cxtMaterialLblPB: TcxTextEdit;
    cxtMaterialOuter: TcxTextEdit;
    cxtMaterialDispenser: TcxTextEdit;
    cxtColourDispenser: TcxTextEdit;
    cxtColoursOuter: TcxTextEdit;
    cxtColoursLblPB: TcxTextEdit;
    cxtColoursIO: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxTblISFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnApproveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnTidakApproveClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnSimpanTidakAppClick(Sender: TObject);
    procedure btnControlPlanClick(Sender: TObject);
    procedure cxPgPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure btnSubmitCPClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    mJenisApp: string;
    f: TfrmTmpControlPlan;
    procedure SendEmail;
    procedure SendEmailTidakApp;
    procedure CopyISToCP(sNoIS: string);
  public
    property JenisApp: string read mJenisApp write mJenisApp;
  end;

var
  frmApprovalIS: TfrmApprovalIS;

implementation

uses unAplikasi, unDm, unTools, unFrmImageViewerRK;

{$R *.dfm}

procedure TfrmApprovalIS.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  pnlTengah.Enabled := True;
  zqrCust.Open;
  cxPg.ActivePageIndex := 0;
  cxPg.Pages[1].TabVisible := False ;

  cxCmbFolding1.Properties.Items.CommaText := 'Flat,Roll';

  cxCmbFolding2.Properties.Items.CommaText :=
    '"Bulk Folded","Individual Fold","Fan Fold","Perforated On Roll","Interleave On Roll",Roll';

  cxCmbPackAcc.Properties.Items.CommaText :=
    'Paper,PVC,Steel';

  q := OpenRS('SELECT * FROM tbl_satuan');
  while not q.Eof do begin
    cxCmbPackUnit1.Properties.Items.Add(q.FieldByname('satuan').AsString);
    cxCmbPackUnit2.Properties.Items.Add(q.FieldByname('satuan').AsString);
    cxCmbPackUnit3.Properties.Items.Add(q.FieldByname('satuan').AsString);
    cxCmbPackUnit4.Properties.Items.Add(q.FieldByname('satuan').AsString);
    cxCmbPackUnit5.Properties.Items.Add(q.FieldByname('satuan').AsString);
    q.Next;
  end;
  q.Close;

  cxCmbSample.Properties.Items.CommaText :=
    '"No Sample","Pre Production Sample","Sample From Mass Production"';

  ScrollBox1.VertScrollBar.Position := 0;
end;

procedure TfrmApprovalIS.cxTblISFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
  i : Integer ;
begin
  inherited;
  try
    if zqrIS.IsEmpty then Abort;

       for i:= 0 to ComponentCount-1 do
           begin
                if Components[i] is TcxTextEdit then
                  (Components[i] as TcxTextEdit).Text := '';
                if Components[i] is TcxSpinEdit then
                  (Components[i] as TcxSpinEdit).Value := 0;
                  if Components[i] is TcxLookupComboBox then
                  (Components[i] as TcxLookupComboBox).Text := '';
                   if Components[i] is TcxMemo then
                  (Components[i] as TcxMemo).Text := '';
           end;

    q := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',[zqrIS.FieldByName('no_is').AsString]);
    q.Open;

    with q do begin
      cxtNoIS.Text := FieldByName('no_is').AsString;
      cxtNoIS.Properties.ReadOnly := true;
      cxdIssueDate.Date := FieldByName('issue_date').AsDateTime;
      cxdIssueDate.Properties.ReadOnly := True;
      cxlCustomer.EditValue := FieldByName('kode_customer').AsString;

      cxtNoIS2.Text := FieldByName('no_is').AsString;
      cxdIssueDate2.Date := FieldByName('issue_date').AsDateTime;
      cxdIssueDate2.Properties.ReadOnly := True;
      cxtNoIS2.Properties.ReadOnly := true;

      cxlCustomer2.EditValue := FieldByName('kode_customer').AsString;

      cxtDescOfBag.Text := FieldByName('desc_of_bags').AsString;
      cxtFuncOfBags.Text := FieldByName('func_of_bags').AsString;
      cxdExpectShipDate.Date := FieldByName('expect_ship_date').AsDateTime;
      cxtDestination.Text := FieldByName('destination').AsString;
      cxtTobGroup.Text := FieldByName('tob_group').AsString;
      cxtTobSubGroup.Text := FieldByName('tob_subgroup').AsString;
      cxtBMBag.Text := FieldByName('bm_bag').AsString;
      cxtBMHandleTape.Text := FieldByName('bm_handle_tape').AsString;
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

      {
      cxsHThickness.Value    := FieldByName('ht_thickness').AsFloat;
      cxsHWidth.Value        := FieldByName('ht_width').AsFloat;
      cxsHLengthWidth.Value  := FieldByName('ht_length_width').AsFloat;
      cxsHColours.Value      := FieldByName('ht_colour').AsFloat;
      cxtHPrint.Text         := FieldByName('ht_print').AsString;
      cxsHSides.Value        := FieldByName('ht_sides').AsFloat;
      }

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

      cxtMaterialIO.Text        := FieldByName('material_inout').Value;
      cxtMaterialLblPB.Text     := FieldByName('material_label_pb').Value;
      cxtMaterialOuter.Text     := FieldByName('material_outer').Value;
      cxtMaterialDispenser.Text := FieldByName('material_dispenser').Value;

      cxtColoursIO.Text        :=  FieldByName('colours_inout').Value;
      cxtColoursLblPB.Text     :=  FieldByName('colours_label_pb').Value;
      cxtColoursOuter.Text     :=  FieldByName('colours_outer').Value;
      cxtColourDispenser.Text  :=  FieldByName('colours_dispenser').Value;

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
    end;

    q.Close;
  except
  end;
end;

procedure TfrmApprovalIS.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmApprovalIS.btnApproveClick(Sender: TObject);
var
  q: TZQuery;
  bm: TBookmark;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',
    [zqrIS.FieldByName('no_is').AsString]);
  if not q.IsEmpty then begin
    try
      dm.zConn.StartTransaction;
      q.Edit;

      if mJenisApp = 'RND' then begin
        q.FieldByName('app_rnd').AsInteger := 1;
        q.FieldByName('tgl_app_rnd').AsDateTime := Aplikasi.TanggalServer;
        CopyISToCP(zqrIS.FieldByName('no_is').AsString);
      end
      else if mJenisApp = 'PM' then begin
        q.FieldByName('app_pm').AsInteger := 1;
        q.FieldByName('tgl_app_pm').AsDateTime := Aplikasi.TanggalServer;
      end;
      
      q.Post;
      q.Close;

      q := OpenRS('SELECT * FROM tbl_isapp_hist WHERE no_is = ''%s''',[zqrIS.FieldByName('no_is').AsString]);
      q.Insert;
      q.FieldByName('no_is').AsString := zqrIS.FieldByName('no_is').AsString;
      q.FieldByName('tgl_app').AsDateTime := Aplikasi.TanggalServer;
      q.FieldByName('app').AsInteger := 1;
      q.FieldByName('keterangan').AsString := cxMemoKetTidakApp.Text;
      q.Post;
      q.Close;

      dm.zConn.Commit;
      MsgBox('Inquiry Sheet sudah berhasil di Approve.');
      SendEmail;

      try
        bm := zqrIS.GetBookmark;
        zqrIS.Close;
        zqrIS.Open;
        zqrIS.GotoBookmark(bm);
      except
      end;

    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;

end;

procedure TfrmApprovalIS.FormShow(Sender: TObject);
begin
  inherited;

  btnSubmitCP.Visible := False;
  Panel4.Visible := False;

  {
  if mJenisApp = 'RND' then begin
    zqrIS.SQL.Strings[4] := 'WHERE ';
  end
  else if mJenisApp = 'PM' then begin
    zqrIS.SQL.Strings[4] := 'WHERE app_pm = 0 AND app_rnd = 1';
    btnSubmitCP.Visible := True;
    Panel4.Visible := True;
  end;
  }

  if mJenisApp = 'PM' then begin
    btnSubmitCP.Visible := True;
    Panel4.Visible := True;
  end;

  zqrIS.Open;
  
end;

procedure TfrmApprovalIS.Button2Click(Sender: TObject);
var
  f: TfrmImageViewerRK;
begin
  f := TfrmImageViewerRK.Create(Self);
  f.Jenis := 'is';
  f.NoIS := zqrIS.FieldByName('no_is').AsString;
  f.ShowModal;
end;

procedure TfrmApprovalIS.SendEmail;
var
  email : TIdMessage;
  lstEmail, lst: TStringList;
  bdy: TIdText;
  q: TZQuery;
  sNoIS: string;
  idSSLGMail : TIdSSLIOHandlerSocketOpenSSL;
begin

  Screen.Cursor := crHourGlass;

  sNoIS := zqrIS.FieldByname('no_is').AsString;

  idSSLGMail                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  idSSLGMail.SSLOptions.Method := sslvTLSv1;
  idSSLGMail.SSLOptions.Mode   := sslmUnassigned;

  idSMTP.AuthType  := satDefault;
  idSMTP.IOHandler := idSSLGMail;
  idSMTP.UseTLS    := utUseImplicitTLS;
  idSMTP.Host      := aplikasi.ServerSMTP;
  idSMTP.Port      := 465;
  idSMTP.UserName  := aplikasi.EmailUser;
  idSMTP.Password  := aplikasi.EmailPassword;

  {
  idSMTP.AuthType := satNone;
  idSMTP.Host := aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';
  }
  
  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;
    email.From.Name := aplikasi.NamaUser;

    // get email list of dept PM and GM
    lstEmail := TStringList.Create;
    q := OpenRS('SELECT * FROM tbl_user WHERE user_dept IN (''PM'',''GM'')');
    while not q.Eof do begin
      lstEmail.Add(q.FieldByName('email').AsString);
      q.Next;
    end;
    q.Close;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := lstEmail.CommaText
    else
      email.Recipients.EMailAddresses := lstEmail.CommaText;

    email.Subject := 'Approval Inquiry Sheet Nomor : ' + sNoIS;

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
    lst.Add('Nomor Transaksi : ' + sNoIS);
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

procedure TfrmApprovalIS.btnTidakApproveClick(Sender: TObject);
begin
  inherited;
  Panel1.Parent := pnlTengah;
  Panel1.Align := alTop;
  Panel1.Visible := True;
  cxPg.Visible := False;  
end;

procedure TfrmApprovalIS.Button3Click(Sender: TObject);
begin
  inherited;
  Panel1.Visible := False;
  cxPg.Visible := True;
end;

procedure TfrmApprovalIS.btnSimpanTidakAppClick(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  if Trim(cxMemoKetTidakApp.Text) = '' then begin
    MsgBox('Keterangan tidak approval harus di isi.');
    cxMemoKetTidakApp.SetFocus;
    Abort;
  end;

  try
    dm.zConn.StartTransaction;
    q := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',
      [zqrIS.FieldByName('no_is').AsString]);
    if not q.IsEmpty then begin
      q.Edit;
      q.FieldByName('app_rnd').AsInteger := 2;
      q.FieldByName('ket_tidak_app').AsString := cxMemoKetTidakApp.Text;
      q.FieldByName('count_app').AsInteger := q.FieldByName('count_app').AsInteger + 1;
      q.Post;
    end;
    q.Close;

    q := OpenRS('SELECT * FROM tbl_isapp_hist WHERE no_is = ''%s''',[zqrIS.FieldByName('no_is').AsString]);
    q.Insert;
    q.FieldByName('no_is').AsString := zqrIS.FieldByName('no_is').AsString;
    q.FieldByName('tgl_app').AsDateTime := Aplikasi.TanggalServer;
    q.FieldByName('app').AsInteger := 2;
    q.FieldByName('keterangan').AsString := cxMemoKetTidakApp.Text;
    q.Post;
    q.Close;

    dm.zConn.Commit;

    MsgBox('Inquiry Sheet tidak Approve.');
    SendEmailTidakApp;
    zqrIS.Close;
    zqrIS.Open;

    Panel1.Visible := False;
    cxPg.Visible := True;
    cxMemoKetTidakApp.Lines.Text := '';
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
  
end;

procedure TfrmApprovalIS.SendEmailTidakApp;
var
  email : TIdMessage;
  lstEmail, lst: TStringList;
  bdy: TIdText;
  q: TZQuery;
  sNoIS: string;
begin

  Screen.Cursor := crHourGlass;

  sNoIS := zqrIS.FieldByname('no_is').AsString;

  idSMTP.AuthType := satNone;
  idSMTP.Host := aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;
    email.From.Name := aplikasi.NamaUser;

    // get email list of dept SLS
    lstEmail := TStringList.Create;
    q := OpenRS('SELECT * FROM tbl_user WHERE user_dept IN (''MKT'')');
    while not q.Eof do begin
      lstEmail.Add(q.FieldByName('email').AsString);
      q.Next;
    end;
    q.Close;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := lstEmail.CommaText
    else
      email.Recipients.EMailAddresses := lstEmail.CommaText;

    email.Subject := 'Tidak Approval Inquiry Sheet Nomor : ' + sNoIS;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada permintaan Inquiry Sheet yang Tidak Approval, silahkan cek aplikasi KTG');
    lst.Add('</br>');
    lst.Add('Keterangan: </br>');
    lst.Add(cxMemoKetTidakApp.Lines.Text);
    lst.Add('</br>');
    lst.Add('Nomor Transaksi : ' + sNoIS);
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

procedure TfrmApprovalIS.btnControlPlanClick(Sender: TObject);
var
  ts: TcxTabSheet;
  q: TZQuery;
begin
  if zqrIS.IsEmpty then Abort;

  if not Assigned(f) then begin
    q := OpenRS('SELECT * FROM tbl_barang WHERE no_is = ''%s''',[zqrIS.FieldByName('no_is').AsString]);

    f := TfrmTmpControlPlan.Create(nil);
    f.NoIS := zqrIS.FieldByName('no_is').AsString;
    f.KodeCust := zqrIS.FieldByname('kode_customer').AsString;
    f.ManualDock(cxPg2, cxPg2, alClient);
    ts := (f.parent as TcxTabSheet);
    ts.Caption := 'Control Plan';
    if not q.IsEmpty then
      f.ShowCP;

    //f.CopyValue;
    f.Show;
    cxPg.ActivePageIndex := 1;
    q.Close;
    
  end;
  
end;

procedure TfrmApprovalIS.cxPgPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if NewPage.Caption = 'Inquiry Sheet' then begin
    if Assigned(f) then begin
      f.Close;
      f.Release;
      f := nil;
    end
  end
  else if NewPage.Caption = 'Control Plan' then begin
    if mJenisApp = 'RND' then begin
      if zqrIS.FieldByName('app_rnd').AsInteger = 0 then begin
        AllowChange := False;
        MsgBox('Inquiry Sheet harus di Approval.');
      end;
    end
    else if mJenisApp = 'PM' then begin
      if zqrIS.FieldByName('app_pm').AsInteger = 0 then begin
        AllowChange := False;
        MsgBox('Inquiry Sheet harus di Approval.');
      end;
    end;
  end;
end;

procedure TfrmApprovalIS.btnSubmitCPClick(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;

  if not Assigned(f) then
    Abort;

  if Trim(cxtKodeBrgSubmit.Text) = '' then begin
    MsgBox('Kode barang harus di isi.');
    cxtKodeBrgSubmit.SetFocus;
    Abort;
  end;

  q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[Trim(cxtKodeBrgSubmit.text)]);
  if not q.IsEmpty then begin
    MsgBox('Kode barang ini sudah digunakan.');
    q.Close;
    Abort;
  end;
  q.Close;

  if Assigned(f) then begin
    f.SubmitCP(cxtKodeBrgSubmit.text);
    cxtKodeBrgSubmit.Text := '';
  end;
  
end;

procedure TfrmApprovalIS.Button4Click(Sender: TObject);
begin
  inherited;
  Panel1.Visible := False;
  cxPg.Visible := True;
end;

procedure TfrmApprovalIS.Button5Click(Sender: TObject);
var
  q: TZQuery;
  sKode, sNamaCust, sKodeCust: string;
begin
  inherited;
  q := OpenRS('SELECT a.kelompok, a.sub_kelompok, c.nama, b.kode_customer ' +
    'FROM tbl_barang a ' +
    'LEFT JOIN tbl_is2 b ON b.no_is = a.no_is ' +
    'LEFT JOIN tbl_customer c ON b.kode_customer = c.kode ' +
    'WHERE a.no_is = ''%s''',[cxtNoIS2.Text]);

  if not q.IsEmpty then begin
    sKodeCust := q.FieldByName('kode_customer').AsString;
    
    if q.FieldByName('kelompok').AsString = 'A' then begin
      sNamaCust := q.Fieldbyname('nama').AsString;
      sNamaCust := StringReplace(sNamaCust,' ','',[rfReplaceAll]);

      //sKode := q.FieldByName('kelompok').AsString +
      //  q.FieldByName('sub_kelompok').AsString + '.' +
      //  Copy(sNamaCust,1,3) + '.';

      sKode := q.FieldByName('kelompok').AsString +
        q.FieldByName('sub_kelompok').AsString + '.' +
        sKodeCust + '.';

      cxtKodeBrgSubmit.Text := GenerateKode(sKode);
    end;
  end;
  q.Close;
  
end;

procedure TfrmApprovalIS.CopyISToCP(sNoIS: string);
var
  q1, q2: TZQuery;
  sKodeBrg: string;
begin
  try
    dm.zConn.StartTransaction;
    
    q1 := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',[sNoIS]);
    if not q1.IsEmpty then begin

     { sKodeBrg := GetLastFak('draft-cp');
      UpdateFaktur(Copy(sKodeBrg,1,8));

      q2 := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[sKodeBrg]);
      with q2 do begin
        Insert;
        FieldByName('kode').AsString := sKodeBrg;
        FieldByName('deskripsi').AsString := q1.FieldByname('desc_of_bags').AsString;
        FieldByName('fungsi').AsString := q1.FieldByname('func_of_bags').AsString;
        FieldByName('base_material').AsString := q1.FieldByName('bm_bag').AsString;
        FieldByName('unit_ktg').AsString := q1.FieldByName('unit_ktg').AsString;
        FieldByName('tebal').Value := q1.FieldByName('thickness_total').Value;
        FieldByName('tebal_ol').Value := q1.FieldByName('thickness_ol').Value;
        FieldByName('tebal_mid').Value := q1.FieldByname('thickness_middle').Value;
        FieldByName('tebal_in').Value := q1.FieldByName('thickness_inner').Value;
        FieldByName('lebar_buka').Value := q1.FieldByName('open_width').Value;
        FieldByName('lebar_plong').Value := q1.FieldByName('cut_out_width').Value;
        FieldByName('panjang_plong').Value := q1.FieldByName('cut_out_height').Value;
        FieldByName('top_fold').Value := q1.FieldByName('top_fold').Value;
        FieldByName('lebar_jadi').Value := q1.FieldByName('face_width').Value;
        FieldByName('panjang').Value := q1.FieldByName('total_height').Value;
        FieldByName('panjang_jadi').Value := q1.FieldByName('face_height').Value;

        FieldByName('no_is').AsString := sNoIS;
        FieldByName('kode_customer').AsString := q1.FieldByName('kode_customer').AsString;
        FieldByName('f_aktif').AsInteger := 0;
        FieldByName('user_input').AsString := Aplikasi.NamaUser;
        FieldByName('tgl_input').AsDateTime := Aplikasi.TanggalServer;
        Post;
      end;   }
    end;

    dm.zConn.Commit;
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmApprovalIS.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  MousePos := ScreenToClient(MousePos);
  If (MousePos.X > ScrollBox1.Left) and
    (MousePos.Y > ScrollBox1.Top) and
    (MousePos.X < ScrollBox1.Left + ScrollBox1.Width) and
    (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height) then
    ScrollBox1.Perform(WM_VSCROLL,1,0);
end;

procedure TfrmApprovalIS.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  MousePos := ScreenToClient(MousePos);
  If
    (MousePos.X > ScrollBox1.Left) and
    (MousePos.Y > ScrollBox1.Top) and
    (MousePos.X < ScrollBox1.Left + ScrollBox1.Width) and
    (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height)
  then
    ScrollBox1.Perform(WM_VSCROLL,0,0);

end;

end.
