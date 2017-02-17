mysql56:
  pkg:
    - installed

libmysqlclient56:
  pkg:
    - installed

mysql-clients56:
  pkg:
    - installed
    
mysqld:
  service:
    - enabled
    - require:
      - pkg: mysql56