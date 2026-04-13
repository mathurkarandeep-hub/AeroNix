# AeroNix Troubleshooting Guide

## Boot Issues

### Plymouth crash / initramfs loop
**Symptom:** Boot drops to `(initramfs)` prompt  
**Fix:** Add `plymouth.enable=0 fsck.mode=skip` to GRUB boot parameters

### Black screen in VirtualBox
**Symptom:** Screen goes black after login prompt  
**Fix:**
- Change Graphics Controller to **VBoxVGA** (not VMSVGA)
- Disable EFI in System → Motherboard
- Set Video Memory to 128MB
- Disable 3D Acceleration

### GRUB hangs at boot
**Symptom:** Shows "GRUB" text then freezes  
**Fix:** Rebuild ISO using correct xorriso boot parameters with `eltorito.img`

### Missing squashfs error
**Symptom:** `minimal.standard.squashfs doesn't exist`  
**Fix:** Symlinks don't survive ISO repacking — replace with real file copies

## SSH Issues

### Cannot connect via SSH
```bash
sudo systemctl start ssh
sudo systemctl enable ssh
hostname -I  # get IP address
```

### NAT IP not reachable from host
- Change VirtualBox network from NAT to Bridged Adapter
- Run `sudo dhclient enp0s3` to get new IP

## Verification Commands

Run these inside AeroNix to verify branding:
```bash
cat /etc/os-release
lsb_release -a
hostname
neofetch
uname -a
```
