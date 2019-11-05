<#
Your task is to return a string that displays a diamond shape on the screen using 
asterisk (“*”) characters.

The shape that the print method will return should resemble a diamond. A number 
provided as input will represent the number of asterisks printed on the middle 
line. The line above and below will be centered and will have two less asterisks 
than the middle line. This reduction will continue for each line until a line with 
a single asterisk is printed at the top and bottom of the figure.

Return null if input is an even number or a negative number.
#>

<#
.SYNOPSIS
  Short description
.DESCRIPTION
  Long description
.EXAMPLE
  Example of how to use this cmdlet
.EXAMPLE
  Another example of how to use this cmdlet
#>
function Show-AsteriskDiamond {
  [CmdletBinding()]
  [OutputType([int])]
  param(
    [Parameter(Mandatory=$false)]
    [int]$Stars = 5
  )
  if (($Stars -lt 0) -or ($Stars % 2 -eq 0)) {
   "This is either a negative number or an even number. Try again!" 
  }
  else {
    # NOTE try creating a string variable and use .substring() -replace 
    $CountDownStars = $Stars
    $CountUpStars = 1
    "*" * $Stars
    do {
      $CountDownStars = $CountDownStars - 2
      "*" * $CountDownStars
    } until ($CountDownStars -eq 1);
  }
}

# Calling the function!
Show-AsteriskDiamond
Show-AsteriskDiamond -Stars 2
Show-AsteriskDiamond -Stars -3