function Wifi {
    netsh wlan show profiles | Select-String -Pattern "(?<=^.+: ).+$" | ForEach-Object -Process {
        $NetworkName = $_.Matches[0].Value
        $Key = netsh wlan show profiles name="$NetworkName" key=clear | Select-String -Pattern "Key Content"
    }
    Write-Host ( "Wifi Name: ", $NetworkName, $Key)
}