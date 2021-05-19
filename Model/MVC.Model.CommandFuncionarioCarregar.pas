unit MVC.Model.CommandFuncionarioCarregar;
interface

  uses MVC.Model.Interfaces;

type
  TCommandFuncionarioCarregar = class(TInterfacedObject, ICommand)
  private
    [weak]
    FModel : IModelFuncionario;
  public
    constructor Create(Model: IModelFuncionario);
    class function New(Model: IModelFuncionario): ICommand;
    procedure Execute;
  end;


implementation

{ TCommandFuncionarioCarregar }

constructor TCommandFuncionarioCarregar.Create(Model: IModelFuncionario);
begin
  FModel := Model;
end;

procedure TCommandFuncionarioCarregar.Execute;
begin
  Fmodel.SetDadosView;
end;

class function TCommandFuncionarioCarregar.New(
  Model: IModelFuncionario): ICommand;
begin
  result := Self.Create(Model);
end;

end.

