Get-ChildItem cert:\CurrentUser\my –CodeSigningCert
$cert = (Get-ChildItem cert:\CurrentUser\my –CodeSigningCert)[0]
Set-AuthenticodeSignature -Certificate $cert -FilePath C:\scripts\yaloc.ps1
