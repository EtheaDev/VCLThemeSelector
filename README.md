# VCLThemeSelector
Easy and elegant preview/selection of Theme (Light/Dark/Other) for VCL apps

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
