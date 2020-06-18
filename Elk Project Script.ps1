

# Hotfix for mac
$profile = $null
$profile = $env:USERPROFILE
if (!($profile)) { $profile = $home }
# Create an SSH Key in azure acceptable format
if (!(test-path "$profile\.ssh\id_rsa.pub")){
  ssh-keygen -C $me -t rsa -b 4096 -f $profile\.ssh\id_rsa -N '""'
}