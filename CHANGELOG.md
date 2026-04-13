# Changelog

All notable changes to AeroNix will be documented in this file.

## [3.4.26 LTS] - 2026-04-10

### Added
- Initial public release of AeroNix
- Custom OS identity (`/etc/os-release`, `/etc/issue`, `/etc/hostname`)
- GRUB bootloader with AeroNix branded menu entries
- SSH server pre-installed and enabled
- Custom MOTD welcome message with developer attribution
- neofetch profile showing AeroNix branding
- Lightweight filesystem based on Ubuntu 24.04 LTS
- Plymouth boot splash disabled for compatibility
- `ubuntu` live user with sudo privileges

### Fixed
- Plymouth crash causing initramfs loop on boot
- GRUB BIOS boot configuration
- Squashfs symlink issues causing missing filesystem errors

### Known Issues
- XFCE desktop GUI currently in progress
- VMSVGA graphics controller causes black screen in VirtualBox (use VBoxVGA)
- EFI boot mode not fully tested (use BIOS/legacy mode)
