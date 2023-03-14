# vim: set ft=ruby ts=2 sw=2 et ai :
service { 'sshd':
  ensure => 'running',
  enable => true,
 }
file_line { 'root_ssh':
  path => '/etc/ssh/sshd_config',
  ensure => 'present',
  line => 'PermitRootLogin no',
  match => '^PermitRootLogin',
  notify => Service['sshd'],
 }