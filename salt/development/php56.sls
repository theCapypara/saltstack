php56:
  pkg:
    - installed

php56-fpm:
  pkg:
    - installed
  service:
    - enabled
    - require:
      - pkg: php56-fpm

php56-gd:
  pkg:
    - installed

php56-geoip:
  pkg:
    - installed

php56-imagick:
  pkg:
    - installed

php56-intl:
  pkg:
    - installed

php56-mcrypt:
  pkg:
    - installed

php56-xdebug:
  pkg:
    - installed

php56-xsl:
  pkg:
    - installed

php56 configuration:
  file.recurse:
    - name: /etc/php56
    - source: salt://development/php56