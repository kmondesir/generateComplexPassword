<#
.SYNOPSIS
	Generates an alphanumeric string

.DESCRIPTION
	This cmdlet generates a random password that matches the criteria of the regular expression

.PARAMETER length
	Optional parameter which defines the length of the 
#>
[CmdletBinding()]
    Param(
        [Parameter(HelpMessage = "Optional value for length", Position = 1, Mandatory = $false, ValueFromPipelineByPropertyName = $true)]
        [Alias("Number")]
        [int] $global:length = 16
    )
function generateComplexPassword
{
    $digits = 48..57
    $uppercase = 65..90
    $lowercase = 97..122
    $special = 33..42
    $password = $null
    $atLeastOneUpperCase = "[A-Z]+"
    $atLeastOneLowerCase = "[a-z]+"
    $atLeastOneNumber = "[0-9]+"
    $match = $atLeastOneUpperCase + $atLeastOneLowerCase  + $atLeastOneNumber -join ""

    $combined = ([char[]]$digits) + ([char[]]$uppercase) + ([char[]]$lowercase) + ([char[]]$special)

    do 
    {
        $password = (Get-Random -Count $global:length -InputObject([char[]]$combined)) -join ""
    }
    until ($password -match $match) #Loops until string has at least one uppercase, lowercase and number

    return $password
}

generateComplexPassword