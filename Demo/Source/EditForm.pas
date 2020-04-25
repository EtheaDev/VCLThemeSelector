unit EditForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure UpdateFontAttributes;
    { Private declarations }
  protected
    procedure Loaded; override;
  public
  end;

var
  FmEdit: TFmEdit;

implementation

{$R *.dfm}

procedure TFmEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmEdit := nil;
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

procedure TFmEdit.Loaded;
begin
  inherited;
  UpdateFontAttributes;
end;

end.
