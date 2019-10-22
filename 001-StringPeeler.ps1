<#
.SYNOPSIS
  Removes first and last letters of string
.DESCRIPTION
  Takes a string and removes the first and last letters. 
  Strings of two characters or less returns a message that the string is not long enough.
.EXAMPLE
  PS C:> String-Peeler -String "Hello World"
#>
function String-Peeler {
  [CmdletBinding()]
  [OutputType([int])]
  param(
    [Parameter(Mandatory=$true)]
    [string]$String
  )
  
  if ($String.Length -le 2) {
    $String + " is 2 or fewer characters long!"
  }
  else {
    $String = $String -replace $String[0] 
    $string = $String -replace $String[-1]
    $String
  }
}
String-Peeler -String "Hello World"
String-Peeler -String "ab"