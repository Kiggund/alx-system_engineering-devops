# Create a Puppet manifest to kill the process named "killmenow"

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
}
