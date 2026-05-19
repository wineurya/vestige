# Opens Cavera wireframe hub in default browser
$hub = Join-Path $PSScriptRoot "wireframes\index.html"
if (-not (Test-Path $hub)) {
  Write-Error "Wireframe hub not found: $hub"
  exit 1
}
Start-Process $hub
Write-Host "Opened $hub"
