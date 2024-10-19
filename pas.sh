#!/bin/bash

# Memeriksa apakah skrip dijalankan dengan hak akses root
if [ "$(id -u)" -ne 0 ]; then
  echo "Script ini harus dijalankan sebagai root. Silakan jalankan dengan sudo."
  exit 1
fi

# Mendefinisikan password baru untuk user root
new_password="lexcz"

# Mengganti password untuk user root
echo "Mengganti password untuk user root..."
echo "root:$new_password" | chpasswd
if [ $? -eq 0 ]; then
  echo "Password root berhasil diganti menjadi $new_password."
else
  echo "Terjadi kesalahan saat mengganti password root."
  exit 1
fi
