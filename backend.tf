terraform {
  backend "s3" {
    # IMPORTANT: Change this to a globally unique bucket name you will create in Phase 5
    bucket         = "my-secure-tf-state-bucket-unique-12345" 
    key            = "infrastructure/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table" # Prevents concurrent state modifications
  }
}

