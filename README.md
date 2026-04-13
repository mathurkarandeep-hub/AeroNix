<div align="center">

<h1>AeroNix</h1>
<p><strong>A lightweight, custom Linux distribution built for simplicity and performance.</strong></p>

![Version](https://img.shields.io/badge/version-3.4.26%20LTS-blue)
![Base](https://img.shields.io/badge/base-Ubuntu%2024.04%20LTS-orange)
![Kernel](https://img.shields.io/badge/kernel-6.17.0--14--generic-green)
![License](https://img.shields.io/badge/license-GPL--3.0-lightgrey)
![Status](https://img.shields.io/badge/status-active-brightgreen)

</div>

---

## What is AeroNix?

AeroNix is a custom Linux distribution built from scratch on top of Ubuntu 24.04 LTS. It was created as a deep-dive personal project by [Karandeep Mathur](https://github.com/mathurkarandeep-hub) — a Linux professional with 17 years of experience — to explore OS internals, boot processes, and filesystem architecture at a fundamental level.

> "Built for simplicity. Powered by you."

---

## Screenshots

> _Screenshots coming soon — boot screen, neofetch output, desktop environment_

---

## Features

- Based on **Ubuntu 24.04 LTS (Noble Numbat)**
- Custom **AeroNix** branding and OS identity
- Lightweight and bloat-free filesystem
- Pre-configured **SSH server** out of the box
- Custom **GRUB bootloader** configuration
- Full developer attribution baked into OS identity
- Bootable **ISO** for live session or installation

---

## System Requirements

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| CPU | 64-bit dual-core, 1 GHz | 64-bit dual-core, 2 GHz+ |
| RAM | 2 GB | 4 GB |
| Storage | 8 GB | 20 GB SSD |
| Display | 1024×768 | 1366×768 or higher |
| Boot | BIOS or UEFI | BIOS recommended |

---

## Download

| File | Size | Checksum |
|------|------|----------|
| `aeronix-3.4.26-final.iso` | ~3.5 GB | See `SHA256SUMS` |

> Download links will be added when the release is published.

---

## Getting Started

### Boot from ISO

1. Download the ISO from the Releases section
2. Create a bootable USB using [Rufus](https://rufus.ie) (Windows) or `dd` (Linux)
3. Boot from USB and select **"Try or Install AeroNix"**

### Create bootable USB (Linux)

```bash
sudo dd if=aeronix-3.4.26-final.iso of=/dev/sdX bs=4M status=progress
sync
```

### Run in VirtualBox

1. Create a new VM — Type: Linux, Version: Ubuntu 64-bit
2. RAM: 3072 MB, Storage: 20 GB
3. Display: VBoxVGA, 128MB video memory
4. Attach ISO as optical drive
5. Boot order: Optical first

---

## OS Identity

```
NAME="AeroNix"
VERSION="3.4.26 LTS"
ID=aeronix
PRETTY_NAME="AeroNix 3.4.26 LTS amd64"
HOME_URL="https://github.com/mathurkarandeep-hub/AeroNix"
SUPPORT_URL="mailto:mathurkarandeep@gmail.com"
```

---

## Build Tools Used

| Tool | Purpose |
|------|---------|
| Cubic | ISO customization and chroot environment |
| mksquashfs | Filesystem compression |
| xorriso | ISO generation and boot configuration |
| GRUB | Bootloader configuration |
| LightDM | Display manager |
| XFCE | Desktop environment |

---

## Project Structure

```
AeroNix/
├── README.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── LICENSE
├── SHA256SUMS
├── docs/
│   ├── build-guide.md
│   ├── troubleshooting.md
│   └── screenshots/
└── scripts/
    ├── build.sh
    └── verify-iso.sh
```

---

## Roadmap

- [x] Custom OS identity and branding
- [x] GRUB bootloader configuration
- [x] SSH pre-configured
- [x] Bootable ISO generation
- [ ] XFCE desktop environment (GUI)
- [ ] Custom wallpaper and logo
- [ ] Calamares graphical installer
- [ ] DistroWatch submission
- [ ] USB pre-loaded version

---

## Developer

**Karandeep Mathur**
- GitHub: [@mathurkarandeep-hub](https://github.com/mathurkarandeep-hub)
- Email: mathurkarandeep@gmail.com
- LinkedIn: _(add your LinkedIn URL)_

> Built with 17 years of Linux experience and a lot of late nights.

---

## License

AeroNix is distributed under the [GNU General Public License v3.0](LICENSE).  
Ubuntu base components retain their original licenses.  
Source code for all GPL components is available upon request.

---

## Contributing

Contributions, bug reports, and feature requests are welcome!  
Please read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting a pull request.

---

<div align="center">
<sub>AeroNix — Built for simplicity. Powered by you.</sub>
</div>
