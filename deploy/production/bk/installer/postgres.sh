#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install python-pip python-dev libpq-dev postgresql postgresql-contrib

sudo -u postgres psql
CREATE DATABASE photobooth_queuer;
CREATE USER photobooth_queuer_user WITH PASSWORD 'qpoqpoqkp112l3k1!!l2kmldkmdm12h233';
ALTER ROLE photobooth_queuer_user SET client_encoding TO 'utf8';
ALTER ROLE photobooth_queuer_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE photobooth_queuer_user SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE photobooth_queuer TO photobooth_queuer_user;
\q
