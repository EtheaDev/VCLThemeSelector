# VCLThemeSelector
**Easy and elegant preview/selection of Theme (Light/Dark/Other) for VCL apps plus HighDPI demo**

With VCLThemeSelector you can easily add a modern and elegant Theme selector for your Delphi VCL app with few lines of code:

```pascal
var
  LActiveStyleName: string;
  LExcludeWindows: boolean;
  LMaxRows, LMaxCols: Integer;
begin  
  LActiveStyleName := TStyleManager.ActiveStyle.Name;
  LExcludeWindows := False;
  LMaxRows := 3;
  LMaxCols := 3;
  if ShowVCLThemeSelector(LActiveStyleName, LExcludeWindows, LMaxRows, LMaxCols) then
    TStyleManager.SetStyle(LActiveStyleName);
end;    
```

The Form shows all the VCL Styles included in your application, then arrange them in defined Rows and Columns.

You can specify to include or not 'Windows' not-styled option.

![https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/Preview3x3.jpg](https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/Preview3x3.jpg)

License: the CBVCLStylePreview is based on VCLStylePreview (Vcl.Styles.Ext) from:
[github.com/RRUZ/vcl-styles-utils](https://github.com/RRUZ/vcl-styles-utils/)

Also included in this repository you can find a full example of an HighDPI - VCL Themed enabled application that uses the VCLThemeSelector to change the Theme. You can run the demo from: Demo\Bin\SplitViewDemo.exe.

![https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/DemoPreview.jpg](https://github.com/EtheaDev/VCLThemeSelector/blob/master/Demo/Images/DemoPreview.jpg)

License: this Demo is inspired by TSplitView demo: original software is Copyright (c) 2015 Embarcadero Technologies, Inc.

WARNING: to edit and compile the demo you must first download 
[IconFontsImageList components here...](https://github.com/EtheaDev/IconFontsImageList/)
