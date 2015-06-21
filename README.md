## Notes

This doesn't do that much other than:

*   install open source `puppetdb` locally - in other words do a `puppet apply` (aka masterless puppet) to install puppetdb
*   install the default db, `postgresql` - this is implicitly set from puppetlabs/puppetdb (http://forge.puppetlabs.com/puppetlabs/puppetdb)

This does NOT install a puppetmaster. For that, you want to add something like this: 

    class { 'puppetdb::master::config':
      puppetdb_server => 'my.puppetdb.host.name',
      puppetdb_port   => 8081,
    }
