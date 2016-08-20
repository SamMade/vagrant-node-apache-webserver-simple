apache:
  pkg.installed:
    - name: httpd
  service.running:
    - name: httpd
    - reload: True
    - enable: True
    - require:
      - pkg: httpd
    - watch:
      - file: /etc/httpd/conf.d/web-app.conf

/etc/httpd/conf.d/web-app.conf:
  file.managed:
    - source: salt://webserver/vhost.conf
    - require:
      - pkg: httpd

{% if 1 == salt['cmd.retcode']('test -f /vagrant/web-app/dist') %}
/var/www/web-app:
  file.symlink:
    - target: /vagrant/web-app/dist
{% endif %}

mod_ssl:
  pkg.installed:
    - watch_in:
      - service: httpd
