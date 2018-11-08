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
			
GO


/* 
					****************************************************************************
														    Inserting Data into Policy Table
					****************************************************************************
*/

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

select * from policy;
select maritalstatus from agent;
select firstname, case maritalstatus when 0 then 'unmarried' when 1 then 'married' end 'status' from agent;
select CASE PaymentModeID 
WHEN 1 THEN 'yearly' 
WHEN 2 THEN 'half-yearly' 
WHEN 3 THEN 'quarterly' END 'name' from policy;
SELECT INSTR('Prasanna','a');
SELECT firstname, INSTR(FirstName,'i')from Agent;
SELECT REVERSE('Richa');
SELECT firstname, REVERSE(firstname) from agent;
SELECT lower('Richa');
SELECT upper('Richa');
SELECT left('Richa',4);
Select firstname, left(firstname,2) from agent;
SELECT substring('Richa',2,4);
Select firstname, substring(firstname,2,4) from agent;





SELECT POSITION("a" IN "Anshuman") AS MatchPosition;
SELECT sentencecase(firstname) from agent;


SELECT REVERSE('Anshuman') 

select case
  WHEN INSTR('Anshuman','k')=0 THEN 0
  ELSE  LENGTH('Anshuman')-INSTR(REVERSE('Anshuman'),'k')+1
END 'LastOcc'

SELECT



select upper(left(FirstName,1)) from Agent

select substring(FirstName,2) from Agent 

select concat(upper(left(FirstName,1)),substring(FirstName,2)) 
from Agent

select LEFT('Anshuman Mishra',instr('Anshuman Mishra',' ')), (substring('Anshuman Mishra',instr('Anshuman Mishra',' ')+1)); 
            
select length('misissippi') -length(replace ('Misissippi','i',''));

select firstname from agent where left(firstname,1)= right(firstname,1);

select round(8776.7885,3)
select round(8446.7885,-1)
select round(8446.7885,-2)
select round(8776.7885,-3)

select round(12.0001)
select ceiling(12.0001)

select sum(annualpremium) from policy;
select avg(annualpremium) from policy;
select max(annualpremium) from policy;
select min(annualpremium) from policy;


select count(*) from policy

select 
    A.agentId,
    FirstName,
    LastName,
    City,
    SSN,
    Issplitagent
    
From
agent A
 inner join
Agentpolicy AP
on A.agentid=AP.agentId

select 
    A.agentId,
    FirstName,
    LastName,
    City,
    SSN,
    Issplitagent
    
From
agent A
 left join
Agentpolicy AP
on A.agentid=AP.agentId

select 
     e1.empno,
     e2.empno,
     e1.name,
     e2.name
from empmgr e1
left join empmgr e2
on e1.empno=e2.mgrno;


select max(annualpremium) from policy
where annualpremium<(select max(AnnualPremium) from policy)
 select * from policy

select Appnumber from policy
where select max(annualpremium) from policy) 

 select annualpremium
 from policy p1
 where 3-1=
 (select distinct count(*) from
 policy p2 where p2.annualpremium >
 p1.annualpremium)

select * from agent
where AgentId <>
all(select AgentId from AgentPolicy)

select * from agent
where AgentId <>
any(select AgentId from AgentPolicy)

select * from agent

where AgentId in
(select AgentId from AgentPolicy)
select * from agent
where AgentId NOT IN
(select AgentId from AgentPolicy)
select * from policy
select * from agentpolicy

select * from emp;
select max(basic) from emp
where basic<(select max(basic) from emp);

select name, basic from emp e
where 2-1=(select distinct count(*) from emp e1 where e.basic<e1.basic);

select name, basic from emp e
where 5-1=(select distinct count(*) from emp e1 where e.basic<e1.basic);


select e.empno,e.name,e.dept,l.lavail,l.leavid from emp e
inner join
leavedetails l on e.empno=l.empno; 

select e.empno,e.name,e.dept,l.lavail,l.leavid from emp e
left join
leavedetails l on e.empno=l.empno; 

select e.empno,e.name,e.dept,l.lavail,
case when l.leavid is null then 'no Leaveid' else l.LeavId end 'Leavid'
from emp e
left join
leavedetails l on e.empno=l.empno;

select * from emp
where empno not in
(select empno from leavedetails)

select dept,
case dept when 'java' then 'newyork'
when 'dotnet' then 'washington'
else 'hollywood'
end loc
from emp

select dept,
case dept when 'java' then Basic+1500
when 'dotnet' then Basic+1800
else Basic+1000
end Basic
from emp

select ED.name from
(select name,length(name)-length(replace(name,' ',''))SP from emp)ED
where ED.SP=2

select ED.name from
(select name,length(name)-length(replace(name,' ',''))SP from emp)ED
where ED.SP=0

use sqlpractice
select * from Emp

select dept,sum(basic) from emp
group by dept                                                                                                   

select dept, max(basic),min(basic),avg(basic) from emp group by dept

select dept,sum(basic),count(*) from emp group by dept having count(*)>2

select dept,sum(basic),count(*) from emp where dept in('java','sql') group by dept having count(*)>2 order by dept

select dept,sum(basic),count(*) from emp where dept in('java','sql') group by dept having count(*)>2 order by dept desc

select * from leavedetails


