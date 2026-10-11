$ErrorActionPreference = 'Stop'

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  throw 'Git is not installed. Install Git for Windows from https://git-scm.com/download/win, then rerun this script.'
}

Write-Host ''
Write-Host 'Publish the Amazon Customer Service Chat Archive' -ForegroundColor Cyan
Write-Host 'First create a NEW, EMPTY public repository at https://github.com/new.'
Write-Host 'Use a name such as amazon-delivery-chat-archive and do not add a README/license.'
$remoteUrl = Read-Host 'Paste the new repository HTTPS URL (e.g. https://github.com/USERNAME/amazon-delivery-chat-archive.git)'

if ($remoteUrl -notmatch '^https://github\.com/[^/]+/[^/]+(?:\.git)?/?$') {
  throw 'That does not look like a GitHub HTTPS repository URL. Copy the HTTPS URL from your new repository and try again.'
}
$remoteUrl = $remoteUrl.TrimEnd('/')
if (-not $remoteUrl.EndsWith('.git')) { $remoteUrl += '.git' }

Set-Location $PSScriptRoot
if (-not (Test-Path '.git')) { git init }
git add .

git rev-parse --verify HEAD *> $null
$hasCommit = ($LASTEXITCODE -eq 0)
if (-not $hasCommit) {
  git commit -m 'Publish readable customer service chat archive'
} else {
  git diff --cached --quiet
  if ($LASTEXITCODE -ne 0) { git commit -m 'Publish readable customer service chat archive' }
}

git branch -M main
$remotes = @(git remote)
if ($remotes -contains 'origin') {
  git remote set-url origin $remoteUrl
} else {
  git remote add origin $remoteUrl
}
git push -u origin main

Write-Host ''
Write-Host 'Push complete. Next, open repository Settings > Pages.' -ForegroundColor Green
Write-Host 'Choose Deploy from a branch, branch main, folder /(root), then Save.'
Write-Host 'After deployment, the website should be at:' -ForegroundColor Green
if ($remoteUrl -match '^https://github\.com/([^/]+)/([^/]+?)(?:\.git)?$') {
  $owner = $Matches[1]
  $repo = $Matches[2]
  Write-Host "https://${owner}.github.io/${repo}/"
}
