{% if salt['cmd.run']('hostname') != grains.id %}

network.mod_hostname:
  module.run:
    - hostname: {{ grains.id }}

{% endif %}
