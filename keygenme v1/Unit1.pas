unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
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

procedure TForm1.Button2Click(Sender: TObject);
var
  nombre,serial :String;
  serial3 :String;
  serial2 :String;
  i :Integer;

begin
  nombre := Edit1.Text;

  //------ primer algoritmo ----------
  for i := length(nombre) downto 1  do
    begin
        serial := serial + nombre[i];

    end;
 //---------------------------------


  // ----- pasar serial a ordinal -------
  for i := 1 to length(serial) do
    begin
    serial2 := serial2 + IntToStr(ord(serial[i]));
    end;
  //--------------------------------------------

  Serial3 := serial + '-' + serial2;


  if (Edit2.Text = serial3) then
    begin
      Application.MessageBox('bien lo lograste. Este es un algoritmo muy sencillo a seguir por otro .', 'Felicidades ', MB_OK);
      Edit2.Text := 'Muy bien Cracker';
    end
  else
    begin

      Edit2.Text := 'Mal, sigue practicando'


    end;

   


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Application.MessageBox('Si te gusto el Crackme. visita www.crackmes.apuromafo.net o www.perucrackers.net', 'Hasta la Proxima ', MB_OK);
Application.Terminate;

end;

end.
