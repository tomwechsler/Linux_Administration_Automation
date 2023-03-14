# vim: set ft=ruby ts=2 sw=2 et ai :
user { 'Josy':
  ensure  => 'present',
  comment => 'Josy Cat',
  groups  => ['sudo'],
  home    => '/home/josy',
  shell   => '/bin/bash',
}