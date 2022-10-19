function Scare {
 Start-Job -ScriptBlock {
    $Text = @'
    YOUR COMPUTER HAS BEEN HACKED!
    NOW I HAVE CONTROL OVER ALL OF YOUR DATA!
    YOU SHOULDN'T HAVE MESSED WITH ME...
'@
    Add-Type -AssemblyName System.Windows.Forms
    $Label = New-Object System.Windows.Forms.Label
    $Label.TabIndex = 1
    $Label.Text = $Text
    $Label.TextAlign = 'MiddleCenter'
    $Label.ForeColor = "White"
    $Label.AutoSize = $True
    $Label.Font = "Lucida Console, 48pt, style=Bold"
    $Label.Location = '0, 0'

    $Form = New-Object System.Windows.Forms.Form
    $Form.Controls.Add($Label)
    $Form.WindowState = 'Maximized'
    $Form.FormBorderStyle = 'None'
    $Form.BackColor = '#DE0000'
    $Form.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
    $Form.ShowDialog()
 } | Out-Null
}