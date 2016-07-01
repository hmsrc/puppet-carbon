class carbon::params {
  #pkg
  $carbon_pkg = 'python-carbon'
  $carbon_pkg_ver = 'installed'
  $carbon_conf_dir = '/etc/carbon'
  $carbon_conf = "${carbon_conf_dir}/carbon.conf"

  $cache_enable                         = true
  $cache_ensure                         = 'running'
  # Cache Config.
  $cache_storage_dir                    = '/var/lib/carbon/'
  $cache_local_data_dir                 = '/var/lib/carbon/whisper/'
  $cache_whitelists_dir                 = '/var/lib/carbon/lists/'
  $cache_conf_dir                       = '/etc/carbon/'
  $cache_log_dir                        = '/var/log/carbon/'
  $cache_pid_dir                        = '/var/run/'
  $cache_enable_logrotation             = false
  $cache_user                           = 'carbon'
  $cache_max_cache_size                 = 'inf'
  $cache_max_updates_per_second         = 500
  $cache_max_creates_per_minute         = 50
  $cache_line_receiver_interface        = '0.0.0.0'
  $cache_line_receiver_port             = 2003
  $cache_line_receiver_backlog          = 1024
  $cache_enable_udp_listener            = false
  $cache_udp_receiver_interface         = '0.0.0.0'
  $cache_udp_receiver_port              = 2003
  $cache_pickle_receiver_interface      = '0.0.0.0'
  $cache_pickle_receiver_port           = 2004
  $cache_log_listener_connections       = true
  $cache_use_insecure_unpickler         = false
  $cache_cache_query_interface          = '0.0.0.0'
  $cache_cache_query_port               = 7002
  $cache_use_flow_control               = true
  $cache_log_updates                    = false
  $cache_log_cache_hits                 = false
  $cache_log_cache_queue_sorts          = true
  $cache_cache_write_strategy           = 'sorted'
  $cache_whisper_autoflush              = false
  $cache_whisper_fallocate_create       = true
  $cache_enable_amqp                    = false
  $cache_amqp_verbose                   = false
  $cache_amqp_host                      = 'localhost'
  $cache_amqp_port                      = 5672
  $cache_amqp_vhost                     = '/'
  $cache_amqp_user                      = 'guest'
  $cache_amqp_password                  = 'guest'
  $cache_amqp_exchange                  = 'graphite'
  $cache_relay_amqp_metric_name_in_body = false
  $cache_storage_schemas                = [
    { name => 'carbon', pattern => '^carbon\.', retentions => '60:90d'},
    { name => default_1min_for_1day, pattern => '.*', retentions => '60s:1d'},
  ]


}
