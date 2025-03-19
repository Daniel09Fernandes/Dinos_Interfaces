unit uSms.Notification.Model;

interface

uses
  uINotification,
  Vcl.Dialogs;

type
  TSMSNotification = class(TInterfacedObject, INotification)
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

constructor TSMSNotification.Create;
begin

end;

class function TSMSNotification.New: INotification;
begin
  if not Assigned(FInstance) then
    FInstance := TSMSNotification.Create;

  Result := FInstance;
end;

function TSMSNotification.ReciveNotification(const aReciveNotify: string): INotification;
begin
  ShowMessage('Recebendo menssagem SMS: '+ aReciveNotify);
  Result := Self;
end;

function TSMSNotification.SendNotification(const aNotify: string): INotification;
begin
  ShowMessage('Enviando menssagem SMS: '+ aNotify);
  Result := Self;
end;

end.
