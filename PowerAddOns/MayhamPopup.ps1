function fake_bsod {
    Write-Host "[+]Sending fake BSOD to $env:COMPUTERNAME..."
    $Text = @'
A problem has been detected and Windows has been shut down to prevent damage 
to your computer.

CRITICAL_SERVICE_FAILED

If this is the first time you've seen this Stop error screen, 
restart your computer. If this screen appears again, follow
these steps:

Check to make sure any new hardware or software is properly installed.
If this is a new installation, ask your hardware or software manufacturer
for any Windows updates you might need.

If problems continue, disable or remove any newly installed hardware 
or software. Disable BIOS memory options such as caching or shadowing.
If you need to use Safe Mode to remove or disable components, restart
your computer, press F8 to select Advanced Startup Options, and then
select Safe Mode.

Technical Information:

*** STOP: 0x0000005A (0x00000001, 0x00000001, 0x00000000, 0x00000000)

Collecting data for crash dump ...
Initializing disk for crash dump ...
Beginning dump for physical memory.
Dumping physical memory to disk: 100
Physical memory dump complete.
Contact your system admin or technical support group for further assistance.
'@
    Add-Type -AssemblyName System.Windows.Forms

    $Label = New-Object System.Windows.Forms.Label
    $Label.TabIndex = 1
    $Label.Text = $Text
    $Label.ForeColor = 'White'
    $Label.AutoSize = $True
    $Label.Font = "Lucida Console, 16pt, style=Regular"
    $Label.Location = '0, 30'

    $Form = New-Object system.Windows.Forms.Form
    $Form.Controls.Add($Label)
    $Form.WindowState = 'Maximized'
    $Form.FormBorderStyle = 'None'
    $Form.BackColor = "#000080"
    $Form.Cursor=[System.Windows.Forms.Cursors]::WaitCursor
    $Form.ShowDialog()
}