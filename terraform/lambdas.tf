resource "aws_lambda_function" "payments" {

  count = try(var.payments.enabled, false) ? 1 : 0

  function_name    = "${local.resources_prefix}-payments"
  filename         = data.archive_file.lambda_zip_file.output_path
  source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256
  handler          = "app.handler"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "nodejs14.x"
}


resource "aws_lambda_function" "crm" {

  count = try(var.crm.enabled, false) ? 1 : 0

  function_name    = "${local.resources_prefix}-crm"
  filename         = data.archive_file.lambda_zip_file.output_path
  source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256
  handler          = "app.handler"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "nodejs14.x"
}


resource "aws_lambda_function" "transactions" {

  count = try(var.transactions.enabled, false) ? 1 : 0

  function_name    = "${local.resources_prefix}-transactions"
  filename         = data.archive_file.lambda_zip_file.output_path
  source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256
  handler          = "app.handler"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "nodejs14.x"
}
