libvirt:
  pkg:
    - installed

qemu:
  pkg:
    - installed

libvirtd:
  service:
    - enabled
    - require:
        - pkg: libvirt

virt-manager:
  pkg:
    - installed
