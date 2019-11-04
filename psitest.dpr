program psitest;

uses
  Forms,
  psitest_main in 'psitest_main.pas' {FormPsitest},
  psi in 'psilib\psi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Psitest';
  Application.CreateForm(TFormPsitest, FormPsitest);
  Application.Run;
end.
