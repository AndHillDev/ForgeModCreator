unit javasdks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvAppStyler, AdvToolBar, ComCtrls, StdCtrls, ExtCtrls, AdvPanel,
  AdvToolBarStylers, AdvGlowButton, JclFileUtils, ImgList,db;

type
  TjavaSDKManager = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    ListView1: TListView;
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    AdvFormStyler1: TAdvFormStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    addJava: TAdvToolBarButton;
    removeJava: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    closeBtn: TAdvToolBarButton;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    Timer1: TTimer;
    procedure addJavaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure removeJavaClick(Sender: TObject);
    procedure closeBtnClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  javaSDKManager: TjavaSDKManager;

implementation

uses main;

{$R *.dfm}

procedure TjavaSDKManager.addJavaClick(Sender: TObject);
var
  fileinfo: TJclFileVersionInfo;
  listitem: TListItem;
begin
  if openDialog1.Execute then
  begin
    fileinfo:=TJclFileVersionInfo.Create(opendialog1.FileName);
    listitem:=ListView1.Items.Add;
    listItem.Caption:=opendialog1.FileName;
    listItem.SubItems.Add(fileinfo.ProductName);
    listItem.SubItems.Add(fileinfo.ProductVersion);
    mainFrm.Query.SQL.Clear;
    mainFrm.Query.Params.Clear;
    mainfrm.Query.Params.CreateParam(ftString, 'filename', ptInputOutput);
    maiNFrm.Query.Params.CreateParam(ftString, 'productname', ptInputOutput);
    mainFrm.Query.Params.CreateParam(ftString, 'productversion', ptInputOutput);
    mainFrm.Query.ParamByName('filename').Text:=openDialog1.FileName;
    mainFrm.Query.ParamByName('productname').Text:=fileinfo.ProductName;
    mainFrm.Query.ParamByName('productversion').Text:=fileinfo.ProductVersion;
    mainFrm.Query.SQL.Text:='insert into javaversions (filename,produktname,produktversion) values (:filename,:productname,:productversion)';
    mainFrm.Query.ExecSQL;
  end;
end;

procedure TjavaSDKManager.FormShow(Sender: TObject);
var
  listItem: TlistItem;
begin
  listview1.Items.Clear;
  mainFrm.Query.SQL.Clear;
  mainFrm.Query.Params.Clear;
  mainFrm.Query.SQL.Text:='select * from javaversions';
  mainFrm.Query.Open;
  while not mainFrm.Query.Eof do
  begin
    listItem:=ListView1.Items.Add;
    listItem.Caption:=maiNFrm.Query.fieldbyname('filename').AsString;
    listItem.SubItems.Add(MainFrm.Query.fieldbyname('produktname').AsString);
    listItem.SubItems.Add(mainFrm.Query.fieldbyname('produktversion').AsString);
    mainFrm.Query.Next;
  end;
  mainFrm.Query.Close;
end;

procedure TjavaSDKManager.removeJavaClick(Sender: TObject);
var
  listItem: TListItem;
begin
  if messageDlg('sind Sie sicher, das Sie diese Javaversion entfernen möchten?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    listItem:=ListView1.Selected;
    mainfrm.Query.SQL.Clear;
    mainFrm.Query.Params.Clear;
    mainFrm.Query.Params.CreateParam(ftString, 'version', ptInputOutput);
    mainFrm.Query.ParamByName('version').Text:=listItem.SubItems[1];
    mainFrm.Query.SQL.Text:='delete from javaversions where produktversion=:version';
    mainFrm.Query.ExecSQL;
    listitem.Delete;
  end;
end;

procedure TjavaSDKManager.closeBtnClick(Sender: TObject);
begin
  close;
end;

procedure TjavaSDKManager.Timer1Timer(Sender: TObject);
begin
  if listview1.SelCount >= 1 then
    removeJava.Enabled:=true
  else
    removeJava.Enabled:=false;
end;

end.
