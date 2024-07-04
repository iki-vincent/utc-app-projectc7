terraform {
  backend "s3" {
    bucket         = "w7-yk-terraform" #replace with your bucket,create manually,it saves ur tf.state file in s3 bucket
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "locktable-yk" #greate manually 
  }
}