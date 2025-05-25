output "test-lambda-from-terraform-creation" {
  value = aws_lambda_function.lambda_function.function_name
}
