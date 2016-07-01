class carbon::install::amqp (
  $amqp_pip_pkgs = $::carbon_amqp_pip_pkgs
  ) {
  $amqp_pip_pkgs.each |String $pkg| {
    python::pip { $pkg:
      pkgname => $pkg,
      ensure  => present,
    }
  }
}
