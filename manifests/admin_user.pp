class base::admin_user {
  user { 'admin':
    ensure     => present,
    uid        => '1001',
    managehome => true,
    shell      => '/bin/bash',
  }
  
  file { '/home/admin/.ssh': 
    ensure => directory,
    mode   => '0700',
    owner  => 'admin', 
    group  => 'admin',
  }

  ssh_authorized_key { "admin@${facts['hostname']}":
    user => 'admin',
    type => 'ssh-rsa',
    key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA2TZj00bC0owtKDpzO26XTHzkoCFHqbE9ANtkISx9wOoUBhY6qB74oRXnzCJQAiqoVQxzTP4K5iBukPJQE//C4ZHHqr9P85FafsRpgFs77g5Da7W1VIBm/JSD6LB1NP4tFfz7lB+yDfeLcxXkNcBoUz5l9n3NcR541Van6FEkPzWbIRocOXK0w63rFsSLIEXoCfJUgiVugom63zGJQGEcxBfANo71xjA3KnSiTwpT8/lmLtaDABjfjjvSUSZfr4He1/1m9/DH4dMJocMcRivb3iTkEtsJbjwG59AKNx58Vsqf0g9+pIVViurFgIwWv0Up3BFGmj1gc+YfGgapQtZ2CQ==',
    require => User['admin'],
  }
}
