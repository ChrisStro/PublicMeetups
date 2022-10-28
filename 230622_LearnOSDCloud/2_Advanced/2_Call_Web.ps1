# you can call script direct from the web you know ?!?!?
$script = Invoke-RestMethod -Uri "meetup.x.x.x.x.sslip.io/dummy"
Invoke-Expression $script

Invoke-RestMethod "meetup.x.x.x.x.sslip.io/dummy" | iex # oneliner

# add online script | WebScript-Win20H2
Start-Process "https://github.com/ChrisStro/OSDCloud"
Edit-OSDCloudWinPE -StartWebScript "https://raw.githubusercontent.com/ChrisStro/OSDCloud/main/Win11-Pro-21H2-DE-DE.ps1"
New-OSDCloudISO

# download custom image via fileuri
Start-OSDCloud -ImageFileUrl "yourul" -ImageIndex 1