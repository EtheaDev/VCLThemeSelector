unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

const
  WM_DPICHANGED = 736; // 0x02E0

type
  TDpiAwareForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    procedure WMDpiChanged(var Message: TMessage); message WM_DPICHANGED;
  public
    procedure ShowMonitorSettings;
  end;

var
  DpiAwareForm: TDpiAwareForm;

implementation

{$R *.dfm}

{-$DEFINE DELPHI_STYLE_SCALING}
procedure TDpiAwareForm.WMDpiChanged(var Message: TMessage);

  {$IFDEF DELPHI_STYLE_SCALING}
  function FontHeightAtDpi(aDPI, aFontSize: integer): integer;
  var
    tmpCanvas: TCanvas;
  begin
    tmpCanvas := TCanvas.Create;
    try
      tmpCanvas.Handle := GetDC(0);
      tmpCanvas.Font.Assign(self.Font);
      tmpCanvas.Font.PixelsPerInch := aDPI; //must be set BEFORE size
      tmpCanvas.Font.size := aFontSize;
      result := tmpCanvas.TextHeight('0');
    finally
      tmpCanvas.free;
    end;
  end;
  {$ENDIF}

begin
  inherited;
  {$IFDEF DELPHI_STYLE_SCALING}
  ChangeScale(FontHeightAtDpi(LOWORD(Message.wParam), self.Font.Size), FontHeightAtDpi(self.PixelsPerInch, self.Font.Size));
  {$ELSE}
  ChangeScale(LOWORD(Message.wParam), self.PixelsPerInch);
  {$ENDIF}
  self.PixelsPerInch := LOWORD(Message.wParam);
  ShowMonitorSettings;
end;

procedure TDpiAwareForm.FormCreate(Sender: TObject);
begin
  ShowMonitorSettings;
end;

procedure TDpiAwareForm.ShowMonitorSettings;
begin
  Caption := Format('Monitor #%d (%d dpi, %d x %d)', [self.Monitor.MonitorNum, self.PixelsPerInch, self.Monitor.Width, self.Monitor.Height]);
end;

end.
