cls
$DictFile = "C:\pw\pass.txt"
$DC = "your_dc"
$Domain = "DC=domain,DC=domain"

#$Dict = Get-Content $DictFile | ConvertTo-NTHashDictionary

#Get-ADReplAccount -All -Server $DC -NamingContext $Domain |
#Test-PasswordQuality -WeakPasswordHashes $Dict -ShowPlainTextPasswords -IncludeDisabledAccounts
Get-ADReplAccount -All -Server $DC -NamingContext $Domain | Test-PasswordQuality -WeakPasswordsFile $DictFile -IncludeDisabledAccounts
