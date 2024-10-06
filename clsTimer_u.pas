unit clsTimer_u;

interface
  uses ITimer_u;
  type
    TTimer = class(TInterfacedObject, ITimer)

      fStart : TDateTime;
       public
          constructor create();
          function elapsedSeconds() : UInt64;
      end;

implementation

uses SysUtils, DateUtils;

{ TTImer }

constructor TTimer.create;
begin
   fStart := Now;
end;

function TTimer.elapsedSeconds: UInt64;
begin
  Result := SecondsBetween(fStart, Now);
end;

end.
