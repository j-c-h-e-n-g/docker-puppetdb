## Notes

This doesn't do that much other than:

*   install open source `puppetdb` locally 
*   install the default db, `postgresql`

You probably want a puppetmaster to use this, so you should have something like: 

    class { 'puppetdb::master::config':
      puppetdb_server => 'my.puppetdb.host.name',
      puppetdb_port   => 8081,
    }

Read up on the PuppetForge docs for more info: 
http://forge.puppetlabs.com/puppetlabs/puppetdb


