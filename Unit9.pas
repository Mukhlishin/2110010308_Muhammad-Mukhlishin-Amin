unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, StdCtrls, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm7 = class(TForm)
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
    lbl4: TLabel;
    lbl1: TLabel;
    dbedt1: TDBEdit;
    lbl2: TLabel;
    dbedt2: TDBEdit;
    lbl3: TLabel;
    dblkcbb1: TDBLookupComboBox;
    lbl5: TLabel;
    dbedt3: TDBEdit;
    lbl6: TLabel;
    dbedt4: TDBEdit;
    lbl7: TLabel;
    dblkcbb2: TDBLookupComboBox;
    lbl8: TLabel;
    dbedt5: TDBEdit;
    lbl9: TLabel;
    dbedt6: TDBEdit;
    lbl10: TLabel;
    dbedt7: TDBEdit;
    lbl11: TLabel;
    dbedt8: TDBEdit;
    dbgrd2: TDBGrid;
    lbl12: TLabel;
    dbedt9: TDBEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    btn8: TButton;
    procedure btn1Click(Sender: TObject);
    procedure dblkcbb1KeyPress(Sender: TObject; var Key: Char);
    procedure dbedt7KeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
DataModule2.ADOMASTERJUAL.Append;
dbedt1.SetFocus;
end;

procedure TForm7.dblkcbb1KeyPress(Sender: TObject; var Key: Char);
begin
IF Key =#13 then
begin
  DataModule2.ADOMASTERJUAL.Post;
  DataModule2.ADODETAILJUAL.Append;
  dblkcbb2.SETFOCUS;
  end;
end;

procedure TForm7.dbedt7KeyPress(Sender: TObject; var Key: Char);
begin
IF Key =#13 then
begin
  IF StrToInt(DBEDT6.Text)>StrToInt(dbedt5.TEXT) then
  begin
    ShowMessage('STOK TIDAK CUKUP');
    dbedt6.SetFocus;
  end
  else
  begin
    dbedt8.Text:=IntToStr(StrToInt(DBEDT6.TEXT)*STRTOINT(dbedt7.TEXT));
    IF Application.MessageBox('TAMBAH BARANG LAINYA?','KONFIRMASI',MB_YESNO)=IDYES then
    begin
      DataModule2.ADODETAILJUAL.Post;
      DataModule2.ADOBARANG.Edit;
      DataModule2.ADOBARANG['STOK']:=DataModule2.ADOBARANG['STOK']-STRTOINT(dbedt6.Text);
      DataModule2.ADOBARANG.Post;
      DataModule2.ADODETAILJUAL.Append;
      dblkcbb2.SetFocus;
    end
    else
    begin
    DataModule2.ADODETAILJUAL.Post;
      DataModule2.ADOBARANG.Edit;
      DataModule2.ADOBARANG['STOK']:=DataModule2.ADOBARANG['STOK']-STRTOINT(dbedt6.Text);
      DataModule2.ADOBARANG.Post;
      end;
  end;
end;

end;

procedure TForm7.btn2Click(Sender: TObject);
begin
DataModule2.qry1.Close;
DataModule2.qry1.SQL.Clear;
DataModule2.qry1.SQL.Add('SELECT SUM(TOTAL_HARGA)as TOTAL_BELANJA');
DataModule2.qry1.SQL.Add('FROM TDETAILJUAL');
DataModule2.qry1.SQL.Add('WHERE NOTA_JUAL='+QUOTEDSTR(dbedt4.TEXT));
DataModule2.qry1.Open;
dbedt9.Text:=DataModule2.qry1['TOTAL_BELANJA'];
end;

procedure TForm7.btn8Click(Sender: TObject);
begin
DataModule2.ADOQNOTAJUAL.CLOSE;
DataModule2.ADOQNOTAJUAL.Open;
DataModule2.ADOQNOTAJUAL.Filtered :=False;
DataModule2.ADOQNOTAJUAL.Filtered :=True;
DataModule2.ADOBARANG.Filter := 'NOTA_JUAL=' + QuotedStr(DBEDT4.TEXT);
frxReport1.ShowReport;
end;

end.