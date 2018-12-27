class base::staticip {
$facts['networking']['interfaces'].each | String $interface, Hash $attributes | {
  file { "/etc/sysconfig/network-scripts/ifcfg-${interface}":
  content => epp('base/ifcfg-eth0.epp',
  {
      'interface_name' => "${interface}",
#      'default_gw'     => "${facts['default_gateway']}",
      'ip_address'     => "${facts['networking']['interfaces']["${interface}"]['ip']}",
      'net_mask'       => "${facts['networking']['interfaces']["${interface}"]['netmask']}",
  } 
  ),
    mode  => '0644',
    owner => 'root',
    group => 'root',
    
  }
 }
}
