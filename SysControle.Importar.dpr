program SysControle.Importar;

uses
  Vcl.Forms,
  SysControle.Principal in 'src\SysControle.Principal.pas' {frmPrincipal},
  uDmOrigem in 'src\Model\uDmOrigem.pas' {dmOrigem: TDataModule},
  uDmDestino in 'src\Model\uDmDestino.pas' {dmDestino: TDataModule},
  Classe.Conexao in 'src\Controler\Classes\Classe.Conexao.pas',
  unit_parametros_funcoes in 'src\Controler\Units\unit_parametros_funcoes.pas',
  unit_central_mensagens in 'src\Controler\Units\unit_central_mensagens.pas' {form_central_mensagens},
  unit_configurar_servidor in 'src\Controler\Units\unit_configurar_servidor.pas' {form_configurar_servidor},
  unit_dados in 'src\Controler\Units\unit_dados.pas' {form_dados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmOrigem, dmOrigem);
  Application.CreateForm(TdmDestino, dmDestino);
  Application.CreateForm(Tform_dados, form_dados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
