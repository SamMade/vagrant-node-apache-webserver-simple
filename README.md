# Simple Vagrant (node + apache)

Creates a VERY simple vagrant setup with CENTOS 

## Salt Configuration

Installs
 * Apache (vhost assumes folder called 'web-app')
 * Node
 * NPM
 * Self Signed Cert
 * Fontconfig (PhantomJS dependency)  

Maps the default 80 and 443 ports to 8001 and 8443 of the host computer. 
