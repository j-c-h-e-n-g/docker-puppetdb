## Notes

my first trusted build .. this doesn't do that much other than install open source `puppetdb` locally along with the default db, `postgresql`.

On your puppetmaster,  you should have something like: 

    class { 'puppetdb::master::config':
      puppetdb_server => 'my.host.name',
      puppetdb_port   => 8081,
    }

Read up on the PuppetForge docs for more info: 
http://forge.puppetlabs.com/puppetlabs/puppetdb


