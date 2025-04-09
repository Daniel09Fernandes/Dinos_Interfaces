unit uINotification;

interface

Type
  INotification = interface
    ['{452EC3FD-A980-4B8D-894B-6626467263D9}']

    function SendNotification(const aNotify: string): INotification;
    function ReciveNotification(const aReciveNotify: string): INotification;
  end;

implementation

end.
