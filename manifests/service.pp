class apache::service ($service_name = $apache::params::service_name)
{
        service { 'apache':
                name    => $service_name,
                enable  => false,
                ensure  => stopped,
                require => Package['apache'],

        }
}
