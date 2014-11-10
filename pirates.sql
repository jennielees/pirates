drop table if exists pirates;
drop table if exists ships;
drop table if exists cargo;

create table ships (
    id integer primary key not null,
    name text not null
);

create table pirates (
    id integer primary key not null,
    name text not null,
    ship_id int,
    foreign key(ship_id) references ships(id)

);

create table cargo (
    ship_id int not null,
    name text not null,
    amount int,
    foreign key(ship_id) references ships(id)
);





insert into ships values
    (1, 'Sweet Delight'),
    (2, 'Bloody Mary'),
    (3, 'Jolly Jack');

insert into pirates values
    (1, 'Blackbeard', 3),
    (2, 'Roger Rumguzzler', 2),
    (3, "Cap'n Cathy", 1),
    (4, 'Tara the Terrible', 2);

insert into cargo values
    (1, "Pieces o Eight", 1000),
    (2, 'Gold Bars', 100),
    (1, 'Gold Bars', 5),
    (2, "Pieces o' Eight", 1000),
    (3, 'Parrots', 75);




