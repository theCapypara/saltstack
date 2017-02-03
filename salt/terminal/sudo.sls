sudo:
  pkg:
    - installed

sudo-config:
  file.replace:
    - name: /etc/sudoers
    - append_if_not_found: True
    - pattern: '^# %sudo ALL=(ALL) ALL'
    - repl: '%sudo ALL=(ALL) ALL'
    - require:
      - pkg: sudo
