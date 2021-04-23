provider "aws" {
  region = var.region
}

locals {
  common_tags = {
    Name = var.tag_name
  }
}