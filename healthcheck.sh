#!/bin/sh
if mysqladmin ping -h localhost -u app_user -p"$MYSQL_PASSWORD" --silent; then
  exit 0
else
  exit 1
fi