resource "random_password" "username" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

module "munki-repo" {
  source          = "spacelift.io/anywhereops/terraform-aws-munki-repo/aws"

  version         = "0.3.0"
  munki_s3_bucket = var.munki_s3_bucket
  username        = random_password.password.result
  password        = random_password.password.result
  prefix          = var.prefix
  price_class     = var.price_class
}
