function ListIP {
    $StreamWriter.Write( (Invoke-RestMethod "https://myexternalip.com/raw" | Out-String) )
}