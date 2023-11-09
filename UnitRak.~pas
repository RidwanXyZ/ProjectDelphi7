unit UnitRak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    id_rak: TEdit;
    nama_rak: TEdit;
    id_buku: TEdit;
    Label1: TLabel;
    lokasi_rak: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    cari: TEdit;
    btnCari: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  Result: String;
implementation
//panggil module
uses unitDm;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
dm.QRak.Append;
dm.QRak['id_rak']:=id_rak.Text;
dm.QRak['nama_rak']:=nama_rak.Text;
dm.QRak['lokasi_rak']:=lokasi_rak.Text;
dm.QRak['id_buku']:=id_buku.Text;
dm.QRak.Post;

ShowMessage('Data Berhasil Disimpan');
          id_rak.Clear;
          nama_rak.Clear;
          lokasi_rak.Clear;
          id_buku.Clear;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin

id_rak.Text:=dm.QRak['id_rak'];
nama_rak.Text:=dm.QRak['nama_rak'];
lokasi_rak.Text:=dm.QRak['lokasi_rak'];
id_buku.Text:=dm.QRak['id_buku'];




end;

procedure TForm1.Button2Click(Sender: TObject);
begin
dm.QRak.Edit;
dm.QRak['id_rak']:=id_rak.Text;
dm.QRak['nama_rak']:=nama_rak.Text;
dm.QRak['lokasi_rak']:=lokasi_rak.Text;
dm.QRak['id_buku']:=id_buku.Text;
dm.QRak.Post;

ShowMessage('Data Berhasil DiUpdate');
          id_rak.Clear;
          nama_rak.Clear;
          lokasi_rak.Clear;
          id_buku.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin


dm.QRak.Delete;


end;

procedure TForm1.btnCariClick(Sender: TObject);
begin
//cari data

dm.QRak.Close;
dm.QRak.SQL.Clear;
dm.QRak.SQL.Add('select * from rak where id_rak ='+QuotedStr(cari.Text)+'');
dm.QRak.Open;

//jika data ditemukan return data
if dm.QRak.RecordCount <> 0 Then
  Begin
  id_rak.Text:=dm.QRak['id_rak'];
  nama_rak.Text:=dm.QRak['nama_rak'];
  lokasi_rak.Text:=dm.QRak['lokasi_rak'];
  id_buku.Text:=dm.QRak['id_buku'];
  end
//jika data 404
ELSE
  Begin
     ShowMessage('Data tidak ditemukan');
     dm.QRak.Close;
     dm.QRak.SQL.Clear;
     dm.QRak.SQL.Add('select * from rak');
     dm.QRak.Open;


     id_rak.Clear;
     nama_rak.Clear;
     lokasi_rak.Clear;
     id_buku.Clear;
     cari.Clear;

  End;









end;

procedure TForm1.FormCreate(Sender: TObject);
begin
      //Form2 := TForm.Create(Self);
      //Form2.Show;
end;

end.

