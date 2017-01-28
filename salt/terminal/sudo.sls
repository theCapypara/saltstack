sudo:
  pkg:
    - installed

sudo-config:
  file.replace:
    - name: /etc/sudoers
    - pattern: '# %sudo ALL'
    - repl: '%sudo ALL'
    - require:
      - pkg: sudo