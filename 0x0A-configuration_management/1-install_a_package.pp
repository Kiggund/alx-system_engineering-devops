# Install Flask from pip3 with the specified version
package { 'flask':
  ensure   => '2.1.0',   # Set the desired version of Flask
  provider => 'pip3',    # Use pip3 as the package provider
}
