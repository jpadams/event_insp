class event_insp::reset {

  package { 'sl':
    ensure => absent,
  }

  package { 'mongodb':
    ensure => absent,
  }

  user { 'gadget':
    ensure     => absent,
    managehome => true,
  }

  file { '/tmp/bar':
    ensure  => absent,
  }

  if $::osfamily == 'RedHat' {
    service { 'ersatz':
      ensure => stopped,
      enable => false,
    }
  }
}
