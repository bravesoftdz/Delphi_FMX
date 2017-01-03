unit U_Datas;

interface

uses
  System.SysUtils, System.Classes, FMX.Types, FMX.Controls, System.ImageList,
  FMX.ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.DB, Datasnap.DBClient;

type
  TDatas = class(TDataModule)
    imgLangues: TImageList;
    MainStyle: TStyleBook;
    ClientDataSet1: TClientDataSet;
    FDMemTable1: TFDMemTable;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Datas: TDatas;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
