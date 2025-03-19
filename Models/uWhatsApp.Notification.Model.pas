unit uWhatsApp.Notification.Model;

interface

uses
  uINotification,
  Vcl.Dialogs;

type
  TWhatsAppNotification = class(TInterfacedObject, INotification)
  private
    class var FInstance: INotification;
    constructor Create;
  public
    function SendNotification(const aNotify:  string): INotification;
    function ReciveNotification(const aReciveNotify:  string): INotification;

    class function New : INotification;
  end;

implementation

{ TSMSNotification }

constructor TWhatsAppNotification.Create;
begin

end;

class function TWhatsAppNotification.New: INotification;
begin
  if not Assigned(FInstance) then
    FInstance := TWhatsAppNotification.Create;

  Result := FInstance;
end;

function TWhatsAppNotification.ReciveNotification(const aReciveNotify: string): INotification;
begin
  ShowMessage('Recebendo menssagem WhatsApp: '+ aReciveNotify);
  Result := Self;
end;

function TWhatsAppNotification.SendNotification(const aNotify: string): INotification;
begin
  ShowMessage('Enviando menssagem WhatsApp: '+ aNotify);
  Result := Self;
end;

end.
