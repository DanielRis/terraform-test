$ProjectRoot = $($(Get-Item $($PSScriptRoot)).Parent).FullName

$Data = @(
    @{
        "Guid" = "9d8ede2f-91ab-4c27-bdef-fc81cdf3668f"
        "Application" = @{
            "Name" = "This is my first application"
            "Project Code" = "123456"
        }
        "Network" = @{
            
        }
    }
    @{
        "Guid" = "21855dca-ea61-4846-b24f-788fc2181ba7"
        "Application" = @{
            "Name" = "This is my second application"
            "Project Code" = "654321"
        }
    }
) | ConvertTo-Json


$Data | Out-File -FilePath "$ProjectRoot\data\database.json" -Encoding ascii -Force