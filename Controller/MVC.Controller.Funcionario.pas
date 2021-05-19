unit MVC.Controller.Funcionario;

interface

uses
  MVC.Model.Funcionario, MVC.Model.Interfaces, MVC.View.Funcionario,
  MVC.Model.Invoker, MVC.Model.CommandFuncionarioSalvar,
  MVC.Model.CommandFuncionarioCarregar;

type
  TControllerFuncionario = class
  private
    FModel: IModelFuncionario;
    FView : TfrmFuncionario;
  public
    constructor Create;
    procedure Exibir;
    destructor Destroy; override;
  end;

implementation

{ TControllerFuncionario }

constructor TControllerFuncionario.Create;
begin
  FModel := TModelFuncionario.Create;
  FView := TfrmFuncionario.Create(nil);
  FModel.RegistrarView(FView);
end;

destructor TControllerFuncionario.Destroy;
begin
  if Assigned(FView) then
    FView.Free;
  inherited;
end;

procedure TControllerFuncionario.Exibir;
  var Comandos: TComandosFuncionario;
begin
  Comandos.Salvar := TInvokerExecutor
    .New
    .Add(TCommandFuncionarioSalvar.new(FModel));
  Comandos.Carregar := TInvokerExecutor
    .new
    .Add(TCommandFuncionarioCarregar.new(fModel));

  FView.FComandos := Comandos;
  FView.ShowModal;
end;

end.
