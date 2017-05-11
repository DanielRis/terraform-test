data "external" "demo" {
    program = ["powershell", "-NoLogo", "-NoProfile", "-File", "D:\\projects\\terraform-test\\test.ps1"]
    query = {
        "Value" = "Query-Value"
    }
}

output "demo" {
    value = "${data.external.demo.result}"
}