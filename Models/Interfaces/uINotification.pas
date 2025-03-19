unit uINotification;

interface

Type
  INotification = interface
   ['{76007654-2FD2-48EF-B7AF-82C7C7300DD9}']

    function SendNotification(const aNotify:  string): INotification;
    function ReciveNotification(const aReciveNotify:  string): INotification;
  end;

implementation

end.
