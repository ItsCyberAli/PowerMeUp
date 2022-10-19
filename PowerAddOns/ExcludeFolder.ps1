function ExcludeFileWD {
    param (
        $ExclusionFolder
    )
    Add-MpPreference -ExclusionPath $ExclusionFolder
}