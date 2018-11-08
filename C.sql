use sqlpractice

Drop table AgentPolicy

create table AgentPolicy
(
   AgentID INT REFERENCES Agent(AgentID),
   PolicyID INT REFERENCES Policy(PolicyID),
   IsSplitAgent INT,
   constraint pk_agp primary Key(AgentID,PolicyID)
)

truncate table AgentPolicy

select * from AgentPolicy

INSERT INTO AGENTPOLICY(AGENTID,POLICYID,IsSplitAgent)
VALUES(1,1,2),
					(1,3,1),
					(2,3,1),
					(2,1,1),
					(2,4,1),
					(2,5,1),
					(4,1,2),
					(4,3,1),
					(5,1,2),
					(5,2,1)

select * from AgentPolicy

Select 
		Agent.AgentId,
		firstName,
        Lastname,
        City,
        SSn,
        IsSplitAgent
From
agent,
agentpolicy
where agent.agentId=Agentpolicy.agentId

--ansii standards

select 
    Agent.agentId,
    FirstName,
    LastName,
    City,
    SSN,
    Issplitagent
    
From
agent inner join
Agentpolicy
on Agent.agentid=Agentpolicy.agentId

--Above query with alias

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

---policy

select 
		p.PolicyId,
        Appnumber,
        Modalpremium,
        AnnualPremium,
        PaymentmodeId,
        Issplitagent
from
Policy p
inner join
agentpolicy ap
on p.PolicyId=ap.PolicyId

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

select * from agent
cross join
agentpolicy


select * from policy
cross join
agentpolicy