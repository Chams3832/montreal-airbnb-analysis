SELECT SUSER_SNAME();
SELECT SUSER_SNAME();

SELECT IS_ROLEMEMBER('db_owner');

CREATE TABLE Employes (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Salaire DECIMAL(10,2)
);


ALTER ROLE db_owner ADD MEMBER [ChamssouADF];

ALTER ROLE db_owner ADD MEMBER [ChamssouADF];

CREATE USER [ChamssouADF] FROM EXTERNAL PROVIDER;

ALTER ROLE db_owner ADD member [ChamssouADF];

CREATE USER [ChamssouADF] FROM EXTERNAL PROVIDER;
ALTER ROLE db_owner ADD MEMBER [ChamssouADF];

SELECT * 
FROM sys.database_principals 
WHERE name = 'ChamssouADF';

SELECT * FROM sys.database_principals WHERE name = 'ChamssouADF';


SELECT * FROM sys.database_role_members WHERE member_principal_id = USER_ID('ChamssouADF');

USE chamssoudb;
GO
CREATE USER [ChamssouADF] FROM EXTERNAL PROVIDER;
ALTER ROLE db_owner ADD MEMBER [ChamssouADF];

DROP USER IF EXISTS [ChamssouADF];
GO

CREATE USER [ChamssouADF] FROM EXTERNAL PROVIDER;
GO

ALTER ROLE db_owner ADD MEMBER [ChamssouADF];
GO

USE chamssoudb;
GO

SELECT name, type_desc 
FROM sys.database_principals 
WHERE name = 'ChamssouADF';
SELECT SUSER_SNAME();

SELECT 
    dp.name AS user_name,
    rp.name AS role_name
FROM sys.database_role_members drm
JOIN sys.database_principals rp ON drm.role_principal_id = rp.principal_id
JOIN sys.database_principals dp ON drm.member_principal_id = dp.principal_id
WHERE dp.name = 'ChamssouADF';











