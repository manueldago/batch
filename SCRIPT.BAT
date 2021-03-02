@echo off
cls
rem *** SCRIPT PARA COPIAR ARCHIVOS DE LA CARPETA A HACIA B ***
rem *** AUTOR: M.LEONE ****
rem *** FECHA : 2/MAR/2021 ***
rem *** OBSERVACIONES ***
rem *** PARA CAMBIAR EL PATH DE LAS CARPETA A Y B cambiarlo en las lineas 11,12,13
rem *** PARA CAMBIAR EL PREFIJO {nombre} cambiarlo en la linea 10,12,34

rem *** FIJAR RUTA DE LA CARPETA A Y B ***
set carpetarutaA= "C:\Users\manue\OneDrive\Escritorio\batfiles\A\nombre*.xls"
set carpetarutaB= "C:\Users\manue\OneDrive\Escritorio\batfiles\B\"
set carpetarutaBRenombrar="C:\Users\manue\OneDrive\Escritorio\batfiles\B\nombre*.xls";


rem *** LIMPIAR CARPETA B  variable %carpetarutaB% ****
del /Q %carpetarutaB%


rem *** COPIAR ARCHIVOS DE LA CARPETA A (%carpetarutaA%) hacia la CARPETA B (%carpetaB%)
xcopy %carpetarutaA%  %carpetarutaB%


rem *** INICIAR CONTADOR ***
set /a c=0


rem *** RECORRER TODOS LOS ARCHIVOS DE LA CARPETA B y renombrarlos como nombre_{contador}
setlocal ENABLEDELAYEDEXPANSION
    
for  %%I in (%carpetarutaBRenombrar%) do (
         
     set nombrearchivo=_!c!.xls
     
     ren %%I nombre!nombrearchivo!
     
     set /a c=c+1
)


rem *** FINAL DEL SCRIPT ***
echo Fin del script


rem ** QUITAR pause si quiere ejecutarlo en una tarea programada ***
pause