# OSD Progress --> Add some nice progress
Set-OSDCloudWorkspace -WorkspacePath .\OSDProgress

Add-OSDProgressToWinPE -OSDCloud -OSDProgressTemplateFile .\OSDProgressTemplate.psd1 #-UnlockPass "unlock"
Edit-OSDCloudWinPE -PSModuleCopy OSDProgress -StartWebScript 'https://raw.githubusercontent.com/ChrisStro/OSDCloud/main/Win10_ZTI-OSDProgess.ps1'
New-OSDCloudISO