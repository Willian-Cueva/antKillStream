@echo off 
 :menu
 cls
 title Elimina virus streamer
 color 0b 
echo W=============================================================================W
echo !               WWW                 A A    N       N  TTTTTTTT  IIIIII  V   V !
echo !           == ***** ==           A     A  N N     N     TT       II    V   V !
echo !         === * 0 0 * ===         A A A A  N   N   N     TT       II    V   V !
echo !         === *  -  * ===         A     A  N     N N     TT       II     V V  !
echo !           == ***** ==      /    A     A  N       N     TT     IIIIII    V   !
echo !               ***         /                                                 !
echo !            *********     /      "ELIMINA ACCESOS DIRECTOS"                  !
echo !    DDD    **  ***  **   /                                                   !
echo !   DDDDD  **   ***   ** /                                                    !
echo !  DDDDDDDd     ***     B                                                     !
echo !   DDDDD       ***                                                           !
echo !    DDD     ***   ***                                                        !
echo !           **       **                                                       !
echo !           **       **                                                       !
echo !         .:**       **:.          ELABORADO POR: WILLIAN CUEVA               !
echo W=============================================================================W
echo 1) Analisis de virus
echo 2) Eliminar virus del computador.
echo 3) Eliminar virus de directorios internos.
echo 4) Eliminar virus de directorios externos.
echo 5) Eliminar los registros.
echo 6) Extras.
echo 7) Salir.
set var = 0
set/p Var=Elija una opcion : (introduzca el numero)

if %var%==1 goto analisis
if %var%==2 goto Virus
if %var%==3 goto interdirectorios
if %var%==4 goto Directorios
if %var%==5 start regedit 
if %var%==6 goto residuos
if %var%==7 exit
goto menu

:Virus
cls
title Eliminando virus
echo Presione ENTER para continuar...
pause>nul
taskkill /IM streamer.exe /f 
for /R C:\ %%x in (streamer,streamerdata) do rd /s /q "%%x" 
echo 100 por Ciento
timeout /t /-1
cls
echo.
echo *******************************************
echo *Virus Eliminado con Exito en el Disco "C"*
echo *******************************************
echo.
echo Presione ENTER para regresar al menu principal...
pause>nul
goto Menu

:Directorios
cls
title Directorios
echo.
echo *** ELIMINAR VIRUS DE DISCOS :D ***
echo.
set vari = 1
echo.
echo.
echo 1) Ingresar unidades de almacenamiento
echo 2) Regresar al menu principal
echo.
set /p opi=Elija una opcion:
if %opi%==1 goto Directoriossub
if %opi%==2 goto menu
goto Directorios

:residuos
cls
title RESIDUOS
echo.
echo ***ELIMINAR PROCESOS DE RESIDUO XD***
echo =====================================
echo.
echo 1) Eliminar los Registros
echo 2) Panel de Control
echo 3) Desinstalar un Programa
echo 4) Configuracion de Windows
echo 5) Administrador de Tareas
echo 6) Mostrat archivos ocultos
echo 7) Regresar al Menu Principal
echo.
set /p vari=Elija una opcion:
if %vari%==1 start regedit
if %vari%==2 start control.exe
if %vari%==3 start appwiz.cpl
if %vari%==4 start msconfig
if %vari%==5 start taskmgr
if %vari%==6 goto ocultos
if %vari%==7 goto menu
goto residuos

:Directoriossub
cls
title Sub-Directorios
echo.
echo ***ELIMINANDO VIRUS DE DIRECTORIOS EXTERNOS***
echo ===============================================
echo.
echo Inserte Variables a excepto el C...
echo Mira las Letras de Almacenamiento
echo Ejemplo: D - F - E , etc
echo (recomendado) Primero las unidades del PC
echo.
echo Inserta solo una Variable y Presiona ENTER para continuar...
echo.
set /p vari=inserte la letra de directorio de almacenamiento:
if %vari%==c goto menu
if %vari%==C goto menu
if %vari%==0 exit
echo %vari%
taskkill /IM streamer.exe /f  
for /R %vari%:\ %%x in (ddedfrr.zip,stream.txt,streamer.exe) do del "%%x" 
for /R %vari%:\ %%x in (streamer,streamerdata) do rd /s /q "%%x" 
for /R %vari%:\ %%x in (*.lnk) do del "%%x" 
cls
echo 100 por ciento...
echo Finalizado.
echo.
echo.
echo.
echo *******************************************
echo *Virus Eliminado con Exito en el Disco "%vari%"*
echo *******************************************
echo.
timeout /t -1
goto Directorios

:interdirectorios
cls
title directorios
echo.
echo *** ELIMINANDO VIRUS DE DIRECTORIOS INTERNOS :D ***
echo ===================================================
echo.
set vari = 1
echo.
echo.
echo 1) Ingresar unidades de almacenamiento
echo 2) Regresar al menu principal
echo.
set /p opi=Elija una opcion:
if %opi%==1 goto interdirectoriossub
if %opi%==2 goto menu
goto interdirectorios

:interdirectoriossub
cls
title sub-directorios
echo.
echo ***DIRECTORIOS INTERNOS***
echo ===============================================
echo.
echo inserte variables a escepto el C...
echo mira las letras de almacenamiento
echo ejemplo: D - F - E , etc
echo Las unidades del PC
echo.
echo inserta solo una variable y presiona ENTER para continuar...
echo.
set /p vari=inserte la letra de directorio de almacenamiento:
if %vari%==c goto menu
if %vari%==C goto menu
if %vari%==0 exit
echo %vari%
taskkill /IM streamer.exe /f 
for /R %vari%:\ %%x in (ddedfrr.zip,stream.txt,streamer.exe) do del "%%x" 
for /R %vari%:\ %%x in (streamer,streamerdata) do rd /s /q "%%x" 
cls
echo 100 por ciento...
echo finalizado.
echo.
echo.
echo.
echo *******************************************
echo *virus eliminado con exito en el disco "%vari%"*
echo *******************************************
echo.
timeout /t -1
goto interdirectorios

:ocultos
cls
title Monstrar Archivos Ocultos
echo.
echo *** MOSTRAR ARCHIVOS OCULTOS ***
echo.
echo inserta la variable
echo 1) Regresar al menu principal
echo.
set /p vul=variable u opcion:
if %vul%==1 goto residuos
attrib %vul%:*.* /d /s -h -r 
cls
echo 100 por ciento...
echo finalizado
echo.
echo *****************************************************
echo *Monstrar Archivos Ocultos con Exito en el Disco "%vari%"*
echo *****************************************************
echo.
timeout /t -1
goto ocultos

:analisis
cls
title Analisis de virus
echo. 
echo *** Analisis de virus ***
echo =========================
echo.
echo 1) Buscar en los registros.
echo 2) Buscar en el administrador de tares.
echo 3) Tasklist.
echo 4) Opciones de carpeta.
echo 5) Volver al menu principal.
set /p res=Elija una opcion:
if %res%==1 start regedit
if %res%==2 taskmgr 
if %res%==3 goto tareas
if %res%==4 start control.exe folders && goto analisis
if %res%==5 goto menu
goto analisis

:tareas
tasklist
timeout /t -1
goto analisis




