@echo off
set vid=%1
set sub=%2
set bak=%vid%.bak

IF EXIST %bak% (
	echo %bak% already exists, cannot backing up %vid% to %bak%
	goto EOF
)

:BACKING_UP
echo backing up %vid% to %bak%
copy %vid% %bak%

:MAIN
echo adding subtitle to %vid%
ffmpeg -i %bak% -f srt -i %sub% -c:v copy -c:a -copy -c:s mov_text %vid%
goto EOF

:EOF
