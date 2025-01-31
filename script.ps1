# Lista dos programas a serem desinstalados
$programas = @(

	'Microsoft.Microsoft3DViewer';
	'Microsoft.BingSearch';
	'Clipchamp.Clipchamp';
	'Microsoft.549981C3F5F10';
	'Microsoft.Windows.DevHome';
	'MicrosoftCorporationII.MicrosoftFamily';
	'Microsoft.WindowsFeedbackHub';
	'Microsoft.GetHelp';
	'Microsoft.Getstarted';
	'microsoft.windowscommunicationsapps';
	'Microsoft.WindowsMaps';
	'Microsoft.MixedReality.Portal';
	'Microsoft.BingNews';
	'Microsoft.MicrosoftOfficeHub';
	'Microsoft.Office.OneNote';
	'Microsoft.OutlookForWindows';
	'Microsoft.MSPaint';
	'Microsoft.People';
	'Microsoft.PowerAutomateDesktop';
	'MicrosoftCorporationII.QuickAssist';
	'Microsoft.SkypeApp';
	'Microsoft.ScreenSketch';
	'Microsoft.MicrosoftSolitaireCollection';
	'Microsoft.MicrosoftStickyNotes';
	'MicrosoftTeams';
	'MSTeams';
	'Microsoft.Todos';
	'Microsoft.Wallet';
	'Microsoft.BingWeather';
	'Microsoft.Xbox.TCUI';
	'Microsoft.XboxApp';
	'Microsoft.XboxGameOverlay';
	'Microsoft.XboxGamingOverlay';
	'Microsoft.XboxIdentityProvider';
	'Microsoft.XboxSpeechToTextOverlay';
	'Microsoft.GamingApp';
	'Microsoft.YourPhone';
	'Microsoft.ZuneVideo'
	
)

foreach ($programa in $programas) {
    # Comando para desinstalar o programa
    Write-Host "Tentando desinstalar $programa..."
    Get-AppxPackage *$programa* | Remove-AppxPackage -ErrorAction SilentlyContinue
    
    if ($?) {
        Write-Host "$programa desinstalado com sucesso!"
    } else {
        Write-Host "Não foi possível desinstalar $programa. Verifique se o nome está correto."
    }
}
