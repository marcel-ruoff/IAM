CREATE DATABASE IamDb; 

CREATE TABLE iam_objects
( 
  IamObjectID varchar(255),
  IamDsiplayname varchar(255),
  IamUniqueName varchar(255),
  IamCreatedAt date,
  IamCreatedBy varchar(255),
  IamInactive int
);
CREATE TABLE iam_values
(  IamId varchar(255),
   IamAttrId varchar(255),
   IamAttrTimestamp varchar(255),
   IamAttrAddedBy varchar(255)
);
CREATE TABLE iam_attributes
( 
  IamAttrid varchar(255),
  IamAttrname varchar(255),
  IamDescription varchar(255)
);
CREATE TABLE iam_links
(  
   IamLinkId varchar(255),
   IamLeftKeyId varchar(255),
   IamRightKeyId varchar(255),
   IamLinkAdd date,
   IamLinkModify date,
   IamLinkState varchar varchar(255),
   IamDirectLink varchar varchar(255),
   IamLinkAssignedDynamic varchar(255),
   IamProcessFlag varchar(255)
);
CREATE TABLE iam_linkaudit
(  
 IamLinkID varchar(255),
 IamActionDone varchar(255),
 IamActionBy varchar(255),
 IamAuditTime date
);
CREATE TABLE iam_valueaudit
(  
 IamObjectID varchar(255),
 IamActionDone varchar(255),
 IamActionBy varchar(255),
 IamAuditTime date
);
CREATE TABLE iam_provisiondata
(  
 IamObjectID varchar(255),
 IamTargetSystem varchar(255),
 IamWorkflow varchar(255),
 IamAddedBy varchar(255),
 IamTime date
);
CREATE TABLE iam_targetsystems
(  
 IamTargetSystemID varchar(255),
 IamTargtSystemName  varchar(255),
 IamTargetSystemInactive varchar(255),
 IamTargetSystemDescription varchar(255)
);
CREATE TABLE iam_workflow
(  
 IamWorkflowID int,
 IamParentID int,
 IamContent LONGBLOB
);
CREATE TABLE iam_jobs
(  
 IamJobID varchar(255),
 IamParentID int,
 IamContent LONGBLOB
);
CREATE TABLE iam_structure
(  
 ParentID int,
 ChildID int
);

CREATE UNIQUE INDEX IAM_UNIQUEID ON iam_objects(IamObjectID); 
CREATE UNIQUE INDEX IAM_UNIQUENAME ON iam_objects(IamUniqueName); 
CREATE UNIQUE INDEX IAM_UNIQUEID ON iam_targetsystems(IamTargetSystemID); 
