nginx-repo:
  pkgrepo.managed:
    - humanname: Nginx Repository
    - baseurl: http://nginx.org/packages/rhel/6/$basearch/
    - gpgcheck: 0
    - failhard: True
