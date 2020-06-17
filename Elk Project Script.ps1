## Connecting to Azure
Connect-AzAccount
Set-Item Env:\SuppressAzurePowerShellBreakingChangeWarnings "true"


############################
### Define These Variables
############################
$resourceGroupName = 'ElkResourceGroup'
$location = 'EastUS'
$vm1 = 'ELK1'
$lbname = "LoadBalancer"
$protocol = 'TCP'
$healthcheckprotocol = 'http'
$insideport = 80
$outsideport = 80
$healthcheckpath = "/"
$adminuser  = 'AzureAdmin'

# Hotfix for mac
$profile = $null
$profile = $env:USERPROFILE
if (!($profile)) { $profile = $home }
# Create an SSH Key in azure acceptable format
if (!(test-path "$profile\.ssh\id_rsa.pub")){
  ssh-keygen -C $me -t rsa -b 4096 -f $profile\.ssh\id_rsa -N '""'
}