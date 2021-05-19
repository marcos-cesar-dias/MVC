unit MVC.View.Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MVC.Model.Interfaces, Vcl.StdCtrls;

type
  TfrmFuncionario = class(TForm, IViewFuncionario)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

  public
    FComandos: TComandosFuncionario;
    procedure Notifica(msg: String);
    procedure GetDados(var Entidade: TEntidadeFuncionario);
    procedure SetDados(var Entidade: TEntidadeFuncionario);

    { Public declarations }

  end;

var
  frmFuncionario: TfrmFuncionario;

implementation

{$R *.dfm}

{ TfrmFuncionario }

procedure TfrmFuncionario.Button1Click(Sender: TObject);
begin
  FComandos.Salvar.Executar;
end;

procedure TfrmFuncionario.Notifica(msg: String);
begin
  showmessage(msg);
end;

procedure TfrmFuncionario.SetDados(var Entidade: TEntidadeFuncionario);
begin
  edit1.text := entidade.Id;
  edit2.text := entidade.Nome;
end;

procedure TfrmFuncionario.Button2Click(Sender: TObject);
begin
  FComandos.Carregar.Executar;
end;

procedure TfrmFuncionario.GetDados(var Entidade: TEntidadeFuncionario);
begin
  entidade.id := edit1.text;
  entidade.Nome := Edit2.text;
end;

end.
