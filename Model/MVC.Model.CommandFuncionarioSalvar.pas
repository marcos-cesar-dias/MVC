unit MVC.Model.CommandFuncionarioSalvar;

interface

  uses MVC.Model.Interfaces;

type
  TCommandFuncionarioSalvar = class(TInterfacedObject, ICommand)
  private
    [weak]
    FModel : IModelFuncionario;
  public
    constructor Create(Model: IModelFuncionario);
    class function New(Model: IModelFuncionario): ICommand;
    procedure Execute;
  end;


implementation

{ TCommandFuncionarioSalvar }

constructor TCommandFuncionarioSalvar.Create(Model: IModelFuncionario);
begin
  FModel := Model;
end;

procedure TCommandFuncionarioSalvar.Execute;
begin
  Fmodel.PegarDadosView;
end;

class function TCommandFuncionarioSalvar.New(
  Model: IModelFuncionario): ICommand;
begin
  result := Self.Create(Model);
end;

end.
