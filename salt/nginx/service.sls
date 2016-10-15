include:
  - nginx.proxy

nginx-service:
  service.running:
    - name: nginx
    - enable: True
    - restart: True
    - require:
      - pkg: nginx
    - watch:
      - file: /etc/nginx/conf.d/dcx.conf
