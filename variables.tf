variable "performance_mode" {
  description  = "The file system performance mode."
  default      = "generalPurpose"
}

variable "tags" {
  description  = "A mapping of tags."
  default      = {
    Terraform   = "true"
  }
}

variable "private_subnet_a" {
  description  = "The ID of private subnet in zone a."
  default      = ""
}

variable "private_subnet_b" {
  description  = "The ID of private subnet in zone b."
  default      = ""
}

variable "private_subnet_c" {
  description  = "The ID of private subnet in zone c."
  default      = ""
}
