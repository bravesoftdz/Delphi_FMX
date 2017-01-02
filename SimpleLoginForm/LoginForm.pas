unit LoginForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Layouts, FMX.Effects,
  FMX.ListBox, U_Datas, System.ImageList, FMX.ImgList, FMX.ComboEdit,
  FMX.ComboTrackBar, FMX.Printer, FMX.Ani;

type
  TLoginFrm = class(TForm)
    edtLogin: TEdit;
    edtPassword: TEdit;
    TopLayout: TLayout;
    LogLayout: TLayout;
    imgLogin: TImage;
    GlowEffect5: TGlowEffect;
    GlowEffect6: TGlowEffect;
    lngLoginFrm: TLang;
    Label1: TLabel;
    btnFR: TSpeedButton;
    imgFR: TImage;
    btnES: TSpeedButton;
    imgES: TImage;
    btnEN: TSpeedButton;
    imgEN: TImage;
    btnCancel: TSpeedButton;
    btnValid: TSpeedButton;
    Image3: TImage;
    Label4: TLabel;
    Image4: TImage;
    Label5: TLabel;
    lblAppVersion: TLabel;
    PasswordEditButton1: TPasswordEditButton;
    lblEnv: TLabel;
    procedure btnESClick(Sender: TObject);
    procedure btnENClick(Sender: TObject);
    procedure btnFRClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnValidClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  LoginFrm: TLoginFrm;

implementation

resourcestring
  StrProduction = 'Production';

const
  LangId_FR = 'fr';
  LangId_EN = 'en';
  LangId_ES = 'es';

resourcestring
  Rst_Connection_Error = 'Les informations de connexion sont incorrectes, veuillez réessayer.';
//  Rst_Connection_Error_EN = 'Login information is incorrect, please try again.';
//  Rst_Connection_Error_ES = 'La información de conexión es incorrecta, por favor intente de nuevo.';

{$R *.fmx}

function GetAppVersionStr: string;
var
  Rec: LongRec;
begin
  Rec := LongRec(GetFileVersion(ParamStr(0)));
  Result := Format('%d.%d', [Rec.Hi, Rec.Lo])
end;

procedure TLoginFrm.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TLoginFrm.btnENClick(Sender: TObject);
begin
//  lngLoginFrm.Lang := LangId_EN;
  LoadLangFromStrings(lngLoginFrm.LangStr[LangId_EN]);
end;

procedure TLoginFrm.btnESClick(Sender: TObject);
begin
//  lngLoginFrm.Lang := LangId_ES;
  LoadLangFromStrings(lngLoginFrm.LangStr[LangId_ES]);
end;

procedure TLoginFrm.btnFRClick(Sender: TObject);
begin
//  lngLoginFrm.Lang := LangId_FR;
  LoadLangFromStrings(lngLoginFrm.LangStr[LangId_FR]);
end;

procedure TLoginFrm.btnValidClick(Sender: TObject);
begin
  if (edtLogin.Text = 'TEST') and (edtPassword.Text = '1234') then
    ModalResult := mrOk
  else
  begin
    raise Exception.Create(Rst_Connection_Error);
  end;
end;

procedure TLoginFrm.FormCreate(Sender: TObject);
begin
  lblAppVersion.Text := GetAppVersionStr;
  lblEnv.Text := StrProduction;
  if lblEnv.Text = StrProduction then
    lblEnv.TextSettings.FontColor := TAlphaColorRec.Red;
end;

procedure TLoginFrm.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkEscape then // Echap ==> On ferme
    btnCancelClick(Sender);
  if Key = vkReturn then
    btnValidClick(Sender);
end;

end.
