# These help you get the information you'll need to do the repo sync
# and to configure your Munki clients to use your new cloud repo

output "cloudfront_url" {
  value = module.munki-repo.cloudfront_url
}

output "munki_bucket_id" {
  value = module.munki-repo.munki_bucket_id
}

output "username" {
  value = module.munki-repo.username
}

output "password" {
  value = module.munki-repo.password
}
