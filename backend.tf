# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "meeka1-terraform-rz-state"
    key            = "rentzone-ecs/terraform.tfstate"
    region         = "us-east-1"
    profile        = "Meeka1-terraform"
    dynamodb_table = "terraform-rz-state-lock"
  }
}