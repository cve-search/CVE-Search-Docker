#!/bin/bash

echo "Running install script..."

openssl req -new -newkey rsa:4096 -days 3650 -nodes -x509 -subj "/C=NA/ST=CVE_SEARCH/L=CVE_SEARCH/O=CVE_SEARCH/CN=CVE_SEARCH" -keyout /app/etc/certificate.key -out /app/etc/certificate.crt
