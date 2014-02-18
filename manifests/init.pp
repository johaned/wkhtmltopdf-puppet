# == Class: wkhtmltopdf
#
# This class provisioning the wkhtmltopdf binary file
#
# === Examples
#
#  class { wkhtmltopdf:
#  }
#
#  or
#
#  include wkhtmltopdf
#
# === Authors
#
# Johan Tique <johan.tique@codescrum.com>
#
# === Copyright
#
# Copyright 2014 Johan Tique.
#
class wkhtmltopdf(
  $directory='/home/deploy',
  $name='wkhtmltopdf',
  )inherits wkhtmltopdf::params{
  include wkhtmltopdf::install
  anchor{ 'wkhtmltopdf::begin':
	before => Anchor["wkhtmltopdf::install::begin"],
  }
  anchor { 'wkhtmltopdf::end': }

  exec { "config-mongo-c-driver":
	command      => "cp /usr/bin/wkhtmltopdf ${directory}/${name}",
	provider     => "shell",
	user         => "deploy",
    before       => Anchor['wkhtmltopdf::end']
  }
}
