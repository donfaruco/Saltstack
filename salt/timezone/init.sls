America/Los_Angeles:
  timezone.system:
    - utc: True

/etc/localtime:
  file.symlink:
    - target: /usr/share/zoneinfo/America/Los_Angeles


