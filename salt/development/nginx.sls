nginx:
  pkg:
    - installed
  service:
    - enabled
    - require:
      - pkg: nginx

nginx configuration:
  file.recurse:
    - name: /etc/nginx
    - source: salt://development/nginx