terraform {
  required_version = "~> 0.12.6"

  backend "s3" {
    bucket         = "anoona-root-terraform-state"
    dynamodb_table = "anoona-root-terraform-state-lock"
    encrypt        = true
    // path pattern: s3://<bucket>/<workspace_key_prefix>/<workspace-name>/<key>
    key                  = "terraform.tfstate"
    region               = "ap-southeast-2"
    workspace_key_prefix = "product-a/development"
  }
}
