$YourHereString = @"
Beautiful String 1
Beautiful String 2
Nice String 3
Grood String 4
Marvellous String 5
Awesome String 6
Super-Duper String 7
etc...
"@

$ArrayOfString = Convert-HString $YourHereString

#Playing With dotnet Console colors lol :D
$AllConsoleColors = [enum]::GetValues('System.ConsoleColor')

Foreach ($Item in $ArrayOfString){
  Write-Host "$Item" -ForeGroundColor $($AllConsoleColors|Get-Random) # <-- I just put all console colors in an array $AllConsoleColors, and piped to "Get-Random" to get a random value among colors :-)
}
