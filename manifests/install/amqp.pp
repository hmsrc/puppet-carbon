class carbon::install::amqp (
  $amqp_pip_pkgs = $::carbon_amqp_pip_pkgs
  ) {
  python::pip {$amqp_pip_pkgs: }
}
