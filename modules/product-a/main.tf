module "sub_system_x"{
    source = "../sub-system-x"
    images_bucket_name = var.images_bucket_name
    region = var.region
}