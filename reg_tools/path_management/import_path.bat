@echo off
setlocal enableextensions enabledelayedexpansion
set CONFIG_FILE=env_vars.txt

FOR /F "tokens=1-2 delims=	 " %%i in (%CONFIG_FILE%) do (
	SET VAR_NAME=%%i
	SET PROGRAM_HOME="%%j"
	REM delayedexpansion: use ! mark to evaluate at execution time, not parse time.
	IF DEFINED !VAR_NAME! (
		echo Warning: !VAR_NAME! already defined.
		reg delete HKCU\environment /F /V !VAR_NAME! 1>nul
	)
	IF NOT EXIST !PROGRAM_HOME! (
		echo Warning: !PROGRAM_HOME! not existed.
	)
	rem echo !VAR_NAME!=!PROGRAM_HOME!
	@setx !VAR_NAME! !PROGRAM_HOME! 2>nul 1>nul
)
endlocal
