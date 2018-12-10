gimp:
  pkg.installed

/etc/gimp/2.0/menurc:
  file.managed:
    - source: salt://menurc

restartgimp:
  service.running:
    - name: gimp
    - watch:
      - file: /etc/gimp/2.0/menurc
