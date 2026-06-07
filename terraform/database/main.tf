resource "aws_db_subnet_group" "novapay" {
  name       = "novapay-db-subnet-group"
  subnet_ids = []

  tags = {
    Name = "novapay-db-subnet-group"
  }
}

resource "aws_db_instance" "primary" {
  identifier     = "novapay-primary-db"
  engine         = "postgres"
  instance_class = "db.t3.micro"

  allocated_storage = 20

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  multi_az = true

  storage_encrypted = true

  backup_retention_period = 7

  skip_final_snapshot = true
}
