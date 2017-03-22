create table user(id_user varchar2(40) not null references dps_user(id) on delete cascade,primary key(id_user));


drop table license;
drop table accident;
drop table destination;
drop table user_vehicule;
drop table vehicule;
drop table policefine;


create table license(id_user varchar2(40) not null references dps_user(id) on delete cascade,num varchar2(255),type varchar2(255),primary key(id_user));
create table accident(id_accident varchar2(40) null,description varchar2(255),date_accident varchar2(255),id_user varchar2(40) references dps_user(id) on delete cascade,primary key(id_accident));
create table vehicule(id_vehicule varchar2(40) not null,mat varchar2(255),mark varchar2(255),primary key(id_vehicule));
create table user_vehicule(id_user varchar2(40) references dps_user(id) on delete cascade,id_vehicule varchar2(40) references vehicule(id_vehicule) on delete cascade);
create table destination(id_destination varchar2(40) not null,seq_num number,destination_city varchar2(40),id_user varchar2(40) references dps_user(id) on delete cascade,primary key(id_destination));
create table policefine(id varchar2(40) not null ,key varchar2(40),value varchar2(255),id_user varchar2(40) references dps_user(id) on delete cascade,primary key(id));