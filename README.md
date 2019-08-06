# generateComplexPassword

Generating passwords 16 characters in length

## Why 

To improve my understanding on writing PowerShell scripts as well as develop a style for that makes it easier to understand intention.

## Genearting a password in PowerShell

You can create a cabinet file within Powershell in a variety of ways. This script creates a ddf file which is essential in creating cabinet files as it describes the contents to what is included by the makecab command. This program is part of Windows and can be executed from the command line. 

e.g. `.\generatePassword 12`

Will output a string that is 12 characters in length as defined by the parameter

e.g. `.\generatePassword`

Will output a string 16 characters in length which is the default
