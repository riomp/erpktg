unit UFotoAktivitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel;

type
  TFrm_FotoAktivity = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    BtnOk: TRzBitBtn;
    BtnBatal: TRzBitBtn;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_FotoAktivity: TFrm_FotoAktivity;

implementation

{$R *.dfm}

end.
