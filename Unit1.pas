unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Series, TeEngine, TeeProcs, Chart, jpeg,math,MyUnit,
  TeeFunci, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    Chart1: TChart;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    Series2: TAreaSeries;
    Series1: TLineSeries;
    BitBtn1: TBitBtn;
    procedure Panel1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure LabeledEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure LabeledEdit2Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   var fx,f,x:extended;
   n:integer;


implementation

{$R *.dfm}

procedure TForm1.Panel1Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
label2.Caption:=LabeledEdit1.Text;
label3.Caption:=LabeledEdit2.Text;
int.a:=StrToFloat(LabeledEdit1.Text);
int.b:=StrToFloat(LabeledEdit2.Text);
int.h:=StrToFloat(LabeledEdit3.Text);
int.n:=round((int.b-int.a)/int.h);
int.series1:=series1;
int.series2:=series2;

case RadioGroup1.ItemIndex of
      0: fx:=int.trapeze();
      1: fx:=int.left1();
      2: fx:=int.right1();
      3: fx:=int.medium();
    end;
label4.Caption:=FloatToStr(fx);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Int:=Integral.Create ;
Form1.Series2.AreaLinesPen.Visible:=False;
RadioGroup1Click(Sender);
end;

procedure TForm1.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#44]) then
key:=#27;
end;

procedure TForm1.LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#44]) then
key:=#27;
end;

procedure TForm1.LabeledEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#44]) then
key:=#27;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
Form1.Series2.AreaLinesPen.Visible:=CheckBox1.Checked;
end;

procedure TForm1.LabeledEdit1Change(Sender: TObject);
begin
label2.Caption:=LabeledEdit1.Text;
RadioGroup1Click(Sender);
end;

procedure TForm1.LabeledEdit2Change(Sender: TObject);
begin
label3.Caption:=LabeledEdit2.Text;
RadioGroup1Click(Sender)
end;

end.

