CREATE TABLE SALESPERSON (
  salesperson_id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (salesperson_id)
);

CREATE TABLE CAR (
  car_id SERIAL,
  year INTEGER,
  make VARCHAR(20),
  model VARCHAR(20),
  color VARCHAR(20),
  condition VARCHAR(20),
  car_price NUMERIC(10,2),
  PRIMARY KEY (car_id)
);

CREATE TABLE CUSTOMER (
  customer_id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (customer_id)
);

CREATE TABLE NEW_CAR_INVOICE (
  invoice_id SERIAL,
  customer_id SERIAL,
  salesperson_id SERIAL,
  car_id SERIAL,
  purchase_date DATE,
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (salesperson_id)
  REFERENCES SALESPERSON(salesperson_id),
  FOREIGN KEY (customer_id)
  REFERENCES CUSTOMER(customer_id)
);

CREATE TABLE SERVICE_TICKET (
  ticket_id SERIAL,
  customer_id SERIAL,
  service_id SERIAL,
  car_id SERIAL,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (customer_id)
  REFERENCES CUSTOMER(customer_id)
);

CREATE TABLE SERVICES (
  service_id SERIAL,
  service_type VARCHAR(50),
  service_price NUMERIC(10,2),
  parts_id SERIAL,
  mechanic_id SERIAL,
  PRIMARY KEY (service_id)
);

CREATE TABLE MECHANIC (
  mechanic_id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (mechanic_id)
);

CREATE INDEX Key ON  MECHANIC (first_name, last_name);

CREATE TABLE SERVICE_HISTORY (
  history_id SERIAL,
  car_id SERIAL,
  PRIMARY KEY (history_id)
);

CREATE TABLE CAR_PARTS (
  parts_id SERIAL,
  parts_name VARCHAR(50),
  PRIMARY KEY (parts_id)
);

