unit MVC.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MVC.Controller.Funcionario;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FControllerFuncionario: TControllerFuncionario;
  public
    { Public declarations }
    destructor Destroy; override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FControllerFuncionario := TControllerFuncionario.Create;
  FControllerFuncionario.Exibir;
end;

destructor TForm1.Destroy;
begin
  FControllerFuncionario.Free;
  inherited;
end;

Initialization
  ReportMemoryLeaksOnShutdown := true;

end.
