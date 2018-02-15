unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvAppStyler,
  AdvOfficeHint, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar,
  Menus, AdvMenus, AdvToolBarStylers, AdvMenuStylers, ImgList, ComCtrls,
  ExtCtrls, AdvNavBar, XPMan, ActnList, ExeInfo, uLkJSON, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection,AdvStyleIF, WUpdateWiz, WUpdateLanguages, WUpdate, OleCtrls,
  SHDocVw, AdvPanel;

type
  TStrArray = array of string;

type
  TmainFrm = class(TForm)
    DockPanel: TAdvDockPanel;
    MenuStyler: TAdvMenuOfficeStyler;
    ToolBarStyler: TAdvToolBarOfficeStyler;
    MainMenu: TAdvMainMenu;
    MenuToolBar: TAdvToolBar;
    ButtonToolBar: TAdvToolBar;
    StatusBar: TAdvOfficeStatusBar;
    StatusBarStyler: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvAppStyler1: TAdvAppStyler;
    AdvFormStyler1: TAdvFormStyler;
    MDITabSet: TAdvOfficeMDITabSet;
    MDITabBarStyler: TAdvOfficeTabSetOfficeStyler;
    NavBarIcons: TImageList;
    XPManifest1: TXPManifest;
    Projekt1: TMenuItem;
    Extras1: TMenuItem;
    Hilfe1: TMenuItem;
    ActionList1: TActionList;
    newProjectAction: TAction;
    NeuesProjekt1: TMenuItem;
    AdvToolBarButton1: TAdvToolBarButton;
    MenuIcons: TImageList;
    openProjectAction: TAction;
    saveProjectAction: TAction;
    saveProjectAsAction: TAction;
    closeAllAction: TAction;
    Projektffnen1: TMenuItem;
    Projektspeichern1: TMenuItem;
    ProjektSpeichernunter1: TMenuItem;
    AlleSchlieen1: TMenuItem;
    N1: TMenuItem;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBarButton3: TAdvToolBarButton;
    AdvToolBarButton4: TAdvToolBarButton;
    AdvToolBarButton5: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    ExeInfo1: TExeInfo;
    settingsAction: TAction;
    exitAction: TAction;
    AdvToolBarButton6: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarButton7: TAdvToolBarButton;
    Einstellungen1: TMenuItem;
    N2: TMenuItem;
    Programmbeenden1: TMenuItem;
    openEclipseAction: TAction;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarButton8: TAdvToolBarButton;
    AktivesProjektinEclipseffnen1: TMenuItem;
    ToolBarIcons: TImageList;
    skinOffice2003Blue: TAction;
    skinOffice2003Classic: TAction;
    skinOffice2003Silver: TAction;
    skinOffice2007Luna: TAction;
    skinOffice2007Obsidian: TAction;
    skinOffice2007Silver: TAction;
    skinOffice2010Black: TAction;
    skinOffice2010Blue: TAction;
    skinOffice2010Silver: TAction;
    skinTerminal: TAction;
    skinWhidbeyStyle: TAction;
    skinWindowsXP: TAction;
    skinWindowsVista: TAction;
    skinWindows7: TAction;
    skinOffice2003Olive: TAction;
    AdvToolBarButton9: TAdvToolBarButton;
    forgeManagerAction: TAction;
    ForgeVersionenverwalten1: TMenuItem;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarButton10: TAdvToolBarButton;
    AdvToolBarButton11: TAdvToolBarButton;
    AdvToolBarButton12: TAdvToolBarButton;
    AdvToolBarButton13: TAdvToolBarButton;
    AdvToolBarButton14: TAdvToolBarButton;
    helpTopicsAction: TAction;
    homepageAction: TAction;
    donateAction: TAction;
    updateAction: TAction;
    infoAction: TAction;
    Hilfethemen1: TMenuItem;
    N3: TMenuItem;
    Homepagebesuchen1: TMenuItem;
    Spenden1: TMenuItem;
    NachUpdatessuchen1: TMenuItem;
    N4: TMenuItem;
    Infober1: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Con: TZConnection;
    Query: TZQuery;
    Timer1: TTimer;
    javaManagerAction: TAction;
    AdvToolBarButton15: TAdvToolBarButton;
    JavaVersionenverwalten1: TMenuItem;
    WebUpdate1: TWebUpdate;
    WebUpdateWizard1: TWebUpdateWizard;
    ul_german: TWebUpdateWizardGerman;
    AdvPopupMenu1: TAdvPopupMenu;
    Timer2: TTimer;
    AdvPanel1: TAdvPanel;
    WebBrowser1: TWebBrowser;
    AdvPanelStyler1: TAdvPanelStyler;
    ul_english: TWebUpdateWizardEnglish;
    procedure FormCreate(Sender: TObject);
    procedure newProjectActionExecute(Sender: TObject);
    procedure saveProjectAsActionExecute(Sender: TObject);
    procedure saveProjectActionExecute(Sender: TObject);
    procedure openProjectActionExecute(Sender: TObject);
    procedure forgeManagerActionExecute(Sender: TObject);
    procedure openEclipseActionExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure settingsActionExecute(Sender: TObject);
    procedure closeAllActionExecute(Sender: TObject);
    procedure exitActionExecute(Sender: TObject);
    procedure javaManagerActionExecute(Sender: TObject);
    procedure helpTopicsActionExecute(Sender: TObject);
    procedure homepageActionExecute(Sender: TObject);
    procedure donateActionExecute(Sender: TObject);
    procedure updateActionExecute(Sender: TObject);
    procedure infoActionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    projectFolder: String;
    eclipseFile: String;
    guiDesign: Integer;
    javaVersion: String;
    language: integer;
    langfile: String;
    autoUpdate: Boolean;
    procedure CreateMDIChild(filename: String);
    procedure SaveProjectFile(filename: String);
    procedure OpenProjectFile(filename: String);
    function ConvertPackageName(packagename: String): String;
    function MakeAuthorList(authors: String): String;
    procedure SaveConfig(filename: String);
    procedure LoadConfig(filename: String);
    procedure SetLanguage();
    function ExtractVersionPart(version: String; part: integer):double;
    function MakeVersion(major, miner, release, build: double): String;
    function GetMinecraftMiner(version: String): Integer;
    function GetMessageString(Key: String): String;
  end;

var
  mainFrm: TmainFrm;


implementation

uses child, forgeversion, settings, javasdks, info;

{$R *.dfm}

// External Functions
function GetProgramTitle(name, version: String): String; StdCall; external 'Libraries\AHDLibrary.dll';
procedure SetDelay(const Milliseconds: DWord); StdCall; external 'Libraries\AHDLibrary.dll';
procedure ExecuteFile(Filename, Params, WorkDir: String); StdCall; external 'Libraries\AHDLibrary.dll';
function SetStyle(Flag: Integer): TTMSStyle; StdCall; external 'Libraries\AHDLibrary.dll';
function ReadFromIni(Filename, Section, Key: String): String; StdCall; external 'Libraries\AHDLibrary.dll';

// Strings zerstückeln (interne Hilfsfunktion)
function Explode(var a: TStrArray; Border, S: string): Integer;
var
  S2: string;
begin
  Result  := 0;
  S2 := S + Border;
  repeat
    SetLength(A, Length(A) + 1);
    a[Result] := Copy(S2, 0,Pos(Border, S2) - 1);
    Delete(S2, 1,Length(a[Result] + Border));
    Inc(Result);
  until S2 = '';
end;

function TMainFrm.ConvertPackageName(packagename: String): String;
var
  A: TStrArray;
begin
  Explode(A,'.',packagename);
  result:=A[0]+'\'+A[1]+'\'+A[2];
end;

function TMainFrm.ExtractVersionPart(version: String; part: integer): double;
var
  A: TStrArray;
begin
  Explode(A,'.', version);
  case part of
    0: result:=StrToInt(A[0]);
    1: result:=StrToInt(A[1]);
    2: result:=StrToInt(A[2]);
    3: result:=StrToInt(A[3]);
    else result:=0;
  end;
end;

function TMainFrm.MakeVersion(major, miner, release, build: double): String;
begin
  result:=floatToStr(major)+'.'+floatToStr(miner)+'.'+floatToStr(release)+'.'+floatToStr(build);
end;

function TMainFrm.GetMinecraftMiner(version: String): integer;
var
  A: TStrArray;
begin
  Explode(A,'.',version);
  result:=StrToInt(A[1]);
end;

function TMainFrm.MakeAuthorList(authors: String): String;
var
  A: TStrArray;
  x, len: Integer;
  output: String;
begin
  Explode(A,',',authors);
  len:=Length(A);
  for x:=0 to len-1 do
  begin
    output:=output+','+'"'+trim(A[x])+'"';
  end;
  result:=copy(output,2,Length(output));
end;

// Create a MDI Children
procedure TMainFrm.CreateMDIChild(filename: String);
var
  child: TMDIChild;
begin
  child:=TMDIChild.Create(nil);
  child.Show;
  child.Update;
  child.Caption:=ExtractFileName(filename);
  child.MDIFileName.Caption:=filename;
  MDITabSet.AddTab(child);
  MDITabSet.GetTab(child).Caption:=ExtractFileName(filename);
  MDITabSet.GetTab(child).ImageIndex:=0;
  if fileexists(filename) then
  begin
    OpenProjectFile(filename);
  end;
end;

// Save the Project as
procedure TMainFrm.SaveProjectFile(filename: String);
var
  child: TMDIChild;
  rootObject, projectObject : TlkJSONObject;
  output: TStringList;
  i: Integer;
begin
  child:=TMDIChild(MainFrm.ActiveMDIChild);
  rootObject:=TlkJSONObject.Create();
  projectObject:=TlkJSONObject.Create();

  projectObject.Add('ForgeVersion',child.selectedForgeVersion.Caption);
  projectObject.Add('JavaSDK',child.JavaSDK.ItemIndex);
  projectObject.Add('WorkspacePath',child.workspacePath.Text);
  projectObject.Add('ModID',child.modID.Text);
  projectObject.Add('ModName',child.modName.Text);
  projectObject.Add('ModVersion',MakeVersion(child.major.value,child.miner.value,child.release.value,child.build.value));
  projectObject.Add('ModDescription',child.modDescription.Text);
  projectObject.Add('PackageName',child.packageName.Text);
  projectObject.Add('Authors',child.modAuthors.Text);
  projectObject.Add('URL',child.modUrl.Text);
  projectObject.Add('UpdateURL',child.updateURL.Text);
  projectObject.Add('Credits',child.modCredits.Text);
  projectObject.Add('LogoFile',child.logoFile.FileName);
  projectObject.Add('Items',child.items.Checked);
  projectObject.Add('Blocks',child.blocks.Checked);
  projectObject.Add('CreativeTab',{true}child.creativeTab.Checked);
  projectObject.Add('Recipes',child.recipes.Checked);
  projectObject.Add('DeutschLanguage',child.deLang.Checked);

  rootObject.Add('ProjectData',projectObject);

  output:=TStringList.Create;
  i:=0;
  output.Add(GenerateReadableText(rootObject, i));
  output.SaveToFile(Filename);
  output.Free;
  rootObject.Free;

  child.Caption:=ExtractFileName(filename);
  child.MDIFileName.Caption:=filename;
  MainFrm.MDITabSet.AdvOfficeTabs[MainFrm.MDITabSet.ActiveTabIndex].Caption:=child.Caption;
end;

// Open Project File
procedure TMainFrm.OpenProjectFile(filename: String);
var
  child: TMDIChild;
  rootObject, projectObject : TlkJSONObject;
  input: TStringList;
begin
  child:=TMDIChild(MainFrm.ActiveMDIChild);
  input:=TStringList.Create;
  input.LoadFromFile(filename);
  rootObject:=TlkJSON.ParseText(input.Text) as TlkJSONObject;
  projectObject:=(rootObject.Field['ProjectData'] as TlkJSONObject);
  child.JavaSDK.ItemIndex:=projectObject.getInt('JavaSDK');
  child.workspacePath.Directory:=projectObject.getString('WorkspacePath');
  child.modName.Text:=projectObject.getString('ModName');
  child.major.value:=ExtractVersionPart(projectObject.getString('ModVersion'),0);
  child.miner.value:=ExtractVersionPart(projectObject.getString('ModVersion'),1);
  child.release.value:=ExtractVersionPart(projectObject.getString('ModVersion'),2);
  child.build.value:=ExtractVersionPart(projectObject.getString('ModVersion'),3);
  child.modID.Text:=projectObject.getString('ModID');
  child.modDescription.Text:=projectObject.getString('ModDescription');
  child.packageName.Text:=projectObject.getString('PackageName');
  child.selectedForgeVersion.Caption:=projectObject.getString('ForgeVersion');
  child.forgeVersion.FindCaption(0,child.selectedForgeVersion.Caption,true, true, true).Selected:=true;
  child.modAuthors.Text:=projectObject.getString('Authors');
  child.modUrl.Text:=projectObject.getString('URL');
  child.updateURL.Text:=projectObject.getString('UpdateURL');
  child.modCredits.Text:=projectObject.getString('Credits');
  child.logoFile.FileName:=projectObject.getString('LogoFile');
  child.items.Checked:=projectObject.getBoolean('Items');
  child.blocks.Checked:=projectObject.getBoolean('Blocks');
  child.creativeTab.Checked:={true;}projectObject.getBoolean('CreativeTab');
  child.recipes.Checked:=projectObject.getBoolean('Recipes');
  child.deLang.Checked:=projectObject.getBoolean('DeutschLanguage');
  input.Free;
  if fileexists(child.workspacePath.Directory+'\.classpath') then
  begin
    child.createWorkspace.Enabled:=false;
    child.eraseWorkspace.Enabled:=true;
    child.forgeVersion.Enabled:=false;
    child.mcModInfoTab.TabVisible:=true;
    child.buildGradleTab.TabVisible:=true;
    child.resourcesTab.TabVisible:=true;
    child.sourcecodeTab.TabVisible:=true;
    child.startMinecraft.Enabled:=true;
    child.buildProject.Enabled:=true;
    child.AdvMemo1.Lines.LoadFromFile(child.workspacePath.Directory+'\src\main\resources\mcmod.info');
    child.AdvMemo2.Lines.LoadFromFile(child.workspacePath.Directory+'\build.gradle');
  end
  else
  begin
    child.createWorkspace.Enabled:=true;
    child.eraseWorkspace.Enabled:=false;
  end;
  child.modified.Caption:='';
end;

procedure TMaiNFrm.SaveConfig(filename: String);
var
  rootObject, configObject : TlkJSONObject;
  output: TStringList;
  i: Integer;
begin
  rootObject:=TlkJSONObject.Create();
  configObject:=TlkJSONObject.Create();
  configObject.Add('ProjectFolder',settingsFrm.projectFolder.Directory);
  configObject.Add('EclipseFile',settingsFrm.eclipseFile.FileName);
  configObject.Add('GUIDesign',settingsFrm.GUIDesign.ItemIndex);
  configObject.Add('JavaSDK',settingsFrm.JavaSDK.Text);
  configObject.Add('Language',settingsFrm.language.ItemIndex);
  configObject.Add('AutoUpdate',settingsfrm.autoUpdate.Checked);
  rootObject.Add('Config',configObject);
  output:=TStringList.Create;
  i:=0;
  output.Add(GenerateReadableText(rootObject, i));
  output.SaveToFile(Filename);
  output.Free;
  rootObject.Free;
  projectFolder:=settingsFrm.projectFolder.Directory;
  eclipseFile:=settingsFrm.eclipseFile.FileName;
  guiDesign:=settingsFrm.GUIDesign.ItemIndex;
  javaVersion:=settingsFrm.JavaSDK.Text;
  language:=settingsFrm.language.ItemIndex;
  if language = 0 then
    langfile:=ExtractFilePath(application.ExeName)+'Languages\de_DE.lang'
  else
    langfile:=ExtractFilePath(application.ExeName)+'Languages\en_US.lang';
  autoUpdate:=settingsFrm.autoUpdate.Checked;
  mainFrm.AdvFormStyler1.Style:=SetStyle(guiDesign);
  mainFrm.AdvAppStyler1.Style:=SetStyle(guiDesign);
end;

procedure TmainFrm.LoadConfig(filename: String);
var
  rootObject, configObject : TlkJSONObject;
  input: TStringList;
begin
  input:=TStringList.Create;
  input.LoadFromFile(filename);
  rootObject:=TlkJSON.ParseText(input.Text) as TlkJSONObject;
  configObject:=(rootObject.Field['Config'] as TlkJSONObject);
  projectFolder:=configObject.getString('ProjectFolder');
  eclipseFile:=configObject.getString('EclipseFile');
  guiDesign:=configObject.getInt('GUIDesign');
  javaVersion:=configObject.getString('JavaSDK');
  language:=configObject.getInt('Language');
  autoUpdate:=configObject.getBoolean('AutoUpdate');
  if language = 0 then
    langfile:=ExtractFilePath(application.ExeName)+'Languages\de_DE.lang'
  else
    langfile:=ExtractFilePath(application.ExeName)+'Languages\en_US.lang';
end;

procedure TMainFrm.SetLanguage();
begin
  // Update the main menu
  mainFrm.MainMenu.BeginUpdate;
  mainFrm.Projekt1.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project');
  mainFrm.Extras1.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.extras');
  mainFrm.Hilfe1.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help');
  mainFrm.MenuToolBar.UpdateMenu;
  mainFrm.MenuToolBar.Update;
  mainFrm.MainMenu.EndUpdate;

  // Update the sub menu project
  mainFrm.newProjectAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.new');
  mainFrm.newProjectAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.new');
  mainFrm.openProjectAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.open');
  mainFrm.openProjectAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.open');
  mainFrm.saveProjectAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.save');
  mainFrm.saveProjectAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.save');
  mainFrm.saveProjectAsAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.saveas');
  mainFrm.saveProjectAsAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.saveas');
  mainFrm.closeAllAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.closeall');
  mainFrm.closeAllAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.closeall');
  mainFrm.settingsAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.settings');
  mainFrm.settingsAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.settings');
  mainFrm.exitAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.exit');
  mainFrm.exitAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.project.exit');

  // Update the sub menu extras
  mainFrm.openEclipseAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.extras.eclipse');
  mainFrm.openEclipseAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.extras.eclipse');
  mainFrm.forgeManagerAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.extras.forge');
  mainFrm.forgeManagerAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.extras.forge');
  mainFrm.javaManagerAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.extras.java');
  mainFrm.javaManagerAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.extras.java');

  // Update the sub menu help
  mainFrm.helpTopicsAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.help');
  mainFrm.helpTopicsAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.help');
  mainFrm.homepageAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.homepage');
  mainFrm.homepageAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.homepage');
  mainFrm.donateAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.donate');
  mainFrm.donateAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.donate');
  mainFrm.updateAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.update');
  mainFrm.updateAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.update');
  mainFrm.infoAction.Caption:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.info');
  mainFrm.infoAction.Hint:=ReadFromIni(mainFrm.langfile,'MainForm','menu.help.info');

  // Update the navigation of the TabSet Control
  mainFrm.MDITabSet.ButtonSettings.CloseButtonHint:=ReadFromIni(mainFrm.langfile,'MainForm','mditabset.close');
  maiNFrm.MDITabSet.ButtonSettings.ScrollButtonFirstHint:=ReadFromIni(mainFrm.langfile,'MainForm','mditabset.first');
  mainFrm.MDITabSet.ButtonSettings.ScrollButtonPrevHint:=ReadFromIni(mainFrm.langfile,'MainForm','mditabset.prev');
  mainFrm.MDITabSet.ButtonSettings.ScrollButtonNextHint:=ReadFromIni(mainFrm.langfile,'MainForm','mditabset.next');
  mainFrm.MDITabSet.ButtonSettings.ScrollButtonLastHint:=ReadFromIni(mainFrm.langfile,'MainForm','mditabset.last');
  mainFrm.MDITabSet.ButtonSettings.TabListButtonHint:=ReadFromIni(mainFrm.langfile,'MainForm','mditabset.tablist');

  // Update the settings dialog
  settingsFrm.Caption:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.caption');
  settingsFrm.label1.Caption:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.projectpath');
  settingsFrm.Label2.Caption:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.eclipse');
  settingsFrm.Label3.Caption:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.gui');
  settingsFrm.Label4.Caption:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.javavm');
  settingsFrm.Label5.Caption:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.language');
  settingsFrm.autoUpdate.Caption:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.autoupdate');
  settingsFrm.language.Items[0]:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.language.de');
  settingsFrm.language.Items[1]:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.language.en');
  settingsFrm.applyBtn.Caption:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.apply');
  settingsFrm.cancelBtn.Caption:=ReadFromIni(mainFrm.langfile,'SettingsForm','settings.cancel');

  // Update java manager dialog
  javaSDKManager.Caption:=ReadFromIni(mainFrm.langfile,'JavaForm','caption');
  javaSDKManager.addJava.Caption:=ReadFromIni(mainFrm.langfile,'JavaForm','toolbutton.add');
  javaSDKManager.removeJava.Caption:=ReadFromIni(mainFrm.langfile,'JavaForm','toolbutton.remove');
  javaSDKManager.closeBtn.Caption:=ReadFromIni(mainFrm.langfile,'JavaForm','toolbutton.close');
  javaSDKManager.Label1.Caption:=ReadFromIni(mainFrm.langfile,'JavaForm','label.javaversions');
  javaSDKManager.ListView1.Columns.Items[0].Caption:=ReadFromIni(mainFrm.langfile,'JavaForm','listview.header.filename');
  javaSDKManager.ListView1.Columns.Items[1].Caption:=ReadFromIni(mainFrm.langfile,'JavaForm','listview.header.productname');
  javaSDKManager.ListView1.Columns.Items[2].Caption:=ReadFromIni(mainFrm.langfile,'JavaForm','listview.header.productversion');

  // Update Forge version dialog
  forgeVersionFrm.Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','caption');
  forgeVersionFrm.downloadBtn.Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','toolbutton.download');
  forgeVersionFrm.removeBtn.Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','toolbutton.remove');
  forgeVersionFrm.closeBtn.Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','toolbutton.close');
  forgeVersionFrm.Label1.Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','label.availableforge');
  forgeVersionFrm.Label2.Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','label.installedforge');
  forgeVersionFrm.ListView1.Columns.Items[2].Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','listview.header.mcversion');
  forgeVersionFrm.ListView1.Columns.Items[3].Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','listview.header.date');
  forgeVersionFrm.ListView1.Columns.Items[4].Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','listview.header.recommended');
  forgeVersionFrm.ListView1.Columns.Items[5].Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','listview.header.filename');
  forgeVersionFrm.ListView2.Columns.Items[2].Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','listview.header.mcversion');
  forgeVersionFrm.ListView2.Columns.Items[3].Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','listview.header.date');
  forgeVersionFrm.ListView2.Columns.Items[4].Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','listview.header.recommended');
  forgeVersionFrm.ListView2.Columns.Items[5].Caption:=ReadFromIni(mainFrm.langfile,'ForgeForm','listview.header.filename');

  // Update the webbrowser
  Webbrowser1.Navigate('https://www.andhilldev.de/software/forgemodcreator/welcome/index.php?lang='+IntToStr(mainFrm.language)+'&design='+IntToStr(maiNFrm.guiDesign));

  // Update the update dialog
  if mainFrm.language = 0 then
    WebUpdateWizard1.Language:=ul_german
  else
    WebUpdateWizard1.Language:=ul_english;
end;

function TMainFrm.GetMessageString(Key: String): String;
begin
  result:=ReadFromIni(langfile,'Messages',Key);
end;

procedure TmainFrm.FormCreate(Sender: TObject);
begin
  application.Title:=GetProgramTitle(exeinfo1.ProductName, exeinfo1.FileVersion);
  caption:=application.Title;
  con.LibraryLocation:=ExtractFilePath(application.ExeName)+'Libraries\sqlite3.dll';
  con.Database:=ExtractFilePath(application.ExeName)+'Data\data.db';
  con.Connect;
  if fileExists(ExtractFilePath(application.ExeName)+'config.json') then
  begin
    LoadConfig(ExtractFilePath(application.ExeName)+'config.json');
  end
  else
  begin
    projectFolder:='';
    eclipseFile:='';
    guiDesign:=9;
    javaVersion:='';
    language:=0;
    langfile:=extractFilePath(application.ExeName)+'Languages\de_DE.lang';
    autoUpdate:=false;
  end;
  AdvAppStyler1.Style:=SetStyle(guiDesign);
  openDialog1.InitialDir:=projectFolder;
  saveDialog1.InitialDir:=projectFolder;
end;

procedure TmainFrm.newProjectActionExecute(Sender: TObject);
begin
  if language = 0 then
    CreateMDIChild('Unbenannt')
  else
    CreateMDIChild('Unnamed');
end;

procedure TmainFrm.saveProjectAsActionExecute(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    SaveProjectFile(SaveDialog1.FileName);
  end;
end;

procedure TmainFrm.saveProjectActionExecute(Sender: TObject);
var
  Child: TMDIChild;
begin
  Child:=TMDIChild(MainFrm.ActiveMDIChild);
  if fileExists(Child.MDIFileName.Caption) then
  begin
    if MessageDlg(GetMessageString('override.project'),mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      SaveProjectFile(Child.MDIFileName.Caption);
    end;
  end
  else
  begin
    saveProjectAsAction.Execute;
  end;
end;

procedure TmainFrm.openProjectActionExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    CreateMDIChild(OpenDialog1.FileName);
  end;
end;

procedure TmainFrm.forgeManagerActionExecute(Sender: TObject);
begin
  forgeVersionFrm.ShowModal;
end;

procedure TmainFrm.openEclipseActionExecute(Sender: TObject);
var
  child: TMDIChild;
  commandline: String;
  data: String;
begin
  if FileExists(mainFrm.eclipseFile) then
  begin
    child:=TMDICHild(MaiNFrm.ActiveMDIChild);
    data:='-vm "'+mainFrm.javaVersion+'" -data "'+child.workspacePath.Directory+'\eclipse"';
    ExecuteFile(mainFrm.eclipseFile,data,'');
  end
  else
  begin
    MessageDlg(GetMessageString('eclipse.notfound'),mtError,[mbOK],0);
  end;
end;

procedure TmainFrm.Timer1Timer(Sender: TObject);
var
  child: TMDIChild;
begin
  child:=TMDIChild(MainFrm.ActiveMDIChild);
  if MainFrm.MDIChildCount >= 1 then
  begin
    if fileexists(child.workspacePath.Directory+'\.classpath') then
    begin
      openEclipseAction.Visible:=true
    end
    else
    begin
      openEclipseAction.Visible:=false;
    end;
    saveProjectAction.Enabled:=true;
    saveProjectAsAction.Enabled:=true;
    closeAllAction.Enabled:=true;
  end
  else
  begin
    openEclipseAction.Visible:=false;
    saveProjectAction.Enabled:=false;
    saveProjectAsAction.Enabled:=false;
    closeAllAction.Enabled:=false;
  end;
  
end;

procedure TmainFrm.settingsActionExecute(Sender: TObject);
begin
  settingsFrm.ShowModal;
end;

procedure TmainFrm.closeAllActionExecute(Sender: TObject);
var
  x, MDIChildCount: Integer;
begin
  MDIChildCount:=mainFrm.MDIChildCount;
  for x:=MDIChildCount - 1 downto 0 do
  begin
    MDIChildren[x].Close;
  end;
end;

procedure TmainFrm.exitActionExecute(Sender: TObject);
begin
  if messageDlg(GetMessageString('exit'),mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    application.Terminate;
  end;
end;

procedure TmainFrm.javaManagerActionExecute(Sender: TObject);
begin
  javaSDKManager.SHowModal;
end;

procedure TmainFrm.helpTopicsActionExecute(Sender: TObject);
begin
  ExecuteFile(ExtractFilePath(application.ExeName)+'hilfe.chm','',ExtractFilePath(application.ExeName));  
end;

procedure TmainFrm.homepageActionExecute(Sender: TObject);
begin
  ExecuteFile('https://www.andhilldev.de','','');
end;

procedure TmainFrm.donateActionExecute(Sender: TObject);
begin
  ExecuteFile('https://www.paypal.me/andreashiller','','');
end;

procedure TmainFrm.updateActionExecute(Sender: TObject);
begin
  WebUpdateWizard1.Execute();
end;

procedure TmainFrm.infoActionExecute(Sender: TObject);
begin
  infoFrm.SHowModal;
end;

procedure TmainFrm.FormShow(Sender: TObject);
begin
  OpenDialog1.InitialDir:=projectFolder;
  SaveDialog1.InitialDir:=projectFolder;
  if autoUpdate then
  begin
    if WebUpdate1.NewVersionAvailable() then
    begin
      if MessageDlg(GetMessageString('newupdatefound')+WebUpdate1.NewVersionInfo+GetMessageString('wantupdate'),mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        WebUpdateWizard1.Execute;
      end;
    end;
  end;
  SetLanguage();
end;

procedure TmainFrm.Timer2Timer(Sender: TObject);
begin
  if mainFrm.MDIChildCount >= 1 then
  begin
    AdvPanel1.Visible:=false;
  end
  else
  begin
    AdvPanel1.Visible:=true;
  end;
end;

end.
