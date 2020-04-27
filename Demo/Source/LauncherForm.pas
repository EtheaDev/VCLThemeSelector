unit LauncherForm;

interface

uses
  Winapi.Windows
  , Winapi.Messages
  , System.SysUtils
  , System.Variants
  , System.Classes
  , Vcl.Graphics
  , Vcl.Controls
  , Vcl.Forms
  , Vcl.Dialogs
  , Vcl.StdCtrls
  , Vcl.ExtCtrls
  , Vcl.Themes
  , Vcl.Imaging.pngimage;

const
  COMPANY_NAME = 'Ethea';

type
  TLauncher = class(TForm)
    ChangeThemeButton: TButton;
    ExcludeWindowsCkeckBox: TCheckBox;
    MaxRowsEdit: TLabeledEdit;
    MaxColsEdit: TLabeledEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure ChangeThemeButtonClick(Sender: TObject);
  private
    procedure TrySetStyle(const AStyleName: string);
  protected
    procedure Loaded; override;
  public
    { Public declarations }
  end;

var
  Launcher: TLauncher;

implementation

{$R *.dfm}

uses
  FVCLThemeSelector
  ;

procedure TLauncher.TrySetStyle(const AStyleName: string);
begin
  try
    TStyleManager.SetStyle(AStyleName);
  except
    ; //ignore
  end;
end;

procedure TLauncher.ChangeThemeButtonClick(Sender: TObject);
var
  LStyleName: string;
begin
  LStyleName := TStyleManager.ActiveStyle.Name;

  if ShowVCLThemeSelector(LStyleName,
      ExcludeWindowsCkeckBox.Checked,
      StrToInt(MaxRowsEdit.Text),
      StrToInt(MaxColsEdit.Text)) then
    TrySetStyle(LStyleName);

  WriteAppStyleToReg(COMPANY_NAME, ExtractFileName(Application.ExeName), LStyleName);
end;

procedure TLauncher.Loaded;
var
  LStyleName: string;
begin
  //Acquire system font and size (eg. for windows 10 Segoe UI and 14 at 96 DPI)
  //but without using Assign!
  Font.Name := Screen.IconFont.Name;
  //If you want to use system font Height:
  Font.Height := Muldiv(Screen.IconFont.Height, 96, Screen.IconFont.PixelsPerInch);

  //Read Style stored into Registry
  LStyleName := ReadAppStyleFromReg(COMPANY_NAME,  ExtractFileName(Application.ExeName));
  TrySetStyle(LStyleName);

  inherited;
end;

end.
