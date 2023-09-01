SELECT 

distinct 
--SHORE.ClaimNumber,
--Client,
--MemberName,

--replace(membername,',',' ') MName,
--ServiceDate,
----Convert (convert(varchar(10),ServiceDate) as date  'yyyy-mm-dd'),

--CONVERT(date,CAST(ServiceDate as varchar(20)) ) SerDate,
MemberName,
claimid ClaimNumber,
line ClaimLine,
CLM.Fromdate ServiceDate,
Status CurrentStatus,
PaidAmount,
InterestAmt,
units Units,
Paiddate,
CLM.denialreason1  DenialReason
from 
(SELECT *    from STG_CLAIMS_SOUTH_SHORE_LATEST_07062023) SHORE

JOIN 
(SELECT *  fROM STG_CLAIMS_CC) CLM

on SHORE.ClaimNumber=CLM.Claimid
and CONVERT(date,CAST(ServiceDate as varchar(20)) )=FromDate