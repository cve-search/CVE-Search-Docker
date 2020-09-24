#!/bin/bash

echo "Running install script..."

cat /install/db_dump_part* > /install/db_dump.7z

rm -rf /install/db_dump_part*

7z x /install/db_dump.7z

mongorestore --gzip -v /install/dump

rm -rf /install/db_dump.7z
rm -rf /install/dump
