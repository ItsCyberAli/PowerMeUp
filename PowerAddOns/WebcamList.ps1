function WebcamList {
    $Devices = (Get-PnpDevice -FriendlyName *cam*) | Select-Object -Property Status, Class, FriendlyName | Out-String
    Write-Host $Devices
}