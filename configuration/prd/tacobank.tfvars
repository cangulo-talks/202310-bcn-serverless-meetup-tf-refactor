# aws_account_id = "" # set through env vars 
stage         = "prd"
service_group = "main"
client        = "tacobank"

payments = {
  enabled = true
}
crm = {
  enabled = true
}
transactions = {
  enabled = false
}
