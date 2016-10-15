/etc/nginx/conf.d/dcx.conf:
  file.managed:
    - source: salt://nginx/files/dcx.conf.jinja
    - template: jinja
