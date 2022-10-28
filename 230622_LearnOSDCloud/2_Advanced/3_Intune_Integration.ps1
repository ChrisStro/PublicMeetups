# if registered no need

# autopilotjson
Install-Module -Name WindowsAutoPilotIntune -force -Confirm:$false

Connect-MSGraph
Get-AutopilotProfile | Select-Object displayname

# inject json into bootimage
Get-AutopilotProfile | Where-Object DisplayName -EQ "AAD | user driven" |
 ConvertTo-AutopilotConfigurationJSON | Out-File -FilePath .\OSDCloud\Config\AutopilotJSON\AADuserdriven.json -Encoding ascii
