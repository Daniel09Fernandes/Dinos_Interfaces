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
  uNotification.Controller,
  uINotification;


procedure TForm1.FormCreate(Sender: TObject);
var
  lNotification: INotification;
begin
  lNotification := TNotification.New(tnSMS);
  lNotification.SendNotification('Enviando Sms');

  lNotification := TNotification.New(tnWhatsapp);
  lNotification.SendNotification('Enviando WhatsApp');
end;

end.
