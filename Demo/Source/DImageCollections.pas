unit DImageCollections;

interface

uses
  System.SysUtils, System.Classes, IconFontsImageCollection,
  //Vcl.BaseImageCollection, //If you are compiling with a versione older than 10.3 remove this line
  SVGIconImageCollection;

type
  TIconsType = (itIconFonts, itSVGIcons);

  TImageCollectionDataModule = class(TDataModule)
    SVGIconImageCollection: TSVGIconImageCollection;
    IconFontsImageCollection: TIconFontsImageCollection;
    IconFontsImageCollectionMono: TIconFontsImageCollection;
  private
    FIconsType: TIconsType;
    procedure SetIconsType(const Value: TIconsType);
  public
    property IconsType: TIconsType read FIconsType write SetIconsType;
  end;

var
  ImageCollectionDataModule: TImageCollectionDataModule;

implementation

{$R *.dfm}

{ TImageCollectionDataModule }

procedure TImageCollectionDataModule.SetIconsType(const Value: TIconsType);
begin
  FIconsType := Value;
end;

end.
