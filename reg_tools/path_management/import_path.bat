@echo off
setlocal enableextensions enabledelayedexpansion
set CONFIG_FILE=env_vars.txt

FOR /F "tokens=1* delims=	" %%i in (%CONFIG_FILE%) do (
	SET VAR_NAME=%%i 
	SET PROGRAM_HOME="%%j"
	REM delayedexpansion: use ! mark to evaluate at execution time, not parse time.
	IF EXIST !PROGRAM_HOME! (
		IF NOT DEFINED !VAR_NAME! (
			rem echo !VAR_NAME!=!PROGRAM_HOME!
			@setx !VAR_NAME! !PROGRAM_HOME! 2>nul 1>nul
		) ELSE (
			echo !VAR_NAME! already defined.
		)
	) ELSE (
		echo !PROGRAM_HOME! not existed.
	)
)
endlocal
