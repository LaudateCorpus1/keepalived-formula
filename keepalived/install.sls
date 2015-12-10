{% if grains.os == "Ubuntu" %}

python-software-properties:
  pkg.installed

keepalived-ppa:
  pkgrepo.managed:
    - humanname: Keepalived PPA
    - ppa: keepalived/stable
    - require:
      - pkg: python-software-properties

{% endif %}

keepalived.install:
  pkg.installed:
    - name: keepalived
