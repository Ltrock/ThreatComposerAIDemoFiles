resource "aws_kms_key" "banking" {
  description             = "KMS key for banking demo"
  deletion_window_in_days = 7
}

resource "aws_kms_alias" "banking_alias" {
  name          = "alias/${var.project_name}-key"
  target_key_id = aws_kms_key.banking.key_id
}
