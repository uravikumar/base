class base::packages {
  package { ['mlocate','vim']:
    ensure => latest,
  }
}
