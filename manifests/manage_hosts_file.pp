#class base::copy_hosts_file {
#  file { '/etc/hosts':
#    source => 'puppet:///modules/base/hosts',
#  }
#}

class base::manage_hosts_file {
  host { 'puppetmaster':
    ensure 	 => present,
    ip     	 => '192.168.0.105',
    host_aliases => 'puppetmaster.example.com',
  }

  host { 'agent1':
    ensure 	 => present,
    ip     	 => '10.0.2.15',
    host_aliases => 'agent1.example.com',
  }
    
  host { 'agent2':
    ensure 	 => present,
    ip     	 => '10.0.2.5',
    host_aliases => 'agent2.example.com',
  }

  host { 'agent3':
    ensure 	 => present,
    ip     	 => '10.0.2.6',
    host_aliases => 'agent3.example.com',
  }
  
  host { 'agent4':
    ensure 	 => present,
    ip     	 => '10.0.2.7',
    host_aliases => 'agent4.example.com',
  }
}
