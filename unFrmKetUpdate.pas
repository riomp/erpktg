unit unFrmKetUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, jpeg;

type
  TfrmKetUpdate = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    prgBar: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKetUpdate: TfrmKetUpdate;

implementation

{$R *.dfm}

procedure TfrmKetUpdate.Timer1Timer(Sender: TObject);
begin
  prgBar.Position := prgBar.Position + 1;
  prgBar.Update;
  Update;
  Self.Refresh;
end;

procedure TfrmKetUpdate.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

end.
