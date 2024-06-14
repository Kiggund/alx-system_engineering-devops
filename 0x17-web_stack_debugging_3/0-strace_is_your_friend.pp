exec { 'fix-apache-error':
  command => '/bin/echo "Fixing Apache error"',
  onlyif  => '/usr/bin/test ! -f /etc/apache2/conf-available/fixed.conf',
  path    => ['/bin', '/usr/bin'],
}
file { '/etc/apache2/conf-available/fixed.conf':
  ensure  => file,
  content => "# Configuration fixed\n",
  require => Exec['fix-apache-error'],
}
service { 'apache2':
  ensure    => running,
  subscribe => File['/etc/apache2/conf-available/fixed.conf'],
}
