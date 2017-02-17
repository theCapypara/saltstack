php:
  pkg:
    - installed

php-fpm:
  pkg:
    - installed
  service:
    - enabled
    - require:
      - pkg: php-fpm

php-gd:
  pkg:
    - installed

php-geoip:
  pkg:
    - installed

php-imagick:
  pkg:
    - installed

php-intl:
  pkg:
    - installed

php-mcrypt:
  pkg:
    - installed

xdebug:
  pkg:
    - installed

php-xsl:
  pkg:
    - installed

composer:
  pkg:
    - installed

php configuration:
  file.recurse:
    - name: /etc/php
    - source: salt://development/php

/run/phpCC-fpm:
  file.symlink:
    - target: /run/php-fpm