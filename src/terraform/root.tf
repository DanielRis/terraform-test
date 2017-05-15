data "external" "external_application" {
    program = ["powershell", "-NoLogo", "-NoProfile", "-File", "${path.root}\\..\\powershell\\external.ps1"]
    query = {
        "Guid" = "9d8ede2f-91ab-4c27-bdef-fc81cdf3668f"
        "Data" = "Application"
    }
}

data "external" "external_application" {
    program = ["powershell", "-NoLogo", "-NoProfile", "-File", "${path.root}\\..\\powershell\\external.ps1"]
    query = {
        "Guid" = "9d8ede2f-91ab-4c27-bdef-fc81cdf3668f"
        "Data" = "regions\us-east-1\network\vpcs\poc"
    }
}


output "external_application" {
    value = "${data.external.external_test.result}"
}

