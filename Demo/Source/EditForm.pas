unit EditForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  TFmEdit = class(TForm)
    PageControl1: TPageControl;
    tsParentFont: TTabSheet;
    NameEdit: TEdit;
    SurNameEdit: TEdit;
    LabeledEdit: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    tsNoParent: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    LabeledEdit2: TLabeledEdit;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormAfterMonitorDpiChanged(Sender: TObject; OldDPI,
      NewDPI: Integer);
    procedure FormShow(Sender: TObject);
  private
    procedure UpdateFontAttributes;
  protected
  public
  end;

var
  FmEdit: TFmEdit;

implementation

{$R *.dfm}

procedure TFmEdit.FormAfterMonitorDpiChanged(Sender: TObject; OldDPI,
  NewDPI: Integer);
begin
  if ParentFont and (Application.MainForm.Monitor.Handle <> Self.Monitor.Handle) then
    Font.Height := MulDiv(Font.Height, NewDPI, OldDPI);
end;

procedure TFmEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmEdit := nil;
end;

procedure TFmEdit.FormShow(Sender: TObject);
begin
  UpdateFontAttributes;
end;

procedure TFmEdit.UpdateFontAttributes;
begin
  NameEdit.ParentFont := True;
  NameEdit.Font.Style := [fsBold];
  SurNameEdit.ParentFont := True;
  SurNameEdit.Font.Style := [fsBold];
  LabeledEdit.ParentFont := True;
  LabeledEdit.Font.Style := [fsBold];
end;

end.
