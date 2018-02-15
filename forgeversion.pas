unit forgeversion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, ImgList, AdvToolBar, AdvPanel, ExtCtrls,
  AdvAppStyler, AdvToolBarStylers, WebCopy;

type
  TforgeVersionFrm = class(TForm)
    ImageList1: TImageList;
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvFormStyler1: TAdvFormStyler;
    AdvPanel1: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    Label1: TLabel;
    ListView1: TListView;
    Label2: TLabel;
    ListView2: TListView;
    downloadBtn: TAdvToolBarButton;
    removeBtn: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    closeBtn: TAdvToolBarButton;
    Timer1: TTimer;
    WebCopy1: TWebCopy;
    procedure FormShow(Sender: TObject);
    procedure closeBtnClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure downloadBtnClick(Sender: TObject);
    procedure WebCopy1CopyDone(Sender: TObject);
    procedure removeBtnClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  forgeVersionFrm: TforgeVersionFrm;

implementation

uses main;

{$R *.dfm}

procedure TforgeVersionFrm.FormShow(Sender: TObject);
var
  ListItem: TListItem;
begin
  MainFrm.Query.SQL.Clear;
  MainFrm.Query.Params.Clear;
  ListView1.Items.Clear;
  ListView2.Items.Clear;
  MainFrm.Query.SQL.Text:='select * from forgeversions where installed=0';
  MainFrm.Query.Open;
  While not MaiNFrm.Query.Eof do
  begin
    ListItem:=ListView1.Items.Add;
    ListItem.StateIndex:=0;
    ListItem.Caption:=IntToStr(MainFrm.Query.fieldbyname('id').AsInteger);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('version').AsString);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('mcversion').AsString);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('date').AsString);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('recommended').AsString);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('filename').AsString);
    MainFrm.Query.Next;
  end;
  MainFrm.Query.Close;

  MainFrm.Query.SQL.Text:='select * from forgeversions where installed=1';
  MainFrm.Query.Open;
  While not MaiNFrm.Query.Eof do
  begin
    ListItem:=ListView2.Items.Add;
    ListItem.StateIndex:=1;
    ListItem.Caption:=IntToStr(MainFrm.Query.fieldbyname('id').AsInteger);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('version').AsString);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('mcversion').AsString);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('date').AsString);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('recommended').AsString);
    ListItem.SubItems.Add(MainFrm.Query.fieldbyname('filename').AsString);
    MainFrm.Query.Next;
  end;
  MainFrm.Query.Close;
end;

procedure TforgeVersionFrm.closeBtnClick(Sender: TObject);
begin
  close;
end;

procedure TforgeVersionFrm.Timer1Timer(Sender: TObject);
begin
  if Listview1.SelCount >= 1 then
    downloadBtn.Enabled:=true
  else
    downloadBtn.Enabled:=false;
  if ListView2.SelCount >= 1 then
    removeBtn.Enabled:=true
  else
    removeBtn.Enabled:=false;
end;

procedure TforgeVersionFrm.downloadBtnClick(Sender: TObject);
var
  selected: Integer;
  url: String;
  copyitem: TWebCopyItem;
begin
  selected:=StrToInt(ListView1.Selected.Caption);
  MainFrm.Query.SQL.Clear;
  MainFrm.Query.Params.Clear;
  MainFrm.Query.Params.CreateParam(ftInteger, 'id', ptInputOutput);
  MainFrm.Query.ParamByName('id').Value:=selected;
  MainFrm.Query.SQL.Text:='select * from forgeversions where id=:id';
  MainFrm.Query.Open;
  url:=MainFrm.Query.fieldByName('url').AsString;
  MainFrm.Query.Close;
  WebCopy1.Items.Clear;
  copyItem:=WebCopy1.Items.Add;
  copyItem.URL:=url;
  copyItem.TargetDir:=ExtractFilePath(Application.ExeName)+'Forge';
  copyItem.TargetFilename:=ListView1.Selected.SubItems[4];
  WebCopy1.Execute;
end;

procedure TforgeVersionFrm.WebCopy1CopyDone(Sender: TObject);
var
  listItem: TListItem;
begin
  ListItem:=ListView2.Items.Add;
  ListItem.Caption:=ListView1.Selected.Caption;
  ListItem.StateIndex:=1;
  listItem.SubItems.Add(ListView1.Selected.SubItems[0]);
  listItem.SubItems.Add(ListView1.Selected.SubItems[1]);
  listItem.SubItems.Add(ListView1.Selected.SubItems[2]);
  listItem.SubItems.Add(ListView1.Selected.SubItems[3]);
  listItem.SubItems.Add(ListView1.Selected.SubItems[4]);

  MainFrm.Query.SQL.Text:='update forgeversions set installed=1 where id=:id';
  MainFrm.Query.ExecSQL;
  ListView1.Selected.Delete;
end;

procedure TforgeVersionFrm.removeBtnClick(Sender: TObject);
var
  listItem: TlistItem;
  selected: Integer;
  filename: String;
begin
  if MessageDlg('Sind Sie sicher, das Sie die ausgewählte Forgeversion entfernen möchten?', mtConfirmation, [mbYes,mbNo],0) = mrYes then
  begin
    selected:=StrToInt(ListView2.Selected.Caption);
    MainFrm.Query.SQL.Clear;
    MainFrm.Query.Params.Clear;
    MainFrm.Query.Params.CreateParam(ftInteger,'id',ptInputOutput);
    MainFrm.Query.ParamByName('id').Value:=selected;
    MainFrm.Query.SQL.Text:='select * from forgeversions where id=:id';
    MaiNFrm.Query.Open;
    filename:=MainFrm.Query.fieldbyname('filename').AsString;
    MainFrm.Query.Close;
    if DeleteFile(ExtractFilePath(application.ExeName)+'Forge\'+filename) then
    begin
      ListItem:=ListView1.Items.Add;
      ListItem.Caption:=ListView2.Selected.Caption;
      ListItem.StateIndex:=0;
      listItem.SubItems.Add(ListView2.Selected.SubItems[0]);
      listItem.SubItems.Add(ListView2.Selected.SubItems[1]);
      listItem.SubItems.Add(ListView2.Selected.SubItems[2]);
      listItem.SubItems.Add(ListView2.Selected.SubItems[3]);
      listItem.SubItems.Add(ListView2.Selected.SubItems[4]);
      ListView2.Selected.Delete;
      MainFrm.Query.SQL.Text:='update forgeversions set installed=0 where id=:id';
      MainFrm.Query.ExecSQL;
    end;
  end;
end;

end.
