create table contacts (
    id integer primary key,
    name text
);
create table phones (
    number text,
    contact_id integer,
    foreign key (contact_id) references contacts(id)
);
create table email (
    address text,
    contact_id integer,
    foreign key (contact_id) references contacts(id)
);
