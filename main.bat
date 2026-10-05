@echo off

chcp 65001

setlocal enableDelayedExpansion


cls
echo:
echo:
echo: --------------------------------------------------------------------------------
echo:
echo:
echo:                         AGILIZADOR DE TAREFAS SIMPLES
echo:
echo:
echo: --------------------------------------------------------------------------------
echo:
echo:
echo: [1] - Configurações de Sistema
echo: [2] - Criar arquivos para Programação
echo: [3] - Sair
echo:
echo:
choice /C:123 /N
set "opcao=%errorlevel%"

if "%opcao%"=="1" (
    echo Abrindo Configurações de Sistema...
    cls
    echo:
    echo:
    echo: --------------------------------------------------------------------------------
    echo:
    echo:
    echo:                          CONFIGURAÇÕES DE SISTEMA
    echo:
    echo:
    echo: --------------------------------------------------------------------------------
    echo:
    echo:
    echo: [1] - Configurações de Rede
    echo: [2] - Informações do Sistema
    echo: [3] - Voltar ao Menu Principal
    choice /C:123 /N
    set "subOpcao=!errorlevel!"
    if "!subOpcao!"=="1" (
        "%~dp0src\confSist\confRede.bat"
    ) else if "!subOpcao!"=="2" (
        "%~dp0src\confSist\confSis.bat"
    ) else if "!subOpcao!"=="3" (
        call main.bat
    )
) else if "%opcao%"=="2" (
    echo Abrindo Criador de Arquivos para Programação...
    cls
    echo:
    echo:
    echo: --------------------------------------------------------------------------------
    echo:
    echo:
    echo:                     CRIADOR DE ARQUIVOS PARA PROGRAMAÇÃO
    echo:
    echo:
    echo: --------------------------------------------------------------------------------
    echo:
    echo:
    echo: [1] - Criar arquivo HTML
    echo: [2] - Criar arquivo C
    echo: [3] - Criar arquivo C++
    echo: [4] - Voltar ao Menu Principal
    choice /C:1234 /N
    set "subOpcao=!errorlevel!"
    if "!subOpcao!"=="1" (
        echo:
        echo:
        echo: Insira o caminho completo do arquivo HTML que deseja criar: 
        set /p caminho="Caminho: "

        "%~dp0src\arqPro\html.bat"
    ) else if "!subOpcao!"=="2" (
        echo:
        echo:
        echo: Insira o caminho completo do arquivo C que deseja criar: 
        set /p caminho="Caminho: "

        "%~dp0src\arqPro\c.bat"
    )else if "!subOpcao!"=="3" (
        echo:
        echo:
        echo: Insira o caminho completo do arquivo C++ que deseja criar:
        set /p caminho="Caminho: "

        "%~dp0src\arqPro\cpp.bat"
    )
    ) else if "!subOpcao!"=="4" (
        call main.bat
    )
) else if "%opcao%"=="3" (
    exit
)
pause