create table classesgrg (class varchar(20),type varchar(20),country varchar(20)
,numGuns number,bore number,displacement number);

insert into classesgrg(class,
                       type,
                       country,
                       numguns,
                       bore,
                       displacement)
values('Kongo','small','US',5500,16,1) ;

insert into classesgrg(class,
                       type,
                       country,
                       numguns,
                       bore,
                       displacement)
values('Cargo','Medium','Britain',4500,20,2)  ;

insert into classesgrg(class,
                       type,
                       country,
                       numguns,
                       bore,
                       displacement)
values('loft','medium','Japan',2000,13,2)  ;

insert into classesgrg(class,
                       type,
                       country,
                       numguns,
                       bore,
                       displacement)
values('Lebanon','Small','LB',6000,16,3);

insert into classesgrg(class,
                       type,
                       country,
                       numguns,
                       bore,
                       displacement)
values('Test','S','TE',5500,20,2);

create table shipsgrg (name varchar(30), class varchar(20),launched date);
select*from shipsgrg;


insert into shipsgrg(name,
                     class,
                     launched)                     
values('Marinates','Kongo',to_date('12/05/1979','dd/mm/yyyy'));

insert into shipsgrg(name,
                     class,
                     launched)                     
values('Crawlers','Cargo',to_date('25/03/1948','dd/mm/yyyy'));

insert into shipsgrg(name,
                     class,
                     launched)                     
values('Japanese warrior','Kongo',to_date('23/04/1968','dd/mm/yyyy'));

insert into shipsgrg(name,
                     class,
                     launched)                     
values('American sail','Loft',to_date('12/05/1989','dd/mm/yyyy'));

insert into shipsgrg(name,
                     class,
                     launched)                     
values('Leb01','Lebanon',to_date('17/10/1979','dd/mm/yyyy'));

select*from shipsgrg;


create table battlesgrg (name varchar(40),"date" date);

insert into battlesgrg(name, "date")
values('United fights',to_date('12-05-1989','dd-mm-yyyy'));

insert into battlesgrg(name, "date")
values('Britain crawling',to_date('25-03-1975','dd-mm-yyyy'));

insert into battlesgrg(name, "date")
values('Fighting',to_date('23-04-1988','dd-mm-yyyy'));

create table Outcomesgrg (Ship varchar(30),Battle varchar(30),Result varchar(20));

insert into outcomesgrg(ship,
                        battle,
                        result)
values('Marinates','United Fights','Win');

insert into outcomesgrg(ship,
                        battle,
                        result)
values('Crawlers','Fighting','Loose');

insert into outcomesgrg(ship,
                        battle,
                        result)
values('Japanese warrior','Britain crawling','Win');
                       
                      
--exercise1
select classesgrg.country,classesgrg.numguns,shipsgrg.name,classesgrg.class
from classesgrg
join shipsgrg
on classesgrg.class=shipsgrg.class
order by numguns desc
FETCH FIRST 1 ROW ONLY;


select outcomesgrg.ship,outcomesgrg.result,shipsgrg.class
from outcomesgrg
join shipsgrg
on shipsgrg.name=outcomesgrg.ship
where result ='Loose';

select shipsgrg.name,shipsgrg.class,classesgrg.bore
from shipsgrg
join classesgrg
on classesgrg.class=shipsgrg.class
where bore = 16;

select outcomesgrg.battle, outcomesgrg.ship,shipsgrg.class
from outcomesgrg
join shipsgrg
on shipsgrg.name=outcomesgrg.ship
where class='Kongo';


select distinct bore,numguns,class from classesgrg
ORDER BY numguns desc 
FETCH FIRST 2 ROW ONLY;

select battlesgrg.name,battlesgrg."date",shipsgrg.name,shipsgrg.launched 
from shipsgrg
join battlesgrg on shipsgrg.launched=battlesgrg."date";

--ex2

create table departmentgrg(did number,Dname varchar(30));

insert into departmentgrg(did, dname)
values(1,'Development');

insert into departmentgrg(did, dname)
values(2,'QA');

insert into departmentgrg(did, dname)
values(3,'IM-BI');

insert into departmentgrg(did, dname)
values(4,'HR');

create table employeegrg(eid number,Ename varchar(20),Did number, Esalary number);

insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(1,'Mirella',1,1200); 
insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(2,'Diana',1,1250);
insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(3,'Souha',1,1350);

insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(4,'Joelle',1,1350);  
insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(5,'Josephine',2,1100);
insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(6,'mary Mary',3,1100);

insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(7,'Jina',3,1900);

insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(8,'Rami',3,600);

insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(9,'Fadi Afif',3,1900);

insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(10,'Nawal',4,1000);

insert into employeegrg(eid,
                        ename,
                        did,
                        esalary)
values(11,'Nariman',4,900);
select*from employeegrg;

select employeegrg.eid,employeegrg.did,employeegrg.ename,departmentgrg.dname,employeegrg.esalary 
from employeegrg
join departmentgrg
on employeegrg.did=departmentgrg.did 
order by did,esalary,eid; 


--ex3

CREATE TABLE ITEMSgrg
(
  Id NUMBER NOT NULL PRIMARY KEY,
  NAME VARCHAR2 (20),
  Price NUMBER (7, 2)
);

INSERT INTO ITEMSgrg VALUES (1,'cup', 1.20);
INSERT INTO ITEMSgrg VALUES (2,'book', 49.99);
INSERT INTO ITEMSgrg VALUES (3,'mobile', 89.99);
INSERT INTO ITEMSgrg VALUES (4,'coke', 0.78);
INSERT INTO ITEMSgrg VALUES (5,'pencil', 1.35);
INSERT INTO ITEMSgrg VALUES (6,'dollar', 1.00);
INSERT INTO ITEMSgrg VALUES (7,'door', 150.00);
INSERT INTO ITEMSgrg VALUES (8,'oracle', 19990.00);
INSERT INTO ITEMSgrg VALUES (9,'carpet', 122.40);
INSERT INTO ITEMSgrg VALUES (10,'apple', 1.05);
INSERT INTO ITEMSgrg VALUES (11,'table', 198.00);
INSERT INTO ITEMSgrg VALUES (12,'cd/r', 1.20);
INSERT INTO ITEMSgrg VALUES (13,'back pack', 21.53);
INSERT INTO ITEMSgrg VALUES (14,'laptop', 999.50);
INSERT INTO ITEMSgrg VALUES (15,'air', 0.00);
INSERT INTO ITEMSgrg VALUES (16,'tv', 310.00);
INSERT INTO ITEMSgrg VALUES (17,'color', 2.22);
INSERT INTO ITEMSgrg VALUES (18,'bun_bun', 2.50);
INSERT INTO ITEMSgrg VALUES (19,'bun%bun', 0.80);
INSERT INTO ITEMSgrg VALUES (20,'bun.bun', 1.20);

select*from itemsgrg;

SELECT name,price FROM itemsgrg order by price 

FETCH FIRST 5 ROW ONLY;

select name from itemsgrg where name like '%\%%' ESCAPE '\';

--ex4
CREATE TABLE movietypegrg
     (Movie_cat_id     NUMBER (2),
      Movie_category VARCHAR (12),
      CONSTRAINT moviecatidgrg PRIMARY KEY (movie_cat_id));


INSERT INTO movietypegrg (movie_cat_id, movie_category) VALUES ('1', 'SciFi');
INSERT INTO movietypegrg (movie_cat_id, movie_category) VALUES ('2', 'Horror');
INSERT INTO movietypegrg (movie_cat_id, movie_category) VALUES ('3', 'Western');
INSERT INTO movietypegrg (movie_cat_id, movie_category) VALUES ('4', 'Comedy');
INSERT INTO movietypegrg (movie_cat_id, movie_category) VALUES ('5', 'Drama');


CREATE TABLE paytypegrg
     (Payment_methods_id   NUMBER (2),
      Payment_methods       VARCHAR (14),
      CONSTRAINT paymentmethodsgrg PRIMARY KEY (payment_methods_id));
      
INSERT INTO paytypegrg (payment_methods_id, payment_methods) VALUES ('1', 'Account');
INSERT INTO paytypegrg (payment_methods_id, payment_methods) VALUES ('2', 'Credit Card');
INSERT INTO paytypegrg (payment_methods_id, payment_methods) VALUES ('3', 'Check');
INSERT INTO paytypegrg (payment_methods_id, payment_methods) VALUES ('4', 'Cash');
INSERT INTO paytypegrg (payment_methods_id, payment_methods) VALUES ('5', 'Debit Card');

CREATE TABLE membergrg
  (Member_id     NUMBER (4),
   Last              VARCHAR (12),
   First              VARCHAR (8),
   License_no     VARCHAR (9),
   License_st      VARCHAR (2),
   Credit_card    VARCHAR (12),
   Suspension     VARCHAR (1) DEFAULT 'N',
   Mailing_list      VARCHAR (1),
   CONSTRAINT custidgrg PRIMARY KEY (member_id),
   CONSTRAINT credcardgrg CHECK (LENGTH (credit_card) = 12));
   
   
INSERT INTO membergrg (member_id, last, first, license_no, license_st, credit_card) VALUES (10, 'Tangier', 'Tim', '111111111', 'VA', '123456789111');
INSERT INTO membergrg (member_id, last, first, license_no, license_st, credit_card, mailing_list) VALUES (11, 'Ruth', 'Babe', '222222222', 'VA', '222222222222', 'Y');
INSERT INTO membergrg (member_id, last, first, license_no, license_st, credit_card, mailing_list) VALUES (12, 'Maulder', 'Fox', '333333333', 'FL', '333333333333', 'Y');
INSERT INTO membergrg (member_id, last, first, license_no, license_st, credit_card) VALUES (13, 'Wild', 'Coyote', '444444444', 'VA', '444444444444');
INSERT INTO membergrg (member_id, last, first, license_no, license_st, credit_card, mailing_list) VALUES (14, 'Casteel', 'Joan', '555555555', 'VA', '555555555555', 'Y');

CREATE TABLE moviegrg
     (Movie_id         NUMBER (4),
      Movie_title      VARCHAR (40),
      Movie_cat_id   NUMBER (2) NOT NULL,
      Movie_value    DECIMAL (5, 2),
      Movie_qty       NUMBER (2),
      CONSTRAINT movieidgrg PRIMARY KEY (movie_id),
      CONSTRAINT movietypegrg FOREIGN KEY (movie_cat_id) REFERENCES moviegrg_type (movie_cat_id),
      CONSTRAINT movievaluegrg CHECK (movie_value BETWEEN 5 and 100));
      
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (1, 'Alien', '1', 10.00, 5);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (2, 'Bladerunner', '1', 8.00, 3);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (3, 'Star Wars', '1', 15.00, 11);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (4,'Texas Chainsaw Masacre', '2', 7.00, 2);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (5, 'Jaws', '2', 7.00, 1);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (6, 'The good, the bad and the ugly', '3', 7.00, 2);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (7, 'Silverado', '3', 7.00, 1);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (8, 'Duck Soup', '4', 5.00, 1);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (9, 'Planes, trains and automobiles', '4', 5.00, 3);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (10, 'Waking Ned Devine', '4', 12.00, 4);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (11, 'Deep Blue Sea', '5', 14.00, 3);
INSERT INTO moviegrg (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (12, 'The Fifth Element', '5', 15.00, 5);

CREATE TABLE rentalgrg
      (Rental_id                   NUMBER (4),
       Member_id                 NUMBER (4),
       Movie_id                    NUMBER (4),
       Checkout_date            DATE DEFAULT SYSDATE,
       Checkin_date              DATE,
       Payment_methods_id   NUMBER (2),
       CONSTRAINT rentalsgrg PRIMARY KEY (rental_id),
       CONSTRAINT memberidgrg FOREIGN KEY (member_id) REFERENCES mm_member (member_id),
       CONSTRAINT movies_rental_grg FOREIGN KEY (movie_id) REFERENCES mm_movie (movie_id),
       CONSTRAINT payidgrg FOREIGN KEY (payment_methods_id) REFERENCES mm_pay_type (payment_methods_id));
       
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (1,'10', '11', '2');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (2,'10', '8', '2');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (3,'12', '6', '2');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (4,'13', '3', '5');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (5,'13', '5', '5');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (6,'13', '11', '5');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (7,'14', '10', '2');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (8,'14', '7', '2');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (9,'12', '4', '4');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (10,'12', '12', '4');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (11,'12', '3', '4');
INSERT INTO rentalgrg (rental_id, member_id, movie_id, payment_methods_id) VALUES (12,'13', '4', '5');
UPDATE rentalgrg SET checkout_date = '04-JUN-03';
COMMIT;

select movietypegrg.movie_category ,moviegrg.movie_cat_id,SUM(moviegrg.movie_qty) from moviegrg
join movietypegrg 
on movietypegrg.movie_cat_id=moviegrg.movie_cat_id
group by movietypegrg.movie_category,moviegrg.movie_cat_id
order by moviegrg.movie_cat_id
;


select membergrg.first,membergrg.last,rentalgrg.member_id,rentalgrg.checkout_date,rentalgrg.movie_id,moviegrg.movie_title from rentalgrg
join moviegrg
on rentalgrg.movie_id=moviegrg.movie_id
join membergrg
on membergrg.member_id=rentalgrg.member_id
where rentalgrg.member_id=13;




select moviegrg.movie_id,movie_title from moviegrg
left join rentalgrg on moviegrg.movie_id=rentalgrg.movie_id
where rentalgrg.movie_id is null;


select*from rentalgrg;

select membergrg.member_id,membergrg.first,membergrg.last,count(rentalgrg.movie_id) watched
from membergrg 
join rentalgrg on membergrg.member_id=rentalgrg.member_id
group by membergrg.member_id,membergrg.first,membergrg.last;

select  membergrg.member_id,membergrg.first,membergrg.last,count(rentalgrg.movie_id) watched
from membergrg 
join rentalgrg on membergrg.member_id=rentalgrg.member_id
group by membergrg.member_id,membergrg.first,membergrg.last
order by count(rentalgrg.movie_id) desc
fetch first 2 row only;


select  membergrg.first,membergrg.last,moviegrg.movie_title  
from membergrg
join rentalgrg
on membergrg.member_id=rentalgrg.member_id 
join moviegrg
on rentalgrg.movie_id=moviegrg.movie_id
order by membergrg.first;


select membergrg.member_id,membergrg.first,membergrg.last,count(rentalgrg.movie_id) moviesRented
from membergrg 
join rentalgrg on membergrg.member_id=rentalgrg.member_id
group by membergrg.member_id,membergrg.first,membergrg.last;


--ex5:

CREATE TABLE DIRECTORgrg
(
  DIRECTOR_ID                       VARCHAR2 (10),
  DIRECTOR_FNAME                 VARCHAR2 (20),
  DIRECTOR_LNAME                 VARCHAR2 (20),
  DATE_LAST_MOVIE_RELEASED DATE,
  EMAIL_ADDRESS                   VARCHAR2 (100)
);

INSERT INTO DIRECTORGRG (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0010', 'JOHN', 'SCOTT', TO_DATE ('10-01-1997', 'DD-MM-YYYY'), 'SCOTTJAEMAIL.COM');

INSERT INTO DIRECTORgrg (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0011', 'RALPH', 'MCKINSE', TO_DATE ('05-01-2003', 'DD-MM-YYYY'), 'MCKRA07ALSP.COM');

INSERT INTO DIRECTORgrg (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0012', 'ADRIAN', 'MCGRAW', TO_DATE ('03-08-2000', 'DD-MM-YYYY'), 'MCGAWAEMAIL.COM');

INSERT INTO DIRECTORgrg (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0013', 'NICOLE', 'DREW', TO_DATE ('10-01-2003', 'DD-MM-YYYY'), '');

INSERT INTO DIRECTORgrg (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0014', 'RUPERT', 'CONNERY', TO_DATE ('06-12-2002', 'DD-MM-YYYY'), 'RCONNAJADE.COM');

INSERT INTO DIRECTORgrg (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0015', 'SIDNEY', 'SHEWMAKER', TO_DATE ('15-09-2000', 'DD-MM-YYYY'), 'SIDNEYSHEWASHEW.COM');

INSERT INTO DIRECTORgrg (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0016', 'WILLIAM', 'TIPPER', TO_DATE ('03-08-2000', 'DD-MM-YYYY'), 'TIPPERARODEO.COM');

INSERT INTO DIRECTORgrg (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0017', 'GEOFFREY', 'GREENE', TO_DATE ('16-11-2002', 'DD-MM-YYYY'), 'GEOGREENASHELL.COM');

INSERT INTO DIRECTORgrg (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0018', 'MARIO', 'LOPEZ', TO_DATE ('12-12-2002', 'DD-MM-YYYY'), 'LOPEZMARAMAILS.COM');

COMMIT;

SELECT DIRECTOR_LNAME FROM DIRECTORgrg; --1  * 

SELECT DIRECTOR_LNAME DIRECTOR_LAST_NAME FROM DIRECTORgrg; --2  _ _

SELECT DIRECTOR_LNAME "DIRECTOR LAST NAME" FROM DIRECTORgrg; --3 instead of ' we use "

SELECT DIRECTOR_LNAME , DIRECTOR_FNAME FROM DIRECTORgrg; --4 , missing

SELECT DIRECTOR_LNAME FROM directorgrg; --5 wrong table name

SELECT DIRECTOR_ID, EMAIL_ADDRESS FROM DIRECTORgrg WHERE EMAIL_ADDRESS is NULL; --6 we use is null

SELECT DIRECTOR_LNAME FROM DIRECTORgrg WHERE DIRECTOR_LNAME LIKE 'S5'; --7 we use ' ' 

SELECT DIRECTOR_LNAME FROM DIRECTORgrg WHERE DATE_LAST_MOVIE_RELEASED =  TO_DATE ('12-12-2002', 'DD-MM-YYYY'); --8 to date missing

SELECT DIRECTOR_LNAME FROM DIRECTORgrg WHERE DIRECTOR_FNAME = 'MARIO'; --9 missing caps and ' ' 

SELECT DATE_LAST_MOVIE_RELEASED FROM DIRECTORgrg GROUP BY (DATE_LAST_MOVIE_RELEASED); --10 

SELECT COUNT (*) FROM DIRECTORgrg WHERE SUBSTR(DATE_LAST_MOVIE_RELEASED, 8, 2) = 03 GROUP BY (DATE_LAST_MOVIE_RELEASED) ; --11 group by after the where 

SELECT COUNT(*) FROM DIRECTORgrg GROUP BY SUBSTR(DATE_LAST_MOVIE_RELEASED, 8, 2) HAVING SUBSTR(DATE_LAST_MOVIE_RELEASED, 8, 2) = 03; --12


--exercise 6


INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(160,    'Louise',    'Doran',    TO_DATE('2005-12-15','yyyy-mm-dd'),    11,    7500, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(161,    'SARAH',    'SEWAL',    TO_DATE('2016-11-03','yyyy-mm-dd'),    12,    7000, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(162,    'Louise1',    'Doran2',    TO_DATE('2005-11-11','yyyy-mm-dd'),    13,    10500, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(163,    'Louise2',    'Doran3',    TO_DATE('2007-03-19','yyyy-mm-dd'),    14,    9500, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(164,    'Louise3',    'Doran',    TO_DATE('2008-01-24','yyyy-mm-dd'),    15,    7200, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(165,    'Louise4',    'Doran4',    TO_DATE('2008-02-23','yyyy-mm-dd'),    16,    6800, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(166,    'Louise5',    'Doran5',    TO_DATE('2008-03-24','yyyy-mm-dd'),    17,    6400, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(167,    'Louise6',    'Doran6',    TO_DATE('2008-04-21','yyyy-mm-dd'),    18,    6200, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(168,    'Louise7',    'Doran7',    TO_DATE('2005-03-11','yyyy-mm-dd'),    19,    11500, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSS
VALUES(169,    'Louise8',    'Doran8',    TO_DATE('2006-03-23','yyyy-mm-dd'),    20,    10000, 80);

                                        
select*from ssdx_tmp.employeensss;

--1

select first_name|| ' ' || last_name "Name" from ssdx_tmp.employeensss
where salary > (select salary from ssdx_tmp.employeensss 
where employee_id=163);

--2
select first_name|| ' ' || last_name "Name",salary,department_id,job_id
from ssdx_tmp.employeensss
where job_id = (select job_id from ssdx_tmp.employeensss
where employee_id=169);

--3
select first_name|| ' ' || last_name "Name",salary
from ssdx_tmp.employeensss
where salary=
(
select min(salary) from ssdx_tmp.employeensss
)

--4

select first_name|| ' ' || last_name "Name",salary
from ssdx_tmp.employeensss
where salary>
(
select avg(salary) from ssdx_tmp.employeensss
);


--5

select last_name,first_name,phone_number,hire_date from tablename
where substr(phone_number,1,3)= (select substr(phone_numer,1,3) from table
where(Max (hire_date) from tablename);





