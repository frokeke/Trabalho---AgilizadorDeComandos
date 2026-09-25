@echo off

chcp 65001

color a

echo ----------------------------------------------------------------------------------

ipconfig

echo ----------------------------------------------------------------------------------
echo CONFIGURAÇÕES DE SISTEMA

systeminfo

echo ----------------------------------------------------------------------------------

echo:
echo Ola, você quer abrir o Task Manager para mais informações?
echo:
set /p opcao="[S]Sim [N]Não : "

if /I "%opcao%"=="S" (
	echo Abrindo taskmgr...
	taskmgr
)

echo Obg por testar :)

pause