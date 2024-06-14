# This Puppet script is a response to an issue identified using strace to debug a 500 error from Apache, specifically within a WordPress installation
# The script automates the fix by using the sed command to replace 'phpp' with 'php' in the 'wp-settings.php' file
# This solution is more scalable and maintainable than a Bash script

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
