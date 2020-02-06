terraform {
  backend "s3" {
    bucket = "terraform.grimoire"
    key    = "bit-buckets.tfstate"
    region = "ca-central-1"
  }
}

provider "aws" {
  version = "~> 2.11"

  region = "ca-central-1"
}
