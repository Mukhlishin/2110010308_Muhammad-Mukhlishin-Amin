unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
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
    lbl1: TLabel;
    dbedt1: TDBEdit;
    lbl2: TLabel;
    dbedt2: TDBEdit;
    lbl3: TLabel;
    dblkcbb1: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    lbl5: TLabel;
    dbedt3: TDBEdit;
    lbl6: TLabel;
    dbedt4: TDBEdit;
    lbl7: TLabel;
    dbedt5: TDBEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure dbedt4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
DataModule2.ADOBELI.Append;
DBEDT1.SetFocus;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
DataModule2.ADOBELI.Post;
DataModule2.ADOBARANG.Edit;
DataModule2.ADOBARANG['STOK']:=DataModule2.ADOBARANG['STOK']+STRTOINT(DBEDT3.TEXT);
DataModule2.ADOBARANG.Post;
ShowMessage('DATA SUKSES DISIMPAN STOK SUDAH BERTAMBAH');
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
DataModule2.ADOBELI.Cancel;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
DataModule2.ADOBELI.Edit;
DataModule2.ADOBARANG.Edit;
DataModule2.ADOBARANG['STOK']:=DataModule2.ADOBARANG['STOK']-STRTOINT(DBEDT3.TEXT);
DataModule2.ADOBARANG.Post;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
DataModule2.ADOBELI.Delete;
DataModule2.ADOBARANG.Edit;
DataModule2.ADOBARANG['STOK']:=DataModule2.ADOBARANG['STOK']-STRTOINT(DBEDT3.TEXT);
DataModule2.ADOBARANG.Post;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
Close;
end;

procedure TForm6.btn7Click(Sender: TObject);
begin
if DataModule2.ADOBELI.Locate('KODE_BELI',EDT1.Text,[])=FALSE  then
begin
  ShowMessage('DATA TIDAK DITEMUKAN');
  edt1.Clear;
  edt1.SetFocus;
  end;
end;

procedure TForm6.dbedt4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
dbedt5.Text:=IntToStr(StrToInt(dbedt3.Text)*STRTOINT(dbedt4.TEXT));
end;

end.


