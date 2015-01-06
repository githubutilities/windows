@echo off

chdir reg_tools
reg import add_bash_to_context_menu.reg
reg import add_gitbash_to_context_menu.reg
reg import add_sublime_text_to_context_menu.reg
reg import add_windows_rc_file.reg
reg import uac_tools\Add_Open_Command_Window_Here_as_Administrator.reg

REM importing path environment variable
chdir path_management
import_path.bat
chdir ..

chdir ..