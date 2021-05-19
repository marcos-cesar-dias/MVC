unit MVC.Model.Invoker;
interface

uses
  MVC.Model.Interfaces, system.Generics.Collections;

type
  TInvokerExecutor = class(TInterfacedObject, IInvoker)
  private
    FListaComandos: TList<ICommand>;

  public
    constructor Create();
    destructor Destroy; override;
    class function New(): IInvoker;
    function Add(Cmd: ICommand): IInvoker;
    procedure Executar;

  end;

implementation

{ TInvokerExecutor }

function TInvokerExecutor.Add(Cmd: ICommand): IInvoker;
begin
  result := self;
  FListaComandos.Add(cmd);
end;

constructor TInvokerExecutor.Create;
begin
  FListaComandos := TList<ICommand>.Create;
end;

destructor TInvokerExecutor.Destroy;
begin
  inherited;
  FListaComandos.free;
end;

procedure TInvokerExecutor.Executar;
begin
  for var comando in FListaComandos do
    Comando.Execute();

end;

class function TInvokerExecutor.New: IInvoker;
begin
  result := self.Create;
end;

end.
