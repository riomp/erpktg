unit unFrmSalesMobile;

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
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxBlobEdit,
  OleCtrls, SHDocVw, ActiveX, jpeg, cxGroupBox, cxSpinEdit, cxTextEdit,
  cxMaskEdit,scExcelExport,cxGridExportLink, ShellAPI, cxDropDownEdit, cxCalendar,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinsdxBarPainter, dxPSCore, TeEngine,
  Series, TeeProcs, Chart, DbChart;

type
  TfrmSalesMobile = class(TfrmTplMaster)
    zqrSM: TZQuery;
    dsSM: TDataSource;
    Timer1: TTimer;
    Button1: TButton;
    TabSheet3: TTabSheet;
    zRencana: TZQuery;
    dsRencana: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    Button3: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    TabSheet4: TTabSheet;
    btn_cetak2: TButton;
    cxGrid3: TcxGrid;
    cxTblRencan: TcxGridDBTableView;
    cxTblRencanno: TcxGridDBColumn;
    cxTblRencantgl: TcxGridDBColumn;
    cxTblRencannama_1: TcxGridDBColumn;
    cxTblRencanpic: TcxGridDBColumn;
    cxTblRencanarea: TcxGridDBColumn;
    cxTblRencantujuan: TcxGridDBColumn;
    cxTblRencantarget: TcxGridDBColumn;
    cxTblRencanketerangan: TcxGridDBColumn;
    cxTblRencanstatus: TcxGridDBColumn;
    cxTblRencanalasan: TcxGridDBColumn;
    cxTblRencannama: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel3: TcxLabel;
    cxdTgl3: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxdTgl4: TcxDateEdit;
    Button2: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1tgl: TcxGridDBColumn;
    cxGridDBTableView1daerah: TcxGridDBColumn;
    cxGridDBTableView1bbm: TcxGridDBColumn;
    cxGridDBTableView1km_awal: TcxGridDBColumn;
    cxGridDBTableView1km_akhir: TcxGridDBColumn;
    cxGridDBTableView1entertaint_dinas: TcxGridDBColumn;
    cxGridDBTableView1transportasi: TcxGridDBColumn;
    cxGridDBTableView1paket_data: TcxGridDBColumn;
    cxGridDBTableView1retribusi: TcxGridDBColumn;
    cxGridDBTableView1tol: TcxGridDBColumn;
    cxGridDBTableView1uang_makan: TcxGridDBColumn;
    cxGridDBTableView1sewa_mobil: TcxGridDBColumn;
    cxGridDBTableView1penginapan: TcxGridDBColumn;
    cxGridDBTableView1expedisi: TcxGridDBColumn;
    cxGridDBTableView1lainnya: TcxGridDBColumn;
    cxGridDBTableView1total: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnCetak1: TButton;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    btnCetak: TButton;
    cxGrid1: TcxGrid;
    TblView: TcxGridDBTableView;
    TblViewid: TcxGridDBColumn;
    TblViewtgl: TcxGridDBColumn;
    TblViewnama: TcxGridDBColumn;
    TblViewkategori: TcxGridDBColumn;
    TblViewCust: TcxGridDBColumn;
    TblViewpic: TcxGridDBColumn;
    TblViewtujuan: TcxGridDBColumn;
    TblViewketerangan: TcxGridDBColumn;
    TblViewtarget: TcxGridDBColumn;
    TblViewtlp: TcxGridDBColumn;
    TblViewarea: TcxGridDBColumn;
    TblViewinfo_produk: TcxGridDBColumn;
    TblViewinfo_kompetitor: TcxGridDBColumn;
    TblViewstatus: TcxGridDBColumn;
    TblViewketepatan: TcxGridDBColumn;
    TblViewlat: TcxGridDBColumn;
    TblViewlongt: TcxGridDBColumn;
    TblViewrencana: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Image1: TImage;
    Shape2: TShape;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    Label2: TLabel;
    zD1: TZQuery;
    dsD1: TDataSource;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1nama: TcxGridDBColumn;
    cxGrid4DBTableView1activity: TcxGridDBColumn;
    cxGrid4DBTableView1cost: TcxGridDBColumn;
    Button4: TButton;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    DBChart2: TDBChart;
    PieSeries1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnCetak1Click(Sender: TObject);
    procedure btn_cetak2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TblViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalesMobile: TfrmSalesMobile;

implementation

uses unDm, unTools, UMap, unFrmUtama;

{$R *.dfm}

const
HTMLStr: AnsiString =
'<html> '+
'<head> '+
'<meta name="viewport" content="initial-scale=1.0, user-scalable=yes" /> '+
//'<meta http-equiv="X-UA-Compatible" content="IE=edge" />'+
'<script type="text/javascript" src="http://maps.google.com/maps/api/js?v=3"></script> '+
'<script type="text/javascript"> '+
''+
''+
'  var geocoder; '+
'  var map;  '+
//'  var address;  '+
'  var trafficLayer;'+
'  var bikeLayer;'+
'  var markersArray = [];'+
''+
''+
'  function initialize() { '+
'    geocoder = new google.maps.Geocoder();'+
'    var latlng = new google.maps.LatLng(40.714776,-74.019213); '+
//'    var address = "San Diego, CA";'+
'    var myOptions = { '+
'      zoom: 11, '+
'      center: latlng, '+
'      mapTypeId: google.maps.MapTypeId.ROADMAP '+
'    }; '+
'    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions); '+
'    trafficLayer = new google.maps.TrafficLayer();'+
'    bikeLayer = new google.maps.BicyclingLayer();'+
'    map.set("streetViewControl", false);'+
'  } '+
''+
''+
'  function codeAddress(address) { '+
'    if (geocoder) {'+
'      geocoder.geocode( { address: address}, function(results, status) { '+
'        if (status == google.maps.GeocoderStatus.OK) {'+
'          map.setCenter(results[0].geometry.location);'+
'          PutMarker(results[0].geometry.location.lat(), results[0].geometry.location.lng(), results[0].geometry.location.lat()+","+results[0].geometry.location.lng());'+
'        } else {'+
'          alert("Geocode was not successful for the following reason: " + status);'+
'        }'+
'      });'+
'    }'+
'  }'+
''+
''+
'  function GotoLatLng(Lat, Lang) { '+
'   var latlng = new google.maps.LatLng(Lat,Lang);'+
'   map.setCenter(latlng);'+
'   PutMarker(Lat, Lang, Lat+","+Lang);'+
'  }'+
''+
''+
'function ClearMarkers() {  '+
'  if (markersArray) {        '+
'    for (i in markersArray) {  '+
'      markersArray[i].setMap(null); '+
'    } '+
'  } '+
'}  '+
''+
'  function PutMarker(Lat, Lang, Msg) { '+
'   var latlng = new google.maps.LatLng(Lat,Lang);'+
'   var marker = new google.maps.Marker({'+
'      position: latlng, '+
'      map: map,'+
'      title: Msg+" ("+Lat+","+Lang+")"'+
'  });'+
' markersArray.push(marker); '+
'  }'+
''+
''+
'  function TrafficOn()   { trafficLayer.setMap(map); }'+
''+
'  function TrafficOff()  { trafficLayer.setMap(null); }'+
''+''+
'  function BicyclingOn() { bikeLayer.setMap(map); }'+
''+
'  function BicyclingOff(){ bikeLayer.setMap(null);}'+
''+
'  function StreetViewOn() { map.set("streetViewControl", true); }'+
''+
'  function StreetViewOff() { map.set("streetViewControl", false); }'+
''+
''+'</script> '+
'</head> '+
'<body onload="initialize()"> '+
'  <div id="map_canvas" style="width:100%; height:100%"></div> '+
'</body> '+
'</html> ';

procedure TfrmSalesMobile.FormCreate(Sender: TObject);
var
  aStream: TMemoryStream;
begin
  zqrSM.Open;
  //WebBrowser1.Navigate('about:blank');
  //if Assigned(WebBrowser1.Document) then
  //begin
  //  aStream := TMemoryStream.Create;
  //  try
   //    aStream.WriteBuffer(Pointer(HTMLStr)^, Length(HTMLStr));
  //     aStream.Seek(0, soFromBeginning);
   //    (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(aStream));
  //  finally
  //     aStream.Free;
  //  end;
    //HTMLWindow2 := (WebBrowser1.Document as IHTMLDocument2).parentWindow;
  //end;
  zQry.Open;
  zqrSM.Open;
  zRencana.Open;

   cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
   cxdTgl3.Date := FDOM(Date);
  cxdTgl4.Date := LDOM(Date);
  cxDateEdit1.Date := FDOM(Date);
  cxDateEdit2.Date := LDOM(Date);
end;

procedure TfrmSalesMobile.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled:= False; //Disable timer so it doesn't fire again
  //WebBrowser1.Navigate('about:blank');
end;

procedure TfrmSalesMobile.Button1Click(Sender: TObject);
var
  q: TZQuery;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
begin
  q := OpenRS('SELECT foto FROM tbl_salesactivity_det WHERE id_activity = %s',
    [zqrSM.FieldByName('id').AsString]);

  if not q.FieldByName('foto').IsNull then begin
      Stream := TMemoryStream.Create;
      TBlobField(q.FieldByName('foto')).SaveToStream(Stream);
      Stream.Position := 0;

      jpg := TJPEGImage.Create;
      jpg.LoadFromStream(Stream);

      image1.Picture.Assign(jpg);

      Stream.Free;
      jpg.Free;
    end;

  q.Close;

end;

procedure TfrmSalesMobile.btnProsesClick(Sender: TObject);
begin
    with zqrSM do begin
    Screen.Cursor := crSQLWait;
    Close;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmSalesMobile.Button2Click(Sender: TObject);
begin
   with zQry do begin
    Screen.Cursor := crSQLWait;
    Close;
    ParamByName('tgl3').AsDateTime := cxdTgl3.Date;
    ParamByName('tgl4').AsDateTime := cxdTgl4.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSalesMobile.btnCetakClick(Sender: TObject);
begin
   try
  ExportGridToExcel(aplikasi.AppPath + '\tmp_activity.xls', cxGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp_activity.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;

end;

procedure TfrmSalesMobile.btnCetak1Click(Sender: TObject);
begin
   try
  ExportGridToExcel(aplikasi.AppPath + '\tmp_cost.xls', cxGrid2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp_cost.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;

end;

procedure TfrmSalesMobile.btn_cetak2Click(Sender: TObject);
begin
    try
  ExportGridToExcel(aplikasi.AppPath + '\tmp_rencana.xls', cxGrid3);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp_rencana.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;


end;

procedure TfrmSalesMobile.Button3Click(Sender: TObject);
var
  f : TFrm_Map ;
  q: TZQuery;
begin
  inherited;
  f:= TFrm_Map.Create(self);
  try
    q := OpenRS('SELECT lat,longt FROM tbl_salesactivity_det WHERE id_activity = %s',
    [zqrSM.FieldByName('id').AsString]);
    if not q.FieldByName('lat').IsNull then begin
        f.GMMap1.RequiredProp.Center.Lat := q.FieldByName('lat').Value ;
        f.GMMap1.RequiredProp.Center.Lng := q.FieldByName('longt').Value ;
        f.GMMarker1.Add(q.FieldByName('lat').Value,q.FieldByName('longt').Value,'Lokasi')
    end;
      f.ShowModal ;
    q.Close;
      except
    on E: Exception do begin
      MsgBox('Koordinat Tidak Terecord');
    end;
  end;


end;

procedure TfrmSalesMobile.TblViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if (ARecord.Values[TblViewrencana.Index]=0) then begin
    AStyle := cxStyle1;
  end;
end;

procedure TfrmSalesMobile.Button4Click(Sender: TObject);
begin
  inherited;
    with zD1 do begin
    Screen.Cursor := crSQLWait;
    Close;
    ParamByName('tgl1').AsDateTime := cxDateEdit1.Date;
    ParamByName('tgl2').AsDateTime := cxDateEdit2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;

end;

end.
