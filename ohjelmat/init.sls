gimp:
  pkg.installed

/home/xubuntu/.gimp-2.8/menurc:
  file.managed:
    - source: salt://ohjelmat/menurc

/usr/share/gimp/2.0/themes/Gimp-CC-Theme-Darker:
  file.recurse:
    - source: salt://ohjelmat/Gimp-CC-Theme-Darker

/usr/share/gimp/2.0/themes/Gimp-CC-Theme-Darkest:
  file.recurse:
    - source: salt://ohjelmat/Gimp-CC-Theme-Darkest

/usr/share/gimp/2.0/themes/Gimp-CC-Theme-Gray:
  file.recurse:
    - source: salt://ohjelmat/Gimp-CC-Theme-Gray

/usr/share/gimp/2.0/themes/Gimp-CC-Theme-Light:
  file.recurse:
    - source: salt://ohjelmat/Gimp-CC-Theme-Light

/usr/share/gimp/2.0/themes/Gimp-CC-Theme-Lighter:
  file.recurse:
    - source: salt://ohjelmat/Gimp-CC-Theme-Lighter


