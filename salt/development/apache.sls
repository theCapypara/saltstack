apache:
  pkg:
    - installed

mod_rpaf:
  pkg:
    - installed
    
httpd:
  service:
    - enabled
    - require:
      - pkg: apache

apache configuration:
  file.recurse:
    - name: /etc/httpd
    - source: salt://development/apache