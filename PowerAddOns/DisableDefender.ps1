function DisableDefender {
   Set-MpPreference -DisableRealtimeMonitoring $true
}