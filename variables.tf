variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet_2_cidr" {
  default = "10.0.2.0/24"
}

variable "zone_1" {
  default = "us-east-1b"
}
variable "zone_2" {
  default = "us-east-1c"
}

variable "sg_name" {
  description = "Allow ALL inbound traffic"
  default     = "Devops allow all security group"
}

variable "sg_ingress_from_port" {
  default = 0
}

variable "sg_ingress_to_port" {
  default = 0
}

variable "ingress_protocol" {
  default = "-1"
}

variable "ingress_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "sg_egress_from_port" {
  default = 0
}

variable "sg_egress_to_port" {
  default = 0
}

variable "egress_protocol" {
  default = "-1"
}

variable "egress_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "egress_ipv6_cidr_blocks" {
  default = ["::/0"]
}

variable "dynamodb_hash_key" {
  default = "LockID"
}

variable "dynamodb_read_capacity" {
  default = 20
}

variable "dynamodb_write_capacity" {
  default = 20
}

variable "dynamodb_attribute_type" {
  default = "S"
}

#variable "environment" {
#   default = ""
#}

variable "instance_type" {
  default = "t2.micro"
}

#variable "instance_availability_zone" {
#    default = "us-east-1c"
#}

variable "instance_ami" {
  # type = map
  default = "ami-0cff7528ff583bf9a"
  #  "us-east-1c" = "ami-0cff7528ff583bf9a"
}


variable "subnet_id" {
  default = "10.0.1.0/24"
}

variable "vpc_security_group" {
  type    = list(any)
  default = null
}

#variable "instance_profile" {
#   default = null
#}

variable "key_name" {
  default = "ilknue-keypair2"
}

variable "bucketname" {
  default = "ilknur-bucket-01"
}

variable "s3_acl" {
  default = "private"
}

variable "versioning_enabled" {
  default = true
}

variable "private_ip" {
  default = "10.0.1.202"
}

