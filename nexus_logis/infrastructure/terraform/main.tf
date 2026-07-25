terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Configuração da Infraestrutura Híbrida para Nexus-Logis
resource "aws_vpc" "nexus_logis_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "nexus-logis-vpc"
  }
}

# PostgreSQL Time-Series Node (para telemetria)
resource "aws_db_instance" "timeseries_db" {
  identifier           = "nexus-logis-timeseries"
  engine               = "postgres"
  engine_version       = "16"
  instance_class       = "db.t4g.micro"
  allocated_storage    = 20
  storage_type         = "gp3"
  username             = "nexusadmin"
  password             = "changeme123!" # Placeholder, deve ser gerenciado via Secrets
  skip_final_snapshot  = true
  publicly_accessible  = false
  
  tags = {
    Name = "NexusLogisTelemetryDB"
  }
}
