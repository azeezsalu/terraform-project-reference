# create database subnet group
# terraform aws db subnet group
resource "aws_db_subnet_group" "database_subnet_group" {
  name         = 
  subnet_ids   = 
  description  = "subnets for database instance"

  tags   = {
    Name = 
  }
}

# get the latest db snapshot
# terraform aws data db snapshot
data "aws_db_snapshot" "latest_db_snapshot" {
  db_snapshot_identifier = 
  most_recent            = 
  snapshot_type          = 
}

# create database instance restored from db snapshots
# terraform aws db instance
resource "aws_db_instance" "database_instance" {
  instance_class          = 
  skip_final_snapshot     = 
  availability_zone       = 
  identifier              = 
  snapshot_identifier     = 
  db_subnet_group_name    = 
  multi_az                = 
  vpc_security_group_ids  = 
}