# Convert-HString.ps1

Function to convert a Here-String to an array - by Ben Wilkinson (saved from gallery.technet.microsoft.com - R.I.P.)

# Usage

Copy the function in your scripts, and use it simply like

```powershell
$YourHereString = @"
Beautiful String 1
Beautiful String 2
Nice String 3
etc...
"@

Convert-HString $YourHereString
```
