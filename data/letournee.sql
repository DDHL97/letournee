///Local
create database letournee;

use letournee;

create table user(
id_user mediumint(8) not null auto_increment,
name varchar(30) not null,
ap_paterno varchar(30) not null,
ap_materno varchar(30) not null,
account_name varchar(40) not null,
age int(8) not null,
email varchar(30) not null,
pass varchar(40) not null,
imagen_usuario varchar(400),
primary key (id_user)
);

insert into user(name,ap_paterno,ap_materno,account_name, age, email, pass) values('Diego David','Hernandez','Lopez','DDHL97',19,'1715110005@utec-tgo.edu.mx',md5('cocomo'));


create table pueblos(
    id_pueblo mediumint(8) not null auto_increment primary key,
    nom_pueblo varchar(30) not null,
    descripcion  text(400) not null,
    imagen_pueblo varchar(100) null
);
create table principal(
    id_principal mediumint(8) not null auto_increment primary key,
    pueblo varchar(30) not null,
    bienvenida  text(400) not null,
    img_pueblo varchar(100) null,
    id_pueblo mediumint(8) not null,
    foreign key (id_pueblo) references pueblos(id_pueblo)
);


create table lugares_interes(
    id_lugar_interes mediumint(8) not null auto_increment primary key,
    nombre varchar(60) not null,
    descripcion text(300) not null,
    imagen_lugar varchar(100) null,
    id_pueblo mediumint(8) not null,
    posicionx varchar(20) not null,
    posiciony varchar(20) not null,
    foreign key(id_pueblo) references pueblos(id_pueblo)
);

create table posicion(
    id_posicion mediumint(8) not null auto_increment primary key,
    posicionx varchar(20) not null,
    posiciony varchar(20) not null,
    id_pueblo mediumint(8) null,
    id_lugar_interes mediumint(8) null,
    foreign key(id_pueblo) references pueblos(id_pueblo),
    foreign key(id_lugar_interes) references lugares_interes(id_lugar_interes)
);

insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.219828', '-98.559451','1','1');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.238330', '-98.562359','1','2');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.235141', '-98.560426','1','3');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.250436', '-98.560063','1','4');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.216197', '-98.557478','1','5');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.278868', '-98.518333','1','6');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.2383433','-98.5623959','1','7');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.2034757','-98.5762593','1','8');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.125365', '-98.731214','2','9');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.146890', '-98.667607','2','10');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.145415', '-98.672032','2','11');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.139057', '-98.686298','2','12');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.139929', '-98.673956','2','13');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.220639', '-98.736316','3','14');
insert into posicion(posicionx, posiciony, id_pueblo, id_lugar_interes) values('20.198152', '-98.717518','3','15');





create table guia(
    id_guia mediumint(8) not null auto_increment primary key,
    paso1 text null,
    paso2 text null,
    paso3 text null,
    paso4 text null,
    paso5 text null,
    paso6 text null,
    paso7 text null,
    paso8 text null,
    paso9 text null,
    paso10 text null,
    id_pueblo mediumint(8) not null,
    foreign key(id_pueblo) references pueblos(id_pueblo)
);










create table imagenes(
    id_imagen mediumint(8) not null auto_increment primary key,
    imagen varchar(100) not null,
    id_pueblo mediumint(8) not null,
    foreign key(id_pueblo) references pueblos(id_pueblo)
);
