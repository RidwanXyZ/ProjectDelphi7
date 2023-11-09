unit UnitMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Sistem1: TMenuItem;
    Login1: TMenuItem;
    Logout1: TMenuItem;
    Keluar1: TMenuItem;
    Rak1: TMenuItem;
    Buku1: TMenuItem;
    GroupBox1: TGroupBox;
    uname: TEdit;
    pass: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    X: TButton;
    procedure Rak1Click(Sender: TObject);
    procedure Buku1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Keluar1Click(Sender: TObject);
    procedure XClick(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure unameKeyPress(Sender: TObject; var Key: Char);
    procedure passKeyPress(Sender: TObject; var Key: Char);
    procedure unameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses UnitRak, Unit2, Unitdm;

{$R *.dfm}

procedure TForm3.Rak1Click(Sender: TObject);
begin
Form1.show;
end;

procedure TForm3.Buku1Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin


Rak1.Visible:=False;
//Buku1.Visible:=False;
Logout1.Visible:=False;
GroupBox1.Visible:=False;

end;

procedure TForm3.Keluar1Click(Sender: TObject);
begin

if Application.MessageBox('Apakah anda ingin keluar?','konfir',MB_OKCANCEL)=idok then Close;

end;

procedure TForm3.XClick(Sender: TObject);
begin

GroupBox1.Visible:=false;
end;

procedure TForm3.Login1Click(Sender: TObject);
begin
GroupBox1.Visible:=True;
end;


procedure TForm3.unameKeyPress(Sender: TObject; var Key: Char);
begin

if Key = #13 then

  begin
  Key := #0;
  pass.SetFocus();
  end;

end;

procedure TForm3.passKeyPress(Sender: TObject; var Key: Char);
begin


if Key = #13 then

  begin
  Key := #0;
  Button1.Click;
  end;
end;

procedure TForm3.unameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_UP then
    begin
    Key := 0;
    Perform(WM_NEXTDLGCTL, 1, 0);
    end
    else IF Key = VK_DOWN then
    begin
    Key := 0;
    Perform(WM_NEXTDLGCTL, 1, 0);
    end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
dm.QPetugas.Close;
dm.QPetugas.SQL.Clear;
dm.QPetugas.SQL.Add('Select * from petugas where username='+QuotedStr(uname.Text)+' and Password='+QuotedStr(pass.Text)+'');
dm.QPetugas.Open;

if dm.QPetugas.RecordCount <> 0 then
begin
ShowMessage('login berhasil!!!');
GroupBox1.Visible:=false;
Login1.Visible:=false;
LogOut1.Visible:=true;
Rak1.Visible:=true;
Buku1.Visible:=true;
end
   else
   begin
   //ShowMessage('Password/UserName Salah!!!');
   uname.Clear;
   pass.Clear;
   uname.SetFocus;
   end;
    end;

end.
