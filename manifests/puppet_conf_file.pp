class base::puppet_conf_file {
  file { '/etc/puppetlabs/puppet/puppet.conf':
    source => 'puppet:///modules/base/puppet.conf',
  }
}
