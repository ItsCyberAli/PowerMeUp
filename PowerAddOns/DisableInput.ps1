function disable_input {
    $time =  10
    Write-Host "[+]Disabling user input for $time seconds..."
    $code = @"
[DllImport("user32.dll")]
public static extern bool BlockInput(bool fBlockIt);
"@

    $userInput = Add-Type -MemberDefinition $code -Name UserInput -Namespace UserInput -PassThru
    $userInput::BlockInput($true) | Out-Null
    Start-Sleep $time
    $userInput::BlockInput($false) | Out-Null
}