class carbon::install (
  $carbon_pkg     = $::carbon::carbon_pkg,
  $carbon_pkg_ver = $::carbon::carbon_pkg_ver,
  ) {
    package {$carbon_pkg:
      ensure => $carbon_pkg_ver,
    }
  }
