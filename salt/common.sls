# vim: set ft=yaml ts=2 ai sw=2 et cul cul :
install_common_packages:
  pkg.installed:
    - pkgs:
      - rsync
      - vim-data
      - curl
Configure UK Time Zone on Salt Minions:
  timezone.system:
    - utc: True
    - name: Europe/London