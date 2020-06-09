unit CBVCLStylePreviewForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Themes, Vcl.ComCtrls;

const
  PREVIEW_HEIGHT = 190; //At 96 DPI
  PREVIEW_WIDTH = 300;  //At 96 DPI

type
  TCBVCLPreviewForm = class(TForm)
    MainMenu: TMainMenu;
    FMenu1: TMenuItem;
    FMenu2: TMenuItem;
    FMenu3: TMenuItem;
    FMenu4: TMenuItem;
    TabControl: TTabControl;
    FTextEdit: TEdit;
    FButtonNormal: TButton;
    FButtonDisabled: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FButtonNormalMouseEnter(Sender: TObject);
    procedure FButtonNormalMouseLeave(Sender: TObject);
    procedure FButtonNormalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FButtonNormalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FButtonNormalCaption: string;
    FButtonHotCaption: string;
    FButtonPressedCaption: string;
    FCustomStyle: TCustomStyleServices;
    { Private declarations }
  public
    procedure SetCaptions(const ACaptions: string);
    property CustomStyle: TCustomStyleServices read FCustomStyle Write FCustomStyle;
  end;

implementation

{$R *.dfm}

{ TCBVCLPreviewForm }

procedure TCBVCLPreviewForm.FButtonNormalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FButtonNormal.Caption := FButtonPressedCaption;
end;

procedure TCBVCLPreviewForm.FButtonNormalMouseEnter(Sender: TObject);
begin
  FButtonNormal.Caption := FButtonHotCaption;
end;

procedure TCBVCLPreviewForm.FButtonNormalMouseLeave(Sender: TObject);
begin
  FButtonNormal.Caption := FButtonNormalCaption;
end;

procedure TCBVCLPreviewForm.FButtonNormalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FButtonNormal.Caption := FButtonHotCaption;
end;

procedure TCBVCLPreviewForm.FormCreate(Sender: TObject);
begin
  ;
end;

procedure TCBVCLPreviewForm.FormShow(Sender: TObject);
begin
  Self.StyleName := FCustomStyle.Name;
  Visible := True;
end;

procedure TCBVCLPreviewForm.SetCaptions(const ACaptions: string);
var
  LCaptions: TStringList;
begin
  LCaptions := TStringList.Create;
  LCaptions.Text := ACaptions;
  try
    if LCaptions.Count  > 0 then
      FMenu1.Caption := LCaptions.Strings[0];
    if LCaptions.Count  > 1 then
      FMenu2.Caption := LCaptions.Strings[1];
    if LCaptions.Count  > 2 then
      FMenu3.Caption := LCaptions.Strings[2];
    if LCaptions.Count  > 3 then
      FMenu4.Caption := LCaptions.Strings[3];
    if LCaptions.Count  > 4 then
      FTextEdit.Text := LCaptions.Strings[4];
    if LCaptions.Count  > 5 then
    begin
      FButtonNormalCaption := LCaptions.Strings[5];
      FButtonNormal.Caption := FButtonNormalCaption;
    end;
    if LCaptions.Count  > 6 then
      FButtonHotCaption := LCaptions.Strings[6];
    if LCaptions.Count  > 7 then
      FButtonPressedCaption := LCaptions.Strings[7];
    if LCaptions.Count  > 8 then
      FButtonDisabled.Caption := LCaptions.Strings[8];
    if LCaptions.Count  > 9 then
      Tabcontrol.Tabs[0] := LCaptions.Strings[9];
    if LCaptions.Count  > 10 then
      Tabcontrol.Tabs[1] := LCaptions.Strings[10];
    if LCaptions.Count  > 11 then
      Tabcontrol.Tabs[2] := LCaptions.Strings[11];

  finally
    LCaptions.Free;
  end;
end;

end.
