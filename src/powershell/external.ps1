$TerraformQuery = [Console]::in.ReadToEnd()
$ProjectRoot = $(((Get-Item $PSScriptRoot).Parent).Parent).FullName
## Debug and Test
## Initialize Datatable
& $ProjectRoot\tools\Initialize-Data.ps1
#
$TerraformQuery | Out-File -FilePath "$ProjectRoot\temp\input.json" -Encoding ascii -Force

$Data = Get-Content -Path "$ProjectRoot\data\database.json" -Encoding Ascii -Raw | ConvertFrom-Json
$TerraformQuery = $TerraformQuery | ConvertFrom-Json
$FilteredData = $($Data | Where-Object {$_.Guid -eq $TerraformQuery.Guid })."$($TerraformQuery.Data)" | ConvertTo-Json
$FilteredData | Out-File -FilePath "$ProjectRoot\temp\output.json" -Encoding ascii -Force
$FilteredData