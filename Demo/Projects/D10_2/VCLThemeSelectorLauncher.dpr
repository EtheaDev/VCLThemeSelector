program VCLThemeSelectorLauncher;

uses
  Vcl.Forms,
  LauncherForm in '..\..\Source\LauncherForm.pas' {Launcher},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'VCLThemeSelector Launcher';
  Application.CreateForm(TLauncher, Launcher);
  Application.Run;
end.
