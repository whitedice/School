unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Game;

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
  GameUnit:TGame;



implementation

{$R *.dfm}

procedure TForm1.btStartClick(Sender: TObject);
begin
  GameUnit.spielen;

  pw1.Caption:= IntToStr(GameUnit.gWA);
  pw2.Caption:= IntToStr(GameUnit.gWB);
  pw3.Caption:= IntToStr(GameUnit.gWC);

  GameUnit.tippen(rgSpielbrett.ItemIndex + 1);

  pKonto.Caption:= IntToStr(GameUnit.gKontostand());
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  GameUnit:=TGame.create(100);
  pKonto.Caption:= IntToStr(GameUnit.gKontostand());
end;

end.
