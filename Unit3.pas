unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    btn: TButton;
    btn1: TButton;
    chk1: TCheckBox;
    pnl1: TPanel;
    lbl3: TLabel;
    tmr1: TTimer;
    procedure btnClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit4, Unit1;

{$R *.dfm}

procedure TForm1.btnClick(Sender: TObject);
var
  a,b:string;
begin
if edt1.text='' then ShowMessage('input your username')
else if edt2.text='' then ShowMessage('input your password')
else begin
end;


a:='admin'; //a adalah user
b:='admin'; //b adalah password

if (edt1.text=a) and (edt1.text=b)then
begin
  edt1.clear;
  edt2.clear;
  Form2.Show;
  Form1.hide;
  Form1.visible:=False;
end
else
begin
  MessageDlg('Maaf, Username dan Password Salah!!!',mtWarning,[mbOK],0);
end;

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
if (Application.MessageBox('Apakah Anda Yakin Ingin Keluar?','Peringatan!!!',MB_YESNO)=IDYES) then
close;
end;

procedure TForm1.chk1Click(Sender: TObject);
begin
if chk1.Checked
then begin
  edt2.PasswordChar:=#0;
  end else
  begin
    edt2.PasswordChar:='*';
    
  end;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  lbl3.Left:=lbl3.left-1;
  if lbl3.left<1 then lbl3.Left:=300;
end;

end.


