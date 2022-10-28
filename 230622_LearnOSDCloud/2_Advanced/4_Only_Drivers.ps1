# Script to automaticly download driver packages for current device
###################################################################
# MDT
Start-Process "https://www.osdcloud.com/more/recycle-bin/concepts/mdt-osdcloud-driverpacks"

# Azure
Start-Process "https://www.osdcloud.com/azure"

# download my driver pack
$package_info = Get-OSDCloudDriverPack | Select-Object -First 1
Write-Host "DriverPack has been matched to $($package_info.Name)"
$file_name = ($package_info.FileName).Split('.')[0]
$saved_driver_pack = Save-MyDriverPack -DownloadPath 'C:\Drivers' -Expand -Guid $package_info.Guid
