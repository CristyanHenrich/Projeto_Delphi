unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    MOVIMENTACAO1: TMenuItem;
    RELATORIO1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Categoria2: TMenuItem;
    N2: TMenuItem;
    mnuFechar: TMenuItem;
    Vendas1: TMenuItem;
    Cliente2: TMenuItem;
    Cliente3: TMenuItem;
    Produto1: TMenuItem;
    Produto2: TMenuItem;
    VendaporData1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;

procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
  frmCadCategoria:=TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
//CONEXAO COM O BANCO DE DADOS
{
  dtmPrincipal.ConexaoDB.SQLHourGlass:=True;
  dtmPrincipal.ConexaoDB.Protocol:='mssql';
  dtmPrincipal.ConexaoDB.LibraryLocation:='C:\ProjetoDelphi\ntwdblib.dll';
  dtmPrincipal.ConexaoDB.HostName:='.\SERVER2014';
  dtmPrincipal.ConexaoDB.Port:=1433;
  dtmPrincipal.ConexaoDB.User:='sa';
  dtmPrincipal.ConexaoDB.Password:='123456';
  dtmPrincipal.ConexaoDB.Database:='vendas';
  dtmPrincipal.ConexaoDB.Connected:=true;
}

  //CONEXAO COM O BANCO DE DADOS
  dtmPrincipal := TdtmPrincipal.Create(Self);
  with dtmPrincipal.ConexaoDB do begin
    SQLHourGlass:=True;
    Protocol:='mssql';
    LibraryLocation:='C:\ProjetoDelphi\ntwdblib.dll';
    HostName:='.\SERVER2014';
    Port:=1433;
    User:='sa';
    Password:='123456';
    Database:='vendas';
    Connected:=true;
  end;

end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  //Close;
  Application.Terminate;
end;

end.
