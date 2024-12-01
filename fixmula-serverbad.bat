@echo off
title ALERTA: FALLA CRÍTICA DEL SERVIDOR
color 4F
mode con: cols=120 lines=40

:: Asegurar pantalla completa
powershell -Command "& {Add-Type -Name WinAPI -Namespace Win32 -MemberDefinition '[DllImport(\"user32.dll\")]\public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow); [DllImport(\"user32.dll\")]\public static extern IntPtr GetConsoleWindow();' -PassThru | Out-Null; $consolePtr = [Win32.WinAPI]::GetConsoleWindow(); [Win32.WinAPI]::ShowWindowAsync($consolePtr, 3)}"

:: Variables de simulación
set "duracion_total_segundos=14400" :: 4 horas en segundos
set /a tiempo_actual=0
set "intervalo=30" :: Tiempo entre actualizaciones
set /a porcentaje=0
set "errores=Error al acceder al sistema de archivos;Perdida de conexión con el servidor;Timeout al conectar con la base de datos;Servicio HTTP no responde;Error 503 - Servicio no disponible"

:: Mensaje inicial
cls
echo =============================================================
echo                     ALERTA: FALLA CRÍTICA                   
echo =============================================================
echo.
echo Fecha y Hora: %date% %time%
echo Incidente Detectado: Falla crítica en el servidor principal.
echo Servicios Afectados: Base de datos, autenticación y red local.
echo.
timeout /t 5 >nul

:: Inicio de simulación
:banner
cls
echo =============================================================
echo                     ALERTA: FALLA CRÍTICA                   
echo =============================================================
echo.
echo Fecha y Hora: %date% %time%
echo Tiempo Transcurrido: %tiempo_actual% segundos
echo Diagnóstico en curso: Identificando causa raíz...
echo -------------------------------------------------------------
echo Progreso de Resolución
echo -------------------------------------------------------------
call :progress_bar %porcentaje%
echo.

:: Simulación de errores aleatorios
call :mostrar_error_aleatorio

:: Abrir ventanas secundarias con diagnósticos técnicos
call :abrir_ventana_aleatoria

:: Incrementar progreso
set /a tiempo_actual+=%intervalo%
set /a porcentaje=(%tiempo_actual%*100)/%duracion_total_segundos%

if %tiempo_actual% lss %duracion_total_segundos% (
    timeout /t %intervalo% >nul
    goto banner
) else (
    goto solucion
)

:: Barra de progreso
:progress_bar
setlocal EnableDelayedExpansion
set "bar="
for /l %%A in (1,1,%1) do set "bar=!bar!█"
for /l %%A in (%1,1,100) do set "bar=!bar! "
echo [!bar!] %1%%
endlocal
exit /b

:: Mostrar errores aleatorios
:mostrar_error_aleatorio
setlocal EnableDelayedExpansion
for /f "tokens=%random:~-1% delims=;" %%A in ("%errores%") do (
    set "error=%%A"
)
echo [ERROR]: !error!
endlocal
exit /b

:: Abrir ventanas secundarias
:abrir_ventana_aleatoria
setlocal EnableDelayedExpansion
set "comandos_aleatorios=netstat -ano;tree;tasklist;ipconfig;dir;ping localhost"
set "comando="
for /f "tokens=%random:~-1% delims=;" %%A in ("%comandos_aleatorios%") do (
    set "comando=%%A"
)
start "DIAGNÓSTICO" cmd /c ^
    "color %random:~-1%F & mode con: cols=50 lines=15 & echo Ejecutando: !comando! & !comando! & timeout /t 10 >nul"
endlocal
exit /b

:: Finalización de la simulación
:solucion
cls
echo =============================================================
echo                     SERVICIO RESTAURADO                    
echo =============================================================
echo.
echo Fecha y Hora: %date% %time%
echo Incidente Resuelto: Se han restablecido los servicios.
echo.
pause >nul
exit
