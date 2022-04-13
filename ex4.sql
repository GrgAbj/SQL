create table Table1grg (id number , name varchar2(30));

insert into table1grg(id,name)
values(1,'Fadi');

insert into table1grg(id,name)
values(2,'Elie');

insert into table1grg(id,name)
values(3,'Georges');

insert into table1grg(id,name)
values(4,'Toni');

insert into table1grg(id,name)
values(5,'Philippe');

insert into table1grg(id,name)
values(6,'Ziad');

insert into table1grg(id,name)
values(7,'Anthony');
commit;
create table table2grg(id number , name varchar(30));

insert into table2grg(id,name) values(1,'Walid');
insert into table2grg(id,name) values(2,'Toufic');
insert into table2grg(id,name) values(3,'Roni');
insert into table2grg(id,name) values(4,'Emmanuel');
insert into table2grg(id,name) values(5,'Tina');
insert into table2grg(id,name) values(6,'Robert');
insert into table2grg(id,name) values(7,'Eliane');

commit;

UPDATE table2grg t2
       SET name = (SELECT name 
                          FROM table1 t1
                          WHERE t2.id = t1.id);
commit;                     
select*from table1grg;

--ex2

---sql(STRUCTURED QUERY LANGUAGE) is a language that provides an interface to relational database systems.

---DDL : Data Definition Language helps you to define the database structure or schema. DDL commands help you to create the structure of the database and the other database objects.
--Its commands are auto-committed so, the changes are saved in the database permanently.
--example:  CREATE, ALTER, DROP, TRUNCATE, COMMENT,RENAME, etc.


--DML: DML Data manipulation language commands allows you to manage 
--the data stored in the database, 
--example: INSERT, UPDATE, DELETE, MERGE, etc.


--DCL: Data control language is used to interact with database 
--example:Grant,Revoke.


---Find duplicate rows using GROUP BY clause or ROW_NUMBER () function. 
--Use DELETE statement to remove the duplicate rows. 

---day: date+1 ; one hour : date +1/24 ; minute : date + 1/1440 ; second: date +1/86400;

---count , count(*)

---alter table drop column or drop unused columns

---alter table rename column


--ex3

create table grgpaths (files varchar(100));

insert into grgpaths(files) values('MyDocuments\MyFiles\MainFile\SqlTest.txt');
insert into grgpaths(files) values('C:\NewFolder\ManyFiles\BinaryFile.doc');
insert into grgpaths(files) values('Desktop\Attachements\emails\MyMails.eml');
insert into grgpaths(files) values('Bfile\Oracle\Admin\Network\Tnsnames.ora');
select from grgpaths;



SELECT SUBSTR(files, INSTR(files,'\', -1) + 1)
FROM grgpaths;

--ex4

CREATE TABLE allsalesgrg
(
YEAR                 INTEGER NOT NULL,
MONTH             INTEGER NOT NULL,
PRD_TYPE_ID INTEGER,
EMP_ID             INTEGER,
AMOUNT          NUMBER (8, 2)
);

ALTER TABLE allsalesgrg add CONSTRAINT grgsales_PK
PRIMARY KEY (YEAR, MONTH, PRD_TYPE_ID, EMP_ID);

insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,1,1,21,10034.84);

insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,2,1,21,15144.65);


insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,3,1,21,20137.83);


insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,4,1,21,25057.45);


insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,5,1,21,17214.56);


insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,6,1,21,15564.64);


insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,7,1,21,12654.84);


insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,8,1,21,17434.82);


insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,9,1,21,19854.75);

UPDATE allsalesgrg SET amount =19854.57 WHERE amount=19854.75;  

insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,10,1,21,21754.19);

insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,11,1,21,13029.73);

insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2003,12,1,21,10034.84);

insert into allsalesgrg (year,
                         month,
                         prd_type_id,
                         emp_id,
                         amount)
values(2004,1,1,22,11034.84);

commit;

select sum(amount) as total_month_amount from allsalesgrg
where year=2003 and month <=3;

select sum(amount) as total_product_type_yamount from allsalesgrg;
--ex2) ??
select amount,prd_type_id from allsalesgrg where year = 2003
group by prd_type_id,amount
order by amount desc;

--ex5

select roomarea from room where roomarea is null;

select roomarea from room where roomarea is not null;

select contract_id, contract_date, contract_amount,
case when active = 1 then 'Active'
else 'Inactive' 
end as contract_status 
from contract;



select*from contract;

select contract_amount,active from contract
where active =1;

select *from contract;
select*from room;

select distinct contract.roomid,contract_amount from contract
join room on contract.roomid=contract.roomid;

--ex6

select*from employeestatistics;

select min (benefits) from employeestatistics
where position='Manager';

select max(salary), position from employeestatistics
group by position;

select max(benefits), position from employeestatistics
where salary>40000
group by position
;

create table cust_cust(id number, name varchar(20),city varchar(20),industry_type varchar(5));

insert into cust_cust(id,
                      name,
                      city,
                      industry_type)
values (4,'Samsonic','pleasant','J'); 
                     

insert into cust_cust(id,
                      name,
                      city,
                      industry_type)
values (6,'Panasung','oaktown','J'); 


insert into cust_cust(id,
                      name,
                      city,
                      industry_type)
values (7,'Samony','jackson','B'); 


insert into cust_cust(id,
                      name,
                      city,
                      industry_type)
values (9,'Orange','Jackson','B'); 

--ex7
select cust_cust.name, orders.custid,orders.salespersonid,salesperson.name from orders
join cust_cust on orders.custid=cust_cust.id
join salesperson on orders.salespersonid=salesperson.id
where custid=4;

select cust_cust.name,orders.custid,orders.salespersonid,salesperson.name from orders
join cust_cust on orders.custid=cust_cust.id
join salesperson on orders.salespersonid=salesperson.id
where custid<>4;
select*from orders;
select salesperson.id,salesperson.name,orders.salespersonid,Count(*) from salesperson
join orders on salesperson.id=orders.salespersonid
group by salesperson.id,salesperson.name,orders.salespersonid
HAVING COUNT(*) > 1;


create table highaz(name varchar(20),age number);

insert into highaz (name,age) select name,age from salesperson where salary>100000;

select*from highaz;



