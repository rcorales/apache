class apache (
        $package_name  = $apache::params::package_name,
        $service_name  = $apache::params::service_name,
        $vhost_dir     = $apache::params::vhost_dir,
        $conf_dir      = $apache::params::conf_dir,
        $document_root = $apache::params::document_root,
        $server_name   = $apache::params::servername,
        $log_dir       = $apache::params::log_dir
) inherits apache::params {

include apache::package
include apache::service

file { $document_root:
        ensure  => directory,
        recurse => true,
}

file { $log_dir:
        ensure  => directory,
        recurse => true,
}


}
