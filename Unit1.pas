unit Unit1;

interface

uses
  unit2, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    MyClass: TInterfaceMyClass;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  self.Label1.Caption := MyClass.click('Button1Click');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  self.Label1.Caption := MyClass.click('Button2Click');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MyClass := TMyClassProxy.Create;
end;

end.
