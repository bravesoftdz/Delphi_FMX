unit U_Datas;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls, System.ImageList,
  FMX.ImgList;

type
  TDatas = class(TDataModule)
    imgLangues: TImageList;
    MainStyle: TStyleBook;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Datas: TDatas;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
