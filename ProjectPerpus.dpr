program ProjectPerpus;

uses
  Forms,
  UnitRak in 'UnitRak.pas' {Form1},
  Unitdm in 'Unitdm.pas' {dm: TDataModule},
  Unit2 in 'Unit2.pas' {Form2},
  UnitMenu in 'UnitMenu.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Aplikasi Perpustakaan';
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
