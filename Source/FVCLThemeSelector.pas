{******************************************************************************}
{                                                                              }
{       VCLThemeSelector: Form for Preview and Selection of VCL Style          }
{                                                                              }
{       Copyright (c) 2020 (Ethea S.r.l.)                                      }
{       Author: Carlo Barazzetta                                               }
{       Contributor: Nicola Tambascia                                          }
{                                                                              }
{       https://github.com/EtheaDev/VCLThemeSelector                           }
{                                                                              }
{******************************************************************************}
{                                                                              }
{  Licensed under the Apache License, Version 2.0 (the "License");             }
{  you may not use this file except in compliance with the License.            }
{  You may obtain a copy of the License at                                     }
{                                                                              }
{      http://www.apache.org/licenses/LICENSE-2.0                              }
{                                                                              }
{  Unless required by applicable law or agreed to in writing, software         }
{  distributed under the License is distributed on an "AS IS" BASIS,           }
{  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    }
{  See the License for the specific language governing permissions and         }
{  limitations under the License.                                              }
{                                                                              }
{******************************************************************************}

unit FVCLThemeSelector;

{$Include VCLThemeSelector.inc}

interface

uses
  Winapi.Windows
  , System.Actions
  , System.Classes
  , Vcl.ActnList
  , Vcl.ExtCtrls
  , Vcl.Forms
  , Vcl.StdCtrls
  , Vcl.Graphics
  , Vcl.Controls;

const
  VCLThemeSelectorVersion = '1.0.0';
  DEFAULT_MAXROWS = 3;
  DEFAULT_MAXCOLUMNS = 4;
  SELECT_THEME = 'Select Light or Dark theme';
  APPLY_THEME = 'Apply';
  CANCEL_THEME = 'Cancel';
  PREVIEW_THEME = 'Preview';
  THEME_SELECTED = 'New Selected theme: %s';
  THEME_PREVIEW_VALUES =
    'File'+sLineBreak+
    'Edit'+sLineBreak+
    'View'+sLineBreak+
    'Help'+sLineBreak+
    'Text editor'+sLineBreak+
    'Normal'+sLineBreak+
    'Hot'+sLineBreak+
    'Pressed'+sLineBreak+
    'Disabled';

type
  TVCLThemeSelectorForm = class(TForm)
    ScrollBox: TScrollBox;
    paButtons: TPanel;
    ActionListAppereance: TActionList;
    acApplyStyle: TAction;
    acCancel: TAction;
    fpClient: TFlowPanel;
    StyleLabel: TPanel;
    paRight: TPanel;
    btApply: TButton;
    btCancel: TButton;
    procedure SelectionClick(Sender: TObject);
    procedure acApplyStyleExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure acApplyStyleUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBoxMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormAfterMonitorDpiChanged(Sender: TObject; OldDPI,
      NewDPI: Integer);
  private
    FPreviousStyleName : string;
    FStyleName : string;
    FExcludeWindows: Boolean;
    FMaxRows: Integer;
    FMaxColumns: Integer;
    procedure UpdateLabel;
    procedure UpdateButtons;
    procedure BuildPreviewPanels;
  protected
    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
    constructor CreatePreview(AOwner: TComponent;
      const AExcludeWindows: Boolean;
      const AMaxRows: Integer = DEFAULT_MAXROWS;
      const AMaxColumns: Integer = DEFAULT_MAXCOLUMNS);
  end;

//function to launch form
function ShowVCLThemeSelector(var AStyleName: string;
  const AExcludeWindows: Boolean = False;
  const AMaxRows: Integer = DEFAULT_MAXROWS;
  const AMaxColumns: Integer = DEFAULT_MAXCOLUMNS): boolean;

//Utilities to read/write application preferences from/to Registry
function ReadAppStyleFromReg(const CompanyName, ApplicationName: string) : string;
procedure WriteAppStyleToReg(const CompanyName, ApplicationName, AppStyle : string);
procedure ReadAppStyleAndFontFromReg(const CompanyName, ApplicationName: string;
  out AAppStyle: string; const AFont: TFont);
procedure WriteAppStyleAndFontToReg(const CompanyName, ApplicationName: string;
  const AAppStyle: string; const AFont: TFont);

implementation

{$R *.dfm}

uses
  Vcl.Themes
  , Winapi.Messages
  , CBVCLStylePreview
  , System.UITypes
  , System.SysUtils
  , System.Win.Registry
  , System.Math;

procedure ReadAppStyleAndFontFromReg(const CompanyName, ApplicationName: string;
  out AAppStyle: string; const AFont: TFont);
var
  FRegistry : TRegistry;
  RegistryKey : string;
begin
  FRegistry := TRegistry.Create(KEY_ALL_ACCESS);
  try
    FRegistry.RootKey := HKEY_CURRENT_USER;
    RegistryKey := Format('\Software\%s\%s',[CompanyName, ApplicationName]);
    FRegistry.OpenKey(RegistryKey, True);
    //Read Application Style
    AAppStyle := FRegistry.ReadString('AppStyle');
    if AAppStyle = '' then
      AAppStyle := 'Windows';
    //Read font attributes
    if Assigned(AFont) then
    begin
      if FRegistry.ValueExists('FontName') then
        AFont.Name := FRegistry.ReadString('FontName');
      if FRegistry.ValueExists('FontHeight') then
        AFont.Height := FRegistry.ReadInteger('FontHeight');
      if FRegistry.ValueExists('FontColor') then
        AFont.Color := TColor(FRegistry.ReadInteger('FontColor'));
    end;
  finally
    FRegistry.Free;
  end;
end;

procedure WriteAppStyleAndFontToReg(const CompanyName, ApplicationName: string;
  const AAppStyle: string; const AFont: TFont);
var
  FRegistry : TRegistry;
  RegistryKey : string;
begin
  FRegistry := TRegistry.Create(KEY_ALL_ACCESS);
  try
    RegistryKey := Format('\Software\%s\%s',[CompanyName, ApplicationName]);
    FRegistry.RootKey := HKEY_CURRENT_USER;
    FRegistry.OpenKey(RegistryKey, True);
    FRegistry.WriteString('AppStyle',AAppStyle);
    if Assigned(AFont) then
    begin
      FRegistry.WriteString('FontName',AFont.Name);
      FRegistry.WriteInteger('FontHeight',AFont.Height);
      FRegistry.WriteInteger('FontColor',AFont.Color);
      FRegistry.WriteBool('FontBold',fsBold in AFont.Style);
      FRegistry.WriteBool('FontItalic',fsItalic in AFont.Style);
      FRegistry.WriteBool('FontUnderline',fsUnderline in AFont.Style);
      FRegistry.WriteBool('FontStrikeOut',fsStrikeOut in AFont.Style);
    end;
  finally
    FRegistry.Free;
  end;
end;

function ReadAppStyleFromReg(const CompanyName, ApplicationName: string) : string;
var
  LFont: TFont;
begin
  LFont := nil;
  ReadAppStyleAndFontFromReg(CompanyName, ApplicationName, Result, LFont);
end;

procedure WriteAppStyleToReg(const CompanyName, ApplicationName, AppStyle : string);
begin
  WriteAppStyleAndFontToReg(CompanyName, ApplicationName, AppStyle, nil);
end;

function ShowVCLThemeSelector(var AStyleName: string;
  const AExcludeWindows: Boolean = False;
  const AMaxRows: Integer = DEFAULT_MAXROWS;
  const AMaxColumns: Integer = DEFAULT_MAXCOLUMNS): boolean;
var
  fmVCLStyleSelector: TVCLThemeSelectorForm;
begin
  Screen.Cursor := crHourGlass;
  Try
    fmVCLStyleSelector := TVCLThemeSelectorForm.CreatePreview(nil,
      AExcludeWindows, AMaxRows, AMaxColumns);
    try
      Screen.Cursor := crDefault;
      Result := (fmVCLStyleSelector.ShowModal = mrOk);
      if Result then
        AStyleName := fmVCLStyleSelector.FStyleName;
    finally
      fmVCLStyleSelector.Free;
    end;
  Finally
    Screen.Cursor := crDefault;
  End;
end;

procedure TVCLThemeSelectorForm.acApplyStyleExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TVCLThemeSelectorForm.acApplyStyleUpdate(Sender: TObject);
begin
  inherited;
  acApplyStyle.Enabled := (FPreviousStyleName <> FStyleName);
end;

procedure TVCLThemeSelectorForm.acCancelExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

constructor TVCLThemeSelectorForm.Create(AOwner: TComponent);
begin
  inherited;
  FMaxRows := DEFAULT_MAXROWS;
  FMaxColumns := DEFAULT_MAXCOLUMNS;
end;

constructor TVCLThemeSelectorForm.CreatePreview(
  AOwner: TComponent; const AExcludeWindows: Boolean;
  const AMaxRows: Integer = DEFAULT_MAXROWS; const AMaxColumns: Integer = DEFAULT_MAXCOLUMNS);
begin
  FExcludeWindows := AExcludeWindows;
  FMaxRows := AMaxRows;
  FMaxColumns := AMaxColumns;
  inherited Create(AOwner);
end;

procedure TVCLThemeSelectorForm.BuildPreviewPanels;
var
  i : Integer;
  LStyleName: string;
  LStyleNames: TStringList;
  LpnPreview: TPanel;
  LpnButton: TButton;
  LVCLPreview: TCBVclStylesPreview;
  LCountStyle : Integer;
  LNumRows : integer;
  LCalcHeight, LCalcWidth : Integer;
  LHeight, LWidth : Integer;
  LMonitor: TMonitor;
  LMonitorMargin: Integer;
  LScrollBarWidth: Integer;
const
  MARGIN = 4;
begin
  LStyleName := TStyleManager.ActiveStyle.Name;
  LStyleNames := TStringList.Create;
  LCountStyle := 0;
  LpnPreview := nil;
  try
    for i := 0 to High(TStyleManager.StyleNames) do
      LStyleNames.Add(TStyleManager.StyleNames[i]);
    LStyleNames.Sort;
    for i := 0 to LStyleNames.Count -1 do
    begin
      //Jump Windows Style if requested
      if FExcludeWindows and (LStyleNames.Strings[i] = 'Windows') then
        Continue;

      Inc(LCountStyle);
      LpnPreview := TPanel.Create(fpClient);
      //First assign size
      LpnPreview.Height := PREVIEW_HEIGHT;
      LpnPreview.Width := PREVIEW_WIDTH;
      LpnPreview.Margins.Left := MARGIN;
      LpnPreview.Margins.Top := MARGIN;
      LpnPreview.Margins.Bottom := MARGIN;
      LpnPreview.Margins.Right := MARGIN;
      //Then parent the control, so it is scaled correctly
      LpnPreview.Parent := fpClient;
      LpnPreview.Align := alLeft;
      LpnPreview.AlignWithMargins := True;

      LpnButton := TButton.Create(LpnPreview);
      LpnButton.Parent := LpnPreview;
      LpnButton.Align := alTop;
      LpnButton.OnClick := SelectionClick;
      LpnButton.Caption :=  LStyleNames.Strings[i];
      LpnButton.Cursor := crHandPoint;

      LVCLPreview := TCBVclStylesPreview.Create(LpnPreview);
      LVCLPreview.Caption := PREVIEW_THEME;
      LVCLPreview.SetCaptions(THEME_PREVIEW_VALUES);
      LVCLPreview.Parent := LpnPreview;
      LVCLPreview.Style := TStyleManager.Style[LStyleNames.Strings[i]];
      LVCLPreview.Align := alClient;

      if SameText(LStyleNames.Strings[i], LStyleName)  then
      begin
        FPreviousStyleName := LStyleNames.Strings[i];
        FStyleName := LStyleNames.Strings[i];
        LpnButton.Font.Style := [fsBold];
      end;
    end;

    if (LCountStyle mod FMaxColumns) <> 0 then
      LNumRows := (LCountStyle div FMaxColumns) + 1
    else
      LNumRows := (LCountStyle div FMaxColumns);

    Self.Constraints.MaxHeight := Screen.Height;
    LHeight := (LpnPreview.Height+(LpnPreview.Margins.Top+LpnPreview.Margins.Bottom*2));
    LWidth := (LpnPreview.Width+(LpnPreview.Margins.Left+LpnPreview.Margins.Right*2));
    LCalcHeight := (LHeight*Min(LNumRows, FMaxRows))+paButtons.Height;
    LCalcWidth := (LWidth*FMaxColumns);

    LMonitor := Screen.MonitorFromWindow(Self.Handle);
    LMonitorMargin := 100;
    //Check Max height available
    if (LCalcHeight > LMonitor.Height - LMonitorMargin) or
      (LNumRows > FMaxRows) or
      (LCalcWidth > LMonitor.Width - LMonitorMargin) then
    begin
      //Show scrollbar
      LScrollBarWidth := GetSystemMetrics(SM_CXVSCROLL);
      LCalcHeight := Min(LHeight * FMaxRows + paButtons.Height, LMonitor.Height - LMonitorMargin);
      Self.Constraints.MinHeight := LCalcHeight;
      Self.ClientHeight := LCalcHeight;
      ScrollBox.VertScrollBar.Visible := True;
      i := FMaxColumns;
      while True do
      begin
        LCalcWidth := LWidth * i + LScrollBarWidth + 6;
        if LCalcWidth <= LMonitor.Width - LMonitorMargin then
          break
        else
          Dec(i);
      end;
      Self.Constraints.MinWidth := LCalcWidth;
      Self.ClientWidth := LCalcWidth;
    end
    else
    begin
      ScrollBox.VertScrollBar.Visible := False;
      //Self.BorderStyle := bsDialog;
      Self.Constraints.MinHeight := LCalcHeight;
      Self.ClientHeight := LCalcHeight;
      if LCountStyle < FMaxColumns then
      begin
        Self.Constraints.MinWidth := (LWidth*LCountStyle);
        Self.ClientWidth := (LWidth*LCountStyle);
      end
      else
      begin
        Self.Constraints.MinWidth := LWidth*FMaxColumns;
        Self.ClientWidth := LWidth*FMaxColumns;
      end;
    end;

  finally
    LStyleNames.Free;
  end;
end;

procedure TVCLThemeSelectorForm.FormAfterMonitorDpiChanged(Sender: TObject;
  OldDPI, NewDPI: Integer);
begin
  if ParentFont and (Application.MainForm.Monitor.Handle <> Self.Monitor.Handle) then
    Font.Height := MulDiv(Font.Height, NewDPI, OldDPI);
end;

procedure TVCLThemeSelectorForm.FormCreate(Sender: TObject);
begin
  Caption := SELECT_THEME;
  acApplyStyle.Caption := APPLY_THEME;
  acCancel.Caption := CANCEL_THEME;

  UpdateButtons;
  UpdateLabel;
end;

procedure TVCLThemeSelectorForm.UpdateButtons;
begin
  btApply.Action := acApplyStyle;
  btCancel.Action := acCancel;
end;

procedure TVCLThemeSelectorForm.UpdateLabel;
begin
  if FPreviousStyleName <> FStyleName then
  begin
    StyleLabel.Caption := Format(THEME_SELECTED,[FStyleName]);
    StyleLabel.Visible := True;
  end
  else
    StyleLabel.Visible := False;
end;

procedure TVCLThemeSelectorForm.FormResize(Sender: TObject);
begin
  inherited;
  fpClient.Height := ClientRect.Bottom-ClientRect.Top-paButtons.Height;
end;

procedure TVCLThemeSelectorForm.Loaded;
begin
  ParentFont := False;
  //Note: the form uses Screen.IconFont by default
  Font.Name := Screen.IconFont.Name;
  Font.Height := Muldiv(Screen.IconFont.Height, 96, Screen.IconFont.PixelsPerInch);
  {$IFDEF D10_1+}
  OnAfterMonitorDpiChanged := FormAfterMonitorDpiChanged;
  {$ENDIF}

  inherited;
  //Build Preview panels
  BuildPreviewPanels;
end;

procedure TVCLThemeSelectorForm.SelectionClick(Sender: TObject);
var
  LButton: TButton;
  LPanel: TPanel;
  I, J : integer;
begin
  if (Sender is TButton) then
  begin
    LButton := TButton(Sender);
    FStyleName := LButton.Caption;
    LButton.Font.Style := [fsBold];
    for I := 0 to fpClient.ComponentCount-1 do
    begin
      if (fpClient.Components[I] is TPanel) then
      begin
        LPanel := TPanel(fpClient.Components[I]);
        for J := 0 to LPanel.ComponentCount-1 do
        begin
          if (LPanel.Components[J] is TButton) and (LButton <> LPanel.Components[J]) then
            TButton(LPanel.Components[J]).Font.Style := [];
        end;
      end;
    end;
    UpdateLabel;
    if btApply.CanFocus then
      btApply.SetFocus;
  end;
end;

procedure TVCLThemeSelectorForm.ScrollBoxMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
Var
  msg: Cardinal;
  code: Cardinal;
  i, n: Integer;
begin
  Handled := true;
  If ssShift In Shift Then
    msg := WM_HSCROLL
  Else
    msg := WM_VSCROLL;

  If WheelDelta > 0 Then
    code := SB_LINEUP
  Else
    code := SB_LINEDOWN;

  n := Mouse.WheelScrollLines * 4; //Speed Up scrolling
  For i:= 1 to n Do
    Scrollbox.Perform( msg, code, 0 );
  Scrollbox.Perform( msg, SB_ENDSCROLL, 0 );
end;

end.
