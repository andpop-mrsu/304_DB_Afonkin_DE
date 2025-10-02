#!/bin/bash
python3 make_db_init.py
sqlite3 db_init.db < db_init.sql
