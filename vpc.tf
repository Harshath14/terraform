provider "aws" {
region="us-east-1"
}
variable "vpc_cidr"{
description="The CIDR block for the vpc"
type=string
default="10.0.0.0/16"
}
resource "aws_vpc" "demovpc"{
cidr_block="${var.vpc_cidr}"
instance_tenancy="default"
tags={
Name="Demo vpc"
}
}
