-- FUCNTIONS (salesperson, customer)
create or replace function add_CUSTOMER(_first_name VARCHAR, _last_name VARCHAR)
returns void
as $$
begin 
	insert into CUSTOMER(first_name, last_name) values (_first_name, _last_name);
end; 
$$
language plpgsql;

select add_CUSTOMER('Ariana', 'Grande');
select add_CUSTOMER('Liz', 'Inamasu');

create or replace function add_SALESPERSON(_first_name VARCHAR, _last_name VARCHAR)
returns void
as $$
begin 
	insert into SALESPERSON(first_name, last_name) values (_first_name, _last_name);
end; 
$$
language plpgsql;

select add_SALESPERSON('Cathy', 'Sanchez');
select add_SALESPERSON('Bob', 'Bobby');


create or replace function add_CAR(_year INTEGER, _make VARCHAR(20), _model VARCHAR(20), _color VARCHAR(20), _condition VARCHAR(20), _car_price NUMERIC)
returns void
as $$
begin 
	insert into CAR(year, make, model, color, condition, car_price) values (_year, _make, _model, _color, _condition, _car_price);
end; 
$$
language plpgsql;

select add_CAR(1994, 'Toyota', 'Camry', 'Red', 'Used', 3000.00)
select add_CAR(2023, 'Subaru', 'BRZ', 'Black', 'New', '35000.00')

select * from CAR



--manually entered functions
INSERT INTO mechanic(
    first_name,
    last_name
) VALUES(
    'Lawrence',
    'Papperman'
);

INSERT INTO mechanic(
    first_name,
    last_name
) VALUES(
    'Kayla',
    'Jones'
);


INSERT INTO mechanic(
    first_name,
    last_name
) VALUES(
    'Kayla',
    'Jones'
);

insert into car_parts(
	parts_name
) VALUES(
	'Tires'
);

insert into car_parts(
	parts_name
) VALUES(
	'Steering Wheel'
);

insert into services(
	service_type,
	service_price,
	parts_id,
	mechanic_id
) VALUES(
	'Tire Rotate',
	200.00,
	1,
	1
);

insert into services(
	service_type,
	service_price,
	parts_id,
	mechanic_id
) VALUES(
	'Steering Wheel Replacement',
	100.00,
	2,
	1
);

insert into service_ticket(
	customer_id,
	service_id,
	car_id
) values (
	1,
	1,
	1
);

insert into service_ticket(
	customer_id,
	service_id,
	car_id
) values (
	1,
	2,
	2
);

insert into service_history(
	car_id
) VALUES(
	2
);

insert into service_history(
	car_id
) VALUES(
	1
);

insert into new_car_invoice(
	customer_id,
	salesperson_id,
	car_id,
	purchase_date 
) VALUES(
	1,
	1,
	1,
	'2022-05-04'
);

insert into new_car_invoice(
	customer_id,
	salesperson_id,
	car_id,
	purchase_date 
) VALUES(
	2,
	1,
	2,
	'2022-05-05'
);