module "images_bucket"{
    source = "../aws-s3"
    bucket = var.images_bucket_name
    region = var.region
}