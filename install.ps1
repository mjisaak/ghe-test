param(
  $title
)

$newTitle = $title -replace '.*to: '
Write-Host "new title: $newTitle"
az webapp config appsettings set -g github-action-rg -n github-action-demo --settings title=$newTitle
