unit uKonto;

interface

type
  TKonto = class

  private
    Stand:integer;

  public
    constructor create(betrag:integer);
    procedure trans(betrag:integer);
    function getStand:integer;

  end;

implementation

  constructor TKonto.create(betrag:integer);
  begin
    Stand:= betrag;
  end;

  procedure TKonto.trans(betrag:integer);
  begin
    Stand:=Stand+betrag;
  end;

  function TKonto.getStand:integer;
  begin
   result:=Stand;
  end;
end.
 