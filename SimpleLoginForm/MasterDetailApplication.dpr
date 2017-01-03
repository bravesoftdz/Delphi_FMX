program MasterDetailApplication;

{$R *.res}

{$R 'MyRes.res' 'MyRes.rc'}
{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Datas in 'U_Datas.pas' {Datas: TDataModule},
  MasterDetail in 'MasterDetail.pas' {MasterDetailForm},
  LoginForm in 'LoginForm.pas' {LoginFrm};

begin
  Application.Initialize;
  Application.CreateForm(TDatas, Datas);
  LoginFrm := TLoginFrm.Create(Application);
  try
    try
      if LoginFrm.ShowModal = 1 then
      begin
        Application.CreateForm(TMasterDetailForm, MasterDetailForm);
        Application.Run;
      end;
    except
      raise;
    end;
  finally
    LoginFrm.Free;
  end;
end.
