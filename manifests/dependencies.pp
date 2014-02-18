# == Class: wkhtmltopdf::dependencies
#
class rsv::dependencies {
  $enhancers = [ "openssl", "build-essential", "xorg", "libssl-dev"]
  package { $enhancers: ensure => "installed" }
}