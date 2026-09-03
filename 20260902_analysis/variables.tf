variable "region" {
  description = "The region where the resources are created"
  default     = "ap-southeast-1"
}

variable "address_space" {
  description = "This address space is usded by HelloCloud Custom VPC."
  default     = "10.0.0.0/16"
}

variable "prefix" {
  description = "This prefix will be included in the name of most resources."
}

variable "environment" {
  description = "Target Enviornment"
  default     = "Terraform-Test"
}

variable "public_subnet_prefix" {
  description = "This subnet will be used as public subnet."
  default     = "10.0.0.0/24"

}

variable "instance_type" {
  description = "This instance type will be used in instance creation"
  default     = "t3.micro"

}