
drop database Attendance_system
------Answer to the  question no:1-------------
create database Attendance_system
on
(
name = 'Attendance_system_Data_1',
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Attendance_system_Data_1.mdf',
size = 25mb,
maxsize = 100mb,
filegrowth = 5%
)
log on(
name = 'Attendance_system_Log_1',
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Attendance_system_log_1.ldf',
size = 2mb,
maxsize = 50mb,
filegrowth = 1%
)
----database select---
use Attendance_system
---------create table---------
create table working_type(
working_type_ID int primary key not null identity(1,1),
working_type varchar(50)
)
create table attendace_system(
attendace_system_ID int not null primary key identity(1,1),
attendace_system_type varchar(50)
)

create table in_out_reason_type(
In_out_reason_type_ID int not null primary key identity(1,1),
Reason_remarks varchar(50),
Reason_type varchar(50)
)
create table Office_schedule_mst(
schedule_id int not null primary key identity(1,1),
Office_working_date date,
Start_time time,
End_time time,
System_type_id int references attendace_system(attendace_system_ID),
working_type_id int references working_type(working_type_ID),
consider_start_time time,
consider_end_time time,
)

create table Employee(
Employee_ID int primary key not null identity(1001,1),
Emoloyee_name varchar(50),
Gender varchar(50),
Contact int,
Email varchar(50),
)

create table department(
Department_ID int not null primary key,
Department_name varchar(50)
)
create table job_title(
Job_title_ID int not null primary key identity(1,1),
Job_title varchar(50),
)

create table Office_in_out_details(
In_out_id int not null primary key identity (1,1),
Employee_in_date_time datetime,
Employee_out_date_time datetime,
Employee_id int references Employee(Employee_ID),
In_reason_id int references in_out_reason_type(In_out_reason_type_ID),
Out_reason_id int references in_out_reason_type(In_out_reason_type_ID),
In_reason_remarks varchar(50),
Out_reason_remarks varchar(50),
office_attend_duration varchar (50),
schedule_id int references Office_schedule_mst(schedule_id),
department_ID int references department(department_id),
Job_id int references job_title(job_title_id)
)
----create index----
create index department
on department (department_id)
----showing index---
sp_helpindex department

-------sp insert into Office_in_out_details--------
drop proc sp_Office_in_out_details
create proc sp_Office_in_out_details
@Employee_in_date_time datetime,
@Employee_out_date_time datetime,
@Employee_id int,
@In_reason_id int,
@Out_reason_id int,
@In_reason_remarks varchar(50),
@Out_reason_remarks varchar(50),
@office_attend_duration varchar (50),
@schedule_id int,
@department_ID int,
@Job_id int

as
begin
insert into Office_in_out_details(Employee_in_date_time,Employee_out_date_time,Employee_id,In_reason_id,Out_reason_id,In_reason_remarks,Out_reason_remarks,office_attend_duration,schedule_id,department_ID,Job_id)
values(@Employee_in_date_time,@Employee_out_date_time,@Employee_id,@In_reason_id,@Out_reason_id,@In_reason_remarks,@Out_reason_remarks,@office_attend_duration,
@schedule_id,@department_ID,@Job_id);
end;
go


-----------sp delete into Office_in_out_details--------
drop proc sp_Office_in_out_detailsdelete
create proc sp_Office_in_out_detailsdelete
@in_out_id int
as 
begin
delete from Office_in_out_details where In_out_id=@in_out_id
end;
go



-------sp upadate into Office_in_out_details--------

create proc sp_Office_in_out_detailsupdate
@Employee_in_date_time datetime,
@Employee_out_date_time datetime,
@Employee_id int,
@In_reason_id int,
@Out_reason_id int,
@In_reason_remarks varchar(50),
@Out_reason_remarks varchar(50),
@office_attend_duration varchar (50),
@schedule_id int,
@department_ID int,
@Job_id int
as 
begin
update Office_in_out_details set job_id=@Job_id
where Employee_in_date_time=@Employee_in_date_time and Employee_out_date_time=@Employee_out_date_time
and Employee_id=@Employee_id and In_reason_id=@In_reason_id and Out_reason_id=@Out_reason_id
and In_reason_remarks=@In_reason_remarks and Out_reason_remarks=@Out_reason_remarks 
and office_attend_duration=@office_attend_duration and schedule_id=@schedule_id 
and department_ID=@department_ID
end


-------sp  into Office_in_out_details with output peramitter--------
drop proc sp_Office_in_out_details_outputperamiter
create proc sp_Office_in_out_details_outputperamiter
@empoloyee_id int output
as 
begin 
select @empoloyee_id=count(employee_id) from Office_in_out_details
end




-----------scaler value fn Office_in_out_details-----------
create function fn_Office_in_out_details()
returns int
begin
DECLARE @c int
select @c = COUNT(Employee_id) from Office_in_out_details;
return @c;
end
go


-------------table value fn office in_out_detailes datewise finger print----------
create function fn_Office_in_out_detailstblvalue
()
returns table 
return
(
 select o.Employee_in_date_time,o.Employee_out_date_time, e.Emoloyee_name,j.Job_title,d.Department_name,a.attendace_system_type
from Office_in_out_details o join Employee e on o.Employee_id=e.Employee_ID
join job_title j on o.Job_id=j.Job_title_ID
join department d on d.Department_ID=o.department_ID
join Office_schedule_mst offi on offi.schedule_id=o.schedule_id
join attendace_system a on a.attendace_system_ID=offi.System_type_id
where attendace_system_type='finger print'
)


-------------multi statement function fn_office_in_out_details----------
create function fn_office_in_out_detailsmulti()
Returns @outTable table(
Employee_in_date_time datetime,
Employee_out_date_time datetime,
Employee_id int,
In_reason_id int,
Out_reason_id int,
In_reason_remarks varchar(50),
Out_reason_remarks varchar(50),
office_attend_duration varchar (50),
schedule_id int,
department_ID int,
Job_id int
)
begin
		insert into @outTable(Employee_in_date_time,Employee_out_date_time,Employee_id,In_reason_id,Out_reason_id,In_reason_remarks,Out_reason_remarks,office_attend_duration,schedule_id,department_ID,Job_id)
    	select Employee_in_date_time,Employee_out_date_time,Employee_id,In_reason_id,Out_reason_id,In_reason_remarks,Out_reason_remarks,office_attend_duration,schedule_id,department_ID,Job_id
		from Office_in_out_details;
		return;
end;
-----------------After trigger----------------- 
drop table employeebackuptbl

Create table employeebackuptbl(
Employee_ID int primary key not null identity(1001,1),
Emoloyee_name varchar(50),
Gender varchar(50),
Contact int,
Email varchar(50),
UpdatedBy varchar(30),
UpdatedOn datetime
)
--------------After Trigger----------------
drop trigger tr_employeebackuptblrecord
Create Trigger tr_employeebackuptblrecord
on employee
after update, insert
as
begin
	insert into employeebackuptbl(Emoloyee_name,Gender,Contact,Email,UpdatedBy,UpdatedOn)
	select i.Emoloyee_name,i.Gender,i.Contact,i.Email,SUSER_SNAME(),getdate()
	from Employee t
	inner join inserted i on t.Employee_ID=i.Employee_ID
end
go 

---------instead of trigger--------------
drop table Office_in_out_details_log
create table Office_in_out_details_log(
Id int identity (1,1) primary key,
employeeid int,
action varchar(50)
)

drop trigger tr_Office_in_out_details_log
create trigger tr_Office_in_out_details_log
on Office_in_out_details 
instead of delete 
as
begin 
declare @employeeID int
select @employeeID =deleted.Employee_id
from deleted
if @employeeID=1001
begin 
Raiserror('employeeid 1001 cannot be deleted',16,1)
Rollback
insert into Office_in_out_details_log values(@employeeID,'cannot be deleted')
end
else 
begin 
delete from Office_in_out_details where Employee_id=@employeeID
insert into Office_in_out_details_log values(@employeeID,'insted of delete')
end
end

--------view table---------
create view viewtbl
as
select o.Employee_in_date_time,o.Employee_out_date_time, e.Emoloyee_name,j.Job_title,d.Department_name,a.attendace_system_type
from Office_in_out_details o join Employee e on o.Employee_id=e.Employee_ID
join job_title j on o.Job_id=j.Job_title_ID
join department d on d.Department_ID=o.department_ID
join Office_schedule_mst offi on offi.schedule_id=o.schedule_id
join attendace_system a on a.attendace_system_ID=offi.System_type_id

------showing view table----
 select * from viewtbl

	


