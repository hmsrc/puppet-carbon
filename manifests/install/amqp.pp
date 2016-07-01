class carbon::install::amqp (
  $amqp_pkgs = $::carbon::amqp_pkgs,
  $amqp_pip_pkgs = $::carbon_amqp_pip_pkgs
  ) {
  package { $amqp_pkgs:
    ensure => installed,
  }
  python::pip {$amqp_pip_pkgs: }
}
