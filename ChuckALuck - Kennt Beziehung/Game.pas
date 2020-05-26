unit Game;

interface

uses
  uWuerfel, uKonto, uSpielbrett;

type
  TGame = class

  private
    w1,w2,w3:TWuerfel;
    Spielfeld:TSpielfeld;
    Konto:TKonto;

  public
    constructor create(wA,wB,wC:TWuerfel; k:TKonto; sp:TSpielfeld);
    procedure spielen;
  end;

{generiere Die Variablen und weiﬂe ihnen die passende Klasse zu}


{implimentiere die Features}
implementation

  constructor TGame.create(wA,wB,wC:TWuerfel; k:TKonto; sp:TSpielfeld);
    begin
      w1:=wA;
      w2:=wB;
      w3:=wC;

      Konto:=k;
      Spielfeld:=sp;
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
end.
