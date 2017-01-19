sudo:
  pkg:
    - installed

sudo-config:
  file.replace:
    - name: /etc/sudoers
    - pattern: '# %sudo ALL=(ALL) ALL'
    - repl: '%sudo ALL=(ALL) ALL'
    - require:
      - pkg: sudo