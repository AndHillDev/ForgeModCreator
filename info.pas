unit info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, AdvGlowButton, AdvAppStyler, AdvPanel;

type
  TinfoFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvFormStyler1: TAdvFormStyler;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    Bevel2: TBevel;
    Bevel1: TBevel;
    AdvGlowButton1: TAdvGlowButton;
    procedure Label6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  infoFrm: TinfoFrm;

implementation

uses main;

{$R *.dfm}

procedure ExecuteFile(Filename, Params, WorkDir: String); StdCall; external 'Libraries\AHDLibrary.dll';

procedure TinfoFrm.Label6Click(Sender: TObject);
begin
  ExecuteFile('https://www.andhilldev.de','','');
end;

procedure TinfoFrm.FormShow(Sender: TObject);
begin
  Label1.Caption:=application.Title;
end;

procedure TinfoFrm.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

end.
