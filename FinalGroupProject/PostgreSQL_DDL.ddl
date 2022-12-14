
CREATE SCHEMA "Customer";

CREATE SCHEMA "DbSecurity";

CREATE SCHEMA "dDate";

CREATE SCHEMA "dFinalGroupProject";

CREATE SCHEMA "dNumber";

CREATE SCHEMA "dString";

CREATE SCHEMA "Employee";

CREATE SCHEMA "Manufacturer";

CREATE SCHEMA "Marketing";

CREATE SCHEMA "Output";

CREATE SCHEMA "Sales";

CREATE SCHEMA "sdAddress";

CREATE SCHEMA "sdClassTime";

CREATE SCHEMA "sdCountryCode";

CREATE SCHEMA "sdDate";

CREATE SCHEMA "sdFlag";

CREATE SCHEMA "sdId";

CREATE SCHEMA "sdInt";

CREATE SCHEMA "sdInvoiceNumber";

CREATE SCHEMA "sdMarketingType";

CREATE SCHEMA "sdMoney";

CREATE SCHEMA "sdName";

CREATE SCHEMA "sdNote";

CREATE SCHEMA "sdStockCode";

CREATE SCHEMA "sdSystemTime";

CREATE SCHEMA "sdVehicleColor";

CREATE SCHEMA "Triggered";

CREATE TABLE "CategorySalesThresholdLookupTable"
( 
	"LowerThreshold"     integer  NULL ,
	"UpperThreshold"     integer  NULL ,
	"CategoryDescription" varchar(4000)  NULL 
);

CREATE TABLE "dbo"."CommonColumnsForTriggerTemplate"
( 
	"Note"               varchar(200)  NOT NULL ,
	"IsDeleted"          bit  NULL ,
	"TransactionNumber"  integer  NULL ,
	"UserAuthenticatedKey" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  now()
);

CREATE TABLE "Manufacturer"."Country"
( 
	"CountryId"          integer  NOT NULL ,
	"CountryISO3"        char(3)  NOT NULL ,
	"CountryName"        varchar(100)  NULL ,
	"CountryISO2"        char(2)  NULL ,
	"SalesRegion"        varchar(20)  NULL ,
	"ManufacturerVehicleStockId" integer  NOT NULL 
);

ALTER TABLE "Manufacturer"."Country"
	ADD CONSTRAINT "PK_Country" PRIMARY KEY ("CountryId","ManufacturerVehicleStockId");

CREATE TABLE "Triggered"."Country"
( 
	"UserAuthenticatedKey" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  now(),
	"IsDeleted"          bit  NULL ,
	"TransactionNumber"  integer  NULL ,
	"Note"               varchar(200)  NOT NULL ,
	"CountryISO3"        char(3)  NOT NULL ,
	"CountryName"        varchar(100)  NULL ,
	"CountryISO2"        char(2)  NULL ,
	"SalesRegion"        varchar(20)  NULL ,
	"CountryId"          integer  NOT NULL 
);

ALTER TABLE "Triggered"."Country"
	ADD CONSTRAINT "XPKCountry" PRIMARY KEY ("CountryId");

CREATE TABLE "Customer"."Customer"
( 
	"CustomerId"         integer  NOT NULL ,
	"CustomerName"       varchar(100)  NULL ,
	"CustomerAddress1"   varchar(50)  NULL ,
	"CustomerAddress2"   varchar(50)  NULL ,
	"CustomerTown"       varchar(50)  NULL ,
	"CustomerPostalCode" varchar(10)  NULL ,
	"CustomerCountry"    char(2)  NULL ,
	"IsCustomeReseller"  bit  NULL ,
	"IsCustomerCreditRisk" bit  NULL ,
	"CustomerSpendCapacityId" integer  NULL 
);

ALTER TABLE "Customer"."Customer"
	ADD CONSTRAINT "PK_Customer" PRIMARY KEY ("CustomerId");

CREATE TABLE "Triggered"."Customer"
( 
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  now(),
	"Note"               varchar(200)  NULL ,
	"TransactionNumber"  integer  NULL ,
	"IsDeleted"          bit  NULL   DEFAULT  0,
	"CustomerName"       varchar(100)  NULL ,
	"CustomerAddress1"   varchar(50)  NULL ,
	"CustomerAddress2"   varchar(50)  NULL ,
	"CustomerTown"       varchar(50)  NULL ,
	"CustomerCountry"    char(2)  NULL ,
	"IsCustomerReseller" bit  NULL   DEFAULT  1,
	"IsCostumerCreditRisk" bit  NULL   DEFAULT  1,
	"CustomerSpendCapacityId" integer  NULL ,
	CONSTRAINT "CK_Template_GreaterThan0_1331601740" CHECK  ( "CustomerSpendCapacityId" BETWEEN 0 AND 999999999999999999 ) ,
	"CustomerPostalCode" varchar(10)  NULL ,
	"CustomerId"         integer  NOT NULL 
);

ALTER TABLE "Triggered"."Customer"
	ADD CONSTRAINT "XPKCustomer" PRIMARY KEY ("CustomerId");

CREATE TABLE "DbSecurity"."DbSecurity.UserAuthorization"
( 
	"UserAuthorizationId" integer  NOT NULL ,
	"ClassTime"          varchar(5)  NULL ,
	"IndividualProject"  varchar(30)  NULL ,
	"GroupMemberLastName" varchar(30)  NOT NULL ,
	"GroupMemberFirstName" varchar(30)  NOT NULL ,
	"GroupName"          varchar(20)  NOT NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  now()
);

ALTER TABLE "DbSecurity"."DbSecurity.UserAuthorization"
	ADD CONSTRAINT "XPKDbSecurity.UserAuthorization" PRIMARY KEY ("UserAuthorizationId");

CREATE TABLE "Manufacturer"."ManufacturerModel"
( 
	"ManufacturerModelId" integer  NOT NULL ,
	"ManufacturerModelName" varchar(100)  NULL ,
	"ManufacturerModelVariant" char(3)  NULL ,
	"ManufacturerVehicleStockId" integer  NOT NULL 
);

ALTER TABLE "Manufacturer"."ManufacturerModel"
	ADD CONSTRAINT "PK_Model_1" PRIMARY KEY ("ManufacturerModelId","ManufacturerVehicleStockId");

CREATE TABLE "Triggered"."ManufacturerModel"
( 
	"ManufacturerModelName" varchar(100)  NULL ,
	"ManufacturerModelVariant" char(3)  NULL ,
	"ManufacturerModelId" integer  NOT NULL ,
	"Note"               varchar(200)  NOT NULL ,
	"IsDeleted"          bit  NULL   DEFAULT  0,
	"TransactionNumber"  integer  NULL ,
	"UserAuthenticatedKey" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  now()
);

ALTER TABLE "Triggered"."ManufacturerModel"
	ADD CONSTRAINT "XPKManufacturerModel" PRIMARY KEY ("ManufacturerModelId");

CREATE TABLE "Manufacturer"."ManufacturerVehicleMake"
( 
	"ManufacturerVehicleMakeId" integer  NOT NULL ,
	"ManufacturerVehicleMakeName" varchar(100)  NULL ,
	"ManufacturerVehicleMakeCountry" char(3)  NOT NULL ,
	"MarketingTypeId"    integer  NULL 
);

ALTER TABLE "Manufacturer"."ManufacturerVehicleMake"
	ADD CONSTRAINT "PK_Make" PRIMARY KEY ("ManufacturerVehicleMakeId");

CREATE TABLE "Triggered"."ManufacturerVehicleMake"
( 
	"ManufacturerVehicleMakeName" varchar(100)  NULL ,
	"ManufacturerVehicleMakeCountry" char(3)  NOT NULL ,
	"MarketingTypeId"    integer  NULL ,
	"ManufacturerVehicleMakeId" integer  NOT NULL ,
	"Note"               varchar(200)  NOT NULL ,
	"IsDeleted"          bit  NULL   DEFAULT  0,
	"TransactionNumber"  integer  NULL ,
	"UserAuthenticatedKey" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  now()
);

ALTER TABLE "Triggered"."ManufacturerVehicleMake"
	ADD CONSTRAINT "XPKManufacturerVehicleMake" PRIMARY KEY ("ManufacturerVehicleMakeId");

CREATE TABLE "Manufacturer"."ManufacturerVehicleStock"
( 
	"ManufacturerVehicleStockId" integer  NOT NULL ,
	"StockId"            integer  NULL ,
	"StockCode"          varchar(50)  NULL ,
	"ModelID"            integer  NULL ,
	"Cost"               decimal(18,2)  NULL ,
	"RepairsCharge"      decimal(18,2)  NULL ,
	CONSTRAINT "CK_Template_Charge_661873849" CHECK  ( "RepairsCharge" BETWEEN 0 AND 999999999999999999 ) ,
	"PartsCharge"        decimal(18,2)  NULL ,
	CONSTRAINT "CK_Template_Charge_423301000" CHECK  ( "PartsCharge" BETWEEN 0 AND 999999999999999999 ) ,
	"DeliveryCharge"     decimal(18,2)  NULL ,
	CONSTRAINT "CK_Template_Charge_1403084244" CHECK  ( "DeliveryCharge" BETWEEN 0 AND 999999999999999999 ) ,
	"IsPremiumRoadHandlingPackage" bit  NULL   DEFAULT  1,
	"VehicleColor"       varchar(50)  NULL ,
	"CustomerComments"   varchar(4000)  NULL ,
	"PurchaseDate"       date  NULL 
);

ALTER TABLE "Manufacturer"."ManufacturerVehicleStock"
	ADD CONSTRAINT "PK_Stock" PRIMARY KEY ("ManufacturerVehicleStockId");

CREATE TABLE "Triggered"."ManufacturerVehicleStock"
( 
	"StockId"            integer  NULL ,
	"StockCode"          varchar(50)  NULL ,
	"ModelID"            integer  NULL ,
	"Cost"               decimal(18,2)  NULL ,
	CONSTRAINT "CK_Template_GreaterThan0_917743874" CHECK  ( "Cost" BETWEEN 0 AND 999999999999999999 ) ,
	"RepairsCharge"      decimal(18,2)  NULL ,
	CONSTRAINT "CK_Template_Charge_661873849" CHECK  ( "RepairsCharge" BETWEEN 0 AND 999999999999999999 ) ,
	"PartsCharge"        decimal(18,2)  NULL ,
	CONSTRAINT "CK_Template_Charge_423301000" CHECK  ( "PartsCharge" BETWEEN 0 AND 999999999999999999 ) ,
	"DeliveryCharge"     decimal(18,2)  NULL ,
	CONSTRAINT "CK_Template_Charge_1403084244" CHECK  ( "DeliveryCharge" BETWEEN 0 AND 999999999999999999 ) ,
	"IsPremiumRoadHandlingPackage" bit  NULL   DEFAULT  1,
	"VehicleColor"       varchar(50)  NULL ,
	"CustomerComments"   varchar(4000)  NULL ,
	"PurchaseDate"       date  NULL ,
	"Note"               varchar(200)  NOT NULL ,
	"IsDeleted"          bit  NULL   DEFAULT  0,
	"TransactionNumber"  integer  NULL ,
	"UserAuthenticatedKey" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  now(),
	"ManufacturerVehicleStockId" integer  NOT NULL 
);

ALTER TABLE "Triggered"."ManufacturerVehicleStock"
	ADD CONSTRAINT "XPKManufacturerVehicleStockId" PRIMARY KEY ("ManufacturerVehicleStockId");

CREATE TABLE "Marketing"."MarketingCategory"
( 
	"MakeName"           varchar(100)  NULL ,
	"MarketingType"      varchar(200)  NULL 
);

CREATE TABLE "MarketingCategoryLookupTable"
( 
	"MarketingTypeId"    varchar(200)  NOT NULL ,
	"MakeName"           varchar(100)  NULL ,
	"MarketingType"      varchar(200)  NULL 
);

ALTER TABLE "MarketingCategoryLookupTable"
	ADD CONSTRAINT "XPKMarketingCategoryLookup" PRIMARY KEY ("MarketingTypeId");

CREATE TABLE "Marketing"."MarketingInformation"
( 
	"CustomerId"         integer  NOT NULL ,
	"CustomerName"       varchar(100)  NOT NULL ,
	"Country"            char(2)  NOT NULL ,
	"SpendCapacity"      decimal(18,2)  NOT NULL ,
	CONSTRAINT "CK_Template_GreaterThan0_1086185110" CHECK  ( "SpendCapacity" BETWEEN 0 AND 999999999999999999 ) 
);

ALTER TABLE "Marketing"."MarketingInformation"
	ADD CONSTRAINT "XPKMarketingInformation" PRIMARY KEY ("CustomerId");

CREATE TABLE "MarketingInformationLookupTable"
( 
	"CustomerSpendCapacityId" decimal(18,2)  NOT NULL ,
	"CustomerName"       integer  NULL ,
	"Country"            char(2)  NULL 
);

ALTER TABLE "MarketingInformationLookupTable"
	ADD CONSTRAINT "XPKMarketingInformationLookupTable" PRIMARY KEY ("CustomerSpendCapacityId");

CREATE TABLE "Sales"."SalesCategoryThreshold"
( 
	"LowerThreshold"     integer  NULL ,
	"UpperThreshold"     integer  NULL ,
	"CategoryDescription" varchar(4000)  NULL 
);

CREATE TABLE "Sales"."SalesOrderVehicle"
( 
	"SalesOrderVehicleId" integer  NOT NULL ,
	"CustomerId"         integer  NULL ,
	"StaffId"            integer  NOT NULL ,
	"InvoiceNumber"      char(8)  NULL ,
	"TotalSalePrice"     decimal(18,2)  NULL ,
	"SaleDate"           date  NULL ,
	"CategoryDescription" varchar(4000)  NOT NULL 
);

ALTER TABLE "Sales"."SalesOrderVehicle"
	ADD CONSTRAINT "XPKSalesOrderVehicle" PRIMARY KEY ("SalesOrderVehicleId");

CREATE TABLE "Sales"."SalesOrderVehicleDetail"
( 
	"SalesOrderVehicleDetailId" integer  NOT NULL ,
	"SalesOrderVehicleId" integer  NULL ,
	"LineItemNumber"     integer  NOT NULL ,
	"StockId"            integer  NULL ,
	"StockCode"          varchar(50)  NULL ,
	"SalePrice"          decimal(18,2)  NULL ,
	"LineItemDiscount"   decimal(18,2)  NULL ,
	"DerivedDiscountedSalePrice" decimal(18,2)  NOT NULL 
);

ALTER TABLE "Sales"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "PK_SalesDetails" PRIMARY KEY ("SalesOrderVehicleDetailId");

CREATE TABLE "Triggered"."SalesOrderVehicleDetail"
( 
	"SalesOrderVehicleId" integer  NULL ,
	"LineItemNumber"     integer  NOT NULL ,
	"StockId"            integer  NULL ,
	"StockCode"          varchar(50)  NULL ,
	"SalePrice"          decimal(18,2)  NULL ,
	"LineItemDiscount"   decimal(18,2)  NULL ,
	"DerivedDiscountedSalePrice" decimal(18,2)  NOT NULL ,
	"SalesOrderVehicleDetailId" integer  NOT NULL ,
	"Note"               varchar(200)  NOT NULL ,
	"IsDeleted"          bit  NULL   DEFAULT  0,
	"TransactionNumber"  integer  NULL ,
	"UserAuthenticatedKey" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  now()
);

ALTER TABLE "Triggered"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "XPKSalesOrderVehicleDetail" PRIMARY KEY ("SalesOrderVehicleDetailId");

CREATE TABLE "Employee"."Staff"
( 
	"StaffId"            integer  NOT NULL ,
	"StaffName"          varchar(100)  NULL ,
	"ManagerID"          integer  NULL ,
	"Department"         varchar(30)  NULL 
);

ALTER TABLE "Employee"."Staff"
	ADD CONSTRAINT "XPKStaff" PRIMARY KEY ("StaffId");

CREATE TABLE "Triggered"."Staff"
( 
	"StaffName"          varchar(100)  NULL ,
	"ManagerID"          integer  NULL ,
	"Department"         varchar(30)  NULL ,
	"StaffId"            integer  NOT NULL ,
	"Note"               varchar(200)  NOT NULL   DEFAULT  0,
	"IsDeleted"          bit  NULL   DEFAULT  0,
	"TransactionNumber"  integer  NULL ,
	"UserAuthenticatedKey" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  now()
);

ALTER TABLE "Triggered"."Staff"
	ADD CONSTRAINT "XPKStaff" PRIMARY KEY ("StaffId");

CREATE TABLE "Triggered"."sysdiagrams"
( 
	"Name"               varchar(30)  NOT NULL ,
	"PrincipalId"        integer  NOT NULL ,
	"DiagramId"          integer  NOT NULL ,
	"Version"            integer  NULL ,
	"Definition"         varchar(4000)  NULL 
);

ALTER TABLE "Triggered"."sysdiagrams"
	ADD CONSTRAINT "PK__sysdiagr__C2B05B612F18C246" PRIMARY KEY ("DiagramId");

ALTER TABLE "Triggered"."sysdiagrams"
	ADD CONSTRAINT "UK_principal_name" UNIQUE ("PrincipalId","Name");

CREATE VIEW "Sales"."SalesOrderDetailNames" ( "CustomerName","StaffName","InvoiceNumber","TotalSalePrice","SaleDate","SalesOrderVehicleId" )
 AS 
	SELECT "Customer"."Customer"."CustomerName","Employee"."Staff"."StaffName","Sales"."SalesOrderVehicle"."InvoiceNumber","Sales"."SalesOrderVehicle"."TotalSalePrice","Sales"."SalesOrderVehicle"."SaleDate","Sales"."SalesOrderVehicle"."SalesOrderVehicleId"
		FROM "Customer"."Customer" ,"Employee"."Staff" ,"Sales"."SalesOrderVehicle" ;

CREATE VIEW "Manufacturer"."VehicleMakeCountry" ( "CountryISO3","ManufacturerVehicleMakeName","ManufacturerVehicleMakeCountry","ManufacturerVehicleMakeId" )
 AS 
	SELECT "Manufacturer"."Country"."CountryISO3","Manufacturer"."ManufacturerVehicleMake"."ManufacturerVehicleMakeName","Manufacturer"."ManufacturerVehicleMake"."ManufacturerVehicleMakeCountry","Manufacturer"."ManufacturerVehicleMake"."ManufacturerVehicleMakeId"
		FROM "Manufacturer"."Country" ,"Manufacturer"."ManufacturerVehicleMake" 
		WHERE Manufacturer.Country.CountryISO3 = Manufacturer.ManufacturerVehicleMake.ManufacturerVehicleMakeCountry;
