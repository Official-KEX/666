Get-ChildItem -File -Recurse -Path . | ForEach-Object {
$file = $_.FullName
$hash = Get-FileHash -Algorithm SHA256 -Path $file
Write-Host "$($hash.Hash) $($file)"
}
cmd /c 'pause'
