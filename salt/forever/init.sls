/etc/default/dcx:
  file.managed:
    - source: salt://forever/env_vars/dcx-{{ grains['ep_env'] }}

#npm:
#  pkg.installed

/etc/pki/rpm-gpg/NODESOURCE-GPG-SIGNING-KEY-EL:
  file.managed:
    - source: salt://forever/repos/NODESOURCE-GPG-SIGNING-KEY-EL

/etc/yum.repos.d/nodesource-el.repo:
  file.managed:
    - source: salt://forever/repos/nodesource-el.repo

nodejs:
  pkg.installed

forever:
  npm.installed

foreverwww-init:
  file.managed:
    - name: /etc/init.d/foreverwww
    - source: salt://forever/forever-init/foreverwww.jinja
    - template: jinja
    - mode: 755

foreverclient-init:
  file.managed:
    - name: /etc/init.d/foreverclient
    - source: salt://forever/forever-init/foreverclient.jinja
    - template: jinja
    - mode: 755

foreverwww-service:
  service.running:
    - name: foreverwww
    - enable: True

foreverclient-service:
  service.running:
    - name: foreverclient
    - enable: True
