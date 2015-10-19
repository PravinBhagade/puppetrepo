class ntp {

    $package_name = 'ntp'
    $service_name = 'ntpd'
    $config_file = '/etc/ntp.conf'
    server => {
        '0.rhel.pool.ntp.org',
        '1.rhel.pool.ntp.org',
        '2.rhel.pool.ntp.org',
}
}
   service {'ntpd';
      ensure => 'present',
      enable => true,
     notify  => Service{ntpd}
}
 }
file { $config_file:
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    notify  => Service{ntpd}
  }

