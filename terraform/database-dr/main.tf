resource "aws_db_instance" "dr_replica" {
  identifier            = "novapay-dr-replica"
  replicate_source_db   = var.source_db_arn
  instance_class        = "db.t3.micro"

  publicly_accessible   = false
  skip_final_snapshot   = true

  tags = {
    Environment = "dr"
    Project     = "NovaPay-V2"
  }
}
