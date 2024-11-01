@echo off
setlocal EnableDelayedExpansion
color 0B

	:: Aqui, precisamos informar o diretório onde nossos arquivos, os quais queremos copiar para colar em outro diretório, estão localizados
	:: "origemRelatorio" será o nome da nossa variável (ou seja, estou definindo que todos os arquivos dentro desse diretório, correspondem a uma variável chamada "origemRelatorio")
	
		set "origemRelatorio=C:\Windows\Caminho\diretorio\Sistema\Relatorio\"



		:: Aqui iremos definir o nome de outra variável e o diretório onde queremos que os arquivos copiados sejam colados
			set "destino1=C:\Windows\Diretorio\Sistema2\Relatorio\"



	:: Como desejo apenas copiar os relatórios (que possuem a extensão como ".fr3"), irem informar da seguinte forma a minha copia 
			xcopy "%origemRelatorio%*.fr3" "%destino1%" /E /Y /C /H /D


		:: xcopy: 
			:: /E  - Copia diretórios e subdiretórios
			:: /Y  - Suprime a confirmação ao sobrescrever arquivos existentes
			:: /C  - Continua a cópia mesmo se ocorrer um erro
			:: /H  - Copia arquivos ocultos e do sistema
			:: /D  - Copia arquivos somente se a origem for mais recente que o destino




			

	:: Além disso, podemos fazer para vários caminho, veja um exemplo: 

		set "origemRelatorio=C:\Windows\Caminho\diretorio\Sistema\Relatorio\"




			set "destino1=C:\Windows\Diretorio1\Sistema\Relatorio\"
			set "destino2=C:\Windows\Diretorio2\Sistema\Relatorio\"
			set "destino3=C:\Windows\Diretorio3\Sistema\Relatorio\"
			set "destino4=C:\Windows\Diretorio4\Sistema\Relatorio\"
			set "destino5=C:\Windows\Diretorio5\Sistema\Relatorio\"
			set "destino6=C:\Windows\Diretorio6\Sistema\Relatorio\"
	
						

		:: Copia todos os arquivos .fr3 da pasta %origemRelatorio% para as pastas...

			xcopy "%origemRelatorio%*.fr3" "%destino1%" /E /Y /C /H /D
			xcopy "%origemRelatorio%*.fr3" "%destino2%" /E /Y /C /H /D
			xcopy "%origemRelatorio%*.fr3" "%destino3%" /E /Y /C /H /D
			xcopy "%origemRelatorio%*.fr3" "%destino4%" /E /Y /C /H /D
			xcopy "%origemRelatorio%*.fr3" "%destino5%" /E /Y /C /H /D
			xcopy "%origemRelatorio%*.fr3" "%destino6%" /E /Y /C /H /D