resource "random_string" "db_password" {
  length  = 32
  upper   = true
  numeric  = true
  special = false
}
resource "aws_security_group" "rds_sg" {
  vpc_id      = "${aws_default_vpc.default_vpc.id}"
  name        = "${var.app}-${var.environment}-rds-sg"
  description = "Allow all inbound for Postgres"
ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_db_instance" "app_database_instance" {
  identifier             = "${var.app}-${var.environment}"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "14.5"
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  username               = "postgres"
  password               = "${random_string.db_password.result}"
  db_name                = "${var.DATABASE_DB}"
}