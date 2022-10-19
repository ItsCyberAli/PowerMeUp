function ExcludeProcess {
    param (
        $ProcessName
    )
    Add-MpPreference -ExclusionProcess $ProcessName
}