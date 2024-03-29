#!/bin/bash

if ! [ -f "/data/data/com.termux/files/usr/bin/sudo" ] || ! [ -f "/data/data/com.termux/files/usr/bin/python3-pip" ]; then
    cp "./Files/bin/sudo" "/data/data/com.termux/files/usr/bin/sudo"
    cp "./Files/bin/python3-pip" "/data/data/com.termux/files/usr/bin/python3-pip"
    cp "./Files/bin/pkey" "/data/data/com.termux/files/usr/bin/pkey"
    cp "./Files/bin/vkey" "/data/data/com.termux/files/usr/bin/vkey"
    chmod +x "/data/data/com.termux/files/usr/bin/sudo" "/data/data/com.termux/files/usr/bin/python3-pip"
    loading "Setting up pkg list..." &
    yes y | pkg update -y >/dev/null 2>&1
    end_loading "Setting up pkg list..."
fi
