select first_name,salary*1.15 "no.ofDollars" from ssdx_tmp.employees;

select first_name||' ' ||last_name "Full Name" from ssdx_tmp.employees;

select to_Char(hiredate,'Month,DD,YYYY')  from ssdx_tmp.employees;

select first_name,hiredate from ssdx_tmp.employees order by hiredate asc;

select length(trim(first_name))+ length(trim(last_name)) "Full name trimmed" from ssdx_tmp.employees;

select first_name, department_id from ssdx_tmp.employees where department_id not like 20;


select first_name, hiredate from ssdx_tmp.employees  where hiredate <'01/Jan/2011';


select avg(salary) from ssdx_tmp.employees where department_id=1;

select first_name,salary from ssdx_tmp.employees where salary * 1.25 > 25000;

select first_name from ssdx_tmp.employees where length(first_name)=6;

select first_name,hiredate from ssdx_tmp.employees where to_Char(hiredate,'Mon') like 'Jan';

create table ssdx_tmp.salesman123 (salesman_id number , name varchar2(50) , city varchar2(30) , comission number);

select * from ssdx_tmp.salesman;

insert into ssdx_tmp.salesman (salesman_id,name,city,comission) values(5001,'James Hoog', 'New York',0.15 );

update ssdx_tmp.salesman set salesman_id=5002,name='Nail Knite',City='Paris',Comission=0.13;

select * from ssdx_tmp.salesman;

drop table ssdx_tmp.salesman;

create table ssdx_tmp.salesman (salesman_id number , name varchar2(50) , city varchar2(30) , comission number);select * from ssdx_tmp.salesman);

select * from ssdx_tmp.salesman;

insert into ssdx_tmp.salesman (salesman_id,
                               name,
                               city,
                               comission)
 values(5001,'James Hoog','New York',0.15);
 
 insert into ssdx_tmp.salesman (salesman_id,
                               name,
                               city,
                               comission)
 values(5002,'Nail Knite','Paris',0.13);
 insert into ssdx_tmp.salesman (salesman_id,
                               name,
                               city,
                               comission)
 values(5003,'Pit Alex','London',0.11);
 insert into ssdx_tmp.salesman (salesman_id,
                               name,
                               city,
                               comission)
 values(5006,'Mc Lyon','Paris',0.14);
 insert into ssdx_tmp.salesman (salesman_id,
                               name,
                               city,
                               comission)
 values(5007,'Paul Adam','Rome',0.13);
commit;
select*from ssdx_tmp.salesman;

update  ssdx_tmp.salesman set salesman_id=5005 where salesman_id=5003; 

select*from ssdx_tmp.salesman;

 insert into ssdx_tmp.salesman (salesman_id,
                               name,
                               city,
                               comission)
 values(5003,'Lauson Hen','San Jose',0.12);
 
 select*from ssdx_tmp.salesman;
 
 
 create table ssdx_tmp.customer1 (customer_id number , cust_name varchar2(50) , city varchar2(30), grade number , salesman_id number);

 
 select * from ssdx_tmp.customer1;
 
 insert into ssdx_tmp.customer1 (customer_id,
                                 cust_name,
                                 city,
                                 grade,
                                 salesman_id)
    values(3002,'Nick Rimando','New York',100,5001);                                          
 
  insert into ssdx_tmp.customer1 (customer_id,
                                 cust_name,
                                 city,
                                 grade,
                                 salesman_id)
    values(3007,'Brad Davis','New York',200,5001);
     insert into ssdx_tmp.customer1 (customer_id,
                                 cust_name,
                                 city,
                                 grade,
                                 salesman_id)
    values(3005,'Graham Zusi','California',200,5002);
     insert into ssdx_tmp.customer1 (customer_id,
                                 cust_name,
                                 city,
                                 grade,
                                 salesman_id)
    values(3008,'Julian Green','London',300,5002);
     insert into ssdx_tmp.customer1 (customer_id,
                                 cust_name,
                                 city,
                                 grade,
                                 salesman_id)
    values(3004,'Fabian Johnson','Paris',300,5006);
     insert into ssdx_tmp.customer1 (customer_id,
                                 cust_name,
                                 city,
                                 grade,
                                 salesman_id)
    values(3009,'Geoff Cameron','Berlin',100,5003);
     insert into ssdx_tmp.customer1 (customer_id,
                                 cust_name,
                                 city,
                                 grade,
                                 salesman_id)
    values(3003,'Jozy Altidar','Moscow',200,5007);
     insert into ssdx_tmp.customer1 (customer_id,
                                 cust_name,
                                 city,
                                 grade,
                                 salesman_id)
    values(3001,'Brad Guzan','London',null,5005);      
    select* from ssdx_tmp.customer1 ;
    
    commit;
    
    create table ssdx_tmp.ordersgrg (ord_no number , purch_amt number , ord_date date , customer_id number, salesman_id number);
    
    insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
 
 values(70001,150.5,to_date('05-10-12','dd-mm-yyy'),3005,5002);


select*from  ssdx_tmp.ordersgrg;
 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70009,270.65,to_date('10-09-12','dd-mm-yyy'),3001,5005);

 select*from  ssdx_tmp.ordersgrg;
 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70002,65.26,to_date('05/10/12','dd/mm/yyy'),3002,5001);
select*from  ssdx_tmp.ordersgrg;

 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70004,110.5,to_date('17/08/12','dd/mm/yyy'),3009,5003);
insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70007,948.5,to_date('10/09/12','dd/mm/yyy'),3005,5002);
 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70005,2400.6,to_date('27/07/12','dd/mm/yyy'),3007,5001);
 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70008,5760,to_date('10/09/12','dd/mm/yyy'),3002,5001);
 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70010,1983.43,to_date('10/10/12','dd/mm/yyy'),3004,5006);
 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70003,2480.4,to_date('10/10/12','dd/mm/yyy'),3009,5003);
 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70012,250.45,to_date('27/06/12','dd/mm/yyy'),3008,5002);  
 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70011,75.29,to_date('17/08/12','dd/mm/yyy'),3003,5007);
 insert into ssdx_tmp.ordersgrg(ord_no,
                                   purch_amt,
                                   ord_date,
                                   customer_id,
                                   salesman_id)
                                   values(70013,3045.6,to_date('25/04/12','dd/mm/yyy'),3002,5001);
commit;
select*from ssdx_tmp.ordersgrg;


select ssdx_tmp.salesman.name,ssdx_tmp.customer1.cust_name,ssdx_tmp.salesman.city 
from ssdx_tmp.salesman
join ssdx_tmp.customer1
on ssdx_tmp.salesman.city=ssdx_tmp.customer1.city;

select ssdx_tmp.salesman.name , ssdx_tmp.salesman.salesman_id,ssdx_tmp.customer1.cust_name from ssdx_tmp.salesman join ssdx_tmp.customer1 on  ssdx_tmp.salesman.salesman_id=ssdx_tmp.customer1.salesman_id;

select ssdx_tmp.salesman.name , ssdx_tmp.salesman.salesman_id,ssdx_tmp.customer1.cust_name,ssdx_tmp.salesman.comission from ssdx_tmp.salesman join ssdx_tmp.customer1 on  ssdx_tmp.salesman.salesman_id=ssdx_tmp.customer1.salesman_id where comission >0.12;

select ssdx_tmp.salesman.name,ssdx_tmp.customer1.cust_name,ssdx_tmp.salesman.comission from ssdx_tmp.salesman join ssdx_tmp.customer1 on ssdx_tmp.salesman.city<>ssdx_tmp.customer1.city where comission >0.12;

select ssdx_tmp.ordersgrg.customer_id,ssdx_tmp.ordersgrg.ord_no,ssdx_tmp.ordersgrg.ord_date,ssdx_tmp.ordersgrg.purch_amt,ssdx_tmp.ordersgrg.salesman_id,ssdx_tmp.salesman.comission,(ssdx_tmp.salesman.comission)*(ssdx_tmp.ordersgrg.purch_amt) commision_augemnted
from ssdx_tmp.ordersgrg 
inner join ssdx_tmp.customer1 on ssdx_tmp.ordersgrg.customer_id=ssdx_tmp.customer1.customer_id 
inner join ssdx_tmp.salesman on ssdx_tmp.ordersgrg.salesman_id=ssdx_tmp.salesman.salesman_id;

select ssdx_tmp.salesman.salesman_id,ssdx_tmp.salesman.name,ssdx_tmp.customer1.customer_id  from ssdx_tmp.salesman
inner join ssdx_tmp.customer1 on ssdx_tmp.salesman.salesman_id=ssdx_tmp.customer1.salesman_id; 


select ssdx_tmp.customer1.customer_id,ssdx_tmp.customer1.cust_name,ssdx_tmp.customer1.city,ssdx_tmp.ordersgrg.ord_no,ssdx_tmp.ordersgrg.ord_date,ssdx_tmp.ordersgrg.purch_amt from ssdx_tmp.customer1
join ssdx_tmp.ordersgrg 
on ssdx_tmp.customer1.customer_id=ssdx_tmp.ordersgrg.customer_id
order by ord_date asc


                                                                                                                                                                                                                                          
