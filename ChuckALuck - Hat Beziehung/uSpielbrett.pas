unit uSpielbrett;

interface

  type
  TSpielfeld = class

  private
    wahl:integer;

  public
    constructor create;
    procedure setzen(zahl:integer);
    function getTipp:integer;

  end;

implementation
    constructor TSpielfeld.create;
    begin
      { Nothing in here :( }
    end;

    procedure TSpielfeld.setzen(zahl:integer);
    begin
      wahl:=zahl;
    end;

    function TSpielfeld.getTipp:integer;
    begin
      result:=wahl;
    end;
end.
 