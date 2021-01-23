# VCLThemeSelector [![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

**Easy and elegant preview/selection of Theme (Light/Dark/Other) for VCL apps plus HighDPI demo**

![Delphi 10.4 Sydney Support](/Demo/Images/SupportingDelphi.jpg)

With **VCLThemeSelector** you can easily add a modern and elegant Theme selector for your Delphi VCL app. The Form shows all the VCL Styles included in your application, then arrange them in defined Rows and Columns. You can specify to include or not 'Windows' not-styled option.

### Preview (before Dephi 10.3)
![https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/PreviewD10_3.jpg](https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/PreviewD10_3.jpg)

### Preview (with Dephi 10.4 - PerControlStyles)
![https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/PreviewD10_4.jpg](https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/PreviewD10_4.jpg)

Use the **VCLThemeSelectorLauncher** demo present in Demo Folder to test it, and see how it's easy to use it, like in this example:

```pascal
var
  LStyleName: string;
  LExcludeWindows: boolean;
  LMaxRows, LMaxCols: Integer;
begin  
  LStyleName := TStyleManager.ActiveStyle.Name;
  LExcludeWindows := False;
  LMaxRows := 3;
  LMaxCols := 3;
  if ShowVCLThemeSelector(LStyleName, LExcludeWindows, LMaxRows, LMaxCols) then
    TStyleManager.SetStyle(LStyleName);
end;    
```

License: the CBVCLStylePreview is based on VCLStylePreview (Vcl.Styles.Ext) from:
[github.com/RRUZ/vcl-styles-utils](https://github.com/RRUZ/vcl-styles-utils/) with full High-DPI support, and released under Apache 2.0 license.

## High-DPI Delphi App full example ##

Also included in this repository you can find a full example of an HighDPI - VCL Themed enabled application that uses the VCLThemeSelector to change the Theme. You can run the demo from: Demo\Bin\ModernAppDemo.exe.

### Demo from 10.1 to 10.3 (with IconFontsImageList)
![https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/DemoPreview.jpg](https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/DemoPreview.jpg)

### Demo with 10.4 (with PerControlStyle and SVGIconsImageList)
![https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/DemoPreviewD10_4.jpg](https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/DemoPreviewD10_4.jpg)

License: this Demo is inspired by TSplitView demo (original software is Copyright (c) 2015 Embarcadero Technologies, Inc.) and is released under Apache 2.0 license.

WARNING: to edit and compile the demo you must first download:
[IconFontsImageList free components here...](https://github.com/EtheaDev/IconFontsImageList/) and [SVGIconImageList free components here...](https://github.com/EtheaDev/SVGIconImageList/)

## Compatibility ##

**VCLThemeSelector** and **VCLThemeSelectorLauncher** are compatible from Delphi XE5 to 10.3, with some differences to High-DPI support.
**ModernAppDemo** is compatible with Delphi 10.3, Delphi 10.2 and Delphi 10.1 (with 10.1 png stream format of pictures inside biolife.xml are incompatible: use an old biolife.xml file).

## Release Notes ##

30 Aug 2020
- Changed demo to use new IconsFontsVirtualImageList and SVGIconVirtualImageList components
- Updated external project VCLStyleUtils

19 Jun 2020
- Fixed VCLThemeSelector for app in "Windows" Style for D10.4
- Recompiled Demo with IconFontsImageList 2.0 (with GDI+ support)

11 Jun 2020
- Added SVGIconImageList
- Demo: swith icons from Fonts to SVG

09 Jun 2020
- Updated Demo for Delphi 10.4
- Added custom form "per-control styled" for D10.4

17 May 2020
- Changed "Material Design Desktop" Font used in Demo

27 Apr 2020
- Added VCLThemeSelectorLauncher 

25 Apr 2020
- First release of Selector and Demo App
