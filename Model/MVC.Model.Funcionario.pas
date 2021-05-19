unit MVC.Model.Funcionario;

interface

uses MVC.Model.Interfaces, Generics.Collections;

type
  TModelFuncionario = class(TInterfacedObject, IModelFuncionario)
  private
    FListaViews: TList<IViewFuncionario>;
    Fdados : TEntidadeFuncionario;
  public
    constructor Create;
    destructor Destroy; Override;
    class function New: IModelFuncionario;

    function RegistrarView(view: IViewFuncionario): IModelFuncionario;
    function NotificarViews(): IModelFuncionario;
    function PegarDadosView: IModelFuncionario;
    function SetDadosView: IModelFuncionario;
  end;

implementation

{ TModelFuncionario }

constructor TModelFuncionario.Create;
begin
  FListaViews := TList<IViewFuncionario>.Create;
  FDados.Id := '1';
  FDados.Nome := 'MARIA';
end;

destructor TModelFuncionario.Destroy;
begin
  inherited;
  FListaViews.free;
end;

class function TModelFuncionario.New: IModelFuncionario;
begin
  result := Self.Create;
end;

function TModelFuncionario.NotificarViews: IModelFuncionario;
begin
  result := self;
  for var view in FListaViews do
  begin
    view.Notifica('notifica');
  end;
end;

function TModelFuncionario.PegarDadosView: IModelFuncionario;
begin
  result := self;
  for var view in FListaViews do
  begin
    view.GetDados(Fdados);
    view.Notifica(Fdados.Nome)
  end;
end;

function TModelFuncionario.RegistrarView(
  view: IViewFuncionario): IModelFuncionario;
begin
  result := self;
  FListaViews.Add(view);
end;

function TModelFuncionario.SetDadosView: IModelFuncionario;
begin
  result := self;
  for var view in FListaViews do
  begin
    view.SetDados(Fdados);
  end;
end;

end.
