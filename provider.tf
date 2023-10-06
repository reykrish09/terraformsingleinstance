terraform {
  required_version = "<= 1.4.2" #Forcing which version of Terraform needs to be used
  # required_providers {
  #   aws = {
  #     version = "<= 5.0.0" #Forcing which version of plugin needs to be used.
  #     source = "hashicorp/aws"
  #   }
  # }


  backend "s3" {
    bucket = "terraform-trb5-tfstate"
    key    = "terraformtraining.tfstate"
    region = "us-east-2"
  }
}
provider "aws" {
  region = "us-east-1"

}

provider "aws" {
  alias  = "ohio"
  region = "us-east-2"

}

# provider "azurerm" {
#   features {}
# }

