#!/bin/bash

set -e

echo "================================"
echo "       Building OurDistro"
echo "================================"

lb clean --purge

lb config \
    --distribution stable \
    --architectures amd64 \
    --archive-areas "main contrib non-free non-free-firmware" \
    --mirror-bootstrap "http://deb.debian.org/debian" \
    --mirror-chroot "http://deb.debian.org/debian" \
    --mirror-binary "http://deb.debian.org/debian" \
    --mirror-binary-security "http://security.debian.org/debian-security" \
    --debian-installer live

echo ""
echo "Debian Live configuration complete."
echo "Starting build..."

sudo lb build