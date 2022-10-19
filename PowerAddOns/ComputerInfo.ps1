function ComputerInfo {
    Write-Host (Get-ComputerInfo | Out-String )
}