self_sign:
  pkg.installed:
    - names:
      - pyOpenSSL

admin-conf:
  module.run:
    - name: tls.create_self_signed_cert
    - tls_dir: 'web-app'
    - require:
      - pkg: self_sign