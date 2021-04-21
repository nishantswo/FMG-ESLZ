Connect-AzureAD
New-AzureADGroup -DisplayName "psgroup" -MailEnabled $false -SecurityEnabled $true -MailNickName "NotSet"
$group = (Get-AzADGroup -DisplayName psgroup).id
New-AzRoleAssignment -ObjectId $group -RoleDefinitionName "Owner" -Scope "/providers/Microsoft.Management/managementGroups/fmD-online"



