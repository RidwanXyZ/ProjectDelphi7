unit UnitBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    penulis_book: TEdit;
    penerbit_book: TEdit;
    stock: TEdit;
    tahun_terbit: TEdit;
    GroupBox1: TGroupBox;
    cari: TEdit;
    btnCari: TButton;
    DBGrid1: TDBGrid;
    judul_book: TEdit;
    id_book: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
             uses Unitdm;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
dm.QBuku.Append;
dm.QBuku['id_buku']:=id_book.Text;
dm.QBuku['judul_buku']:=judul_book.Text;
dm.QBuku['penulis_buku']:=penulis_book.Text;
dm.QBuku['penerbit_buku']:=penerbit_book.Text;
dm.QBuku['tahun_penerbit']:=tahun_terbit.Text;
dm.QBuku['stok']:=stock.Text;
dm.QBuku.Post;

ShowMessage('Data Berhasil Disimpan');
          id_book.Clear;
         judul_book.Clear;
          penulis_book.Clear;
          penerbit_book.Clear;
         tahun_terbit.Clear;
         stock.Clear;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
dm.QBuku.edit;
dm.QBuku['id_buku']:=id_book.Text;
dm.QBuku['judul_buku']:=judul_book.Text;
dm.QBuku['penulis_buku']:=penulis_book.Text;
dm.QBuku['penerbit_buku']:=penerbit_book.Text;
dm.QBuku['tahun_penerbit']:=tahun_terbit.Text;
dm.QBuku['stok']:=stock.Text;
dm.QBuku.Post;

ShowMessage('Data Berhasil Diupdate');
          id_book.Clear;
         judul_book.Clear;
          penulis_book.Clear;
          penerbit_book.Clear;
         tahun_terbit.Clear;
         stock.Clear;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
dm.QBuku.Delete;
end;

procedure TForm2.btnCariClick(Sender: TObject);
begin
//cari data

dm.QBuku.Close;
dm.QBuku.SQL.Clear;
dm.QBuku.SQL.Add('select * from buku where id_buku ='+QuotedStr(cari.Text)+'');
dm.QBuku.Open;

//jika data ditemukan return data
if dm.QBuku.RecordCount <> 0 Then
  Begin
dm.QBuku['id_buku']:=id_book.Text;
dm.QBuku['judul_buku']:=judul_book.Text;
dm.QBuku['penulis_buku']:=penulis_book.Text;
dm.QBuku['penerbit_buku']:=penerbit_book.Text;
dm.QBuku['tahun_penerbit']:=tahun_terbit.Text;
dm.QBuku['stok']:=stock.Text;
  end
//jika data 404
ELSE
  Begin
     ShowMessage('Data tidak ditemukan');
     dm.QBuku.Close;
     dm.QBuku.SQL.Clear;
     dm.QBuku.SQL.Add('select * from rak');
     dm.QBuku.Open;


     id_book.Clear;
     judul_book.Clear;
     penulis_book.Clear;
     penerbit_book.Clear;
     tahun_terbit.Clear;
     stock.Clear;
     cari.Clear;

  End;
end;

end.
