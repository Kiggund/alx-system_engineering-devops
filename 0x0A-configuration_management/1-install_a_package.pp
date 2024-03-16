# Install Flask from pip3 with the specified version

 exec { 'puppet-lint':
  command => '/usr/bin/apt-get -y install puppet-lint -v 2.5.0',
}
