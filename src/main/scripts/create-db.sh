#!/bin/bash
DB_NAME=newdb
mysql -u root -e "create database IF NOT EXISTS $DB_NAME" 
mysql $DB_NAME -u root < src/main/sqls/schema.sql
mysql $DB_NAME -u root < src/main/sqls/initial-data.sql
