use Attendance_system
-----insert into working_type record---------
insert into working_type(working_type)
values('Regular'),('off day'),('Half day')

-----insert into attendace_system record ---------
insert into attendace_system(attendace_system_type)
values('Menual type'),('Finger print'),('Signature')

-----insert into in_out_reason_type record ---------
insert into in_out_reason_type(Reason_remarks,Reason_type)
values
						('Attendance','in'),
						('late','in'),
						('Client visit','in'),
						('Client visit','out'),
						('Personal work','in'),
						('Personal work','out'),
						('Early leave','out'),
						('Office leave','out')

-------insert into employee record-----------
insert into Employee(Emoloyee_name,Gender,Contact,Email)
values
			('Sojib','Male',01494747474,'Sojib@gmail.com'),
			('Monjo','Male',01796395006,'mdmonjo030@gmail.com'),
			('Nahid','Male',01894747474,'nahid@gmail.com'),
			('Rasel','Male',01694747474,'resel@gmail.com'),
			('Jonayet','Male',0189457474,'jonayet@gmail.com'),
			('Arif','Male',01987485333,'arif@gmail.com')

			--('Emon','Male',01694747474,'emon@gmail.com'),
			--('Emran','Male',01490947474,'emran@gmail.com'),
			--('Khadiza','feMale',01894747474,'khaza@gmail.com'),
			--('Ratna','feMale',01694747474,'ratna@gmail.com'),
			--('Beli','feMale',01394747474,'beli@gmail.com'),
			

--------------insert into department record-----------

insert into department (Department_ID,Department_name)
values
				(1,'Design department'),
				(2,'Cutting department')

				
	
--------------insert into job title record-----------
insert into job_title(Job_title)
values
					('Sr .Manager'),
					('jr .Manager'),
					('IE officer')				
--------------insert into Office_schedule_mst record-----------
insert into Office_schedule_mst(Office_working_date,Start_time,End_time,System_type_id,working_type_id,consider_start_time,consider_end_time)
values
				('2022-08-01','9:00:00 AM','5:00:00 PM',3,1,'9:05:00 AM','4:55:00 PM'),
				('2022-08-02','9:00:00 AM','5:00:00 PM',2,1,'9:05:00 AM','4:55:00 PM'),
				('2022-08-03','9:00:00 AM','5:00:00 PM',2,2,'9:05:00 AM','4:55:00 PM'),
				('2022-08-04','9:00:00 AM','5:00:00 PM',3,1,'9:05:00 AM','4:55:00 PM'),
				('2022-08-05','9:00:00 AM','5:00:00 PM',2,1,'9:05:00 AM','4:55:00 PM'),
				('2022-08-06','9:00:00 AM','2:00:00 PM',1,3,'9:05:00 AM','1:55:00 PM'),
				('2022-08-07','9:00:00 AM','5:00:00 PM',2,1,'9:05:00 AM','4:55:00 PM'),
				('2022-08-08','9:00:00 AM','2:00:00 PM',2,3,'9:05:00 AM','1:55:00 PM'),
				('2022-08-10','9:00:00 AM','5:00:00 PM',2,1,'9:05:00 AM','4:55:00 PM'),
				('2022-08-11','9:00:00 AM','5:00:00 PM',2,2,'9:05:00 AM','4:55:00 PM')

--------------insert into Office_in_out_details record-----------
insert into Office_in_out_details(Employee_in_date_time,Employee_out_date_time,Employee_id,In_reason_id,Out_reason_id,In_reason_remarks,Out_reason_remarks,office_attend_duration,schedule_id,department_ID,Job_id)
values
('2022-08-01 9:00:00 AM','2022-08-01 5:00:00 PM',1001,1,8,'Office attendance','office leave','8hr',1,1,1),
('2022-08-01 9:00:00 AM','2022-08-01 4:00:00 PM',1002,1,7,'Office attendance','early leave','7hr',1,1,2),
('2022-08-01 9:00:00 AM','2022-08-01 5:00:00 PM',1003,1,8,'Office attendance','office leave','8hr',1,1,3),
('2022-08-01 9:00:00 AM','2022-08-01 5:00:00 PM',1004,1,8,'Office attendance','office leave','8hr',1,2,1),
('2022-08-01 9:00:00 AM','2022-08-01 5:00:00 PM',1005,1,8,'Office attendance','office leave','8hr',1,2,2),
('2022-08-01 9:00:00 AM','2022-08-01 5:00:00 PM',1006,1,8,'Office attendance','office leave','8hr',1,2,3),



('2022-08-02 9:00:00 AM','2022-08-02 5:00:00 PM',1001,1,8,'Office attendance','office leave','8hr',2,1,1),
('2022-08-02 9:00:00 AM','2022-08-02 5:00:00 PM',1002,1,8,'Office attendance','office leave','8hr',2,1,2),
('2022-08-02 9:00:00 AM','2022-08-02 5:00:00 PM',1003,1,8,'Office attendance','office leave','8hr',2,1,3),
('2022-08-02 9:00:00 AM','2022-08-02 5:00:00 PM',1004,1,8,'Office attendance','office leave','8hr',2,2,1),
('2022-08-02 10:00:00 AM','2022-08-02 5:00:00 PM',1005,2,8,'Office late','office leave','7hr',2,2,2),


('2022-08-04 9:00:00 AM','2022-08-04 5:00:00 PM',1001,1,8,'Office attendance','office leave','8hr',3,1,1),
('2022-08-04 9:20:00 AM','2022-08-04 5:00:00 PM',1002,2,8,'Office late','office leave','7:40hr',3,1,2),
('2022-08-04 9:00:00 AM','2022-08-04 5:00:00 PM',1003,1,8,'Office attendance','office leave','8hr',3,1,3),
('2022-08-04 9:00:00 AM','2022-08-04 4:00:00 PM',1004,1,7,'Office attendance','early leave','7hr',3,2,1),
('2022-08-04 1:00:00 PM','2022-08-04 5:00:00 PM',1006,3,4,'client visit','client out','4hr',3,2,3),


('2022-08-05 9:00:00 AM','2022-08-05 5:00:00 PM',1001,1,8,'Office attendance','office leave','8hr',4,1,1),
('2022-08-05 9:20:00 AM','2022-08-05 4:00:00 PM',1002,2,7,'Office late','early leave','6:40hr',4,1,2),
('2022-08-05 12:00:00 AM','2022-08-05 5:00:00 PM',1003,3,4,'client visit','client out','5hr',4,1,3),
('2022-08-05 1:00:00 AM','2022-08-05 5:00:00 PM',1004,5,6,'personal work','personal work','4hr',4,2,1),
('2022-08-05 9:00:00 AM','2022-08-05 2:00:00 PM',1005,1,7,'Office attendance','early leave','5hr',4,2,2),
('2022-08-05 9:00:00 AM','2022-08-05 5:00:00 PM',1006,1,8,'Office attendance','office leave','8hr',4,2,3),


('2022-08-06 9:00:00 AM','2022-08-06 2:00:00 PM',1001,1,8,'Office attendance','office leave','5hr',6,1,1),
('2022-08-06 9:00:00 AM','2022-08-06 1:00:00 PM',1002,1,7,'Office attendance','early leave','4hr',6,1,2),
('2022-08-06 9:00:00 AM','2022-08-06 2:00:00 PM',1003,1,8,'Office attendance','office leave','5hr',6,1,3),
('2022-08-06 9:00:00 AM','2022-08-06 2:00:00 PM',1004,1,8,'Office attendance','office leave','5hr',6,2,1),
('2022-08-06 9:00:00 AM','2022-08-06 1:00:00 PM',1005,1,7,'Office attendance','early leave','4hr',6,2,2),
('2022-08-06 9:00:00 AM','2022-08-06 2:00:00 PM',1006,1,8,'Office attendance','office leave','5hr',6,2,3),

('2022-08-07 9:00:00 AM','2022-08-07 2:00:00 PM',1001,1,7,'Office attendance','early leave','5hr',7,1,1),
('2022-08-07 9:00:00 AM','2022-08-07 5:00:00 PM',1002,1,8,'Office attendance','office leave','8hr',7,1,2),
('2022-08-07 9:00:00 AM','2022-08-07 5:00:00 PM',1004,1,8,'Office attendance','office leave','8hr',7,2,1),
('2022-08-07 10:00:00 AM','2022-08-07 3:00:00 PM',1005,2,7,'Office late','early leave','5hr',7,2,2),
('2022-08-07 9:00:00 AM','2022-08-07 5:00:00 PM',1006,1,8,'Office attendance','office leave','8hr',7,2,3),

('2022-08-08 9:00:00 AM','2022-08-08 2:00:00 PM',1001,1,8,'Office attendance','office leave','5hr',8,1,1),
('2022-08-08 9:00:00 AM','2022-08-08 2:00:00 PM',1002,1,8,'Office attendance','office leave','5hr',8,1,2),
('2022-08-08 9:00:00 AM','2022-08-08 2:00:00 PM',1003,1,8,'Office attendance','office leave','5hr',8,1,3),
('2022-08-08 9:00:00 AM','2022-08-08 2:00:00 PM',1004,1,8,'Office attendance','office leave','5hr',8,2,1),
('2022-08-08 9:00:00 AM','2022-08-08 2:00:00 PM',1005,1,8,'Office attendance','office leave','5hr',8,2,2),
('2022-08-08 9:00:00 AM','2022-08-08 2:00:00 PM',1006,1,8,'Office attendance','office leave','5hr',8,2,3),

('2022-08-09 11:00:00 AM','2022-08-09 5:00:00 PM',1002,3,4,'client visit','client out','6hr',9,1,2),
('2022-08-09 9:00:00 AM','2022-08-09 4:00:00 PM',1003,1,7,'Office attendance','early leave','7hr',9,1,3),
('2022-08-09 9:00:00 AM','2022-08-09 5:00:00 PM',1004,1,8,'Office attendance','office leave','8hr',9,2,1),
('2022-08-09 10:30:00 AM','2022-08-09 5:00:00 PM',1005,2,8,'office late','office leave','6:30hr',9,2,2),
('2022-08-09 9:00:00 AM','2022-08-09 5:00:00 PM',1006,1,8,'Office attendance','office leave','8hr',9,2,3),

('2022-08-10 12:00:00 AM','2022-08-10 5:00:00 PM',1001,5,6,'personal work','personal work','5hr',10,1,1),
('2022-08-10 9:00:00 AM','2022-08-10 2:00:00 PM',1002,1,7,'Office attendance','early leave','5hr',10,1,2),
('2022-08-10 10:00:00 AM','2022-08-10 3:00:00 PM',1003,2,8,'Office late','early leave','5hr',10,1,3),
('2022-08-10 9:00:00 AM','2022-08-10 5:00:00 PM',1004,1,8,'Office attendance','office leave','8hr',10,2,1),
('2022-08-10 12:00:00 AM','2022-08-10 5:00:00 PM',1005,2,8,'Office late','office leave','5hr',10,2,2),
('2022-08-10 9:00:00 AM','2022-08-10 5:00:00 PM',1006,1,8,'Office attendance','office leave','8hr',10,2,3)



------DISTINCT keyword find out department Office_in_out_details table---------
SELECT DISTINCT Department_name 
FROM Office_in_out_details o join department  d
on o.department_id=d.Department_ID

-------- find out TOP 10 rows in  Office_in_out_details table--------
SELECT TOP 10 * FROM Office_in_out_details;

-------- find out employee office_attend_duration 7hr using where keyword Office_in_out_details table------
SELECT * FROM Office_in_out_details where office_attend_duration ='7hr'

--------find out cutting department  and employee office duration 7hr using and keyword Office_in_out_details table---------
SELECT *
FROM Office_in_out_details o join department d
on o.department_ID=d.Department_ID
WHERE  o.office_attend_duration='8hr' and d.Department_name='design department'

--------find out cutting department  and employee office duration 7hr using or keyword Office_in_out_details table---------
SELECT *
FROM Office_in_out_details o join department d
on o.department_ID=d.Department_ID
WHERE  o.office_attend_duration='8hr' or d.Department_name='design department'

--------not showing department 1 id using NOT keyword Office_in_out_details table--------
SELECT * FROM Office_in_out_details
WHERE NOT department_id=1;

-----------showing 1004,1005,1006 department using IN keyword Office_in_out_details table------------
SELECT * FROM Office_in_out_details
WHERE Employee_id IN (1004,1005,1006);

----------- Not showing 1004,1005,1006 department using not IN keyword Office_in_out_details table------------
SELECT * FROM Office_in_out_details
WHERE Employee_id not IN (1004,1005,1006);

------------employee id 1001 BETWEEN 1004  Office_in_out_details table-----------
SELECT * FROM Office_in_out_details
WHERE Employee_id BETWEEN 1001 AND 1004;


-----------IS not  NULL  in Office_in_out_details table -----------
SELECT * FROM Office_in_out_details
WHERE department_id IS Not Null
-----------IS   NULL  in Office_in_out_details table -----------
SELECT * FROM Office_in_out_details
WHERE department_id IS  Null

----------------- find out employee name using ORDER BY DESC-------------
SELECT e.Emoloyee_name,d.Department_name
FROM Office_in_out_details o join Employee e on
o.Employee_id =e.Employee_ID
join department d on d.Department_ID=o.department_ID
ORDER BY e.Emoloyee_name desc

----------------- find out employee name using ORDER BY asc-------------
SELECT e.Emoloyee_name,d.Department_name
FROM Office_in_out_details o join Employee e on
o.Employee_id =e.Employee_ID
join department d on d.Department_ID=o.department_ID
ORDER BY e.Emoloyee_name asc



--------join query find out  employee name, job title, departmentname,datewise attendence systemtype--------
select o.Employee_in_date_time,o.Employee_out_date_time, e.Emoloyee_name,j.Job_title,d.Department_name,a.attendace_system_type
from Office_in_out_details o join Employee e on o.Employee_id=e.Employee_ID
join job_title j on o.Job_id=j.Job_title_ID
join department d on d.Department_ID=o.department_ID
join Office_schedule_mst offi on offi.schedule_id=o.schedule_id
join attendace_system a on a.attendace_system_ID=offi.System_type_id
order by Emoloyee_name asc

-----find out monthly max attendece employee name using sub query------------
select e.Emoloyee_name,count(e.Emoloyee_name) as maxattendence 
from Office_in_out_details o join Employee e on o.Employee_id=e.Employee_ID
group by e.Emoloyee_name
having count(e.Emoloyee_name) = (select max(cnt)
                             from (select Employee_id, count(Employee_id) as cnt
                                   from Office_in_out_details
                                   group by Employee_id
                                  ) rc
                            );

--- find out employee performence using case,employee attendence 8 grater than highest perfomence---
--7 grather than average perfomence,7 less than poor perfomence-----
select e.Emoloyee_name,count(e.Employee_Id)as nooforders,
CASE
    WHEN count(e.Employee_ID)>8 THEN'Highest performance'
    WHEN count(e.Employee_Id)>=7 THEN 'Average performance'
    ELSE 'poor performance'
end as perfomence
from Office_in_out_details o join Employee e   on e.Employee_ID=o.Employee_id
group by e.Emoloyee_name
go

-------- find out  employee name, job title, department,attendence system type with CTE--------
with CTE_AttendenceType(Emoloyee_name,Job_title,Department_name,attendace_system_type)
as(
select  e.Emoloyee_name,j.Job_title,d.Department_name,a.attendace_system_type
from Office_in_out_details o join Employee e on o.Employee_id=e.Employee_ID
join job_title j on o.Job_id=j.Job_title_ID
join department d on d.Department_ID=o.department_ID
join Office_schedule_mst offi on offi.schedule_id=o.schedule_id
join attendace_system a  on a.attendace_system_ID=offi.System_type_id
group by Emoloyee_name,Department_name,job_title,attendace_system_type
)
select * from CTE_AttendenceType

------------marge into department table---------
select * into departmentcopy from department

merge into departmentcopy as de
using department as d ON de.department_id=d.department_id
WHEN Matched then
update set de.department_name=d.department_name
when not Matched then 
insert (department_id,department_name) 
values (d.department_id,d.department_name)
when not matched by source
then delete;
select *from department

---showing departmentcopy---
select * from departmentcopy
--insert values--
insert into department (Department_ID,Department_name)
values(3,'shipping')
--update values--
update department  set Department_name='printting section' where Department_name='shiping'
---delete values---
delete from department
where Department_ID=3

-----value insert sp office Office_in_out_details table-----
execute sp_Office_in_out_details '2022-08-10 9:00:00 AM','2022-08-10 5:00:00 PM',1006,1,8,'Office attendance','office leave','8hr',10,2,3
-----showing table Office_in_out_details---
select * from Office_in_out_details

-----value delete in_out_id  sp office Office_in_out_details table -----
execute sp_Office_in_out_detailsdelete 50
-----------showing table----------
select * from Office_in_out_details


-----value update sp office Office_in_out_details table-----
execute sp_Office_in_out_detailsupdate '2022-08-01 9:00:00 AM','2022-08-01 5:00:00 PM',1001,1,8,'Office attendance','office leave','8hr',1,1,1
----showing table-----
select * from Office_in_out_details

------execute output peramitter in count empoyee_id----
declare @empoloyee_id int 
execute sp_Office_in_out_details_outputperamiter @empoloyee_id output
print @empoloyee_id


-----showing scelar function------
select dbo.fn_Office_in_out_details()

------showing table value function-----
select * from dbo.fn_Office_in_out_detailstblvalue();

 -------showing multi statement function--------
 select * from dbo.fn_office_in_out_detailsmulti()


 -----insert table after trigger-----
insert into Employee(Emoloyee_name,Gender,Contact,Email)
values
			('sakil','Male',01987485333,'sakil@gmail.com')

-----update table after trigger-------
	update Employee
	set Emoloyee_name='sojib'
	where Employee_ID=1001

------showing table---------
	select* from Employee
	select* from employeebackuptbl


-------delete employee_id instead of trigger------
delete from Office_in_out_details where Employee_id=1002
-------showing table-------
select * from Office_in_out_details
select * from Office_in_out_details_log


------------date cast------------
select cast('01-june-2019 10AM' as date);
-------------date convert------------
 select convert(datetime, '01-june-2019 10:00 AM');

--------show table-----
select * from working_type
select * from attendace_system
select * from in_out_reason_type
select * from Office_schedule_mst
select * from Office_in_out_details
select * from department
select * from departmentcopy
select * from job_title
select * from Employee
select * from employeebackuptbl
select * from office_in_out_details_log


