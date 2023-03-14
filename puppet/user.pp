# vim: set ft=ruby ts=2 sw=2 et ai :
user { 'frodo':
  ensure  => 'present',
  comment => 'Frodo Baggins',
  groups  => ['sudo'],
  home    => '/home/frodo',
  shell   => '/bin/bash',
}