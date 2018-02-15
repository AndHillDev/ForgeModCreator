unit settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, JvToolEdit, StdCtrls, Mask, JvExMask, ExtCtrls,
  AdvAppStyler, AdvPanel,db, AdvGlowButton;

type
  TsettingsFrm = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvFormStyler1: TAdvFormStyler;
    Label1: TLabel;
    projectFolder: TJvDirectoryEdit;
    Label2: TLabel;
    eclipseFile: TJvFilenameEdit;
    Label3: TLabel;
    GUIDesign: TComboBox;
    Label4: TLabel;
    JavaSDK: TComboBox;
    autoUpdate: TCheckBox;
    Bevel1: TBevel;
    applyBtn: TAdvGlowButton;
    cancelBtn: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Label5: TLabel;
    language: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure applyBtnClick(Sender: TObject);
    procedure cancelBtnClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  settingsFrm: TsettingsFrm;

implementation

uses main, child;

{$R *.dfm}

procedure TsettingsFrm.FormShow(Sender: TObject);
var
  sdkindex: Integer;
begin
  projectFolder.Directory:=mainFrm.projectFolder;
  eclipseFile.FileName:=mainFrm.eclipseFile;
  GUIDesign.ItemIndex:=mainFrm.guiDesign;
  sdkindex:=JavaSDK.Items.IndexOf(mainFrm.javaVersion);
  javaSDK.ItemIndex:=sdkindex;
  language.ItemIndex:=mainFrm.language;
  autoUpdate.Checked:=mainFrm.autoUpdate;
end;

procedure TsettingsFrm.FormCreate(Sender: TObject);
begin
  mainFrm.Query.SQL.Clear;
  mainFrm.Query.Params.Clear;
  JavaSDK.Items.Clear;
  mainFrm.Query.SQL.Text:='select * from javaversions';
  mainFrm.Query.Open;
  while not mainFrm.Query.Eof do
  begin
    JavaSDK.Items.Add(mainFrm.Query.fieldbyname('filename').AsString);
    mainFrm.Query.Next;
  end;
  mainFrm.Query.Close;
end;

procedure TsettingsFrm.applyBtnClick(Sender: TObject);
var
  x, MDICount: Integer;
  child: TMDIChild;
begin
  MainFrm.SaveConfig(ExtractFilePath(application.ExeName)+'config.json');
  MainFrm.SetLanguage;
  MDICount:=mainFrm.MDIChildCount;
  if mainFrm.MDIChildCount >= 1 then
  begin
    for x:=0 to mainFrm.MDIChildCount - 1 do
    begin
      child:=TMDIChild(mainFrm.MDIChildren[x]);
      child.SetLanguage(mainFrm.langfile);
    end;
  end;
  close;
end;

procedure TsettingsFrm.cancelBtnClick(Sender: TObject);
begin
  close;
end;

end.
