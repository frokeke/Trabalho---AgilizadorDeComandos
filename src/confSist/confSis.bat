@echo off

chcp 65001

cls

echo:
echo:
echo:--------------------------------------------------------------------------------
echo:
echo:
echo:                           CONFIGURAÇÕES DE SISTEMA
echo:
echo:
echo:--------------------------------------------------------------------------------
echo:
echo:

systeminfo

echo:
echo:Ola, você quer abrir o Task Manager para mais informações?
echo:
set /p opcao="[S]Sim [N]Não : "

if /I "%opcao%"=="S" (
	echo Abrindo taskmgr...
	taskmgr
)

echo: Obg por testar :^)

pause

call main.bat