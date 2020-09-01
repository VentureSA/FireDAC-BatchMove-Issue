unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.BatchMove.Text, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.DataSet, FireDAC.Stan.StorageBin;

type
  TForm1 = class(TForm)
    FDQuery1: TFDQuery;
    FDBatchMove1: TFDBatchMove;
    FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader;
    FDBatchMoveTextWriter1: TFDBatchMoveTextWriter;
    FDConnection1: TFDConnection;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDQuery1.Open();
  FDQuery1.FetchAll;
  FDQuery1.Close;

  FDBatchMoveTextWriter1.FileName := 'c:\test.txt';
  FDBatchMove1.Execute;



end;

end.
