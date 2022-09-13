unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    x: TShape;
    Timer1: TTimer;
    engel: TShape;
    son: TShape;
    engel2: TShape;
    engel3: TShape;
    Timer2: TTimer;
    engel4: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure OnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
var
overlay : TRect;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.Enabled := true;
Button1.Visible := false;
x.Left := 64;
x.Top := 383;
engel.Left := 300;
engel.Top := 370;
engel2.Left := 500;
engel2.Top := 370;
engel3.Left := 650;              // baþlangýç noktasý
engel3.Top := 370;
engel4.Left := 1;
engel4.Top := 315;
canvas.Pen.Style:=psClear;
canvas.LineTo(0, 400);
canvas.Pen.Style:=psDashDotDot;
canvas.Pen.Color:=clgreen;
canvas.LineTo(1000, 400);        //alt yol
canvas.Pen.Style:=psSolid;
 canvas.Pen.Color:=clmaroon;
  canvas.MoveTo(300, 400);
  canvas.LineTo(300, 370);
  canvas.MoveTo(500, 400);         //engel
  canvas.LineTo(500, 370);
  canvas.MoveTo(650, 400);
  canvas.LineTo(650, 370);
  canvas.Pen.Color:=clblack;
  canvas.MoveTo(800, 400);    //bayrak çubuk
  canvas.LineTo(798, 350);
  canvas.Pen.Color:=clnavy;
  canvas.LineTo(773, 350);
  canvas.LineTo(773, 370);   //bayrak ucu
  canvas.LineTo(797, 370);
  canvas.MoveTo(800, 400);
  canvas.LineTo(798, 370);
  canvas.Pen.Style:=psDashDotDot;
  canvas.Pen.Color:=clgreen;
  canvas.MoveTo(0, 340);
  canvas.LineTo(0, 340);
  canvas.LineTo(1000, 340);
   //üst çizgi
    canvas.Pen.Color:=clmaroon;
    canvas.Pen.Style:=psSolid;
    canvas.Pen.Width:=4;
    canvas.MoveTo(130, 110);
    canvas.LineTo(130, 110);
    canvas.LineTo(230, 110);    //z
    canvas.LineTo(140, 290);
    canvas.LineTo(230, 290);
    canvas.MoveTo(370, 110);
    canvas.LineTo(370, 110);   //i
    canvas.LineTo(370, 300);
    canvas.MoveTo(530, 110);
    canvas.LineTo(530, 110);
    canvas.LineTo(630, 110);  //p
    canvas.LineTo(630, 210);
    canvas.LineTo(530, 210);
    canvas.LineTo(530, 110);
    canvas.LineTo(530, 300);
    canvas.Pen.Width:=1;



end;






procedure TForm1.FormActivate(Sender: TObject);
begin
 Timer1.Enabled := False;
end;

procedure TForm1.OnClick(Sender: TObject);
begin
      x.Top := x.Top - 40;
      Timer2.Enabled := True;


end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
    x.Left := x.Left + 5;
  if IntersectRect (overlay, engel.BoundsRect,x.BoundsRect) then begin
  Timer1.Enabled:= false;
  if Timer1.Enabled = false then ShowMessage('Oyun Bitti, Kaybettin!');
  if Timer1.Enabled = false then Button1.Visible := true;
  end;
  begin
    if IntersectRect (overlay, engel2.BoundsRect,x.BoundsRect) then begin
  Timer1.Enabled:= false;
  if Timer1.Enabled = false then ShowMessage('Oyun Bitti, Kaybettin!');
  if Timer1.Enabled = false then Button1.Visible := true;
  end;
  begin
      if IntersectRect (overlay, engel3.BoundsRect,x.BoundsRect) then begin
  Timer1.Enabled:= false;
  if Timer1.Enabled = false then ShowMessage('Oyun Bitti, Kaybettin!');
  if Timer1.Enabled = false then Button1.Visible := true;
  end;
  begin
  end;
    if IntersectRect (overlay, son.BoundsRect,x.BoundsRect) then begin
  Timer1.Enabled:= false;
  if Timer1.Enabled = false then ShowMessage('Oyunu Kazandýn, Tebrikler!');
  if Timer1.Enabled = false then Button1.Visible := true;
end;
begin
    if IntersectRect (overlay, engel4.BoundsRect,x.BoundsRect) then begin
  Timer1.Enabled:= false;
  if Timer1.Enabled = false then ShowMessage('Oyun Bitti, Kaybettin!');
  if Timer1.Enabled = false then Button1.Visible := true;
  end;
  end;
  end;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
    x.Top := x.Top + 40;
    Timer2.Enabled := False
end;


end.
