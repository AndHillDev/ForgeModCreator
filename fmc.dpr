program fmc;

uses
  ShareMem,
  Windows,
  Forms,
  main in 'main.pas' {mainFrm},
  child in 'child.pas' {MDIChild},
  forgeversion in 'forgeversion.pas' {forgeVersionFrm},
  settings in 'settings.pas' {settingsFrm},
  javasdks in 'javasdks.pas' {javaSDKManager},
  info in 'info.pas' {infoFrm},
  splash in 'splash.pas' {splashFrm};

{$R *.res}

procedure SetDelay(const Milliseconds: DWord); StdCall; external 'Libraries\AHDLibrary.dll';

begin
  Application.Initialize;
  try
    splashFrm:=TSplashFrm.Create(application);
    splashFrm.Show;
    splashFrm.Update;
    Randomize;
    splashFrm.AdvProgressBar1.Max:=5;
    splashFrm.AdvProgressBar1.Position:=0;
    Application.CreateForm(TmainFrm, mainFrm);
    setdelay(random(500));
    splashFrm.AdvProgressBar1.Position:=1;
    Application.CreateForm(TforgeVersionFrm, forgeVersionFrm);
    setdelay(random(500));
    splashFrm.AdvProgressBar1.Position:=2;
    Application.CreateForm(TsettingsFrm, settingsFrm);
    setdelay(random(500));
    splashFrm.AdvProgressBar1.Position:=3;
    Application.CreateForm(TjavaSDKManager, javaSDKManager);
    setdelay(random(500));
    splashFrm.AdvProgressBar1.Position:=4;
    Application.CreateForm(TinfoFrm, infoFrm);
    setdelay(random(500));
    splashFrm.AdvProgressBar1.Position:=5;
    setDelay(300);
    splashFrm.AdvProgressBar1.Infinite:=true;
    setDelay(4000);
    splashFrm.Hide;
  finally
    Application.Run;
  end;
end.
