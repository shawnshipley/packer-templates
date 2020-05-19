# Call as cmd.exe /c C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -File sethostname.ps1
$hostname = read-host 'hostname'
# $Domain = 'domain.com' ## put domain name here
# $Credential = Get-Credential

# Get-NetIPAddress
Rename-Computer $hostname; restart-computer
# Add-Computer -Domain $Domain -NewName $hostname -Credential $Credential -Restart -Force