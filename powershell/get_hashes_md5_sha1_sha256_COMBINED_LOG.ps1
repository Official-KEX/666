Start-Transcript -path .\HASH_LOG.txt -append
Get-ChildItem -File -Recurse -Path . | ForEach-Object {
$file = $_.FullName
$hash = Get-FileHash -Algorithm MD5 -Path $file
Write-Host "$($hash.Hash) $($file)"
}
Stop-Transcript

Start-Transcript -path .\HASH_LOG.txt -append
Get-ChildItem -File -Recurse -Path . | ForEach-Object {
$file = $_.FullName
$hash = Get-FileHash -Algorithm SHA1 -Path $file
Write-Host "$($hash.Hash) $($file)"
}
Stop-Transcript

Start-Transcript -path .\HASH_LOG.txt -append
Get-ChildItem -File -Recurse -Path . | ForEach-Object {
$file = $_.FullName
$hash = Get-FileHash -Algorithm SHA256 -Path $file
Write-Host "$($hash.Hash) $($file)"
}
Stop-Transcript
cmd /c 'pause'

