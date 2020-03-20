class apache::params {

#specify a servername for your virtual host configuration files
if($::fqdn) {
        $servername = $::fqdn
} else {
        $servername = $::hostname
$document_root = "/var/www/websites"

case $::osfamily {
       'Redhat': {
                $package_name
       }

}
