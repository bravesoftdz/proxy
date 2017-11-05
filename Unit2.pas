unit Unit2;

interface

type
  TInterfaceMyClass = interface
    function click(text: string): string;
  end;

  TMyClass = class(TInterfacedObject, TInterfaceMyClass)
    function click(text: string): string;
  end;

  TMyClassProxy = class(TInterfacedObject, TInterfaceMyClass)
    /// <link>aggregation</link>
    MyClass: TMyClass;
    function click(text: string): string;
    constructor create;
  end;

implementation

{ MyClass }

function TMyClass.click(text: string): string;
begin
  result := text;
end;

{ TMyClassProxy }

function TMyClassProxy.click(text: string): string;
begin
  result := 'Proxy'+MyClass.click(text);
end;

constructor TMyClassProxy.create;
begin
  MyClass := TMyClass.Create;
end;

end.
