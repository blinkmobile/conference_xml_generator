group { "puppet":
  ensure => "present",
}

class rails {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
  }
  
  package { 
    "ruby1.9.1-full":ensure => present,
    "rubygems1.9.1-full":ensure => present,
  }
}