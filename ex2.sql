create table exercise2 (string varchar(100));

select*from exercise2;

insert into exercise2 (string) values('abc,def,ghi');

--ex 1 2 3
select substr(STRING,1,instr(string,',',1,1)-1) from exercise2;

select substr(string,instr(string,',',1,1)+1,instr(string,',',1,2)-instr(string,',',1,1)-1) from exercise2;

select substr(string,instr(string,',',-1,1)+1)
from exercise2;

--

ALTER TABLE exercise2
ADD clnHello varchar(100);

select*from exercise2;

insert into exercise2 (clnhello) values ('helloworLd');
--ex 4 5
select instr(clnHello,'l',-1,1) from exercise2;

select lower(substr(clnHello,6,10)) || ' ' || substr(clnHello,1,5) from exercise2;
--

--ex6 
create table LAND (LandID number, Dimensions varchar2(50) , Price number, DimensionTotal number);

select*from land;

insert into land (landid,dimensions,price,dimensiontotal)
values(1,'230*400',8280000,230*400);

insert into land (landid,dimensions,price,dimensiontotal)
values(2,'90*40',3240000,90*40);

insert into land (landid,dimensions,price,dimensiontotal)
values(3,'250*80',1400000,250*80);

insert into land (landid,dimensions,price,dimensiontotal)
values(4,'412*157',1293680,412*157);
commit;
select*from land;
--ex7
select price/dimensiontotal as singlePrice from land;
commit;
--ex8
select land.* , substr(dimensions,0,instr(dimensions,'*')-1 )as latitude from land;


select land.* , substr(dimensions,instr(dimensions,'*',-1)+1 )as longitude from land;

select*from land;


select t.* ,
case when (price/t.dimensiontotal) >=100 then 'Expensive'
when  (price/t.dimensiontotal) between 100 and 50 then 'Mid-Priced'
else 'Cheap'
end as CommentOnLand
from land t;


--ex date frequency

create table date_grg(customerid number, date1 date, freq_format varchar(20));

insert into date_grg(customerid,
                     date1,
                     freq_format)
values (4536,to_date('20/11/2018','DD/MM/YYYY'),'Yearly2');

insert into date_grg(customerid,
                     date1,
                     freq_format)
values (1243,to_date('30/04/2019','DD/MM/YYYY'),'yearly');   

insert into date_grg(customerid,
                     date1,
                     freq_format)
values (5235,to_date('20/10/2019','DD/MM/YYYY'),'daily');

insert into date_grg(customerid,
                     date1,
                     freq_format)
values (7463,to_date('18/07/2019','DD/MM/YYYY'),'Semester');

insert into date_grg(customerid,
                     date1,
                     freq_format)
values (6346,to_date('27/01/2020','DD/MM/YYYY'),'quarter'); 

insert into date_grg(customerid,
                     date1,
                     freq_format)
values (6537,to_date('05/10/2019','DD/MM/YYYY'),'EOM');

insert into date_grg(customerid,
                     date1,
                     freq_format)
values (8653,to_date('03/02/2019','DD/MM/YYYY'),'Half');                

UPDATE date_grg
SET date1=TO_DATE('01/01/2022', 'MM/DD/YYYY')
WHERE freq_format='EOM';

UPDATE date_grg
SET date1=TO_DATE('04/22/2022', 'MM/DD/YYYY')
WHERE freq_format='Yearly';

select d.*,
case upper(freq_format) 
   when 'Yearly2' then add_months(d.date1, 24)
    when 'yearly' then add_months(d.date1, 12)
      when 'daily' then d.date1+1 
        when 'Semester' then add_months(d.date1, 3)
          when 'quarter' then add_months(d.date1, 4)
            when 'EOM' then last_day(d.date1)
              when 'Half' then add_months(d.date1, 6)
end as Next_Payment
from date_grg d; 
 

select add_months(current_date,1) from dual ; 
 


          
        
    
  

