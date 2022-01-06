miraj@miraj-malado:~$ sudo mysql
[sudo] Mot de passe de miraj : 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 33
Server version: 8.0.27-0ubuntu0.21.04.1 (Ubuntu)

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database ExoSamba;
Query OK, 1 row affected (0,02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ApprennatP4        |
| ExoSamba           |
| Miraj              |
| Simplon            |
| apprenants         |
| information_schema |
| mysql              |
| performance_schema |
| simplon            |
| sys                |
+--------------------+
10 rows in set (0,02 sec)

mysql> use ExoSamba;
Database changed
mysql> create table apprenants(
    -> id int primary key not null,
    -> nom varchar(255),
    -> prenom varchar(255),
    -> tel varchar(14),
    -> email;
mysql> create table apprenants( id int primary key not null, nom varchar(255), prenom varchar(255), tel varchar(14), email
    -> create table apprenants( idApprenant int primary key not null auto_increment, nom varchar(255)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ApprennatP4        |
| ExoSamba           |
| Miraj              |
| Simplon            |
| apprenants         |
| information_schema |
| mysql              |
| performance_schema |
| simplon            |
| sys                |
+--------------------+
10 rows in set (0,00 sec)

mysql> use ExoSamba;
Database changed
mysql> create table(
    -> idApprenant int primary key not null auto_increment,
    -> nom varchar(255),
    -> prenom varchar(255),
    -> tel varchar(14) unique,
    -> email varchar(255)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(
idApprenant int primary key not null auto_increment,
nom varchar(255),
prenom ' at line 1

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ApprennatP4        |
| ExoSamba           |
| Miraj              |
| Simplon            |
| apprenants         |
| information_schema |
| mysql              |
| performance_schema |
| simplon            |
| sys                |
+--------------------+
10 rows in set (0,00 sec)

mysql> use ExoSamba;
Database changed

mysql> create table Apprenants(
    -> idApprenant int primary key not null,
    -> nom varchar(255),
    -> prenom(255),
    -> tel int(14),
    -> email varchar(255));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(255),
tel int(14),
email varchar(255))' at line 4
mysql> create table Apprenants( idApprenant int primary key not null, nom varchar(255), prenom varchar(255), tel int(14), email varchar(255));
Query OK, 0 rows affected, 1 warning (0,05 sec)

mysql> desc Apprenants;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| idApprenant | int          | NO   | PRI | NULL    |       |
| nom         | varchar(255) | YES  |     | NULL    |       |
| prenom      | varchar(255) | YES  |     | NULL    |       |
| tel         | int          | YES  |     | NULL    |       |
| email       | varchar(255) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0,01 sec)


mysql> insert into Apprenants(idApprenant,nom,premom,tel,email) values(1,'Diallo','Miraj',781589590,'miraj@gmail.com');
ERROR 1054 (42S22): Unknown column 'premom' in 'field list'
mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(1,'Diallo','Miraj',781589590,'miraj@gmail.com');
Query OK, 1 row affected (0,02 sec)

mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(2,'Ba','Karim',781234550,'bk@gmail.com');
Query OK, 1 row affected (0,01 sec)

mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(3,'ka','Marie',787687654,'km@gmail.com');
Query OK, 1 row affected (0,01 sec)

mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(4,'hnna','Mara',788765689,'hm@gmail.com');
Query OK, 1 row affected (0,00 sec)

mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(5,'aw','hawa',787890965,'ah@gmail.com');
Query OK, 1 row affected (0,01 sec)

mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(6,'lo','modou',785436789,'lm@gmail.com');
Query OK, 1 row affected (0,01 sec)

mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(7,'kama','dior',787643456,'dk@gmail.com');
Query OK, 1 row affected (0,01 sec)

mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(8,'sene','serigne',787689045,'ss@gmail.com');
Query OK, 1 row affected (0,00 sec)

mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(9,'sane','seckou',785435679,'ssane@gmail.com');
Query OK, 1 row affected (0,01 sec)

mysql> insert into Apprenants(idApprenant,nom,prenom,tel,email) values(10,'dicko','sokhna',786578976,'ds@gmail.com');
Query OK, 1 row affected (0,00 sec)

mysql> select * from Apprenants;
+-------------+--------+---------+-----------+-----------------+
| idApprenant | nom    | prenom  | tel       | email           |
+-------------+--------+---------+-----------+-----------------+
|           1 | Diallo | Miraj   | 781589590 | miraj@gmail.com |
|           2 | Ba     | Karim   | 781234550 | bk@gmail.com    |
|           3 | ka     | Marie   | 787687654 | km@gmail.com    |
|           4 | hnna   | Mara    | 788765689 | hm@gmail.com    |
|           5 | aw     | hawa    | 787890965 | ah@gmail.com    |
|           6 | lo     | modou   | 785436789 | lm@gmail.com    |
|           7 | kama   | dior    | 787643456 | dk@gmail.com    |
|           8 | sene   | serigne | 787689045 | ss@gmail.com    |
|           9 | sane   | seckou  | 785435679 | ssane@gmail.com |
|          10 | dicko  | sokhna  | 786578976 | ds@gmail.com    |
+-------------+--------+---------+-----------+-----------------+
10 rows in set (0,00 sec)

mysql> create table(
    -> inCotisation
    -> ;

mysql> create table Cotisations(
    -> idCotisation int primary key not null,
    -> montant int(30),
    -> motif varchar(255)
    -> );
Query OK, 0 rows affected, 1 warning (0,04 sec)


mysql> show tables;
+--------------------+
| Tables_in_ExoSamba |
+--------------------+
| Apprenants         |
| Cotisations        |
+--------------------+
2 rows in set (0,01 sec)

mysql> desc Cotisations;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| idCotisation | int          | NO   | PRI | NULL    |       |
| montant      | int          | YES  |     | NULL    |       |
| motif        | varchar(255) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0,01 sec)

mysql> drop table Cotisations;
Query OK, 0 rows affected (0,03 sec)

mysql> show tables;
+--------------------+
| Tables_in_ExoSamba |
+--------------------+
| Apprenants         |
+--------------------+
1 row in set (0,00 sec)

mysql> create table Cotisations;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table Cotisations(
    -> idCotisation int primary key not null,
    -> montant int(65),
    -> motif varchar(255)
    -> ,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 5
mysql> idCotisation int primary key not null auto_increment,
    -> montant int(65) not null,
    -> motif varchar(255) not null,
    -> id_apprenant int not null,
    -> foreign key(id_apprenant) references Apprenants(idApprenant);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'idCotisation int primary key not null auto_increment,
montant int(65) not null,

idCotisation int primary key not null, montant int(2' at line 1

mysql> show tables;
+--------------------+
| Tables_in_ExoSamba |
+--------------------+
| Apprenants         |
+--------------------+
1 row in set (0,01 sec)


mysql> CREATE TABLE cotisations (idCotisation int NOT NULL PRIMARY KEY AUTO_INCREMENT, montant int NOT NULL, motif VARCHAR(255), apprenant_id int, FOREIGN KEY (apprenant_id) REFERENCES Apprenants (idApprenant));
Query OK, 0 rows affected (0,06 sec)

mysql> show tables;
+--------------------+
| Tables_in_ExoSamba |
+--------------------+
| Apprenants         |
| cotisations        |
+--------------------+
2 rows in set (0,00 sec)

mysql> desc cotisations;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| idCotisation | int          | NO   | PRI | NULL    | auto_increment |
| montant      | int          | NO   |     | NULL    |                |
| motif        | varchar(255) | YES  |     | NULL    |                |
| apprenant_id | int          | YES  | MUL | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
4 rows in set (0,01 sec)

mysql> insert into cotisations(idCotisation,montant,motif,apprenant_id) values (1,1000,'Wollof',5);
Query OK, 1 row affected (0,01 sec)

mysql> insert into cotisations(idCotisation,montant,motif,apprenant_id) values (2,1500,'absences',1);
Query OK, 1 row affected (0,00 sec)

mysql> insert into cotisations(idCotisation,montant,motif,apprenant_id) values (3,4500,'absences',6);
Query OK, 1 row affected (0,01 sec)

mysql> select * from cotisations;
+--------------+---------+----------+--------------+
| idCotisation | montant | motif    | apprenant_id |
+--------------+---------+----------+--------------+
|            1 |    1000 | Wollof   |            5 |
|            2 |    1500 | absences |            1 |
|            3 |    4500 | absences |            6 |
+--------------+---------+----------+--------------+
3 rows in set (0,00 sec)

mysql> select sum(montant) from cotisations;
+--------------+
| sum(montant) |
+--------------+
|         7000 |
+--------------+
1 row in set (0,01 sec)


mysql> select('*') from cotisations;
+---+
| * |
+---+
| * |
| * |
| * |
+---+
3 rows in set (0,00 sec)

mysql> select avg('montant) from cotisations;
    '> 
    '> select avg(montant) from cotisations;
    '> ;
    '> ^C

^C
mysql> select avg(montant) from cotisations;
+--------------+
| avg(montant) |
+--------------+
|    2333.3333 |
+--------------+
1 row in set (0,00 sec)

mysql> insert into cotisations(idCotisation,montant,motif,apprenant_id) values (3,1500,'absences',6);
ERROR 1062 (23000): Duplicate entry '3' for key 'cotisations.PRIMARY'
mysql> insert into cotisations(idCotisation,montant,motif,apprenant_id) values (4,1500,'absences',6);
Query OK, 1 row affected (0,01 sec)

mysql> insert into cotisations(idCotisation,montant,motif,apprenant_id) values (5,6500,'absences',6);
Query OK, 1 row affected (0,01 sec)

mysql> insert into cotisations(idCotisation,montant,motif,apprenant_id) values (6,6500,'absences',1);
Query OK, 1 row affected (0,01 sec)

mysql> insert into cotisations(idCotisation,montant,motif,apprenant_id) values (7,5500,'absences',1);
Query OK, 1 row affected (0,01 sec)

mysql> select sum(apprenant_id=6) from cotisations;
+---------------------+
| sum(apprenant_id=6) |
+---------------------+
|                   3 |
+---------------------+
1 row in set (0,00 sec)

mysql> select * from cotisation;
ERROR 1146 (42S02): Table 'ExoSamba.cotisation' doesn't exist
mysql> select * from cotisations;
+--------------+---------+----------+--------------+
| idCotisation | montant | motif    | apprenant_id |
+--------------+---------+----------+--------------+
|            1 |    1000 | Wollof   |            5 |
|            2 |    1500 | absences |            1 |
|            3 |    4500 | absences |            6 |
|            4 |    1500 | absences |            6 |
|            5 |    6500 | absences |            6 |
|            6 |    6500 | absences |            1 |
|            7 |    5500 | absences |            1 |
+--------------+---------+----------+--------------+
7 rows in set (0,00 sec)

mysql> select sum(apprenant_id) from cotisations;
+-------------------+
| sum(apprenant_id) |
+-------------------+
|                26 |
+-------------------+
1 row in set (0,00 sec)


mysql> select * from cotisations where apprenant_id='6';
+--------------+---------+----------+--------------+
| idCotisation | montant | motif    | apprenant_id |
+--------------+---------+----------+--------------+
|            3 |    4500 | absences |            6 |
|            4 |    1500 | absences |            6 |
|            5 |    6500 | absences |            6 |
+--------------+---------+----------+--------------+
3 rows in set (0,01 sec)

mysql> select sum(montant) from cotisations;
+--------------+
| sum(montant) |
+--------------+
|        27000 |
+--------------+
1 row in set (0,00 sec)


mysql> SELECT SUM(montant) FROM cotisations GROUP BY apprenant_id;
+--------------+
| SUM(montant) |
+--------------+
|        13500 |
|         1000 |
|        12500 |
+--------------+
3 rows in set (0,00 sec)



mysql> select nom, prenom, sum(montant) from Apprenants inner join cotisations on apprenant_id = Apprenants.idApprenant group by nom, prenom;
+--------+--------+--------------+
| nom    | prenom | sum(montant) |
+--------+--------+--------------+
| aw     | hawa   |         1000 |
| Diallo | Miraj  |        13500 |
| lo     | modou  |        12500 |
+--------+--------+--------------+
3 rows in set (0,01 sec)

mysql> 
