unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  uNotification.Controller;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TNotification
    .New(tnWhatsapp)
    .SendNotification('Olá, tudo bem?')
    .ReciveNotification('Tudo sim!');
end;

end.
