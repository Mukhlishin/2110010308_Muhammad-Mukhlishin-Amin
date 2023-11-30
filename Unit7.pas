unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
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
    dbedt3: TDBEdit;
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
  Form5: TForm5;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
DataModule2.ADOKONSUMEN.Append;
dbedt1.SetFocus;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
DataModule2.ADOKONSUMEN.Post;
ShowMessage('DATA SUKSES DISIMPAN');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
DataModule2.ADOKONSUMEN.Cancel;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
DataModule2.ADOKONSUMEN.Edit;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
DataModule2.ADOKONSUMEN.Delete;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
Close;
end;

procedure TForm5.btn7Click(Sender: TObject);
begin
if DataModule2.ADOKONSUMEN.Locate('KODE_KONSUMEN',EDT1.Text,[])=FALSE  then
begin
  ShowMessage('DATA TIDAK DITEMUKAN');
  edt1.Clear;
  edt1.SetFocus;
  end;
end;

end.
