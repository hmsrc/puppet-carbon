class carbon::install::amqp (
  $amqp_pkgs = $::carbon::amqp_pkgs
  ) {
  package { $amqp_pkgs:
    ensure => installed,
  }
}
