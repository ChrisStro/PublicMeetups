Set-ExecutionPolicy Bypass

# Requirements
# Windows ADK and Windows ADK-PE
wget chocolatey.org/install.ps1 -UseBasicParsing | iex # install via chocolatey
choco install windows-adk windows-adk-winpe -y

# Install Module
Start-Process "https://github.com/OSDeploy/OSD"
Start-Process "https://www.osdcloud.com"
Install-Module OSD -Scope AllUsers -force -Confirm:$false

# Check Commands :-)
Get-Command -Module OSD

# First Create OSDCloud Template
New-OSDCloudTemplate -Name "Default" -SetInputLocale de-de # now you could copy everything to a windows server

# With Wireless Support
New-OSDCloudTemplate -Name "Wireless" -SetInputLocale de-de

# Edit OSDCloud
Edit-OSDCloudWinPE

# Create an ISO
New-OSDCloudISO

# Connect to vm
vmconnect localhost Meetup_OSDCloud
Start-VM "Meetup_OSDCloud"