function Screenshot {
    $DateTime = (Get-Date -Format "MM-dd-yyyy-HH-mm-ss") -as [string]
    $Random = "Screenshot-$DateTime"
    $File = "$env:temp\$Random.png"
    
    Add-Type -AssemblyName System.Windows.Forms
    Add-Type -AssemblyName System.Drawing

    $Screen = [System.Windows.Forms.SystemInformation]::VirtualScreen
    $Width = $Screen.Width
    $Height = $Screen.Height
    $Left = $Screen.Left
    $Top = $Screen.Top

    $Image = New-Object System.Drawing.Bitmap $Width $Height
    $Graphic = [System.Drawing.Graphics]::FromImage($Image)
    $Graphic.CopyFromScreen($Left, $Top, 0, 0, $Image.Size)

    $Image.Save($File, [System.Drawing.Imaging.ImageFormat]::png)
}