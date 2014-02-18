# == wkhtmltopdf::install
#
class wkhtmltopdf::install{
  anchor { 'wkhtmltopdf::install::begin':}
  anchor { 'wkhtmltopdf::install::end': }
  
  include wkhtmltopdf::dependencies

  netinstall { 'wkhtmltopdf_bin':
    url => $::wkhtmltopdf::params::main_repo,
    extracted_dir => 'wkhtmltopdf-0.9.9',
    destination_dir => '/tmp',
    postextract_command => 'chmod 755 wkhtmltopdf && sudo cp wkhtmltopdf ${::wkhtmltopdf::params::main_directory}/'
  }
}