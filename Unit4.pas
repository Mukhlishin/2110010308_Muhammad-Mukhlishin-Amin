unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, Grids, DBGrids;

type
  TForm2 = class(TForm)
    lbl: TLabel;
    mm1: TMainMenu;
    INPUTDATA1: TMenuItem;
    mniRANSAKSI1: TMenuItem;
    mniLAPORAN1: TMenuItem;
    mniKELUAR1: TMenuItem;
    mniPEMBELIANBARANG1: TMenuItem;
    mniPENJUALANBARANG1: TMenuItem;
    mniDATABARANG1: TMenuItem;
    mniDATASUPPLIER1: TMenuItem;
    mniDATAKONSUMEN1: TMenuItem;
    mniPEMBELIAN1: TMenuItem;
    DATABARANG1: TMenuItem;
    mniDATASUPPLIER2: TMenuItem;
    mniDATAKONSUMEN2: TMenuItem;
    procedure DATABARANG1Click(Sender: TObject);
    procedure mniDATASUPPLIER2Click(Sender: TObject);
    procedure mniDATAKONSUMEN2Click(Sender: TObject);
    procedure mniPEMBELIANBARANG1Click(Sender: TObject);
    procedure mniPENJUALANBARANG1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit3, Unit1, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm2.DATABARANG1Click(Sender: TObject);
begin
FORM3.SHOWMODAL;
end;

procedure TForm2.mniDATASUPPLIER2Click(Sender: TObject);
begin
     FORM4.SHOWMODAL;
end;

procedure TForm2.mniDATAKONSUMEN2Click(Sender: TObject);
begin
     FORM5.SHOWMODAL;
end;

procedure TForm2.mniPEMBELIANBARANG1Click(Sender: TObject);
begin
       FORM6.SHOWMODAL;
end;

procedure TForm2.mniPENJUALANBARANG1Click(Sender: TObject);
begin
FORM7.SHOWMODAL;
end;

end.
