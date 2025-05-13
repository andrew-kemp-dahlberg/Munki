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
  source          = "spacelift.io/anywhereops/munki-repo/aws"
  version         = "0.1.0"
  providers = {
    aws = aws
  }
  munki_s3_bucket = var.munki_s3_bucket
  username        = nonsensitive(random_password.password.result)
  password        = nonsensitive(random_password.password.result)
  prefix          = "anywhereops"
  price_class     = var.price_class
}
