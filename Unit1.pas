unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    dbedt1: TDBEdit;
    lbl3: TLabel;
    dbedt2: TDBEdit;
    lbl4: TLabel;
    dbedt3: TDBEdit;
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
  Form3: TForm3;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule2.ADOBARANG.Append;
dbedt1.setfocus;
dbedt3.Text:='0';
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule2.ADOBARANG.Post;
ShowMessage('DATA SUKSES DISIMPAN');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule2.ADOBARANG.Cancel;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
DataModule2.ADOBARANG.Edit;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
DataModule2.ADOBARANG.Delete;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
DataModule2.ADOBARANG.Close;
end;

procedure TForm3.btn7Click(Sender: TObject);
begin
if DataModule2.ADOBARANG.Locate('KODE_BARANG',EDT1.Text,[])=FALSE  then
begin
  ShowMessage('DATA TIDAK DITEMUKAN');
  edt1.Clear;
  edt1.SetFocus;
  end;
end;

end.
