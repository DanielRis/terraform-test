$Input | Out-File -FilePath .\input.json -Encoding ascii -Force
$return = @{
    "Key" = "Value"
}
$return | ConvertTo-Json | Out-File -FilePath .\test.json -Encoding ascii -Force
$return | ConvertTo-Json