program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form3},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  Unit3 in 'Unit3.pas' {Form1},
  Unit4 in 'Unit4.pas' {Form2},
  Unit5 in 'Unit5.pas' {Form10},
  Unit6 in 'Unit6.pas' {Form4},
  Unit7 in 'Unit7.pas' {Form5},
  Unit8 in 'Unit8.pas' {Form6},
  Unit9 in 'Unit9.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
