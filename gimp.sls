gimp:
  pkg.installed

/home/xubuntu/.gimp-2.8/menurc:
  file.managed:
    - source: salt://menurc

/home/xubuntu/.gimp-2.8/themes:
  file.directory:
    - source: salt://themes
