-- first remove any data that may be present
truncate supplier, item, supplier_order restart identity cascade;

-- insert some suppliers
insert into supplier (supplier_name, phone, city)
values ('Arnold Grummers Papermaking', '920-840-6056', 'Appleton'),
    ('Blumfeld Paper', '555-6789', 'Moscow');

-- insert some items
insert into item (item_name, unit, unit_cost, supplier)
values ('Paper Additives', 'LBS', '3.85', 1),
    ('Abaca Sheet Pulp', 'LBS', '11.20', 1),
    ('Wood pulp', 'LBS', '0.20', 2),
    ('White Envelope Paper', 'LBS', '0.52', 1);

-- insert some orders
insert into supplier_order (item, amount, total_cost, shipping_status)
values (1, 10, 38.5, 'Delivered'),
    (2, 2000, 1240, 'Shipped'),
    (3, 50, 560, 'Shipped'),
    (2, 1000, 620, 'Preparing');