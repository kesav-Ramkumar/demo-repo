$resourceGroupname = Read-Host -Prompt "enter resource group name"

$adminCreds = Get-Credential -Message "Enter a username and password for the VM administrator."

$vmName = Read-Host -Prompt "enter VM name"

Connect-AzAccount

New-AzVm -ResourceGroupName $resourceGroupname -Name $vmName -Credential $adminCreds -Image UbuntuLTS

start-AzVm -ResourceGroupName $resourceGroupname -Name $vmName

Write-Host "Resources created successfully."

stop-AzVm -ResourceGroupName $resourceGroupname -Name $vmName

Write-Host "Resources Stopped successfully."
