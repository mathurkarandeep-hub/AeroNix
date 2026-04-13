#!/bin/bash
# AeroNix ISO Verification Script
# Usage: ./verify-iso.sh /path/to/aeronix.iso

ISO=$1

if [ -z "$ISO" ]; then
  echo "Usage: $0 /path/to/aeronix.iso"
  exit 1
fi

echo "=== AeroNix ISO Verification ==="
echo ""

echo "[1] Checking ISO file..."
ls -lh "$ISO"
echo ""

echo "[2] MD5 checksum..."
md5sum "$ISO"
echo ""

echo "[3] SHA256 checksum..."
sha256sum "$ISO"
echo ""

echo "[4] ISO structure..."
isoinfo -d -i "$ISO"
echo ""

echo "[5] Mounting ISO..."
sudo mkdir -p /mnt/aeronix-test
sudo mount -o loop "$ISO" /mnt/aeronix-test

echo "[6] Casper contents..."
ls -lh /mnt/aeronix-test/casper/

echo "[7] GRUB config..."
cat /mnt/aeronix-test/boot/grub/grub.cfg

echo "[8] Unmounting..."
sudo umount /mnt/aeronix-test

echo ""
echo "=== Verification Complete ==="
