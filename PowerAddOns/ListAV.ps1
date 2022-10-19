function ListAV {
    $av = (Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntiVirusProduct).displayName | Out-String
    Write-Host "$av"
}