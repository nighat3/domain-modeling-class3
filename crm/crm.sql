-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salesperson;

-- CREATE TABLES
CREATE TABLE CONTACTS (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    title TEXT,
    email TEXT,
    address TEXT,
    phone TEXT,
    company_id INT
);

CREATE TABLE ACTIVITY (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    activity_type TEXT,
    date_time date,
    notes TEXT,
    contact_id INT,
    salesperson_id INT
);
CREATE TABLE COMPANIES (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT
);

CREATE TABLE SALESPERSON (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT,
    first_name TEXT,
    last_name TEXT,
    title TEXT,
    email TEXT,
    phone TEXT
);