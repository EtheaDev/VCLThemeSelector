# VCLThemeSelector [![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

**Easy and elegant preview/selection of Theme (Light/Dark/Other) for VCL apps plus HighDPI demo**

With VCLThemeSelector you can easily add a modern and elegant Theme selector for your Delphi VCL app. The Form shows all the VCL Styles included in your application, then arrange them in defined Rows and Columns. You can specify to include or not 'Windows' not-styled option.

![https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/Preview3x3.jpg](https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/Preview3x3.jpg)

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

![https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/DemoPreview.jpg](https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/DemoPreview.jpg)

License: this Demo is inspired by TSplitView demo (original software is Copyright (c) 2015 Embarcadero Technologies, Inc.) and is released under Apache 2.0 license.

WARNING: to edit and compile the demo you must first download:
[IconFontsImageList free components here...](https://github.com/EtheaDev/IconFontsImageList/)

## Compatibility ##

**VCLThemeSelector** and **VCLThemeSelectorLauncher** are compatible from Delphi XE5 to 10.3, with some differences to High-DPI support.
**ModernAppDemo** is compatible with Delphi 10.3, Delphi 10.2 and Delphi 10.1 (with 10.1 png stream format of pictures inside biolife.xml are incompatible: use an old biolife.xml file).


