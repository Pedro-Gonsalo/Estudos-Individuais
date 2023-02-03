unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, FMTBcd, DB, SqlExpr, ADODB, DBXFirebird, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, IBX.IBCustomDataSet, IBX.IBStoredProc, IBX.IBQuery,
  IBX.IBTable, IBX.IBDatabase, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    ADOConnection1: TADOConnection;
    SQLConnection1: TSQLConnection;
    ADODataSet1: TADODataSet;
    SQLDataSet1: TSQLDataSet;
    IBDatabase1: TIBDatabase;
    IBTable1: TIBTable;
    IBQuery1: TIBQuery;
    IBStoredProc1: TIBStoredProc;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    SQLQuery1: TSQLQuery;
    SQLTable1: TSQLTable;
    SQLStoredProc1: TSQLStoredProc;
    IBDataSet1: TIBDataSet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    SQLConnection2: TSQLConnection;
    SQLDataSet2: TSQLDataSet;
    ADODataSet2: TADODataSet;
    ADOConnection2: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
