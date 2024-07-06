select * from CustomerData ;




select * from CustomerData where total<(select max(Total) from CustomerData );

select * from CustomerData where Name in ('Ruchi','Isha');





select TOP 3 *,case when Total<200 then 'Fail' else 'Pass' end as Final_Result, case when grade='A' then 'scholar' else 'non_scholar' end as status from CustomerData order by Name;

select Grade,avg(Total) from CustomerData group by Grade ;

select min(Total) from (select * from CustomerData where Grade='B') as a;

select Total from CustomerData order by Total desc;


create table frst(name varchar(30),Roll_no int,Grade varchar(20));
insert into frst (name,Roll_no,Grade) values('bali',1,'B+'),('kartik',2,'A+'),('digvijay',3,'A');

select * from frst;
select * from CustomerData;
select * from CustomerData as c right join frst as f on c.Grade=f.Grade;
