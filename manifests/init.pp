# Class: carbon
# ===========================
#
# Installs/Configures/Runs Carbon Cache/Relay
#
# Parameters
# ----------
#
# * `carbon_pkg`
# Name of carbon package to install, Default `python-carbon`
#
# * `carbon_pkg_ver`
# Version of carbon package to install, Default `installed`
#
# * `carbon_conf_dir`
# Location of carbon config files, Default `/etc/carbon`
#
# * `carbon_conf`
# Location of carbon.conf, Default `${carbon_conf_dir}/carbon.conf`
#
#
# Authors
# -------
#
# Matthew Nicholson <matthew.a.nicholson@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2016 Matthew Nicholson, unless otherwise noted.
#
class carbon (
  String $carbon_pkg      = $::carbon::params::carbon_pkg,
  String $carbon_pkg_ver  = $::carbon::params::carbon_pkg_ver,
  String $carbon_conf_dir = $::carbon::params::carbon_conf_dir,
  String $carbon_conf     = $::carbon::params::carbon_conf,
  ) inherits carbon::params {

  include carbon::install

}
