unit clsUserHabitHandler_u;

interface
  uses IUserHabitHandler_u, Generics.Collections;
  type
    TUserHabitHandler = class(TInterfacedObject, IUserHabitHandler)
      public
        constructor create();
        function getUserHabitsFor(const username : string):  TList<Uint64>;
        procedure insertTimeSpentOnApplicationFor(const username: string; elapsedMinutes: Integer);
    end;
implementation
  uses SysUtils, global_u,IOUtils;
{ TUserHabitHandler }

constructor TUserHabitHandler.create();
begin
end;

function TUserHabitHandler.getUserHabitsFor(const username: string): TList<Uint64>;
begin
  if not (FileExists(FILE_NAME)) then
    raise Exception.Create('File does not exist');

  var textFile : TextFile;
  AssignFile(textFile, FILE_NAME);

  Reset(textFile);

  var sLine : string;

  Result := TList<UInt64>.Create();
  while (not Eof(textFile)) do
    begin
      Readln(textFile, sLine);

      var iPos :=  Pos('#', sLine);

      if not (Copy(sLine, 1, iPos - 1) = username) then
        continue;

      Result.Add(Copy(sLine, Pos('#', sLine) + 1).ToInteger());
    end;
  CloseFile(textFile);
end;

procedure TUserHabitHandler.insertTimeSpentOnApplicationFor(
  const username: string; elapsedMinutes: Integer);
begin
  TFile.AppendAllText(FILE_NAME, username + '#' + IntToStr(elapsedMinutes) +
                      sLineBreak);
end;

end.
