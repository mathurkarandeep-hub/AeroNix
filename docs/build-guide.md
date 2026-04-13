# AeroNix Build Guide

This guide explains how AeroNix was built from scratch.

## Prerequisites

- Ubuntu 24.04 LTS VM (60GB disk, 4GB RAM, 2 cores)
- VirtualBox on Windows host
- Cubic ISO customizer
- Tools: xorriso, mksquashfs, squashfs-tools

## Build Steps

### 1. Set up Cubic
```bash
sudo apt-add-repository ppa:cubic-wizard/release
sudo apt install cubic
```

### 2. Customize filesystem in chroot
- Remove bloat packages
- Add custom branding to /etc/os-release
- Create ubuntu live user
- Configure LightDM autologin
- Install XFCE desktop environment

### 3. Repack squashfs
```bash
sudo mksquashfs /path/to/custom-root \
  /path/to/casper/minimal.squashfs \
  -comp gzip -noappend -no-progress
```

### 4. Generate ISO
```bash
sudo xorriso -as mkisofs \
  -r -V "AeroNix 3.4.26 LTS" \
  -o aeronix-3.4.26-final.iso \
  [boot flags] \
  /path/to/iso-contents/
```

## Troubleshooting

See [troubleshooting.md](troubleshooting.md) for common issues.
