# change the following variables

# prefix should be globally unique. Some characters seem to cause issues;
# I'd recommend sticking with lower-case-letters and underscores
# Something like org_yourorg_munki might be a good prefix.
variable "prefix" {
  default = "you-better-change-me"
}

# you'd need to change this only if you have an existing bucket named
# "munki-s3-bucket"
variable "munki_s3_bucket" {
  default = "munki-s3-bucket"
}

# the price class for your CloudFront distribution
# one of PriceClass_All, PriceClass_200, PriceClass_100
variable "price_class" {
  default = "PriceClass_100"
}


# the rest should be able to be left as-is unless you are an expert

# minimum amount of time (in seconds) that you want objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated checks for updates
variable "default_cache_behavior_min_ttl" {
  default = 0
}

# default amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request in the absence of an Cache-Control max-age or Expires header
variable "default_cache_behavior_default_ttl" {
  default = 86400
}

# maximum amount of time (in seconds) that an object is in a CloudFront cache before CloudFront forwards another request to your origin to determine whether the object has been updated
variable "default_cache_behavior_max_ttl" {
  default = 31536000
}

# minimum amount of time (in seconds) that you want catalog objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated
variable "catalogs_ordered_cache_behavior_min_ttl" {
  default = 0
}

# default amount of time (in seconds) that a catalog object is in a CloudFront cache before CloudFront forwards another request in the absence of an Cache-Control max-age or Expires header
variable "catalogs_ordered_cache_behavior_default_ttl" {
  default = 30
}

# maximum amount of time (in seconds) that a catalog object is in a CloudFront cache before CloudFront forwards another request to your origin to determine whether the object has been updated
variable "catalogs_ordered_cache_behavior_max_ttl" {
  default = 60
}

# minimum amount of time (in seconds) that you want manifest objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated
variable "manifests_ordered_cache_behavior_min_ttl" {
  default = 0
}

# default amount of time (in seconds) that a manifest object is in a CloudFront cache before CloudFront forwards another request in the absence of an Cache-Control max-age or Expires header
variable "manifests_ordered_cache_behavior_default_ttl" {
  default = 30
}

# maximum amount of time (in seconds) that a manifest object is in a CloudFront cache before CloudFront forwards another request to your origin to determine whether the object has been updated
variable "manifests_ordered_cache_behavior_max_ttl" {
  default = 60
}

# minimum amount of time (in seconds) that you want icon objects to stay in CloudFront caches before CloudFront queries your origin to see whether the object has been updated
variable "icons_ordered_cache_behavior_min_ttl" {
  default = 0
}

# default amount of time (in seconds) that a icon object is in a CloudFront cache before CloudFront forwards another request in the absence of an Cache-Control max-age or Expires header
variable "icons_ordered_cache_behavior_default_ttl" {
  default = 30
}

# maximum amount of time (in seconds) that a icon object is in a CloudFront cache before CloudFront forwards another request to your origin to determine whether the object has been updated
variable "icons_ordered_cache_behavior_max_ttl" {
  default = 60
}



