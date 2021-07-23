function Global:Convert-HString {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$false, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)] [String]$HString
        )

    <#NOTE: This function is from Ben Wilkinson - https://gallery.technet.microsoft.com/scriptcenter/917c2357-2911-4c79-bd06-ab95714de2d4#>

    Begin 
    {Write-Verbose "Converting Here-String to Array"}
    Process 
    {
        $HString -split "`n" | ForEach-Object {
            $Item = $_.trim()
            #NOTE: below is to enable the use of hashtag to comment aka ignore #lines in your txt file...
            if ($Item -notmatch "#")
            {$Item}    
        }
    }#Process
    End 
    {
        # Nothing to do here.
    }
}#Convert-HString

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
