@echo off
WHERE php 1> nul 2> nul
IF %ERRORLEVEL% NEQ 0 (
	ECHO "please add PHP to PATH."
	GOTO :EOF
) ELSE (
	php -S 0.0.0.0:80
)

:EOF
REM the end.