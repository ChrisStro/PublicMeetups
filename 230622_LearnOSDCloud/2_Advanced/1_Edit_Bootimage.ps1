# Edit Bootimage for GUI Mode
Edit-OSDCloudWinPE -StartOSDCloudGUI

# Edit for unattended deployment
Edit-OSDCloudWinPE -StartOSDCloud '-OSBuild 21H2 -OSEdition Pro -OSLanguage de-de -OSLicense Retail'

# Edit-OSDCloudWinPE -StartOSDPad
Start-Process "https://github.com/OSDeploy/OSDPad"
Edit-OSDCloudWinPE -StartOSDPad 'OSDeploy OSDPad OSDCloudTasks'
new-osdcloudiso

# Drivers
Edit-OSDCloudWinPE