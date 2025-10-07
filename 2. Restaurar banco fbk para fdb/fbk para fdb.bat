@echo off
setlocal enabledelayedexpansion

:: Definir a codificação de caracteres como UTF-8
	chcp 65001

	:: Definindo a cor, fundo preto e cor das letras em azul
		color 09


		:: Caminho para o "arquivo" gbak, no meu caso, meu firebird está no caminho abaixo informado, mas caso o seu esteja em outro diretório, você deverá alterar para o caminho onde encontra o gbak.exe do seu firebird...
		 	set GBK_PATH="C:\Program Files (x86)\Firebird\Firebird_3_0\gbak.exe"


		:: Caminho do backup (.fbk), aqui você informa onde o arquivo de backup que você tem do banco de dados está, nesse caminho informado, eu usei "Backup" apenas como representação, da pasta...
			set BACKUP_FILE="C:\Users\Caminho\Backup\teste.fbk"



		:: Caminho do banco de dados de destino, ou seja, para onde desejo que o banco de dados restaurado seja "colocado"... coloque o caminho que você deseja...
			set DB_DEST="C:\Sistema\Dados\DADOS.FDB"




echo Rrestauração do banco de dados em andamento, aguarde alguns segundos...

%GBK_PATH% -c -rep -user SYSDBA -password masterkey %BACKUP_FILE% %DB_DEST%

:: Verificar se a operação foi bem-sucedida
if %errorlevel% neq 0 (
    echo Erro ao restaurar o banco de dados.
) else (
    echo Restauração concluída com sucesso.
)

pause