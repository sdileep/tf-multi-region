module "product-a" {
  source = "../../modules/product-a"
  images_bucket_name="images.tmp.example.com"
  region = var.region
  
}
