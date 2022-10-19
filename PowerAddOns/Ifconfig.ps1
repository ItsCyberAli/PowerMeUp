function Ifconfig {
    Write-Host (Get-NetIPConfiguration | Select-Object InterfaceAlias,InterfaceDescription,IPv4Address | Out-String)
}