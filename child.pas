unit child;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvAppStyler, AdvOfficePager, AdvOfficePagerStylers,
  AdvPanel, ExtCtrls, Mask, JvExMask, JvToolEdit, Advmxml, AdvMemo, advmphp,
  AdvGlowButton, AdvToolBar, AdvToolBarStylers, ImgList, uLkJSON, ZipMstr, DB,
  ConsoleIO, ComCtrls, JvComponentBase, JvCreateProcess, Spin, AdvGroupBox,
  JvSpin, ShellApi, SynEdit, JvThread, math;

type
  TMDIChild = class(TForm)
    MDIFileName: TLabel;
    AdvOfficePager1: TAdvOfficePager;
    defaultsTab: TAdvOfficePage;
    mcModInfoTab: TAdvOfficePage;
    buildGradleTab: TAdvOfficePage;
    AdvFormStyler1: TAdvFormStyler;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    sourcecodeTab: TAdvOfficePage;
    resourcesTab: TAdvOfficePage;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvMemo1: TAdvMemo;
    AdvMemo2: TAdvMemo;
    consoleTab: TAdvOfficePage;
    AdvPHPMemoStyler1: TAdvPHPMemoStyler;
    AdvXMLMemoStyler1: TAdvXMLMemoStyler;
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    createWorkspace: TAdvToolBarButton;
    startMinecraft: TAdvToolBarButton;
    buildProject: TAdvToolBarButton;
    ImageList1: TImageList;
    ZipMaster1: TZipMaster;
    ConsoleIO1: TConsoleIO;
    Timer1: TTimer;
    ImageList2: TImageList;
    modified: TLabel;
    AdvDockPanel2: TAdvDockPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarButton1: TAdvToolBarButton;
    AdvToolBarButton2: TAdvToolBarButton;
    ImageList3: TImageList;
    AdvGroupBox1: TAdvGroupBox;
    selectedForgeVersion: TLabel;
    Label12: TLabel;
    forgeVersion: TListView;
    Label1: TLabel;
    javaSDK: TComboBox;
    Label8: TLabel;
    workspacePath: TJvDirectoryEdit;
    Label3: TLabel;
    Label5: TLabel;
    modName: TEdit;
    Label6: TLabel;
    Label4: TLabel;
    modID: TEdit;
    Label9: TLabel;
    modAuthors: TEdit;
    Label10: TLabel;
    modUrl: TEdit;
    Label11: TLabel;
    modCredits: TEdit;
    Label2: TLabel;
    modDescription: TMemo;
    Label7: TLabel;
    packageName: TEdit;
    AdvGroupBox2: TAdvGroupBox;
    items: TCheckBox;
    blocks: TCheckBox;
    recipes: TCheckBox;
    creativeTab: TCheckBox;
    deLang: TCheckBox;
    Bevel1: TBevel;
    major: TJvSpinEdit;
    miner: TJvSpinEdit;
    release: TJvSpinEdit;
    build: TJvSpinEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    updateURL: TEdit;
    Label17: TLabel;
    logoFile: TJvFilenameEdit;
    Console: TMemo;
    eraseWorkspace: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    JvThread1: TJvThread;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure modNameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure createWorkspaceClick(Sender: TObject);
    procedure ConsoleIO1ReceiveOutput(Sender: TObject; const Cmd: String);
    procedure ConsoleIO1Error(Sender: TObject; const Cmd: String);
    procedure ConsoleIO1ReceiveError(Sender: TObject; const Cmd: String);
    procedure Timer1Timer(Sender: TObject);
    procedure forgeVersionSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure buildProjectClick(Sender: TObject);
    procedure startMinecraftClick(Sender: TObject);
    procedure javaSDKSelect(Sender: TObject);
    procedure workspacePathChange(Sender: TObject);
    procedure modVersionChange(Sender: TObject);
    procedure modIDChange(Sender: TObject);
    procedure modDescriptionChange(Sender: TObject);
    procedure packageNameChange(Sender: TObject);
    procedure modAuthorsChange(Sender: TObject);
    procedure modUrlChange(Sender: TObject);
    procedure modCreditsChange(Sender: TObject);
    procedure eraseWorkspaceClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure SetLanguage(langfile: String);
  end;

var
  MDIChild: TMDIChild;

implementation

uses main, StrUtils;

{$R *.dfm}

function DeleteFiles(const AFile: string): boolean; StdCall; external 'Libraries\AHDLibrary.dll';
procedure SetDelay(const Milliseconds: DWord); StdCall; external 'Libraries\AHDLibrary.dll';
function IsExeRunning(const AExeName: string): boolean; StdCall; external 'Libraries\AHDLibrary.dll';
function KillTask(ExeFileName: string): Integer; Stdcall; external 'Libraries\AHDLibrary.dll';
function ReadFromIni(Filename, Section, Key: String): String; StdCall; external 'Libraries\AHDLibrary.dll';

procedure TMDIChild.SetLanguage(langfile: String);
var
  x, itemcount: Integer;
begin
  AdvGroupBox1.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo');
  label1.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.forgeversion');
  label12.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.selected');
  label8.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.java');
  label3.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.workspacepath');
  label5.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.modname');
  label6.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.major');
  label13.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.miner');
  label14.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.release');
  label15.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.build');
  label4.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.modid');
  label9.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.authors');
  label10.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.url');
  label16.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.updateurl');
  label2.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.description');
  label11.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.credits');
  label7.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.packagename');
  label17.Caption:=ReadFromIni(langfile,'ChildForm','child.label.modinfo.logo');
  AdvGroupBox2.Caption:=ReadFromIni(langfile,'ChildForm','child.label.classes');
  items.Caption:=ReadFromIni(langfile,'ChildForm','child.label.classes.items');
  blocks.Caption:=ReadFromIni(langfile,'ChildForm','child.label.classes.blocks');
  recipes.Caption:=ReadFromIni(langfile,'ChildForm','child.label.classes.recipes');
  creativeTab.Caption:=ReadFromIni(langfile,'ChildForm','child.label.classes.creativetab');
  deLang.Caption:=ReadFromIni(langfile,'ChildForm','child.label.classes.language');
  createWorkspace.Caption:=ReadFromIni(langfile,'ChildForm','child.toolbutton.create');
  eraseWorkspace.Caption:=ReadFromIni(langfile,'ChildForm','child.toolbutton.remove');
  startMinecraft.Caption:=ReadFromIni(langfile,'ChildForm','child.toolbutton.minecraft');
  buildProject.Caption:=ReadFromIni(langfile,'ChildForm','child.toolbutton.build');
  forgeVersion.Columns.Items[0].Caption:=ReadFromIni(langfile,'ChildForm','child.listview.header.version');
  forgeVersion.Columns.Items[1].Caption:=ReadFromIni(langfile,'ChildForm','child.listview.header.mc');
  forgeVersion.Columns.Items[2].Caption:=ReadFromIni(langfile,'ChildForm','child.listview.header.recommended');
  if mainFrm.language = 1 then
  begin
    itemcount:=forgeVersion.Items.Count;
    for x:=0 to itemcount - 1 do
    begin
      if forgeVersion.Items.Item[x].SubItems[1] = 'Ja' then
        forgeVersion.Items.Item[x].SubItems[1] := 'Yes';
      if forgeVersion.Items.Item[x].SubItems[1] = 'Nein' then
        forgeVersion.Items.Item[x].SubItems[1] := 'No';
    end;
  end;
  if mainFrm.language = 0 then
  begin
    itemcount:=forgeVersion.Items.Count;
    for x:=0 to itemcount - 1 do
    begin
      if forgeVersion.Items.Item[x].SubItems[1] = 'Yes' then
        forgeVersion.Items.Item[x].SubItems[1] := 'Ja';
      if forgeVersion.Items.Item[x].SubItems[1] = 'No' then
        forgeVersion.Items.Item[x].SubItems[1] := 'Nein';
    end;
  end;
  defaultsTab.Caption:=ReadFromIni(langfile,'ChildForm','child.tab.default');
  resourcesTab.Caption:=ReadFromIni(langfile,'ChildForm','child.tab.resources');
  sourcecodeTab.Caption:=ReadFromIni(langfile,'ChildForm','child.tab.source');
  consoleTab.Caption:=ReadFromIni(langfile,'ChildForm','child.tab.console');
end;

procedure TMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fileexists(MDIFileName.Caption) then
  begin
    if modified.Caption = '1' then
    begin
      mainFrm.saveProjectAction.Execute;
    end;
    Action:=caFree;
  end
  else
  begin
    if MessageDlg(mainFrm.GetMessageString('notsaved1')+' '+MDIFileName.Caption+' '+mainFrm.GetMessageString('notsaved2'), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      mainFrm.saveProjectAsAction.Execute;
      Action:=caFree;
    end
    else
    begin
      Action:=caFree;
    end;
  end;
end;

procedure TMDIChild.modNameChange(Sender: TObject);
begin
  modID.Text:=Trim(LowerCase(StringReplace(modName.Text,' ','',[rfReplaceAll])));
  modified.Caption:='1';
end;

procedure TMDIChild.FormShow(Sender: TObject);
var
  ListItem: TListItem;
begin
  MainFrm.Query.SQL.Clear;
  mainFrm.Query.Params.Clear;
  forgeVersion.Items.Clear;
  MainFrm.Query.SQL.Text:='select * from forgeversions where installed=1';
  MainFrm.Query.Open;
  while not MainFrm.Query.Eof do
  begin
    ListItem:=forgeVersion.Items.Add;
    ListItem.StateIndex:=6;
    ListItem.Caption:=MainFrm.Query.fieldByName('version').AsString;
    listItem.SubItems.Add(MainFrm.Query.fieldbyname('mcversion').AsString);
    ListItem.SubItems.Add(MainFrm.Query.fieldByName('recommended').AsString);
    //forgeVersion.Items.Add(IntToSTr(MainFrm.Query.fieldbyname('id').AsInteger)+'|Version: '+MainFrm.Query.fieldbyname('version').AsString+' für Minecraft '+MainFrm.Query.fieldbyname('mcversion').AsString);
    MainFrm.Query.Next;
  end;
  MainFrm.Query.Close;
  javaSDK.Items.Clear;
  MainFrm.Query.SQL.Text:='select * from javaversions';
  MainFrm.Query.Open;
  while not MainFrm.Query.Eof do
  begin
    javaSDK.Items.Add(MaiNFrm.Query.fieldbyname('filename').AsString);
    mainFrm.query.Next;
  end;
  mainFrm.Query.Close;
  SetLanguage(mainFrm.langfile);
end;

procedure TMDIChild.createWorkspaceClick(Sender: TObject);
var
  filename: String;
  command: String;
  klasse: TStringList;
  mcmodInfo: TStringList;
  buildGradle: TStringList;
  mainClassFile: String;
  mcmodInfoFile: String;
  buildGradleFile: String;
  modVersion: String;
  preInit: TStringList;
  init: TStringList;
  renderer: TStringList;
  tab: TStringList;
  deutsch, englisch: String;
begin
  createWorkspace.Enabled:=false;
  eraseWorkspace.Enabled:=false;
  AdvOfficePager1.ActivePage:=consoleTab;
  modVersion:=mainFrm.MakeVersion(major.Value,miner.Value,release.Value,build.Value);
  Console.Lines.Add(mainFrm.GetMessageString('createworkspace'));
  mainFrm.StatusBar.Panels[6].Text:=mainFrm.GetMessageString('createworkspace');
  Console.Lines.Add(mainFrm.GetMessageString('extractmdk'));
  ZipMaster1.DLLDirectory:=ExtractFilePath(application.ExeName)+'Libraries';
  MainFrm.Query.SQL.Clear;
  MainFrm.Query.Params.Clear;
  MainFrm.Query.Params.CreateParam(ftString, 'version', ptInputOutput);
  MainFrm.Query.ParamByName('version').Value:=selectedForgeVersion.Caption;
  MainFrm.Query.SQL.Text:='select * from forgeversions where version=:version';
  MainFrm.Query.Open;
  filename:=ExtractFilePath(application.ExeName)+'Forge\'+MainFrm.Query.fieldbyname('filename').AsString;
  MainFrm.Query.Close;
  ZipMaster1.ExtrBaseDir:=workspacePath.Text;
  Zipmaster1.ZipFileName:=filename;
  ZipMaster1.Extract;
  Randomize;
  SetDelay(Random(500));
  Console.Lines.Add(mainFrm.GetMessageString('removeexample'));
  DeleteFiles(workspacePath.Directory+'\src\main\java\com');
  SetDelay(Random(500));
  Console.Lines.Add(mainFrm.GetMessageString('createmainpackage'));
  ForceDirectories(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text));
  SetDelay(Random(500));
  Console.Lines.Add(mainFrm.GetMessageString('createproxypackage'));
  ForceDirectories(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\proxies');
  SetDelay(Random(500));
  Console.Lines.Add(mainFrm.GetMessageString('createmiscpackage'));
  ForceDirectories(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\misc');
  SetDelay(Random(500));
  // Package init wird erstellt (Optional)
  if (items.Checked) or (blocks.Checked) then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('createinitpackage'));
    ForceDirectories(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\init');
  end;
  SetDelay(Random(500));
  // Package items wird erstellt (Optional)
  if items.Checked then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('createitemspackage'));
    ForceDirectories(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\items');
  end;
  SetDelay(Random(500));
  if blocks.Checked then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('createblockspackage'));
    ForceDirectories(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\blocks');
  end;
  SetDelay(Random(500));
  // Package Handlers wird erstellt
  if recipes.Checked then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('createhandlerpackage'));
    ForceDirectories(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\handlers');
  end;
  SetDelay(Random(500));
  // Package Assets wird erstellt (Optional)
  if (items.Checked) or (blocks.Checked) then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('createassetpackage'));
    if items.Checked then
    begin
      ForceDirectories(workspacePath.Directory+'\src\main\resources\assets\'+modID.Text+'\textures\items');
      if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) > 7 then
      begin
        ForceDirectories(workspacePath.Directory+'\src\main\resources\assets\'+modID.Text+'\models\item');
      end;
    end;

    if blocks.Checked then
    begin
      ForceDirectories(workspacePath.Directory+'\src\main\resources\assets\'+modID.Text+'\textures\blocks');
      if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) > 7 then
      begin
        ForceDirectories(workspacePath.Directory+'\src\main\resources\assets\'+modID.Text+'\blockstates');
        ForceDirectories(workspacePath.Directory+'\src\main\resources\assets\'+modID.Text+'\models\block');
      end;
    end;
  end;
  SetDelay(Random(500));
  // Erstelle Sprachverzeichnis
  Console.Lines.Add(mainFrm.GetMessageString('createlanguagepackage'));
  ForceDirectories(workspacePath.Directory+'\src\main\resources\assets\'+modID.Text+'\lang');
  SetDelay(Random(500));
  Console.Lines.Add(mainFrm.GetMessageString('createmainclass'));
  mainClassFile:=Trim(StringReplace(modName.Text,' ','',[rfReplaceAll]));
  SetDelay(Random(500));
  // Hauptklasse wird erstellt
  klasse:=TStringList.Create;
  if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) = 7 then
    klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\main17.java')
  else
    klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\main.java');
  klasse.Text:=StringReplace(klasse.Text,'[PackageName]',packageName.Text,[rfReplaceAll]);
  klasse.Text:=StringReplace(klasse.Text,'[MainClass]',mainClassFile,[rfReplaceAll]);
  if items.Checked then
    klasse.Text:=StringReplace(klasse.Text,'[ItemPackage]','import '+packageName.Text+'.init.ModItems;',[rfReplaceAll])
  else
     klasse.Delete(klasse.IndexOf('[ItemPackage]'));
  if blocks.Checked then
    klasse.Text:=StringReplace(klasse.Text,'[BlockPackage]','import '+packageName.Text+'.init.ModBlocks;',[rfReplaceAll])
  else
    klasse.Delete(klasse.IndexOf('[BlockPackage]'));
  if recipes.Checked then
    klasse.Text:=StringReplace(klasse.Text,'[RecipePackage]','import '+packageName.Text+'.handlers.RecipeHandler;',[rfReplaceAll])
  else
    klasse.Delete(klasse.IndexOf('[RecipePackage]'));

  if creativeTab.Checked then
    Klasse.Text:=StringReplace(Klasse.Text,'[TabPackage]','import de.andhilldev.tutorialmod.misc.Tab;',[rfReplaceAll])
  else
    klasse.Delete(klasse.IndexOf('[TabPackage]'));

  if creativeTab.Checked then
    Klasse.Text:=StringReplace(Klasse.Text,'[CreativeTab]','import net.minecraft.creativetab.CreativeTabs;',[rfReplaceAll])
  else
    klasse.Delete(klasse.IndexOf('[CreativeTab]'));

  if creativeTab.Checked then
    Klasse.Text:=StringReplace(Klasse.Text,'[Tab]',#9+'public static CreativeTabs tab = new Tab(CreativeTabs.getNextID(),"Tab");',[rfReplaceAll])
  else
    klasse.Delete(klasse.IndexOf('[Tab]'));
    //klasse.Text:=StringReplace(Klasse.Text,'[Tab]','',[rfReplaceAll]);


  if (items.Checked) or (blocks.Checked) then
  begin
    preInit:=TStringList.Create;
    if items.Checked then preInit.Add(#9+#9+'ModItems.init();');
    if blocks.Checked then preInit.Add(#9+#9+'ModBlocks.init();');
    klasse.Text:=StringReplace(klasse.Text,'[PreInit]',preInit.Text,[rfReplaceAll]);
  end
  else
  begin
    klasse.Delete(klasse.IndexOf('[PreInit]'));
  end;
  preInit.Free;

  if (items.Checked) or (blocks.Checked) or (recipes.Checked) then
  begin
    init:=TStringList.Create;
    if items.Checked then init.Add(#9+#9+'ModItems.register();');
    if blocks.Checked then init.Add(#9+#9+'ModBlocks.register();');
    if recipes.Checked then init.Add(#9+#9+'RecipeHandler.registerRecipes();');
    klasse.Text:=StringReplace(klasse.Text,'[Init]',init.Text,[rfReplaceAll]);
  end
  else
  begin
    klasse.Delete(klasse.IndexOf('[Init]'));
  end;
  init.Free;

  klasse.SaveToFile(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\'+mainClassFile+'.java');
  SetDelay(Random(500));
  // Klasse References.java wird erstellt
  Console.Lines.Add(mainFrm.GetMessageString('createreferencesclass'));
  Klasse.Clear;
  Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\References.java');
  Klasse.Text:=StringReplace(klasse.Text,'[PackageName]',packageName.Text,[rfReplaceAll]);
  Klasse.Text:=StringReplace(Klasse.Text,'[ModID]',modID.Text,[rfReplaceAll]);
  Klasse.Text:=StringReplace(Klasse.Text,'[ModName]',modName.Text,[rfReplaceAll]);
  Klasse.Text:=StringReplace(Klasse.Text,'[ModVersion]',modVersion,[rfReplaceAll]);
  Klasse.Text:=StringReplace(Klasse.Text,'[MCVersions]','['+forgeversion.Selected.SubItems[0]+']',[rfReplaceAll]);
  Klasse.SaveToFile(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\misc\References.java');
  SetDelay(Random(500));
  // Interface CommonProxy wird erstellt
  Console.Lines.Add(mainFrm.GetMessageString('createcommonproxyinterface'));
  Klasse.Clear;
  Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\CommonProxy.java');
  Klasse.Text:=StringReplace(Klasse.Text,'[PackageName]',packageName.Text,[rfReplaceAll]);
  Klasse.SaveToFile(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\proxies\CommonProxy.java');
  SetDelay(Random(500));
  // Klasse ClientProxy wird erstellt
  Console.Lines.Add(mainFrm.GetMessageString('createclientproxyclass'));
  Klasse.Clear;
  Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\ClientProxy.java');
  Klasse.Text:=StringReplace(Klasse.Text,'[PackageName]',packageName.Text,[rfReplaceAll]);
  if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) > 7 then
  begin
    if (Items.Checked) or (Blocks.Checked) then
    begin
      Klasse.Text:=StringReplace(Klasse.Text,'[Imports]','import '+packageName.Text+'.init.*;',[rfReplaceAll]);
      renderer:=TStringList.Create;
      if Items.Checked then
        renderer.Add(#9+#9+'ModItems.registerRenderer();');
      if Blocks.Checked then
        renderer.Add(#9+#9+'ModBlocks.registerRenderer();');
      Klasse.Text:=StringReplace(Klasse.Text,'[Renderer]',renderer.Text,[rfReplaceAll]);
      renderer.Free;
    end
    else
    begin
      Klasse.Delete(Klasse.IndexOf('[Imports]'));
      Klasse.Delete(Klasse.IndexOf('[Renderer]'));
    end;
  end
  else
  begin
    Klasse.Delete(Klasse.IndexOf('[Imports]'));
    Klasse.Text:=StringReplace(Klasse.Text,'[Renderer]',#9+#9,[rfReplaceAll]);
  end;
  Klasse.SaveToFile(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\proxies\ClientProxy.java');
  SetDelay(Random(500));
  // Klasse ServerProxy wird erstellt
  Console.Lines.Add(mainFrm.GetMessageString('createserverproxyclass'));
  Klasse.Clear;
  Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\ServerProxy.java');
  Klasse.Text:=StringReplace(Klasse.Text,'[PackageName]',packageName.Text,[rfReplaceAll]);
  Klasse.SaveToFile(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\proxies\ServerProxy.java');
  SetDelay(Random(500));


  // Klasse Items wird erstellt (Optional)
  Klasse.Clear;
  if items.Checked then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('createmoditemsclass'));
    if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) = 7 then
    begin
      Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\ModItems17.java')
    end
    else if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) = 8 then
    begin
      Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\ModItems.java');
    end
    else
    begin
      Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\ModItems19.java');
    end;
    Klasse.Text:=StringReplace(Klasse.Text,'[PackageName]',packageName.Text, [rfReplaceAll]);
    Klasse.SaveToFile(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\init\ModItems.java');
  end;
  SetDelay(Random(500));
  // Klasse Blocks wird erstellt (Optional)
  Klasse.Clear;
  if blocks.Checked then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('createmodblocksclass'));
    if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) = 7 then
    begin
      Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\ModBlocks17.java');
    end
    else if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) = 8 then
    begin
      Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\ModBlocks.java');
    end
    else
    begin
      Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\ModBlocks19.java');
    end;
    Klasse.Text:=StringReplace(Klasse.Text,'[PackageName]',packageName.Text, [rfReplaceAll]);
    Klasse.SaveToFile(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\init\ModBlocks.java');
  end;
  SetDelay(Random(500));
  // Klasse RecipeHandler.java wird erstellt
  if recipes.Checked then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('createrecipehandlerclass'));
    Klasse.Clear;
    Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\RecipeHandler.java');
    Klasse.Text:=StringReplace(Klasse.Text,'[PackageName]',packageName.Text,[rfReplaceAll]);
    Klasse.SaveToFile(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\handlers\RecipeHandler.java');
  end;
  SetDelay(Random(500));
  // Klasse Tab.java wird erstellt
  if creativeTab.Checked then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('createtabclass'));
    Klasse.Clear;
    if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) < 11 then
      Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\Tab.java')
    else
      Klasse.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\Tab11.java');
    Klasse.Text:=StringReplace(Klasse.Text,'[PackageName]',packageName.Text,[rfReplaceAll]);
    if (mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) = 9) or (mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) = 10)then
      Klasse.Text:=StringReplace(Klasse.Text,'diamond','DIAMOND',[rfReplaceAll]);
    Klasse.SaveToFile(workspacePath.Directory+'\src\main\java\'+maiNFrm.ConvertPackageName(packageName.Text)+'\misc\Tab.java');
  end;
  SetDelay(Random(500));
  //Erstellen der Sprachdateien
  Klasse.Clear;
  Console.Lines.Add(mainFrm.GetMessageString('createlanguagefiles'));
  if mainFrm.GetMinecraftMiner(forgeVersion.Selected.SubItems[0]) >= 11 then
  begin
    englisch:='en_us.lang';
    deutsch:='de_de.lang';
  end
  else
  begin
    englisch:='en_US.lang';
    deutsch:='de_DE.lang';
  end;
  Klasse.Add('itemGroup.Tab='+modName.Text);
  Klasse.SaveToFile(workspacePath.Directory+'\src\main\resources\assets\'+modID.Text+'\lang\'+englisch);
  if deLang.Checked then
    Klasse.SaveToFile(workspacePath.Directory+'\src\main\resources\assets\'+modID.Text+'\lang\'+deutsch);
  Klasse.Free;
  SetDelay(Random(500));
  // Logofile wird kopiert (Optional)
  if fileexists(logoFile.FileName) then
  begin
    Console.Lines.Add(mainFrm.GetMessageString('copylogofile'));
    CopyFile(PChar(logoFile.FileName), PChar(workspacePath.Directory+'\src\main\resources\logo.png'), false);
  end;
  SetDelay(Random(500));

  Console.Lines.Add(mainFrm.GetMessageString('createmcmodinfo'));
  mcmodInfo:=TStringList.Create;
  mcmodInfo.LoadFromFile(ExtractFilePath(application.ExeName)+'Data\mcmod.info');
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[modID]',modID.Text,[rfReplaceAll]);
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[modName]',modName.Text,[rfReplaceAll]);
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[modDescription]',modDescription.Text,[rfReplaceAll]);
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[modVersion]',modVersion,[rfReplaceAll]);
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[mcVersion]',forgeversion.Selected.SubItems[0],[rfReplaceAll]);
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[modUrl]',modUrl.Text,[rfReplaceAll]);
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[updateUrl]',updateURL.Text,[rfReplaceAll]);
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[modAuthors]','['+MainFrm.MakeAuthorList(modAuthors.Text)+']',[rfReplaceAll]);
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[modCredits]',modCredits.Text,[rfReplaceAll]);
  mcmodInfo.Text:=StringReplace(mcmodInfo.Text,'[logoFile]','logo.png',[rfReplaceAll]);
  mcmodInfo.SaveToFile(workspacePath.Directory+'\src\main\resources\mcmod.info');
  mcmodInfo.Free;
  SetDelay(Random(500));

  Console.Lines.Add(mainFrm.GetMessageString('createbuildgradle'));
  buildGradle:=TSTringList.Create;
  buildGradle.LoadFromFile(workspacePath.Directory+'\build.gradle');
  buildGradle.Text:=StringReplace(buildGradle.Text,'version = "1.0"','version = "'+modVersion+'"',[rfReplaceAll]);
  buildGradle.Text:=StringReplace(buildGradle.Text,'group= "com.yourname.modid"','group= "'+packageName.Text+'"',[rfReplaceAll]);
  buildGradle.Text:=StringReplace(buildGradle.Text,'group = "com.yourname.modid"','group = "'+packageName.Text+'"',[rfReplaceAll]);
  buildGradle.Text:=StringReplace(buildGradle.Text,'archivesBaseName = "modid"','archivesBaseName = "'+modID.Text+'"',[rfReplaceAll]);
  buildGradle.SaveToFile(workspacePath.Directory+'\build.gradle');
  buildGradle.Free;
  timer1.Enabled:=true;
  SetDelay(Random(500));

  Console.Lines.Add(mainFrm.GetMessageString('setupworkspace'));
  mainFrm.StatusBar.Panels[6].Text:=mainFrm.GetMessageString('setupworkspace');
  command:=workspacePath.Text+'\\gradlew.bat setupDecompWorkspace --refresh-dependencies eclipse';
  Consoleio1.RunProcess(command,workspacePath.Directory,false);
end;

procedure TMDIChild.ConsoleIO1ReceiveOutput(Sender: TObject;
  const Cmd: String);
begin
  Console.Lines.Add(cmd);
end;

procedure TMDIChild.ConsoleIO1Error(Sender: TObject; const Cmd: String);
begin
  Console.Lines.Add(cmd);
end;

procedure TMDIChild.ConsoleIO1ReceiveError(Sender: TObject;
  const Cmd: String);
begin
  Console.Lines.Add(cmd);
end;

procedure TMDIChild.Timer1Timer(Sender: TObject);
begin
  if fileexists(workspacePath.Directory+'\.classpath') then
  begin
    buildGradleTab.TabVisible:=true;
    mcModInfoTab.TabVisible:=true;
    resourcesTab.TabVisible:=true;
    sourcecodeTab.TabVisible:=true;
    advMemo2.Lines.LoadFromFile(workspacePath.Directory+'\build.gradle');
    advMemo1.Lines.LoadFromFile(workspacePath.Directory+'\src\main\resources\mcmod.info');
    createWorkspace.Enabled:=false;
    startMinecraft.Enabled:=true;
    buildProject.Enabled:=true;
    eraseWorkspace.Enabled:=true;
    forgeVersion.Enabled:=false;
    timer1.Enabled:=false;
    mainFrm.StatusBar.Panels[6].Text:='';
  end;
end;

procedure TMDIChild.forgeVersionSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  selectedForgeVersion.Caption:=item.Caption;
  modified.Caption:='1';
end;

procedure TMDIChild.buildProjectClick(Sender: TObject);
begin
  AdvOfficePager1.ActivePage:=consoleTab;
  console.Lines.Clear;
  console.Lines.Add(mainFrm.GetMessageString('createmod'));
  consoleio1.RunProcess(workspacePath.Directory+'\gradlew.bat build',workspacePath.Directory,false);
end;

procedure TMDIChild.startMinecraftClick(Sender: TObject);
begin
  AdvOfficePager1.ActivePage:=consoleTab;
  console.Lines.Clear;
  console.Lines.Add(mainFrm.GetMessageString('startminecraft'));
  consoleio1.RunProcess(workspacePath.Directory+'\gradlew.bat runClient',workspacePath.Directory,false);
end;

procedure TMDIChild.javaSDKSelect(Sender: TObject);
begin
  modified.Caption:='1';
end;

procedure TMDIChild.workspacePathChange(Sender: TObject);
begin
  modified.Caption:='1';
end;

procedure TMDIChild.modVersionChange(Sender: TObject);
begin
  modified.Caption:='1';
end;

procedure TMDIChild.modIDChange(Sender: TObject);
begin
  modified.Caption:='1';
end;

procedure TMDIChild.modDescriptionChange(Sender: TObject);
begin
  modified.Caption:='1';
end;

procedure TMDIChild.packageNameChange(Sender: TObject);
begin
  modified.Caption:='1';
end;

procedure TMDIChild.modAuthorsChange(Sender: TObject);
begin
  modified.Caption:='1';
end;

procedure TMDIChild.modUrlChange(Sender: TObject);
begin
  modified.Caption:='1';
end;

procedure TMDIChild.modCreditsChange(Sender: TObject);
begin
  modified.Caption:='1';
end;

procedure TMDIChild.eraseWorkspaceClick(Sender: TObject);
begin
  if IsExeRunning('eclipse.exe') then
  begin
    if MessageDlg(mainFrm.GetMessageString('eclipse.notclosed'),mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      KillTask('eclipse.exe');
      KillTask('javaw.exe');
      if MessageDlg(mainFrm.GetMessageString('wantremovews'),mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        mainFrm.StatusBar.Panels[6].Text:=mainFrm.GetMessageString('statusremoving');
        if DeleteFiles(workspacePath.Directory+'\*.*') then
        begin
          MessageDlg(mainFrm.GetMessageString('remove.ws.done'),mtInformation,[mbOK],0);
          createWorkspace.Enabled:=true;
          forgeVersion.Enabled:=true;
          eraseWorkspace.Enabled:=false;
          startMinecraft.Enabled:=false;
          buildProject.Enabled:=false;
          mcModInfoTab.TabVisible:=false;
          buildGradleTab.TabVisible:=false;
          resourcesTab.TabVisible:=false;
          sourcecodeTab.TabVisible:=false;
        end
        else
        begin
          MessageDlg(mainFrm.GetMessageString('remove.ws.fail'),mtError,[mbOK],0);
        end;
      end;
    end;
  end
  else
  begin
    if MessageDlg(mainFrm.GetMessageString('wantremovews'),mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      mainFrm.StatusBar.Panels[6].Text:=mainFrm.GetMessageString('statusremoving');
      if DeleteFiles(workspacePath.Directory+'\*.*') then
      begin
        MessageDlg(mainFrm.GetMessageString('remove.ws.done'),mtInformation,[mbOK],0);
        createWorkspace.Enabled:=true;
        forgeVersion.Enabled:=true;
        eraseWorkspace.Enabled:=false;
        startMinecraft.Enabled:=false;
        buildProject.Enabled:=false;
      end
      else
      begin
        MessageDlg(mainFrm.GetMessageString('remove.ws.fail'),mtError,[mbOK],0);
      end;
    end;
  end;
end;

end.
