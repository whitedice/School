unit Game;

interface

uses
  uWuerfel, uKonto, uSpielbrett;

type
  TGame = class

  private


  public
    constructor create(startkapital:integer);
    procedure spielen;
    procedure tippen(tipp:integer);
    function gKontostand:integer;

    function gWA:integer;
    function gWB:integer;
    function gWC:integer;
  end;

  var
    w1,w2,w3:TWuerfel;
    Spielfeld:TSpielfeld;
    Konto:TKonto;

{generiere Die Variablen und weiﬂe ihnen die passende Klasse zu}


{implimentiere die Features}
implementation

  constructor TGame.create(startkapital:integer);
    begin
      w1:=TWuerfel.create;
      w2:=TWuerfel.create;
      w3:=TWuerfel.create;

      Spielfeld:=TSpielfeld.create;
      Konto:=TKonto.create(startkapital);
    end;

  procedure TGame.spielen;
    begin
      w1.werfen; w2.werfen; w3.werfen;

      if Spielfeld.getTipp = w1.getAugen then
        begin
          Konto.trans(1);
        end;

      if Spielfeld.getTipp = w2.getAugen then
        begin
          Konto.trans(1);
        end;

      if Spielfeld.getTipp = w3.getAugen then
        begin
          Konto.trans(1);
        end;

      if (Spielfeld.getTipp <> w1.getAugen) AND (Spielfeld.getTipp <> w2.getAugen) AND (Spielfeld.getTipp <> w3.getAugen) then
        begin
          Konto.trans(-1);
        end;
    end;

  procedure TGame.tippen(tipp:integer);
    begin
      Spielfeld.setzen(tipp);
    end;

  function TGame.gKontostand;
    begin
      result:=Konto.getStand;
    end;

  function TGame.gWA;
    begin
      result:=w1.getAugen;
    end;

  function TGame.gWB;
    begin
      result:=w2.getAugen;
    end;

  function TGame.gWC;
    begin
      result:=w3.getAugen;
    end;
end.
