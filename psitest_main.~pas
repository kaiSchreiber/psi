unit psitest_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, psi, math;

type
  TFormPsitest = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    SS0: TEdit;
    SS1: TEdit;
    Label2: TLabel;
    SS2: TEdit;
    Label5: TLabel;
    SS3: TEdit;
    Label3: TLabel;
    SS4: TEdit;
    Label4: TLabel;
    SS5: TEdit;
    Label6: TLabel;
    SS6: TEdit;
    SS7: TEdit;
    SS8: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SS9: TEdit;
    SS10: TEdit;
    SS11: TEdit;
    SS12: TEdit;
    SS: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Button1: TButton;
    SSResult: TLabel;
    SS13: TEdit;
    SS14: TEdit;
    SS15: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    GroupBox2: TGroupBox;
    FS: TEdit;
    Button5: TButton;
    FSResult: TLabel;
    GroupBox3: TGroupBox;
    Button3: TButton;
    HAResult: TLabel;
    GroupBox4: TGroupBox;
    CEButton: TButton;
    CENS: TEdit;
    CER1: TLabel;
    CER2: TLabel;
    CER3: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    GroupBox5: TGroupBox;
    SA: TEdit;
    Button6: TButton;
    SAResult: TLabel;
    GroupBox6: TGroupBox;
    Button10: TButton;
    NT: TEdit;
    NTResult: TLabel;
    DebugLevel: TGroupBox;
    Button8: TButton;
    Button9: TButton;
    SDL: TEdit;
    GDLResult: TLabel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    ET1: TEdit;
    Label14: TLabel;
    ET3: TEdit;
    Label29: TLabel;
    ET4: TEdit;
    Label30: TLabel;
    ET2: TEdit;
    Label31: TLabel;
    Button11: TButton;
    ETResult: TLabel;
    SF1: TEdit;
    Label19: TLabel;
    Label32: TLabel;
    SF4: TEdit;
    Label33: TLabel;
    SF3: TEdit;
    Label34: TLabel;
    SF2: TEdit;
    Label35: TLabel;
    SF5: TEdit;
    Label36: TLabel;
    SF6: TEdit;
    Button7: TButton;
    SFResult: TLabel;
    Update: TCheckBox;
    GroupBox9: TGroupBox;
    Label13: TLabel;
    SR1: TEdit;
    SR2: TEdit;
    Label12: TLabel;
    SR3: TComboBox;
    Label11: TLabel;
    Button2: TButton;
    SRResult: TLabel;
    UpdateSR: TCheckBox;
    Label15: TLabel;
    CER4: TLabel;
    GroupBox10: TGroupBox;
    RS1: TEdit;
    RS5: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    RS3: TEdit;
    Label37: TLabel;
    RS4: TEdit;
    Button4: TButton;
    RSResult: TLabel;
    GroupBox11: TGroupBox;
    Button12: TButton;
    Button13: TButton;
    S1: TEdit;
    Label38: TLabel;
    RS6: TEdit;
    RS7: TEdit;
    Rs8: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Memo1: TMemo;
    RS2: TComboBox;
    ET5: TEdit;
    Label42: TLabel;
    SF7: TEdit;
    Label43: TLabel;
    SS16: TEdit;
    Label44: TLabel;
    Label45: TLabel;
    CER5: TLabel;
    EstUnbiased: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CEButtonClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPsitest: TFormPsitest;

implementation

{$R *.dfm}

procedure TFormPsitest.Button1Click(Sender: TObject);
begin
  SSResult.Caption:='Result: '+IntToStr(SetupDist(StrToInt(SS0.Text),StrToInt(SS13.Text),StrToFloat(SS14.Text),StrToFloat(SS15.Text),
    StrToInt(SS1.Text),StrToInt(SS2.Text),StrToFloat(SS3.Text),StrToFloat(SS4.Text),
    StrToFloat(SS5.Text),StrToInt(SS6.Text),StrToFloat(SS7.Text),StrToFloat(SS8.Text),
    StrToFloat(SS9.Text),StrToInt(SS10.Text),StrToFloat(SS11.Text),StrToFloat(SS12.Text),
    StrToInt(SS16.Text)));
end;

procedure TFormPsitest.Button2Click(Sender: TObject);

begin
  if StoreResult(StrToInt(SR1.Text),StrToFloat(SR2.Text),SR3.ItemIndex)=1 then
   begin
    SRResult.Caption:='Success';
    if UpdateSR.Checked then
     begin
       CENS.Text:=SR1.Text;
       CEButton.Click;
     end;
   end
  else SRResult.Caption:='Failure';
end;

procedure TFormPsitest.Button5Click(Sender: TObject);
begin
  if FinishDist(StrToInt(FS.Text))=1 then FSResult.Caption:='Success' else FSResult.Caption:='Failure';
end;

procedure TFormPsitest.Button3Click(Sender: TObject);
begin
  HAResult.Caption:=IntToStr(HighestActive);
end;

procedure TFormPsitest.Button6Click(Sender: TObject);
begin
  if DistActive(StrToInt(SA.Text))=1 then SAResult.Caption:='Yes' else SAResult.Caption:='No';
end;

procedure TFormPsitest.CEButtonClick(Sender: TObject);
var sgn: Integer;

begin
  if EstUnbiased.Checked then sgn:=-1 else sgn:=1;
  if DistActive(StrToInt(CENS.Text))=0 then
   begin
    CER1.Caption:='Failed.';
    CER2.Caption:='Failed.';
    CER3.Caption:='Failed.';
    CER4.Caption:='Failed.';
    CER5.Caption:='Failed.';
    Exit;
   end;
  CER1.Caption:=FormatFloat('000.00',CurrentEstimate(StrToInt(CENS.Text),sgn))+' +- '+FormatFloat('00.000',CurrentEstimate(StrToInt(CENS.Text),4*sgn));
  CER2.Caption:=FormatFloat('000.00',CurrentEstimate(StrToInt(CENS.Text),2*sgn))+' +- '+FormatFloat('00.000',CurrentEstimate(StrToInt(CENS.Text),5*sgn));
  CER3.Caption:=FormatFloat('000.00',CurrentEstimate(StrToInt(CENS.Text),3*sgn)*100)+' +- '+FormatFloat('00.000',CurrentEstimate(StrToInt(CENS.Text),6*sgn)*100)+'%';
  CER4.Caption:=FormatFloat('##0',CurrentEstimate(StrToInt(CENS.Text),7));
  CER5.Caption:=FormatFloat('##0',CurrentEstimate(StrToInt(CENS.Text),8));
end;

procedure TFormPsitest.Button7Click(Sender: TObject);
var i,m: Integer;
    x,r: Double;

begin
 m:=StrToInt(SF7.Text);
 if DistActive(StrToInt(SF1.Text))=0 then begin; SFResult.Caption:='Failure'; Exit; end;
 for i:=1 to StrToInt(SF2.Text) do
  begin
    x:=NextTrial(StrToInt(SF1.Text));
    if m=0 then
      r:=1/StrToInt(SF3.Text)+(1-1/StrToInt(SF3.Text)-StrToFloat(SF6.Text))/(1+exp(-4*tan(StrToFloat(SF5.Text)/180*PI)/(1-1/StrToInt(SF3.Text)-StrToFloat(SF6.Text))*(x-StrToFloat(SF4.Text))))
    else
      r:=(1-StrToFloat(SF6.Text))-(1-StrToFloat(SF6.Text)-1/StrToInt(SF3.Text))*exp(-StrToFloat(SF5.Text)*Power(x-StrToFloat(SF4.Text),2));
    if Random>r then
      StoreResult(StrToInt(SF1.Text),x,0)
    else
      StoreResult(StrToInt(SF1.Text),x,1)
  end;
 if Update.Checked then
  begin
    CENS.Text:=SF1.Text;
    CEButton.Click;
  end;
 SFResult.Caption:='OK.';
end;

procedure TFormPsitest.Button9Click(Sender: TObject);
begin
  SetDebugLevel(StrToInt(SDL.Text));
end;

procedure TFormPsitest.Button8Click(Sender: TObject);
begin
  GDLResult.Caption:=IntToStr(GetDebugLevel);
end;

procedure TFormPsitest.Button10Click(Sender: TObject);
begin
  NTResult.Caption:=FormatFloat('0.000',NextTrial(StrToInt(NT.Text)));
end;

procedure TFormPsitest.Button11Click(Sender: TObject);
begin
  ETResult.Caption:=FormatFloat('###0.00000 s',EstimateTime(StrToInt(ET1.Text),StrToInt(ET2.Text),StrToInt(ET3.Text),StrToInt(ET4.Text),StrToInt(ET5.Text)));
end;

procedure TFormPsitest.Button4Click(Sender: TObject);
begin
  if RescaleDist(StrToInt(RS1.Text),RS2.ItemIndex+1,StrToFloat(RS3.Text),StrToFloat(RS4.Text),StrToFloat(RS5.Text),
    StrToInt(RS6.Text),StrToInt(RS7.Text),StrToInt(RS8.Text))=1 then RSResult.Caption:='Success.' else RSResult.Caption:='Failure.'
end;

procedure TFormPsitest.Button12Click(Sender: TObject);
begin
  SavePFile(StrToInt(S1.Text));
end;

procedure TFormPsitest.Button13Click(Sender: TObject);
begin
  SaveEFile;
end;

end.


