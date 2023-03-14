# vim: set ft=yaml ts=2 ai sw=2 et cul cul :
Install_common_packages:
  pkg.installed:
    - pkgs:
      - rsync
      - vim-data
      - curl
Configure CH Time Zone on Salt Minions:
  timezone.system:
    - utc: True
    - name: Europe/Zurich