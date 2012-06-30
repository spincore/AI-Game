unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ImgList;

type
  TFrmMain = class(TForm)
    btnResetA: TButton;
    btnResetB: TButton;
    lblResult: TLabel;
    btnStart: TButton;
    btnBreak: TButton;

    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private-Deklarationen }
    procedure DrawObjects;
  public
    { Public-Deklarationen }
  end;

var
  FrmMain: TFrmMain;

implementation
{$R *.dfm}

type
  TXPos       = 1 .. 999; //Feldbreite
  TYPos       = 1 .. 399; //Feldh�he
  TPosition   =  (ATT, MID, DEF);
  TTeam       =  (TeamA, TeamB);
  //TPlayer     = array[TTeam] of array[TPosition] of
  //              array[TXPos] of array[TYPos] of TBitMap;
  TPlayer     =  array[TTeam] of array[TPosition] of TBitMap;

  //TBall       = array[TXPos] of array[TYPos] of TBitMap;

 var
   Player     : TPlayer;
   Ball       : TBitMap;
   Field      : TBitMap;
   LeftGoal   : TBitMap;
   RightGoal  : TBitMap;


procedure TFrmMain.drawObjects;
begin
  // Spielfeld (X1 = 100, Y1 = 90, X2 = 1100, Y2 = 490)
  Canvas.Draw(100, 90, Field, 255);

  // Tor links

  // Tor rechts


end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Bitmaps freigeben
    Field.FreeImage;
    LeftGoal.FreeImage;
    RightGoal.FreeImage;
    Ball.FreeImage;
end;

procedure TFrmMain.FormCreate(Sender: TObject);

begin
// Bitmaps laden
  Field     := TBitMap.Create;
  LeftGoal  := TBitMap.Create;
  RightGoal := TBitMap.Create;
  Ball      := TBitMap.Create;
   Field.LoadFromFile('Pics/field.bmp');
   LeftGoal.LoadFromFile('Pics/goal_left.bmp');
   RightGoal.LoadFromFile('Pics/goal_right.bmp');
   Ball.LoadFromFile('Pics/ball.bmp');



end;

procedure TFrmMain.FormPaint(Sender: TObject);
begin
// Timer f�r Frame drawing fehlt

drawObjects;



end;

initialization


end.
