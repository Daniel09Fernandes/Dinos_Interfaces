program Interfaces;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uNotification.Controller in 'Controller\uNotification.Controller.pas',
  uSms.Notification.Model in 'Models\uSms.Notification.Model.pas',
  uWhatsApp.Notification.Model in 'Models\uWhatsApp.Notification.Model.pas',
  uINotification in 'Models\Interfaces\uINotification.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
