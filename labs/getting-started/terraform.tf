terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.71" 
        }
    }

    required version = ">= 1.2"
}
