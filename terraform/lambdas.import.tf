moved {
  from = aws_lambda_function.payments[0]
  to   = aws_lambda_function.all["payments"]
}

moved {
  from = aws_lambda_function.transactions[0]
  to   = aws_lambda_function.all["transactions"]
}

