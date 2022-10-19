function MessageBox {
    param (
        $TheMessage
    )
    Add-Type -AssemblyName PresentationFramework
    [System.Windows.MessageBox]::Show("$TheMessage")
}