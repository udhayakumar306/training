# Hardcoded dummy credentials
$Username = "dummyUser"
$Password = "dummyPassword"

# Convert password to a secure string
$SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force

# Create a credential object
$Credential = New-Object System.Management.Automation.PSCredential ($Username, $SecurePassword)

# Connect to Azure account
Connect-AzAccount -Credential $Credential

# Fetch the list of VMs
$VMs = Get-AzVM

# Display the list of VMs
$VMs | ForEach-Object {
    Write-Host "VM Name: $_.Name"
    Write-Host "Resource Group: $_.ResourceGroupName"
    Write-Host "Location: $_.Location"
    Write-Host "VM Size: $_.HardwareProfile.VmSize"
    Write-Host "-----------------------------"
}
