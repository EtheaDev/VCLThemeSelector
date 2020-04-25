//-----------------------------------------------------------------------------

// Original software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//-----------------------------------------------------------------------------
{******************************************************************************}
{  SplitViewDemo by Carlo Barazzetta                                           }
{  A full example of an HighDPI - VCL Themed enabled application               }
{  See how to select the application Theme using VCLThemeSelector Form         }
{                                                                              }
{       Copyright (c) 2020 (Ethea S.r.l.)                                      }
{       Author: Carlo Barazzetta                                               }
{       https://github.com/EtheaDev/VCLThemeSelector                           }
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

unit uSplitView;

interface

uses
  Winapi.Windows
  , Winapi.Messages
  , System.SysUtils
  , System.Variants
  , System.Classes
  , System.ImageList
  , System.Actions
  , Vcl.Graphics
  , Vcl.Controls
  , Vcl.Forms
  , Vcl.Dialogs
  , Vcl.ExtCtrls
  , Vcl.WinXCtrls
  , Vcl.StdCtrls
  , Vcl.CategoryButtons
  , Vcl.Buttons
  , Vcl.ImgList
  , Vcl.Imaging.PngImage
  , Vcl.ComCtrls
  , Vcl.ActnList
  , Vcl.Menus
  , Vcl.Mask
  , Data.DB
  , Datasnap.DBClient
  , Vcl.WinXCalendars
  , Vcl.CheckLst
  , Vcl.DBCtrls
  , Vcl.ColorGrd
  , Vcl.Samples.Spin
  , Vcl.Grids
  , Vcl.DBGrids
  , Vcl.ToolWin
  , Vcl.GraphUtil
  ,  EditForm
  , IconFontsImageList //uses IconFontsImageList - download free at: https://github.com/EtheaDev/IconFontsImageList
  , IconFontsUtils
  , FVCLThemeSelector, Vcl.WinXPickers
  ;

const
  COMPANY_NAME = 'Ethea';

type
  TFormMain = class(TForm)
    panlTop: TPanel;
    SV: TSplitView;
    catMenuItems: TCategoryButtons;
    catSettings: TCategoryButtons;
    catMenuSettings: TCategoryButtons;
    catPanelSettings: TCategoryButtons;
    IconFontsImageList: TIconFontsImageList;
    ActionList: TActionList;
    actHome: TAction;
    actChangeTheme: TAction;
    actShowChildForm: TAction;
    actMenu: TAction;
    lblTitle: TLabel;
    splSplit: TSplitter;
    svSettings: TSplitView;
    imlIconsBlack: TIconFontsImageList;
    splSettings: TSplitter;
    actSettings: TAction;
    actViewOptions: TAction;
    pnlSettings: TPanel;
    pcSettings: TPageControl;
    tsStyle: TTabSheet;
    grpDisplayMode: TRadioGroup;
    grpCloseStyle: TRadioGroup;
    grpPlacement: TRadioGroup;
    tsAnimation: TTabSheet;
    grpAnimation: TGroupBox;
    lblAnimationDelay: TLabel;
    lblAnimationStep: TLabel;
    trkAnimationDelay: TTrackBar;
    trkAnimationStep: TTrackBar;
    tswAnimation: TToggleSwitch;
    tsLog: TTabSheet;
    lstLog: TListBox;
    actBack: TAction;
    actAnimate: TAction;
    actLog: TAction;
    PageControl: TPageControl;
    tsDatabase: TTabSheet;
    ClientDataSet: TClientDataSet;
    DBNavigator: TDBNavigator;
    DbGrid: TDBGrid;
    tsWindows10: TTabSheet;
    CalendarView: TCalendarView;
    CalendarPicker: TCalendarPicker;
    tsStandard: TTabSheet;
    Edit: TEdit;
    HomeButton: TBitBtn;
    LogButton: TBitBtn;
    CheckListBox: TCheckListBox;
    ColorGrid: TColorGrid;
    RichEdit: TRichEdit;
    SpinEdit: TSpinEdit;
    ComboBox: TComboBox;
    ListBox: TListBox;
    Memo: TMemo;
    ColorBox: TColorBox;
    MaskEdit: TMaskEdit;
    RadioButton: TRadioButton;
    RadioGroup: TRadioGroup;
    DBRichEdit: TDBRichEdit;
    Label1: TLabel;
    MenuButtonPanel: TToolBar;
    ToolButton1: TToolButton;
    ToolBar: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    tsvDisplayMode: TToggleSwitch;
    ttsCloseStyle: TToggleSwitch;
    DateTimePicker1: TDateTimePicker;
    ClientDataSetSpeciesNo: TFloatField;
    ClientDataSetCategory: TStringField;
    ClientDataSetCommon_Name: TStringField;
    ClientDataSetSpeciesName: TStringField;
    ClientDataSetLengthcm: TFloatField;
    ClientDataSetLength_In: TFloatField;
    ClientDataSetNotes: TMemoField;
    ClientDataSetGraphic: TGraphicField;
    DataSource: TDataSource;
    tsFont: TTabSheet;
    Label2: TLabel;
    FontTrackBar: TTrackBar;
    acFont: TAction;
    FontComboBox: TComboBox;
    FontSizeLabel: TLabel;
    acApplyFont: TAction;
    SaveFontButton: TBitBtn;
    tsIconFonts: TTabSheet;
    Label3: TLabel;
    IconFontsSizeLabel: TLabel;
    IconFontsTrackBar: TTrackBar;
    acIconFonts: TAction;
    paEdit: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    DBImage: TDBImage;
    FileOpenDialog: TFileOpenDialog;
    ttsCloseSplitView: TToggleSwitch;
    TimePicker: TTimePicker;
    DatePicker: TDatePicker;
    ButtonEdit: TSearchBox;
    ButtonEditDate: TSearchBox;
    procedure FormCreate(Sender: TObject);
    procedure grpDisplayModeClick(Sender: TObject);
    procedure grpPlacementClick(Sender: TObject);
    procedure grpCloseStyleClick(Sender: TObject);
    procedure SVClosed(Sender: TObject);
    procedure SVOpened(Sender: TObject);
    procedure SVOpening(Sender: TObject);
    procedure trkAnimationDelayChange(Sender: TObject);
    procedure trkAnimationStepChange(Sender: TObject);
    procedure actHomeExecute(Sender: TObject);
    procedure actChangeThemeExecute(Sender: TObject);
    procedure actShowChildFormExecute(Sender: TObject);
    procedure actMenuExecute(Sender: TObject);
    procedure CatPreventCollapase(Sender: TObject;
      const Category: TButtonCategory);
    procedure SVResize(Sender: TObject);
    procedure actSettingsExecute(Sender: TObject);
    procedure svSettingsClosed(Sender: TObject);
    procedure svSettingsOpened(Sender: TObject);
    procedure SVClosing(Sender: TObject);
    procedure tswAnimationClick(Sender: TObject);
    procedure actBackExecute(Sender: TObject);
    procedure actViewOptionsExecute(Sender: TObject);
    procedure actAnimateExecute(Sender: TObject);
    procedure actLogExecute(Sender: TObject);
    procedure svSettingsClosing(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsvDisplayModeClick(Sender: TObject);
    procedure ttsCloseStyleClick(Sender: TObject);
    procedure FontTrackBarChange(Sender: TObject);
    procedure acFontExecute(Sender: TObject);
    procedure FormAfterMonitorDpiChanged(Sender: TObject; OldDPI, NewDPI: Integer);
    procedure FontComboBoxSelect(Sender: TObject);
    procedure IconFontsTrackBarChange(Sender: TObject);
    procedure acIconFontsExecute(Sender: TObject);
    procedure acApplyFontExecute(Sender: TObject);
    procedure acApplyFontUpdate(Sender: TObject);
    procedure DBImageDblClick(Sender: TObject);
    procedure ClientDataSetAfterPost(DataSet: TDataSet);
    procedure PageControlChange(Sender: TObject);
    procedure IconFontsImageListFontMissing(const AFontName: string);
  private
    FActiveFont: TFont;
    FActiveStyleName: string;
    procedure FixComponentsFont;
    procedure Log(const Msg: string);
    procedure AfterMenuClick;
    procedure ShowSettingPage(TabSheet: TTabSheet; AutoOpen: Boolean = False);
    procedure FontTrackBarUpdate;
    procedure IconFontsTrackBarUpdate;
    procedure SetActiveStyleName(const Value: string);
    procedure AdjustCatSettings;
  protected
    procedure Loaded; override;
  public
    destructor Destroy; override;
    property ActiveStyleName: string read FActiveStyleName write SetActiveStyleName;
  end;

var
  FormMain: TFormMain;

//Utilities to read/write application preferences from/to Registry
function ReadAppStyleFromReg(const CompanyName, ApplicationName: string) : string;
procedure WriteAppStyleToReg(const CompanyName, ApplicationName, AppStyle : string);
procedure ReadAppStyleAndFontFromReg(const CompanyName, ApplicationName: string;
  out AAppStyle: string; const AFont: TFont);
procedure WriteAppStyleAndFontToReg(const CompanyName, ApplicationName: string;
  const AAppStyle: string; const AFont: TFont);

implementation

uses
  Vcl.Themes
  , System.Win.Registry
  , System.UITypes;

{$R *.dfm}

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

procedure ApplyStyleElements(ARootControl: TControl;
  AStyleElements: TStyleElements);
var
  I: Integer;
  LControl: TControl;
begin
  ARootControl.StyleElements := AStyleElements;
  ARootControl.Invalidate;
  if ARootControl is TWinControl then
  For I := 0 to TWinControl(ARootControl).ControlCount -1 do
  begin
    LControl := TWinControl(ARootControl).Controls[I];
    ApplyStyleElements(TWinControl(LControl), AStyleElements);
  end;
end;

{ TFormMain }

procedure TFormMain.IconFontsImageListFontMissing(const AFontName: string);
var
  LFontFileName: string;
begin
  inherited;
  //The "material design web-font is not installed into system: load and install now from disk
  LFontFileName := ExtractFilePath(Application.ExeName)+'..\Fonts\materialdesignicons-webfont.ttf';
  if FileExists(LFontFileName) then
  begin
    {$IFNDEF D2010+}
    AddFontResource(PChar(LFontFileName));
    {$ELSE}
    AddFontResource(PWideChar(LFontFileName));
    {$ENDIF}
    SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0);
  end
  else
  begin
    //If the font file is not available
    MessageDlg(Format('Warning: "%s" font is not present in your system!'+sLineBreak+
      'Please download at https://materialdesignicons.com and install it, because this demo is based on this font.',
        [AFontName]), mtError, [mbOK], 0);
  end;
end;

procedure TFormMain.FontTrackBarUpdate;
begin
  FontSizeLabel.Caption := IntToStr(FontTrackBar.Position);
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  FontTrackBarUpdate;
  IconFontsTrackBarUpdate;
end;

procedure TFormMain.FixComponentsFont;
begin
  CalendarView.ParentFont := True;
  CalendarView.HeaderInfo.Font.Assign(Font);
  CalendarView.HeaderInfo.DaysOfWeekFont.Assign(Font);
  CalendarPicker.ParentFont := True;
  TimePicker.Font.Assign(Font);
  DatePicker.Font.Assign(Font);
end;

procedure TFormMain.FontComboBoxSelect(Sender: TObject);
begin
  Font.Name := FontComboBox.Text;
end;

procedure TFormMain.FontTrackBarChange(Sender: TObject);
begin
  Font.Height := MulDiv(-FontTrackBar.Position, Round(100*ScaleFactor), 100);
  FontTrackBarUpdate;
end;

procedure TFormMain.IconFontsTrackBarChange(Sender: TObject);
begin
  IconFontsImageList.Size := IconFontsTrackBar.Position;
  imlIconsBlack.Size := IconFontsTrackBar.Position;
  IconFontsTrackBarUpdate;
end;

procedure TFormMain.IconFontsTrackBarUpdate;
var
  LContainerSize: Integer;

  procedure UpdateCategoryButtonSize(ACatButton: TCategoryButtons);
  begin
    ACatButton.ButtonHeight := LContainerSize;
    ACatButton.ButtonWidth := LContainerSize;
  end;

begin
  IconFontsTrackBar.Position := IconFontsImageList.Size;
  IconFontsSizeLabel.Caption := IntToStr(IconFontsTrackBar.Position);
  LContainerSize := IconFontsTrackBar.Position + Round(10 * ScaleFactor);
  panlTop.Height := LContainerSize + Round(4 * ScaleFactor);
  SV.Top := panlTop.Top+panlTop.Height;
  svSettings.Top := SV.Top;
  UpdateCategoryButtonSize(catMenuItems);
  UpdateCategoryButtonSize(catMenuSettings);
  UpdateCategoryButtonSize(catSettings);
  UpdateCategoryButtonSize(catPanelSettings);
end;

procedure TFormMain.FormAfterMonitorDpiChanged(Sender: TObject; OldDPI,
  NewDPI: Integer);

  procedure FixSplitViewResize(ASplitView: TSplitView);
  begin
    ASplitView.CompactWidth := MulDiv(ASplitView.CompactWidth, NewDPI, OldDPI);
    ASplitView.OpenedWidth := MulDiv(ASplitView.OpenedWidth, NewDPI, OldDPI);
  end;

begin
  FontTrackBarUpdate;
  IconFontsTrackBarUpdate;
  AdjustCatSettings;

  //Fix for SplitViews
  FixSplitViewResize(SV);
  FixSplitViewResize(svSettings);

  //Update Application.DefaultFont for Childforms with ParentFont = True
  Application.DefaultFont.Assign(Font);
end;

procedure TFormMain.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  Caption := Application.Title;

  //Hide Tabs
  for I := 0 to pcSettings.PageCount-1 do
    pcSettings.Pages[I].TabVisible := False;

  //Disable any StyleElements of all components contained into svSettings
  ApplyStyleElements(svSettings, []);

  //Assign Fonts to Combobox
  FontComboBox.Items.Assign(Screen.Fonts);
  FontComboBox.ItemIndex := FontComboBox.Items.IndexOf(Font.Name);

  //Title label
  lblTitle.Caption := Application.Title;
  lblTitle.Font.Color := clHighlightText;
  lblTitle.Font.Height := lblTitle.Font.Height - 4;
  lblTitle.Font.Style := lblTitle.Font.Style + [fsBold];

  //Assign file for ClientDataSet
  ClientDataSet.FileName := ExtractFilePath(ParamStr(0))+'..\Data\biolife.xml';
end;

procedure TFormMain.CatPreventCollapase(Sender: TObject;
  const Category: TButtonCategory);
begin
  // Prevent the catMenuButton Category group from being collapsed
  (Sender as TCategoryButtons).Categories[0].Collapsed := False;
end;

procedure TFormMain.ClientDataSetAfterPost(DataSet: TDataSet);
begin
  //Save content to File
  ClientDataSet.SaveToFile(ClientDataSet.FileName, dfXMLUTF8);
end;

procedure TFormMain.DBImageDblClick(Sender: TObject);
begin
  ClientDataSet.Edit;
  FileOpenDialog.DefaultFolder := ExtractFilePath(ClientDataSet.FileName);
  if FileOpenDialog.Execute then
  begin
    ClientDataSetGraphic.LoadFromFile(FileOpenDialog.FileName);
  end;
end;

destructor TFormMain.Destroy;
begin
  inherited;
  FActiveFont.Free;
end;

procedure TFormMain.grpDisplayModeClick(Sender: TObject);
begin
  SV.DisplayMode := TSplitViewDisplayMode(grpDisplayMode.ItemIndex);
end;

procedure TFormMain.grpCloseStyleClick(Sender: TObject);
begin
  SV.CloseStyle := TSplitViewCloseStyle(grpCloseStyle.ItemIndex);
end;

procedure TFormMain.grpPlacementClick(Sender: TObject);
begin
  SV.Placement := TSplitViewPlacement(grpPlacement.ItemIndex);
end;

procedure TFormMain.SetActiveStyleName(const Value: string);
begin
  if Value <> '' then
  begin
    TStyleManager.SetStyle(Value);
    WriteAppStyleToReg(COMPANY_NAME, ExtractFileName(Application.ExeName), Value);
    FActiveStyleName := Value;
    //Windows Style: use white icons
    if FActiveStyleName = 'Windows' then
    begin
      catMenuItems.Font.Color := clWhite;
      DBImage.Color := clAqua;
      IconFontsImageList.UpdateIconsAttributes(clWhite, clHighlight);
    end
    else
    begin
      UpdateIconFontsColorByStyle(IconFontsImageList, True);
      catMenuItems.Font.Color := IconFontsImageList.FontColor;
      //Color for Bitmap Background
      DBImage.Color := TStyleManager.ActiveStyle.GetStyleColor(scGenericBackground);
    end;
    catMenuItems.BackgroundGradientDirection := gdVertical;
    catMenuItems.RegularButtonColor := clNone;
    catMenuItems.SelectedButtonColor := clNone;
  end;
end;

procedure TFormMain.ShowSettingPage(TabSheet: TTabSheet;
  AutoOpen: Boolean = False);
begin
  if Assigned(TabSheet) then
  begin
    pcSettings.ActivePage := TabSheet;
    pnlSettings.Visible := True;
    catMenuSettings.Visible := False;
    actBack.Caption := Tabsheet.Caption;
    if AutoOpen then
      svSettings.Open;
  end
  else
  begin
    pnlSettings.Visible := False;
    catMenuSettings.Visible := True;
    actBack.Caption := 'Back';
  end;
end;

procedure TFormMain.SVClosed(Sender: TObject);
begin
  // When TSplitView is closed, adjust ButtonOptions and Width
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions - [boShowCaptions];
  actMenu.Hint := 'Expand';
  splSplit.Visible := False;
end;

procedure TFormMain.SVClosing(Sender: TObject);
begin
  SV.OpenedWidth := SV.Width;
end;

procedure TFormMain.SVOpened(Sender: TObject);
begin
  // When not animating, change size of catMenuItems when TSplitView is opened
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions + [boShowCaptions];
  actMenu.Hint := 'Collapse';
  splSplit.Visible := True;
  splSplit.Left := SV.Left + SV.Width;
end;

procedure TFormMain.SVOpening(Sender: TObject);
begin
  // When animating, change size of catMenuItems at the beginning of open
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions + [boShowCaptions];
end;

procedure TFormMain.AdjustCatSettings;
var
  LButtonWidth, LNumButtons, LButtonsFit: Integer;
  LCaptionOffset: Integer;
  LFontHeight: Integer;
  LButtonRect: TRect;
begin
  catSettings.Realign;
  LButtonWidth := catSettings.ButtonWidth;
  LNumButtons := catSettings.Categories[0].Items.Count;
  LButtonsFit := (SV.Width) div (LButtonWidth+2);
  LCaptionOffset := Round(-Font.Height+14);
  if (LButtonsFit <> 0) and (LButtonsFit < LNumButtons) then
    catSettings.Height := (((LNumButtons div LButtonsFit)+1) * catSettings.ButtonHeight) + LCaptionOffset
  else
  begin
    catSettings.Height := catSettings.ButtonHeight + LCaptionOffset;
  end;
end;

procedure TFormMain.SVResize(Sender: TObject);
begin
  AdjustCatSettings;
end;

procedure TFormMain.svSettingsClosed(Sender: TObject);
begin
  splSettings.Visible := False;
  ShowSettingPage(nil);
end;

procedure TFormMain.svSettingsClosing(Sender: TObject);
begin
  if svSettings.Width <> 0 then
    svSettings.OpenedWidth := svSettings.Width;
end;

procedure TFormMain.svSettingsOpened(Sender: TObject);
begin
  splSettings.Visible := True;
  splSettings.Left := svSettings.Left -1;
end;

procedure TFormMain.trkAnimationDelayChange(Sender: TObject);
begin
  SV.AnimationDelay := trkAnimationDelay.Position * 5;
  lblAnimationDelay.Caption := Format('Animation Delay (%d)', [SV.AnimationDelay]);
end;

procedure TFormMain.trkAnimationStepChange(Sender: TObject);
begin
  SV.AnimationStep := trkAnimationStep.Position * 5;
  lblAnimationStep.Caption := Format('Animation Step (%d)', [SV.AnimationStep]);
end;

procedure TFormMain.ttsCloseStyleClick(Sender: TObject);
begin
  if ttsCloseStyle.State = tssOff then
    SV.CloseStyle := svcCompact
  else
    SV.CloseStyle := svcCollapse;
end;

procedure TFormMain.tsvDisplayModeClick(Sender: TObject);
begin
  if tsvDisplayMode.State = tssOff then
    SV.DisplayMode := svmDocked
  else
    SV.DisplayMode := svmOverlay;
end;

procedure TFormMain.tswAnimationClick(Sender: TObject);
begin
  SV.UseAnimation := tswAnimation.State = tssOn;
  lblAnimationDelay.Enabled := SV.UseAnimation;
  trkAnimationDelay.Enabled := SV.UseAnimation;
  lblAnimationStep.Enabled := SV.UseAnimation;
  trkAnimationStep.Enabled := SV.UseAnimation;
end;

procedure TFormMain.acApplyFontExecute(Sender: TObject);
begin
  FActiveFont.Name := FontComboBox.Text;
  FActiveFont.Height := -FontTrackBar.Position;
  WriteAppStyleAndFontToReg(COMPANY_NAME, ExtractFileName(ParamStr(0)),
    FActiveStyleName, FActiveFont);

  //Update Child Forms
  if Assigned(FmEdit) then
    FmEdit.Font.Assign(Font);

  AfterMenuClick;
end;

procedure TFormMain.acApplyFontUpdate(Sender: TObject);
begin
  acApplyFont.Enabled := (FActiveFont.Name <> FontComboBox.Text) or
    (FActiveFont.Height <> FontTrackBar.Position);
end;

procedure TFormMain.acFontExecute(Sender: TObject);
begin
  ShowSettingPage(tsFont);
end;

procedure TFormMain.acIconFontsExecute(Sender: TObject);
begin
  ShowSettingPage(tsIconFonts);
end;

procedure TFormMain.actAnimateExecute(Sender: TObject);
begin
  ShowSettingPage(tsAnimation);
end;

procedure TFormMain.actBackExecute(Sender: TObject);
begin
  ShowSettingPage(nil);
end;

procedure TFormMain.actHomeExecute(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  Log(actHome.Caption + ' Clicked');
  AfterMenuClick;
end;

procedure TFormMain.actChangeThemeExecute(Sender: TObject);
begin
  //Show Theme selector
  if ShowVCLThemeSelector(FActiveStyleName,
    False, 3, 3) then
    ActiveStyleName := FActiveStyleName;
end;

procedure TFormMain.actLogExecute(Sender: TObject);
begin
  ShowSettingPage(tsLog);
end;

procedure TFormMain.actMenuExecute(Sender: TObject);
begin
  if SV.Opened then
    SV.Close
  else
    SV.Open;
end;

procedure TFormMain.actShowChildFormExecute(Sender: TObject);
begin
  if not Assigned(FmEdit) then
    FmEdit := TFmEdit.Create(Self);
  FmEdit.Show;
  Log(actShowChildForm.Caption + ' Clicked');
  AfterMenuClick;
end;

procedure TFormMain.actSettingsExecute(Sender: TObject);
begin
  if svSettings.Opened then
    svSettings.Close
  else
    svSettings.Open;
end;

procedure TFormMain.actViewOptionsExecute(Sender: TObject);
begin
  ShowSettingPage(tsStyle);
end;

procedure TFormMain.AfterMenuClick;
begin
  if SV.Opened and (ttsCloseSplitView.State = tssOn) then
    SV.Close;
  if svSettings.Opened and (ttsCloseSplitView.State = tssOn) then
    svSettings.Close;
end;

procedure TFormMain.Loaded;
var
  LFontHeight: Integer;
begin
  FActiveFont := TFont.Create;

  //Acquire system font and size (eg. for windows 10 Segoe UI and 14 at 96 DPI)
  //but without using Assign!
  Font.Name := Screen.IconFont.Name;
  //If you want to use system font Height:
  Font.Height := Muldiv(Screen.IconFont.Height, 96, Screen.IconFont.PixelsPerInch);

  //Check for Font stored into Registry (user preferences)
  ReadAppStyleAndFontFromReg(COMPANY_NAME,
    ExtractFileName(ParamStr(0)), FActiveStyleName, FActiveFont);
  LFontHeight := FActiveFont.Height;
  Font.Assign(FActiveFont);

  //Fix components for ParentFont
  FixComponentsFont;

  inherited;

  //Update Trackbar position with Width loaded before resize of Font
  FontTrackBar.Position := - LFontHeight;

  //For ParentFont on Child Forms
  Application.DefaultFont.Assign(Font);

  //GUI default
  ActiveStyleName := FActiveStyleName;
  svSettings.Opened := False;
  PageControl.ActivePageIndex := 0;

end;

procedure TFormMain.Log(const Msg: string);
var
  Idx: Integer;
begin
  Idx := lstLog.Items.Add(Msg);
  lstLog.TopIndex := Idx;
  ShowSettingPage(tsLog, True);
end;

procedure TFormMain.PageControlChange(Sender: TObject);
begin
  if (PageControl.ActivePage = tsDatabase) then
  begin
    if not ClientDataSet.Active then
    begin
      Screen.Cursor := crHourGlass;
      try
        ClientDataSet.open;
        ClientDataSet.LogChanges := False;
      finally
        Screen.Cursor := crDefault;
      end;
    end;
  end;
end;

end.
