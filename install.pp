# defaults to postgresql for backend db
class { 'puppetdb':
  listen_address => "$ipaddress_eth0"
}



