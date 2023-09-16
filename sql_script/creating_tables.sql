CREATE TABLE criminal_scene_report (
    event_date DATE,
    event_type VARCHAR(255),
    description TEXT,
    city VARCHAR(255)
);

CREATE TABLE drivers_license (
    id INTEGER PRIMARY KEY,
    age INTEGER,
    height INTEGER,
    eye_color VARCHAR(255),
    hair_color VARCHAR(255),
    gender VARCHAR(255),
    plate_number VARCHAR(255),
    car_make VARCHAR(255),
    car_model VARCHAR(255)
);

CREATE TABLE facebook_event_checkin (
    person_id INTEGER,
    event_id INTEGER,
    event_name TEXT,
    date DATE
);

CREATE TABLE get_fit_now_check_in (
    membership_id VARCHAR(255),
    check_in_date DATE,
    check_in_time INTEGER,
    check_out_time INTEGER
);

CREATE TABLE get_fit_now_member (
    id VARCHAR(255),
    person_id INTEGER,
    name VARCHAR(255),
    membership_start_date DATE,
    membership_status VARCHAR(255)
);

CREATE TABLE income (
    ssn VARCHAR(255),
    annual_income INTEGER
);

CREATE TABLE interview (
    person_id INTEGER,
    transcript TEXT
);

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    license_id INTEGER,
    address_number INTEGER,
    address_street_name VARCHAR(255),
    ssn VARCHAR(255)
);

