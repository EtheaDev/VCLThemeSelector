program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {DpiAwareForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDpiAwareForm, DpiAwareForm);
  Application.Run;
end.
