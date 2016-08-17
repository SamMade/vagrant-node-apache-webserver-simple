# AngularJS Scaffold

Creates a VERY simple vagrant setup with apache and node installed.  Maps the default 80 and 443 ports to 8001 and 8443 of the host computer. 

Also to create a self-signed cert, in VM call
sudo salt-call tls.create_self_signed_cert tls_dir='web-app'

VHOST file needs to be changed accordingly if using folder not called 'web-app'