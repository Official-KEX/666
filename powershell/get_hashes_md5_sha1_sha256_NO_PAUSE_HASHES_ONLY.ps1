cmd /c echo Start generating MD5, SHA1 and SHA256 hashes?
cmd /c 'pause'
Start-Transcript -path .\MD5_LOG.txt -append
Get-ChildItem -File -Recurse -Path . | ForEach-Object {
$file = $_.FullName
$hash = Get-FileHash -Algorithm MD5 -Path $file
Write-Host "$($hash.Hash)"
}
Stop-Transcript

Start-Transcript -path .\SHA1_LOG.txt -append
Get-ChildItem -File -Recurse -Path . | ForEach-Object {
$file = $_.FullName
$hash = Get-FileHash -Algorithm SHA1 -Path $file
Write-Host "$($hash.Hash)"
}
Stop-Transcript

Start-Transcript -path .\SHA256_LOG.txt -append
Get-ChildItem -File -Recurse -Path . | ForEach-Object {
$file = $_.FullName
$hash = Get-FileHash -Algorithm SHA256 -Path $file
Write-Host "$($hash.Hash)"
}
Stop-Transcript
cmd /c 'pause'

