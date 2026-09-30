#!/bin/bash

set -e

echo "================================"
echo "       Building OurDistro"
echo "================================"

sudo lb clean --purge

lb config \
    --distribution trixie \
    --parent-distribution trixie \
    --parent-debian-installer-distribution trixie \
    --architectures amd64 \
    --archive-areas "main contrib non-free non-free-firmware" \
    --mirror-bootstrap "http://deb.debian.org/debian" \
    --mirror-chroot "http://deb.debian.org/debian" \
    --mirror-chroot-security "http://deb.debian.org/debian-security" \
    --mirror-binary "http://deb.debian.org/debian" \
    --mirror-binary-security "http://deb.debian.org/debian-security" \
    --debian-installer live \
    --win32-loader false \
    --binary-images iso \

echo ""
echo "Debian Live configuration complete."
echo "Starting build..."

sudo lb build
