## Notes

If you're just poking around to see how puppetdb works in docker, you should look at: 
https://registry.hub.docker.com/u/iverberk/puppetdb/

... and read his blog post: 
http://www.ivoverberk.nl/puppetmaster-puppetdb-and-foreman-installation-with-puppet/

That said, this will: 

*   install open source `puppetdb` locally - in other words do a `puppet apply` (aka masterless puppet) to install puppetdb
*   install the default db, `postgresql` - this is implicitly set from puppetlabs/puppetdb (http://forge.puppetlabs.com/puppetlabs/puppetdb)

This does NOT install a puppetmaster. For that, you want to add something like this: 

    class { 'puppetdb::master::config':
      puppetdb_server => 'my.puppetdb.host.name',
      puppetdb_port   => 8081,
    }

