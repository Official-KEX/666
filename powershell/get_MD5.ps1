Get-ChildItem -File -Recurse -Path . | ForEach-Object {
$file = $_.FullName
$hash = Get-FileHash -Algorithm MD5 -Path $file
Write-Host "$($hash.Hash) $($file)"
}
cmd /c 'pause'
