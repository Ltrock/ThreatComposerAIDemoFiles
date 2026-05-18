resource "aws_cloudwatch_log_group" "lambda_logs" {
  name              = "/aws/lambda/${var.project_name}-api"
  retention_in_days = 7
}

resource "aws_security_group" "lambda_sg" {
  name        = "${var.project_name}-lambda-sg"
  description = "Lambda security group"
  vpc_id      = aws_vpc.main.id

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_lambda_function" "banking_api" {
  function_name = "${var.project_name}-api"
  role          = aws_iam_role.lambda_exec.arn
  runtime       = "python3.11"
  handler       = "app.handler"
  filename      = "lambda.zip"
  timeout       = 30

  environment {
    variables = {
      DB_HOST     = aws_db_instance.postgres.address
      DB_NAME     = "banking"
      DB_USER     = var.db_username
      DB_PASSWORD = var.db_password
      LOG_LEVEL   = "debug"
    }
  }

  vpc_config {
    subnet_ids         = [aws_subnet.public_a.id, aws_subnet.public_b.id]
    security_group_ids = [aws_security_group.lambda_sg.id]
  }
}
