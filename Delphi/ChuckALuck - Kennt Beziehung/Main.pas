unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, uWuerfel, uKonto, uSpielbrett, Game;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    rgSpielbrett: TRadioGroup;
    btStart: TButton;
    pw1: TPanel;
    pw2: TPanel;
    pw3: TPanel;
    pKonto: TPanel;
    procedure btStartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  w1,w2,w3:TWuerfel;
  Spielfeld:TSpielfeld;
  Konto:TKonto;
  GameUnit:TGame;



implementation

{$R *.dfm}

procedure TForm1.btStartClick(Sender: TObject);
begin
  Spielfeld.setzen(rgSpielbrett.ItemIndex + 1);
  GameUnit.spielen;

  pw1.Caption:= IntToStr(w1.getAugen);
  pw2.Caption:= IntToStr(w2.getAugen);
  pw3.Caption:= IntToStr(w3.getAugen);
  pKonto.Caption:= IntToStr(Konto.getStand());
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  w1:=TWuerfel.create;
  w2:=TWuerfel.create;
  w3:=TWuerfel.create;
  Spielfeld:=TSpielfeld.create;
  Konto:=TKonto.create(100);

  GameUnit:=TGame.create(w1,w2,w3,Konto,Spielfeld);
  pKonto.Caption:= IntToStr(Konto.getStand());
end;

end.
