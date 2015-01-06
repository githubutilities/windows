@echo off

chdir reg_tools
reg import remove_bash_from_context_menu.reg
reg import remove_gitbash_from_context_menu.reg
reg import remove_sublime_text_from_context_menu.reg
reg import uac_tools\Remove_Open_Command_Window_Here_as_Administrator.reg

chdir ..