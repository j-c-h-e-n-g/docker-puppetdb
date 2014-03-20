FROM ubuntu:precise
RUN apt-get update
RUN apt-get install -y wget  ca-certificates

RUN wget --no-check-certificate https://apt.puppetlabs.com/puppetlabs-release-precise.deb
RUN dpkg -i puppetlabs-release-precise.deb
RUN apt-get update
RUN apt-get -y install puppet 
RUN puppet module install puppetlabs/puppetdb
ADD install.pp /tmp/install.pp
RUN puppet apply /tmp/install.pp
