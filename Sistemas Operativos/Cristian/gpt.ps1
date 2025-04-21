$apiKey = "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"
$headers = @{
    "Content-Type" = "application/json"
    "Authorization" = "Bearer $apiKey"
}
$userMessage = Read-Host "Escribe tu pregunta o mensaje para el modelo"
$body = @{
    model = "llama-3.3-70b-versatile"
    messages = @(
        @{
            role = "user"
            content = $userMessage
        }
    )
} | ConvertTo-Json

$response = Invoke-RestMethod -Uri "https://api.groq.com/openai/v1/chat/completions" -Method Post -Headers $headers -Body $body
Write-Output $response.choices[0].message.content