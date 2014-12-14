@echo off
setlocal enableextensions enabledelayedexpansion
FOR /F "tokens=1* delims=	" %%i in (env_vars.txt) do (
	SET VAR_NAME=%%i 
	SET PROGRAM_HOME="%%j"
	REM delayedexpansion: use ! mark to evaluate at execution time, not parse time.
	IF EXIST !PROGRAM_HOME! (
		IF NOT DEFINED !VAR_NAME! (
			echo !VAR_NAME!=!PROGRAM_HOME!
			@setx !VAR_NAME! !PROGRAM_HOME!
		) ELSE (
			echo !VAR_NAME! already defined.
		)
	) ELSE (
		echo !PROGRAM_HOME! not existed.
	)
)
endlocal
