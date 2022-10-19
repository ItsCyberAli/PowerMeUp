function ExcludeFileExtension {
    param (
        $FileExtension
    )
    Add-MpPreference -ExclusionExtension $FileExtension
}