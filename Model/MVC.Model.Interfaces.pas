unit MVC.Model.Interfaces;

interface

type

  TEntidadeFuncionario = record
    Id:String;
    Nome: String;
  end;

  IViewFuncionario = interface
  ['{A5C84DBC-A3AF-44DA-A0B6-87C5BCE6BCDF}']
    procedure Notifica(msg: String);
    procedure SetDados(var Entidade: TEntidadeFuncionario);
    procedure GetDados(var Entidade: TEntidadeFuncionario);
  end;


  IModelFuncionario = interface
  ['{363D75B4-F6E7-4438-8D00-9360174937CA}']
    function RegistrarView(view: IViewFuncionario): IModelFuncionario;
    function NotificarViews(): IModelFuncionario;
    function PegarDadosView: IModelFuncionario;
    function SetDadosView: IModelFuncionario;
  end;

  ICommand = interface
  ['{0C7C712C-4C86-44D5-95BB-438CA9E203B1}']
    procedure Execute;
  end;

  IInvoker = interface
  ['{646B4CB0-2031-4898-96CE-8083F0439FFE}']
    function Add(Cmd: ICommand): IInvoker;
    procedure Executar();
  end;

  TComandosFuncionario = record
     Salvar :IInvoker;
     Carregar :IInvoker;
  end;


implementation

end.
