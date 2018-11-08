Create database classroom

use classroom

                                                                                                                     

Create table Employ
(
		Empno int,
        Name Varchar(30) not null,
        Dob Date not null ,
        Dept Varchar(30),
        desig Varchar(30),
        salary int ,
        primary key(empno)
)

Insert Into Employ(Name,dept,desig,Basic) values
values('Shyam','1996-10-20','fullstack','Developer',66222),
('Lakshmi','1996-10-20','Java','Developer',57155),

('Vaibhav','1995-12-22','fullstack','Expert',99322),

('Anshuman','1994-10-12','sql','DBA',88233)

Drop table emp

Create table emp
(
   Empno int auto_increment,
   name varchar(30) not null,
   dept varchar(10),
   desig varchar(30),
   basic int,
   primary key(Empno))

drop table agent if exists

Create table agent
(
	AgentId Int Auto_increment,
    FirstName varchar(30),
    MI varchar(1),
    LastName varchar(30),
    FullName varchar(80),
    Gender varchar(10),
    Dob date,
    SSN varchar(30),
    MartialStatus Int,
    Address1 varchar(30),
    Address2 varchar(30),
    city varchar(30),
    State varchar(30),
    zipcode varchar(30),
    country varchar(30),
    primary key(AgentID)
    )
    
Insert into Agent(FirstName,MI,LastName,Gender,DOB,SSN,MaritalStatus,Address1,Address2,City,STATE,ZipCode,Country)
values('Sunitha','P','Premjee','Female','1988-02-01','434-55-3323',
1,'5th Avenue','Near Church','Parlin','NJ','434554','USA'),
('Pranitha','R','Reddy','Female','1986-01-02','324-55-2344',
1,'8th Mile','Sterling Heights','Detroit','MI','442345','USA'), 			
('Shavetha','D','Datta','Female','1980-03-08','643-34-4443',
0,'Dwaraka Nagar','5th Phase','NewDelhi','UP','438533','INDIA'),
('Shanthi','T','Tangvel','Female','1983-09-12','644-23-4534',
1,'Near Food Court','2nd Phase','Chicago','MI','483845','USA'),
('ashraf','V','Vahora','Male','1983-09-10','435-22-5212',
1,'8th Avenue','Church Road','Maywood','NJ','78434','USA') ,
('Ramesh','L','Gole','Male','1981-12-12','643-34-7373',
0,'5th Phase','Sterling Heights','Detroit','MI','477843','USA'),
('Lavanya','S','K','FeMale','1988-12-12','335-44-2344',
0,'LIG B87','ASRAO NR','SECBAD','AP','500062','INDIA'),
('Murali','S','Krishna','Male','1986-09-03',
'234-44-2335',1,'RK HOstel','Ameerpet','HYDBAD','AP',
'500042','INDIA'),
('Raj','S','kumar','Male','1987-12-12',
'345-23-4211',0,'MadhaPur','Nr Cyber Towers','HYDBAD','AP',
'509244','INDIA'),
('Srimukha','S','Manchu','FeMale','1986-12-12',
'231-44-2335',0,'NRS','Madhapur','HYDBAD','AP',
'500042','INDIA'),
('Lalitha','S','B','FeMale','1987-11-12',
'341-23-4211',0,'KondaPur','Nr Stadium','HYDBAD','AP',
'509244','INDIA'),
('Rakesh','K','Chowdary','Male',
'1986-01-12','123-23-2444',1,'8th Mile','Church Road','Detroit',
'MI','484555','USA'),
('Rama','U','Rao','Male',
'1983-01-12','223-43-1444',1,'5th Mile','Ford Street','Chicago',
'NY','2484555','USA'),
('Madhuri','S','M','FeMale',
'1989-12-12','423-33-2444',1,'Beach Street','Univ Road','NewYork',
'CT','5484555','USA'),
('Prafulla','U','Rao','FeMale',
'1987-01-02','523-22-2644',1,'8th Mile','IBM Road','Detroit',
'MI','484555','USA'),
('Prasanna','P','Kumar','Male',
'1980-03-09','423-23-1444',1,'ASRAO NR','Good Luck Cafe','SECBAD',
'AP','500 062','INDIA') 

Create Table Policy
(
  PolicyID int AUTO_INCREMENT,
  AppNumber varchar(30),
  AppDate date,
  PolicyNumber varchar(30),
  AnnualPremium numeric(9,2),
  PaymentModeID int CHECK(PaymentModeID IN(1,2,3)),
  ModalPremium numeric(9,2),
  constraint pk_policy_policyID primary key(PolicyID)
);

INSERT INTO POLICY(APPNUMBER,APPDATE,POLICYNUMBER,
ANNUALPREMIUM,PAYMENTMODEID,MODALPREMIUM)
VALUES('A001','2010-1-12','C001',12000,2,2000),
('A002','2010-12-12','C002',20000,1,12000),
('A003','2010-12-12','C003',150000,1,20000),
('A004','2005-01-02','P001',22000,1,1000),
('A005','2009-09-03','S231',122000,2,22000),
('A006','2010-02-12','A131',232000,2,21000),
('A007','2007-09-11','P231',212000,2,23000),
('A008','2009-11-12','S231',122000,2,22000),
('A009','2009-10-10','I231',192000,1,24000)	

select * from Policy

create table AgentPolicy
(
   AgentID INT REFERENCES Agent(AgentID),
   PolicyID INT REFERENCES Policy(PolicyID),
   IsSplitAgent INT,
   constraint pk_agp primary Key(AgentID,PolicyID)
)

INSERT INTO AGENTPOLICY(AGENTID,POLICYID,IsSplitAgent)
VALUES(1,1,2),(1,3,1),
	(2,3,1),(2,1,1),
	(2,4,1),
					(2,5,1),
					(4,1,2),
					(4,3,1),
					(5,1,2),
					(5,2,1)
select * from AgentPolicy

Create table Student
(
		Sno int primary key,
        name varchar(30),
        sub1 int,
        sub2 int,
        sub3 int,
        total int,
        Aveg float
)

Insert into student(sno,name,sub1,sub2,sub3)
values(1,'Alka',78,56,78),
		(2,'Shyam',99,46,79),
        (3,'puja',84,76,85),
        (4,'gajala',44,89,99)
        
select * from student

update student
set
total=sub1+sub2+sub3,
aveg=(sub1+sub2+sub3)/3

select * from student

------Syntax for update-----
------update table_name set field1=value,field2=value
{where condition}

--Update sub1 value to 90 where sno is 1

update student set sub1=90 where Sno=1

update student set name='vaishnavi' where name='puja'

select * from student

select name,sub1,sub2,sub3,total,aveg, 
case 
when aveg>80 and aveg<90 then 'A'
when aveg>75 and aveg<79 then 'B'
when aveg>70 and aveg<74 then 'C'
    
end 'grade column'
from student

