# Minimaler lokaler Webserver für die Vorschau (ohne Node/Python).
# Liefert den Ordner docs/ unter http://localhost:5510/ aus – wie GitHub Pages.
param([int]$Port = 5510)
$root = (Resolve-Path (Join-Path $PSScriptRoot '..\docs')).Path
$types = @{ '.html'='text/html; charset=utf-8'; '.css'='text/css'; '.js'='text/javascript'; '.jpg'='image/jpeg';
            '.jpeg'='image/jpeg'; '.png'='image/png'; '.gif'='image/gif'; '.svg'='image/svg+xml'; '.webp'='image/webp';
            '.ico'='image/x-icon'; '.txt'='text/plain'; '.xml'='application/xml'; '.woff2'='font/woff2' }
$l = New-Object System.Net.HttpListener
$l.Prefixes.Add("http://localhost:$Port/")
$l.Start()
Write-Host "Vorschau: http://localhost:$Port/  (Ordner: $root)"
while ($l.IsListening) {
  $c = $l.GetContext()
  $p = [Uri]::UnescapeDataString($c.Request.Url.AbsolutePath).TrimStart('/')
  $f = Join-Path $root $p
  if ((Test-Path $f -PathType Container)) { $f = Join-Path $f 'index.html' }
  $full = [IO.Path]::GetFullPath($f)
  if ($full.StartsWith($root) -and (Test-Path $full -PathType Leaf)) {
    $b = [IO.File]::ReadAllBytes($full)
    $ext = [IO.Path]::GetExtension($full).ToLower()
    $c.Response.ContentType = if ($types[$ext]) { $types[$ext] } else { 'application/octet-stream' }
    $c.Response.OutputStream.Write($b, 0, $b.Length)
  } else {
    $c.Response.StatusCode = 404
  }
  $c.Response.Close()
  Write-Host "$($c.Response.StatusCode) /$p"
}
