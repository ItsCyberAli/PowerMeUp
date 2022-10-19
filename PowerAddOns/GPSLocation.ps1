function GPS{
Add-Type -AssemblyName System.Device
$mylocation = New-Object System.Device.Location.GeoCoordinateWatcher
$mylocation.Start()

while (($mylocation.status -ne 'Ready') -and ($mylocation.Permission) -ne 'Denied' ) {
    Start-Sleep -Milliseconds 100
    $longitude = $mylocation.Position.Location.Longitude
    $latitude = $mylocation.Position.Location.Latitude
    $location = $mylocation.Position.Location
    Write-Host $longitude, $latitude
}

if ($location -ne $null)
{
    $webClient = New-Object System.Net.WebClient 
    Write-host "Retrieving geolocation for" $($latitude) $($longitude)
    $url = "https://geocode.arcgis.com/arcgis/rest/services/World/GeocodeServer/reverseGeocode?f=pjson&featureTypes=&location=$longitude,$latitude"
    $locationinfo = $webClient.DownloadString($url) 
    $StreamWriter.Write( $locationinfo )
}
}