#!/bin/bash

cat /usr/local/etc/php/conf.d/* > /usr/local/etc/php/php.ini
rm -f /usr/local/etc/php/conf.d/*
vendor/bin/infection
