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
  String $carbon_pkg                            = $::carbon::params::carbon_pkg,
  String $carbon_pkg_ver                        = $::carbon::params::carbon_pkg_ver,
  String $carbon_conf_dir                       = $::carbon::params::carbon_conf_dir,
  String $carbon_conf                           = $::carbon::params::carbon_conf,
  Boolean $cache_enable                         = $::carbon::params::cache_enable,
  String $cache_ensure                          = $::carbon::params::cache_ensure,
  String $cache_storage_dir                     = $::carbon::params::cache_storage_dir,
  String $cache_local_data_dir                  = $::carbon::params::cache_local_data_dir,
  String $cache_whitelists_dir                  = $::carbon::params::cache_whitelists_dir,
  String $cache_conf_dir                        = $::carbon::params::cache_conf_dir,
  String $cache_log_dir                         = $::carbon::params::cache_log_dir,
  String $cache_pid_dir                         = $::carbon::params::cache_pid_dir,
  Boolean $cache_enable_logrotation             = $::carbon::params::cache_enable_logrotation,
  String $cache_user                            = $::carbon::params::cache_user,
  String $cache_max_cache_size                  = $::carbon::params::cache_max_cache_size,
  Integer $cache_max_updates_per_second         = $::carbon::params::cache_max_updates_per_second,
  Integer $cache_max_creates_per_minute         = $::carbon::params::cache_max_creates_per_minute,
  String $cache_line_receiver_interface         = $::carbon::params::cache_line_receiver_interface,
  Integer $cache_line_receiver_port             = $::carbon::params::cache_line_receiver_port,
  Integer $cache_line_receiver_backlog          = $::carbon::params::cache_line_receiver_backlog,
  Boolean $cache_enable_udp_listener            = $::carbon::params::cache_enable_udp_listener,
  String $cache_udp_receiver_interface          = $::carbon::params::cache_udp_receiver_interface,
  Integer $cache_udp_receiver_port              = $::carbon::params::cache_udp_receiver_port,
  String $cache_pickle_receiver_interface       = $::carbon::params::cache_pickle_receiver_interface,
  Integer $cache_pickle_receiver_port           = $::carbon::params::cache_pickle_receiver_port,
  Boolean $cache_log_listener_connections       = $::carbon::params::cache_log_listener_connections,
  Boolean $cache_use_insecure_unpickler         = $::carbon::params::cache_use_insecure_unpickler,
  String $cache_cache_query_interface           = $::carbon::params::cache_cache_query_interface,
  Integer $cache_cache_query_port               = $::carbon::params::cache_cache_query_port,
  Boolean $cache_use_flow_control               = $::carbon::params::cache_use_flow_control,
  Boolean $cache_log_updates                    = $::carbon::params::cache_log_updates,
  Boolean $cache_log_cache_hits                 = $::carbon::params::cache_log_cache_hits,
  Boolean $cache_log_cache_queue_sorts          = $::carbon::params::cache_log_cache_queue_sorts,
  String $cache_cache_write_strategy            = $::carbon::params::cache_cache_write_strategy,
  Boolean $cache_whisper_autoflush              = $::carbon::params::cache_whisper_autoflush,
  Boolean $cache_whisper_fallocate_create       = $::carbon::params::cache_whisper_fallocate_create,
  Boolean $cache_enable_amqp                    = $::carbon::params::cache_enable_amqp,
  Boolean $cache_amqp_verbose                   = $::carbon::params::cache_amqp_verbose,
  String $cache_amqp_host                       = $::carbon::params::cache_amqp_host,
  Integer $cache_amqp_port                      = $::carbon::params::cache_amqp_port,
  String $cache_amqp_vhost                      = $::carbon::params::cache_amqp_vhost,
  String $cache_amqp_user                       = $::carbon::params::cache_amqp_user,
  String $cache_amqp_password                   = $::carbon::params::cache_amqp_password,
  String $cache_amqp_exchange                   = $::carbon::params::cache_amqp_exchange,
  Boolean $cache_relay_amqp_metric_name_in_body = $::carbon::params::cache_relay_amqp_metric_name_in_body,
  Array $cache_storage_schemas                  = $::carbon::params::cache_storage_schemas,
  ) inherits carbon::params {

  #Validate some.
  if !$cache_line_receiver_interface.is_ip_address {
    raise("cache_line_receiver_interface is not an IP address: ${cache_line_receiver_interface}")
  }
  if !$cache_udp_receiver_interface.is_ip_address {
    raise("cache_udp_receiver_interface is not an IP address: ${cache_udp_receiver_interface}")
  }
  if !$cache_pickle_receiver_interface.is_ip_address {
    raise("cache_pickle_receiver_interface is not an IP address: ${cache_pickle_receiver_interface}")
  }
  if !$cache_cache_query_interface.is_ip_address {
    raise("cache_cache_query_interface is not an IP address : ${cache_cache_query_interface}")
  }

  include ::carbon::install
  include ::carbon::config
  include ::carbon::service
}
