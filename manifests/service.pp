class carbon::service (
  $carbon_conf  = $::carbon::carbon_conf,
  $cache_enable = $::caron::cache_enable,
  $cache_ensure = $::carbon::cache_ensure,
  ) {

    service{'carbon-cache':
      ensure    => $cache_ensure,
      enable    => $cache_enable,
      subscribe => Class['::carbon::config'],
    }

    #relay
    #aggregator

  }
