program PrototipoMVC;

uses
  Vcl.Forms,
  MVC.View.Principal in 'View\MVC.View.Principal.pas' {Form1},
  MVC.View.Funcionario in 'View\MVC.View.Funcionario.pas' {frmFuncionario},
  MVC.Model.Funcionario in 'Model\MVC.Model.Funcionario.pas',
  MVC.Controller.Funcionario in 'Controller\MVC.Controller.Funcionario.pas',
  MVC.Model.Interfaces in 'Model\MVC.Model.Interfaces.pas',
  MVC.Model.Invoker in 'Model\MVC.Model.Invoker.pas',
  MVC.Model.CommandFuncionarioSalvar in 'Model\MVC.Model.CommandFuncionarioSalvar.pas',
  MVC.Model.CommandFuncionarioCarregar in 'Model\MVC.Model.CommandFuncionarioCarregar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
