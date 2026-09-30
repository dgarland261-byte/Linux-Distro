#!/bin/bash

set -e

echo "================================"
echo "       Building OurDistro"
echo "================================"

lb clean

lb config \
    --distribution stable \
    --architectures amd64 \
    --archive-areas "main contrib non-free non-free-firmware" \
    --debian-installer live

echo ""
echo "Debian Live has been configured."
echo "Run ./build.sh again after we add our packages."