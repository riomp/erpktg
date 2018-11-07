unit unFrmWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TfrmWait = class(TForm)
    prgBar: TProgressBar;
    Label1: TLabel;
    tmr: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmrTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    mCounter: Integer;
  public
    { Public declarations }
  end;

var
  frmWait: TfrmWait;

implementation

{$R *.dfm}

procedure TfrmWait.FormCreate(Sender: TObject);
begin
  mCounter := 0;
end;

procedure TfrmWait.FormShow(Sender: TObject);
begin
  tmr.Enabled := True;
end;

procedure TfrmWait.tmrTimer(Sender: TObject);
begin
  mCounter := mCounter + 1;
  prgBar.Position := prgBar.Position + 1;
  //if mCounter = 10 then begin
  //  tmr.Enabled := False;
  //  ShowMessage('Email sudah dikirim.');
  //  Close;
  //end;
end;

procedure TfrmWait.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

end.
