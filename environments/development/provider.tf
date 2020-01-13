provider "aws" {
    assume_role {
        role_arn = "arn:aws:iam::${var.account_id}:role/devops"
        session_name = "terraform-app-${terraform.workspace}"
    }
    region = var.region
}