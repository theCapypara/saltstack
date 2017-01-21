networkmanager:
  pkg:
    - installed

NetworkManager:
  service:
    - enabled
    - require:
      - pkg: networkmanager