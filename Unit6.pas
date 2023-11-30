unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    dbedt1: TDBEdit;
    lbl2: TLabel;
    dbedt2: TDBEdit;
    lbl3: TLabel;
    dbedt3: TDBEdit;
    lbl4: TLabel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    grp1: TGroupBox;
    edt1: TEdit;
    btn7: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
DataModule2.ADOSUPPLIER.Append;
dbedt1.SetFocus;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
DataModule2.ADOSUPPLIER.Post;
ShowMessage('DATA SUKSES DISIMPAN');
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
DataModule2.ADOSUPPLIER.Cancel;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
DataModule2.ADOSUPPLIER.Edit;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
DataModule2.ADOSUPPLIER.Delete;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
DataModule2.ADOSUPPLIER.Close;
end;

procedure TForm4.btn7Click(Sender: TObject);
begin
if DataModule2.ADOSUPPLIER.Locate('KODE_SUPPLIER',EDT1.Text,[])=FALSE  then
begin
  ShowMessage('DATA TIDAK DITEMUKAN');
  edt1.Clear;
  edt1.SetFocus;
  end;
end;

end.
