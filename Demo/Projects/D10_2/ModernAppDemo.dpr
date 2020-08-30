//---------------------------------------------------------------------------
// Original software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.
//---------------------------------------------------------------------------
{******************************************************************************}
{  ModernAppDemo by Carlo Barazzetta                                           }
{                                                                              ]
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

program ModernAppDemo;

uses
  Forms,
  SysUtils,
  Vcl.Themes,
  Vcl.Styles,
  uSplitView in '..\..\Source\uSplitView.pas' {FormMain},
  EditForm in '..\..\Source\EditForm.pas' {FmEdit},
  FVCLThemeSelector in '..\..\..\Source\FVCLThemeSelector.pas' {VCLThemeSelectorForm},
  DImageCollections in '..\..\Source\DImageCollections.pas' {ImageCollectionDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Modern App and ThemeSelector Demo with HighDPI support - Copyright (c) Ethea S.r.l.';
  Application.CreateForm(TImageCollectionDataModule, ImageCollectionDataModule);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
