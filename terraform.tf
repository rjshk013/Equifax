//Specifying provider/terraform version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.9.0"
    }
  }

  required_version = ">= 1.5"
}

//provider "AWS"
provider "aws" {
  region  = "us-east-1"
  profile  = "test" #either use export awsprofile & use while running terraform command.or it is configured use as it is 
}

//Using s3 bucket as remote state management.If needed or comment


terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "equifax-remotestate"
    key            = "state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-lock"
  }
}
