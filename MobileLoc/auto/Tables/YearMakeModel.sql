﻿CREATE TABLE autos.[YearMakeModel]
(
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Year INT NOT NULL,
	Make NVARCHAR(500) NOT NULL,
	Model NVARCHAR(500) NOT NULL,
	IsActive BIT NOT NULL DEFAULT 1,
	DateCreated DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
	DateModified DATETIME2 NOT NULL DEFAULT GETUTCDATE(),

	CONSTRAINT UQ_autos_YearMakeModel_Year_Make_Model UNIQUE (Year, Make, Model)

)