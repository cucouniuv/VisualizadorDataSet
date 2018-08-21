unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtDlgs;

type
  TForm2 = class(TForm)
    ClientDataSet1: TClientDataSet;
    Button1: TButton;
    ClientDataSet1nome: TStringField;
    ClientDataSet1codigo: TIntegerField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button2: TButton;
    OpenTextFileDialog1: TOpenTextFileDialog;
    Edit1: TEdit;
    btArquivo: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btArquivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btArquivoClick(Sender: TObject);
begin
  OpenTextFileDialog1.InitialDir := 'C:\';
  OpenTextFileDialog1.Execute();
  Edit1.Text := OpenTextFileDialog1.FileName;

  Button2Click(Button2);
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  I: integer;
begin
  ClientDataSet1.CreateDataSet;
  ClientDataSet1.Open;

  for I := 0 to 10 do
  begin
    ClientDataSet1.Append;
    ClientDataSet1codigo.AsInteger := I;
    ClientDataSet1nome.AsString := 'Nome' + IntToStr(I);
    ClientDataSet1.Post;
  end;

  ClientDataSet1.SaveToFile('D:\dataset.dat');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  ClientDataSet1.CreateDataSet;
  ClientDataSet1.Open;

  try
    ClientDataSet1.LoadFromFile(Edit1.Text);
  except
    ShowMessage('Opa! Não carregou.');
  end;
end;

end.
