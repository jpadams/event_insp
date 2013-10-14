class event_insp::break {
  
  require event_insp::mongo

  package { 'sl':
    ensure => installed,
    before => File['/tmp/bar'],
    noop   => true,
  }

  user { 'gadget':
    ensure     => present,
    managehome => true,
    require    => File['/tmp/bar'],
  }

  file { '/tmp/bar':
    ensure  => file,
    content => "bar flie\n",
  }

  if $::osfamily == 'RedHat' {#
    service { 'ersatz':
      ensure => running,
      enable => true,
      before => Package['sl'],
    }
  }#

}
