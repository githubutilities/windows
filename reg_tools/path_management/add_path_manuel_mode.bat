SETLOCAL
REM start of local variable


SET PROGRAM_HOME="C:\Users\will\backup\programs\vim\vim74"
SET VAR_NAME=VIM_HOME
SET RETURN=line_vim_home
GOTO :set_env_var
:line_vim_home


GOTO :eof

:set_env_var
REM void set_env_var(PROGRAM_HOME, VAR_NAME)
REM SET PROGRAM_HOME="C:\Users\will\backup\programs\vim\vim74"
REM SET VAR_NAME=VB
IF EXIST %PROGRAM_HOME% (
	IF NOT DEFINED %VAR_NAME% (
		SETX %VAR_NAME% %PROGRAM_HOME%
	) ELSE (
		echo %VAR_NAME% already defined.
	)
) ELSE (
	echo %PROGRAM_HOME% not existed.
)
GOTO :%RETURN%


ENDLOCAL
REM ending the local variable

:eof
REM the end.