class event_insp::mongo {

  case $::osfamily {
    'RedHat': { $ensure = 'installed' }
    #'Debian': { $ensure = 'installed' }
    default:  { $ensure = '9.9.9.9' }
  }
  package { 'mongodb':
    ensure => $ensure,
  }

}
