# Convert-HString.ps1

Function to convert a Here-String to an array - by Ben Wilkinson (saved from gallery.technet.microsoft.com - R.I.P.)

# Usage

Copy the function of the script in the repository in your scripts, and use it simply like

```powershell
$YourHereString = @"
Beautiful String 1
Beautiful String 2
Nice String 3
etc...
"@

$ArrayOfString = Convert-HString $YourHereString

Foreach ($Item in $ArrayOfString){
  Write-Host "$Item"
}
```

Just to play a little bit with colors, using DotNet ```[enum]::Get-Values('<The DotNet class you want the values from>')``` just to randomly cycle with colors in the final output:

```powershell
$YourHereString = @"
Beautiful String 1
Beautiful String 2
Nice String 3
etc...
"@

$ArrayOfString = Convert-HString $YourHereString

#Playing With dotnet Console colors lol :D
$AllConsoleColors = [enum]::GetValues('System.ConsoleColor')

Foreach ($Item in $ArrayOfString){
  Write-Host "$Item" -ForeGroundColor $($AllConsoleColors|Get-Random) # <-- I just put all console colors in an array $AllConsoleColors, and piped to "Get-Random" to get a random value among colors :-)
}
```

Here's the resulting colorful output:


