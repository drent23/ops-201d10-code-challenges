::  turn off echoing of commands
@echo off              

:: enable delayed variable expansion in order to declare and use variables in loops & conditionals
setlocal enabledelayedexpansion

:: prompt the user to input the source folder path and store it in the "sourcePath" variable
set /p sourcePath=Enter the source folder path:

:: prompt the user to input the destination folder path and store it in the "destinationPath" variable
set /p destinationPath=Enter the destination folder path:  

:: test if source folder exists; if not, dieplay an error message and end the script
if not exist "!sourcePath!\" (                      
    echo Error: Source folder does not exist.      
    goto :eof                                       
)

:: test if destination folder exists; if not, dieplay an error message and end the script
if not exist "!destinationPath!\" (                 
    echo Error: Destination folder does not exist.  
    goto :eof                                       
)

:: use "robocopy" to copy source folder contents, including directories and subdirectories (the "/E") to destination folder
robocopy "!sourcePath!" "!destinationPath!" /E 

:: test if error level returned by "robocopy" is >=8; display error message if "robocopy" has errors; and, if no errors occur, display success message
if errorlevel 8 (                                   
    echo Error: ROBOCOPY encountered errors during the copy operation. 
) else (                                           
    echo Copy operation completed successfully.    
)

:: end of script, similar to Bash
:end 
endlocal
