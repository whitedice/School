unit uWuerfel;

interface

type
  TWuerfel = class

  private
    augen:integer;

  public
    constructor create;
    procedure werfen;
    function getAugen:integer;

  end;

implementation

  constructor TWuerfel.create;
  begin
    randomize;
    augen:=1;
  end;

  procedure TWuerfel.werfen;
  begin
    augen:=random(6)+1;
  end;

  function TWuerfel.getAugen:integer;
  begin
    result:=augen;
  end;
end.
 