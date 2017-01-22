marco:
  user.present:
    - fullname: Marco Köpcke
    - shell: /usr/bin/fish
    - home: /home/marco
    - groups:
      - sudo
      - users
    - require:
      - group_sudo

ssh_directory:
  file.directory:
    - name: /home/marco/.ssh
    - require:
      - marco

temp_ssh_key:
  file.copy:
    - name: /home/marco/.ssh/id_rsa
    - user: marco
    - group: users
    - mode: 600
    - source: /root/.ssh/id_rsa
    - require:
      - ssh_directory

temp_ssh_key_pub:
  file.copy:
    - name: /home/marco/.ssh/id_rsa.pub
    - user: marco
    - group: users
    - mode: 600
    - source: /root/.ssh/id_rsa.pub
    - require:
      - ssh_directory

temp_ssh_key_known_hosts:
  file.copy:
    - name: /home/marco/.ssh/known_hosts
    - user: marco
    - group: users
    - mode: 600
    - source: /root/.ssh/known_hosts
    - require:
      - ssh_directory

marco_dotfiles:
  git.latest:
    - name: gitolite@parakoopa.de:dotfiles
    - target: /home/marco
    - user: marco
    - require:
      - marco
      - temp_ssh_key
      - temp_ssh_key_pub
      - temp_ssh_key_known_hosts

apply_dotfiles:
  cmd.run:
    - cwd: /home/marco/dotfiles
    - name: /home/marco/dotfiles/apply.sh
    - runas: marco
    - require:
      - marco_dotfiles