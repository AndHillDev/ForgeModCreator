unit splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, AdvPanel, ExeInfo, AdvProgressBar, StdCtrls;

type
  TsplashFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    ExeInfo1: TExeInfo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    AdvProgressBar1: TAdvProgressBar;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  splashFrm: TsplashFrm;

implementation

{$R *.dfm}

function GetProgramTitle(name, version: String): String; StdCall; external 'Libraries\AHDLibrary.dll';

procedure TsplashFrm.FormCreate(Sender: TObject);
begin
  label1.Caption:=GetProgramTitle(exeinfo1.ProductName,exeinfo1.FileVersion);
end;

end.
