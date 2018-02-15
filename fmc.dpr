program fmc;

uses
  ShareMem,
  Forms,
  main in 'main.pas' {mainFrm},
  child in 'child.pas' {MDIChild},
  forgeversion in 'forgeversion.pas' {forgeVersionFrm},
  settings in 'settings.pas' {settingsFrm},
  javasdks in 'javasdks.pas' {javaSDKManager},
  info in 'info.pas' {infoFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TmainFrm, mainFrm);
  Application.CreateForm(TforgeVersionFrm, forgeVersionFrm);
  Application.CreateForm(TsettingsFrm, settingsFrm);
  Application.CreateForm(TjavaSDKManager, javaSDKManager);
  Application.CreateForm(TinfoFrm, infoFrm);
  Application.Run;
end.
