
CREATE SCHEMA [Output] AUTHORIZATION [dbo]
go

CREATE SCHEMA [dFinalGroupProject]
go

CREATE SCHEMA [dDate]
go

CREATE SCHEMA [dNumber]
go

CREATE SCHEMA [dString]
go

CREATE SCHEMA [sdSystemTime]
go

CREATE SCHEMA [sdDate]
go

CREATE SCHEMA [sdFlag]
go

CREATE SCHEMA [sdId]
go

CREATE SCHEMA [sdInt]
go

CREATE SCHEMA [sdMoney]
go

CREATE SCHEMA [sdAddress]
go

CREATE SCHEMA [sdClassTime]
go

CREATE SCHEMA [sdCountryCode]
go

CREATE SCHEMA [sdInvoiceNumber]
go

CREATE SCHEMA [sdMarketingType]
go

CREATE SCHEMA [sdVehicleColor]
go

CREATE SCHEMA [sdNote]
go

CREATE SCHEMA [sdName]
go

CREATE SCHEMA [sdStockCode]
go

CREATE SCHEMA [Triggered]
go

CREATE SCHEMA [Marketing]
go

CREATE SCHEMA [Sales]
go

CREATE SCHEMA [Employee]
go

CREATE SCHEMA [Customer]
go

CREATE SCHEMA [Manufacturer]
go

CREATE SCHEMA [DbSecurity]
go

CREATE TABLE [CategorySalesThresholdLookupTable]
( 
	[LowerThreshold]     [sdInt].int  NULL ,
	[UpperThreshold]     [sdInt].int  NULL ,
	[CategoryDescription] [sdNote].nvarchar(4000)  NULL 
)
go

CREATE TABLE [dbo].[CommonColumnsForTriggerTemplate]
( 
	[Note]               [sdNote].nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[IsDeleted]          [sdFlag].bit  NULL ,
	[TransactionNumber]  [sdInt].int  NULL ,
	[UserAuthenticatedKey] [sdInt].int  NULL ,
	[Sys_Start_Time]     [sdSystemTime].Datetime2(7)  NULL ,
	[Sys_End_Time]       [sdSystemTime].Datetime2(7)  NULL 
)
go

CREATE TABLE [Manufacturer].[Country]
( 
	[CountryId]          [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[CountryISO3]        [sdCountryCode].char(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[CountryName]        [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CountryISO2]        [sdCountryCode].char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[SalesRegion]        [sdAddress].nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
)
go

CREATE TABLE [Triggered].[Country]
( 
	[UserAuthenticatedKey] [sdInt].int  NULL ,
	[SysStartTime]       [sdSystemTime].Datetime2(7)  NULL ,
	[SysEndTime]         [sdSystemTime].Datetime2(7)  NULL ,
	[IsDeleted]          [sdFlag].bit  NULL ,
	[TransactionNumber]  [sdInt].int  NULL ,
	[Note]               [sdNote].nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[CountryISO3]        [sdCountryCode].char(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[CountryName]        [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CountryISO2]        [sdCountryCode].char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[SalesRegion]        [sdAddress].nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CountryId]          [sdId].int  IDENTITY ( 1,1 )  NOT NULL 
)
go

CREATE TABLE [Customer].[Customer]
( 
	[CustomerId]         [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[CustomerName]       [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CustomerAddress1]   [sdAddress].nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CustomerAddress2]   [sdAddress].nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CustomerTown]       [sdAddress].nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CustomerPostalCode] [sdAddress].nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CustomerCountry]    [sdCountryCode].char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[IsCustomeReseller]  [sdFlag].bit  NULL ,
	[IsCustomerCreditRisk] [sdFlag].bit  NULL ,
	[CustomerSpendCapacityId] [sdId].int  NULL 
)
go

CREATE TABLE [Triggered].[Customer]
( 
	[SysStartTime]       [sdSystemTime].Datetime2(7)  NULL ,
	[SysEndTime]         [sdSystemTime].Datetime2(7)  NULL ,
	[Note]               [sdNote].nvarchar(200)  NULL ,
	[TransactionNumber]  [sdInt].int  NULL ,
	[IsDeleted]          [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag0_642274365]
		 DEFAULT  0,
	[CustomerName]       [sdName].nvarchar(100)  NULL ,
	[CustomerAddress1]   [sdAddress].nvarchar(50)  NULL ,
	[CustomerAddress2]   [sdAddress].nvarchar(50)  NULL ,
	[CustomerTown]       [sdAddress].nvarchar(50)  NULL ,
	[CustomerCountry]    [sdCountryCode].char(2)  NULL ,
	[IsCustomerReseller] [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag1_809802701]
		 DEFAULT  1,
	[IsCostumerCreditRisk] [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag1_1622631153]
		 DEFAULT  1,
	[CustomerSpendCapacityId] [sdId].int  NULL 
	CONSTRAINT [CK_Template_GreaterThan0_1331601740]
		CHECK  ( CustomerSpendCapacityId BETWEEN 0 AND 999999999999999999 ),
	[CustomerPostalCode] [sdAddress].nvarchar(10)  NULL ,
	[CustomerId]         [sdId].int  NOT NULL 
)
go

CREATE TABLE [DbSecurity].[DbSecurity.UserAuthorization]
( 
	[UserAuthorizationId] [sdId].int  NOT NULL ,
	[ClassTime]          [sdClassTime].nvarchar(5)  NULL ,
	[IndividualProject]  [sdName].nvarchar(30)  NULL ,
	[GroupMemberLastName] [sdName].nvarchar(30)  NOT NULL ,
	[GroupMemberFirstName] [sdName].nvarchar(30)  NOT NULL ,
	[GroupName]          [sdName].nvarchar(20)  NOT NULL ,
	[SysStartTime]       [sdSystemTime].Datetime2(7)  NULL ,
	[SysEndTime]         [sdSystemTime].Datetime2(7)  NULL 
)
go

CREATE TABLE [Manufacturer].[ManufacturerModel]
( 
	[ManufacturerModelId] [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[ManufacturerModelName] [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ManufacturerModelVariant] [sdCountryCode].char(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ManufacturerVehicleStockId] [sdId].int  NOT NULL 
)
go

CREATE TABLE [Triggered].[ManufacturerModel]
( 
	[ManufacturerModelName] [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ManufacturerModelVariant] [sdCountryCode].char(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ManufacturerModelId] [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[Note]               [sdNote].nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[IsDeleted]          [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag0_256132598]
		 DEFAULT  0,
	[TransactionNumber]  [sdInt].int  NULL ,
	[UserAuthenticatedKey] [sdInt].int  NULL ,
	[SysStartTime]       [sdSystemTime].Datetime2(7)  NULL ,
	[SysEndTime]         [sdSystemTime].Datetime2(7)  NULL 
)
go

CREATE TABLE [Manufacturer].[ManufacturerVehicleMake]
( 
	[ManufacturerVehicleMakeId] [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[ManufacturerVehicleMakeName] [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ManufacturerVehicleMakeCountry] [sdCountryCode].char(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[MarketingTypeId]    [sdId].int  NULL 
)
go

CREATE TABLE [Triggered].[ManufacturerVehicleMake]
( 
	[ManufacturerVehicleMakeName] [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ManufacturerVehicleMakeCountry] [sdCountryCode].char(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[MarketingTypeId]    [sdId].int  NULL ,
	[ManufacturerVehicleMakeId] [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[Note]               [sdNote].nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[IsDeleted]          [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag0_1077168994]
		 DEFAULT  0,
	[TransactionNumber]  [sdInt].int  NULL ,
	[UserAuthenticatedKey] [sdInt].int  NULL ,
	[Sys_Start_Time]     [sdSystemTime].Datetime2(7)  NULL ,
	[Sys_End_Time]       [sdSystemTime].Datetime2(7)  NULL 
)
go

CREATE TABLE [Manufacturer].[ManufacturerVehicleStock]
( 
	[ManufacturerVehicleStockId] [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[StockId]            [sdId].int  NULL ,
	[StockCode]          [sdStockCode].nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ModelID]            [sdId].int  NULL ,
	[Cost]               [sdMoney].numeric(18,2)  NULL ,
	[RepairsCharge]      [sdMoney].numeric(18,2)  NULL 
	CONSTRAINT [CK_Template_Charge_661873849]
		CHECK  ( RepairsCharge BETWEEN 0 AND 999999999999999999 ),
	[PartsCharge]        [sdMoney].numeric(18,2)  NULL 
	CONSTRAINT [CK_Template_Charge_423301000]
		CHECK  ( PartsCharge BETWEEN 0 AND 999999999999999999 ),
	[DeliveryCharge]     [sdMoney].numeric(18,2)  NULL 
	CONSTRAINT [CK_Template_Charge_1403084244]
		CHECK  ( DeliveryCharge BETWEEN 0 AND 999999999999999999 ),
	[IsPremiumRoadHandlingPackage] [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag1_1531184495]
		 DEFAULT  1,
	[VehicleColor]       [sdVehicleColor].nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CustomerComments]   [sdNote].nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[PurchaseDate]       [sdDate].date  NULL 
)
go

CREATE TABLE [Triggered].[ManufacturerVehicleStock]
( 
	[StockId]            [sdId].int  NULL ,
	[StockCode]          [sdStockCode].nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ModelID]            [sdId].int  NULL ,
	[Cost]               [sdMoney].numeric(18,2)  NULL 
	CONSTRAINT [CK_Template_GreaterThan0_917743874]
		CHECK  ( Cost BETWEEN 0 AND 999999999999999999 ),
	[RepairsCharge]      [sdMoney].numeric(18,2)  NULL 
	CONSTRAINT [CK_Template_Charge_661873849]
		CHECK  ( RepairsCharge BETWEEN 0 AND 999999999999999999 ),
	[PartsCharge]        [sdMoney].numeric(18,2)  NULL 
	CONSTRAINT [CK_Template_Charge_423301000]
		CHECK  ( PartsCharge BETWEEN 0 AND 999999999999999999 ),
	[DeliveryCharge]     [sdMoney].numeric(18,2)  NULL 
	CONSTRAINT [CK_Template_Charge_1403084244]
		CHECK  ( DeliveryCharge BETWEEN 0 AND 999999999999999999 ),
	[IsPremiumRoadHandlingPackage] [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag1_1531184495]
		 DEFAULT  1,
	[VehicleColor]       [sdVehicleColor].nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[CustomerComments]   [sdNote].nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[PurchaseDate]       [sdDate].date  NULL ,
	[Note]               [sdNote].nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[IsDeleted]          [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag0_1243219760]
		 DEFAULT  0,
	[TransactionNumber]  [sdInt].int  NULL ,
	[UserAuthenticatedKey] [sdInt].int  NULL ,
	[SysStartTime]       [sdSystemTime].Datetime2(7)  NULL ,
	[SysEndTime]         [sdSystemTime].Datetime2(7)  NULL ,
	[ManufacturerVehicleStockId] [sdId].int  IDENTITY ( 1,1 )  NOT NULL 
)
go

CREATE TABLE [Marketing].[MarketingCategory]
( 
	[MakeName]           [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[MarketingType]      [sdMarketingType].nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
)
go

CREATE TABLE [MarketingCategoryLookupTable]
( 
	[MarketingTypeId]    [sdMarketingType].nvarchar(200)  NOT NULL ,
	[MakeName]           [sdName].nvarchar(100)  NULL ,
	[MarketingType]      [sdMarketingType].nvarchar(200)  NULL 
)
go

CREATE TABLE [Marketing].[MarketingInformation]
( 
	[CustomerId]         [sdId].int  NOT NULL ,
	[CustomerName]       [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[Country]            [sdCountryCode].char(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[SpendCapacity]      [sdMoney].numeric(18,2)  NOT NULL 
	CONSTRAINT [CK_Template_GreaterThan0_1086185110]
		CHECK  ( SpendCapacity BETWEEN 0 AND 999999999999999999 )
)
go

CREATE TABLE [MarketingInformationLookupTable]
( 
	[CustomerSpendCapacityId] [sdMoney].numeric(18,2)  NOT NULL ,
	[CustomerName]       [sdId].int  NULL ,
	[Country]            [sdCountryCode].char(2)  NULL 
)
go

CREATE TABLE [Sales].[SalesCategoryThreshold]
( 
	[LowerThreshold]     [sdInt].int  NULL ,
	[UpperThreshold]     [sdInt].int  NULL ,
	[CategoryDescription] [sdNote].nvarchar(4000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
)
go

CREATE TABLE [Sales].[SalesOrderVehicle]
( 
	[SalesOrderVehicleId] [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[CustomerId]         [sdId].int  NULL ,
	[StaffId]            [sdId].int  NOT NULL ,
	[InvoiceNumber]      [sdInvoiceNumber].nchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[TotalSalePrice]     [sdMoney].numeric(18,2)  NULL ,
	[SaleDate]           [sdDate].date  NULL ,
	[CategoryDescription] AS ('Create computed column based upon the SalesCategoryThreshold Table') COLLATE SQL_Latin1_General_CP1_CI_AS PERSISTED NOT NULL 
)
go

CREATE TABLE [Sales].[SalesOrderVehicleDetail]
( 
	[SalesOrderVehicleDetailId] [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[SalesOrderVehicleId] [sdId].int  NULL ,
	[LineItemNumber]     [sdInt].int  NOT NULL ,
	[StockId]            [sdId].int  NULL ,
	[StockCode]          [sdStockCode].nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[SalePrice]          [sdMoney].numeric(18,2)  NULL ,
	[LineItemDiscount]   [sdMoney].numeric(18,2)  NULL ,
	[DerivedDiscountedSalePrice] AS ('Compute me properly') PERSISTED NOT NULL 
)
go

CREATE TABLE [Triggered].[SalesOrderVehicleDetail]
( 
	[SalesOrderVehicleId] [sdId].int  NULL ,
	[LineItemNumber]     [sdInt].int  NOT NULL ,
	[StockId]            [sdId].int  NULL ,
	[StockCode]          [sdStockCode].nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[SalePrice]          [sdMoney].numeric(18,2)  NULL ,
	[LineItemDiscount]   [sdMoney].numeric(18,2)  NULL ,
	[DerivedDiscountedSalePrice] AS ('Compute me properly') COLLATE SQL_Latin1_General_CP1_CI_AS PERSISTED NOT NULL ,
	[SalesOrderVehicleDetailId] [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[Note]               [sdNote].nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	[IsDeleted]          [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag0_2016693835]
		 DEFAULT  0,
	[TransactionNumber]  [sdInt].int  NULL ,
	[UserAuthenticatedKey] [sdInt].int  NULL ,
	[Sys_Start_Time]     [sdSystemTime].Datetime2(7)  NULL ,
	[Sys_End_Time]       [sdSystemTime].Datetime2(7)  NULL 
)
go

CREATE TABLE [Employee].[Staff]
( 
	[StaffId]            [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[StaffName]          [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ManagerID]          [sdId].int  NULL ,
	[Department]         [sdName].nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
)
go

CREATE TABLE [Triggered].[Staff]
( 
	[StaffName]          [sdName].nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[ManagerID]          [sdId].int  NULL ,
	[Department]         [sdName].nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	[StaffId]            [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[Note]               [sdNote].nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT [DF_Template_Flag0_1701946948]
		 DEFAULT  0,
	[IsDeleted]          [sdFlag].bit  NULL 
	CONSTRAINT [DF_Template_Flag0_1273293381]
		 DEFAULT  0,
	[TransactionNumber]  [sdInt].int  NULL ,
	[UserAuthenticatedKey] [sdInt].int  NULL ,
	[Sys_Start_Time]     [sdSystemTime].Datetime2(7)  NULL ,
	[Sys_End_Time]       [sdSystemTime].Datetime2(7)  NULL 
)
go

CREATE TABLE [Triggered].[sysdiagrams]
( 
	[Name]               [sdName].nvarchar(30)  NOT NULL ,
	[PrincipalId]        [sdId].int  NOT NULL ,
	[DiagramId]          [sdId].int  IDENTITY ( 1,1 )  NOT NULL ,
	[Version]            [sdInt].int  NULL ,
	[Definition]         [sdNote].nvarchar(4000)  NULL 
)
go

ALTER TABLE [Manufacturer].[Country]
	ADD CONSTRAINT [PK_Country] PRIMARY KEY  CLUSTERED ([CountryId] ASC)
go

ALTER TABLE [Triggered].[Country]
	ADD CONSTRAINT [XPKCountry] PRIMARY KEY  CLUSTERED ([CountryId] ASC)
go

ALTER TABLE [Customer].[Customer]
	ADD CONSTRAINT [PK_Customer] PRIMARY KEY  CLUSTERED ([CustomerId] ASC)
go

ALTER TABLE [Triggered].[Customer]
	ADD CONSTRAINT [XPKCustomer] PRIMARY KEY  CLUSTERED ([CustomerId] ASC)
go

ALTER TABLE [DbSecurity].[DbSecurity.UserAuthorization]
	ADD CONSTRAINT [XPKDbSecurity.UserAuthorization] PRIMARY KEY  CLUSTERED ([UserAuthorizationId] ASC)
go

ALTER TABLE [Manufacturer].[ManufacturerModel]
	ADD CONSTRAINT [PK_Model_1] PRIMARY KEY  CLUSTERED ([ManufacturerModelId] ASC,[ManufacturerVehicleStockId] ASC)
go

ALTER TABLE [Triggered].[ManufacturerModel]
	ADD CONSTRAINT [XPKManufacturerModel] PRIMARY KEY  CLUSTERED ([ManufacturerModelId] ASC)
go

ALTER TABLE [Manufacturer].[ManufacturerVehicleMake]
	ADD CONSTRAINT [PK_Make] PRIMARY KEY  CLUSTERED ([ManufacturerVehicleMakeId] ASC)
go

ALTER TABLE [Triggered].[ManufacturerVehicleMake]
	ADD CONSTRAINT [XPKManufacturerVehicleMake] PRIMARY KEY  CLUSTERED ([ManufacturerVehicleMakeId] ASC)
go

ALTER TABLE [Manufacturer].[ManufacturerVehicleStock]
	ADD CONSTRAINT [PK_Stock] PRIMARY KEY  CLUSTERED ([ManufacturerVehicleStockId] ASC)
go

ALTER TABLE [Triggered].[ManufacturerVehicleStock]
	ADD CONSTRAINT [XPKManufacturerVehicleStockId] PRIMARY KEY  CLUSTERED ([ManufacturerVehicleStockId] ASC)
go

ALTER TABLE [MarketingCategoryLookupTable]
	ADD CONSTRAINT [XPKMarketingCategoryLookup] PRIMARY KEY  CLUSTERED ([MarketingTypeId] ASC)
go

ALTER TABLE [Marketing].[MarketingInformation]
	ADD CONSTRAINT [XPKMarketingInformation] PRIMARY KEY  CLUSTERED ([CustomerId] ASC)
go

ALTER TABLE [MarketingInformationLookupTable]
	ADD CONSTRAINT [XPKMarketingInformationLookupTable] PRIMARY KEY  CLUSTERED ([CustomerSpendCapacityId] ASC)
go

ALTER TABLE [Sales].[SalesOrderVehicle]
	ADD CONSTRAINT [XPKSalesOrderVehicle] PRIMARY KEY  CLUSTERED ([SalesOrderVehicleId] ASC)
go

ALTER TABLE [Sales].[SalesOrderVehicleDetail]
	ADD CONSTRAINT [PK_SalesDetails] PRIMARY KEY  CLUSTERED ([SalesOrderVehicleDetailId] ASC)
go

ALTER TABLE [Triggered].[SalesOrderVehicleDetail]
	ADD CONSTRAINT [XPKSalesOrderVehicleDetail] PRIMARY KEY  CLUSTERED ([SalesOrderVehicleDetailId] ASC)
go

ALTER TABLE [Employee].[Staff]
	ADD CONSTRAINT [XPKStaff] PRIMARY KEY  CLUSTERED ([StaffId] ASC)
go

ALTER TABLE [Triggered].[Staff]
	ADD CONSTRAINT [XPKStaff] PRIMARY KEY  CLUSTERED ([StaffId] ASC)
go

ALTER TABLE [Triggered].[sysdiagrams]
	ADD CONSTRAINT [PK__sysdiagr__C2B05B612F18C246] PRIMARY KEY  CLUSTERED ([DiagramId] ASC)
go

ALTER TABLE [Triggered].[sysdiagrams]
	ADD CONSTRAINT [UK_principal_name] UNIQUE ([PrincipalId]  ASC,[Name]  ASC)
go

CREATE VIEW [Sales].[SalesOrderDetailNames]([CustomerName],[StaffName],[InvoiceNumber],[TotalSalePrice],[SaleDate],[SalesOrderVehicleId])
AS
SELECT [Customer].[Customer].[CustomerName],[Employee].[Staff].[StaffName],[Sales].[SalesOrderVehicle].[InvoiceNumber],[Sales].[SalesOrderVehicle].[TotalSalePrice],[Sales].[SalesOrderVehicle].[SaleDate],[Sales].[SalesOrderVehicle].[SalesOrderVehicleId]
	FROM [Customer].[Customer],[Employee].[Staff],[Sales].[SalesOrderVehicle]
		WHERE Employee.Staff.StaffId = Sales.SalesOrderVehicle.StaffId and Customer.Customer.CustomerId  = Sales.SalesOrderVehicle.CustomerId
go

CREATE VIEW [Manufacturer].[VehicleMakeCountry]([CountryISO3],[ManufacturerVehicleMakeName],[ManufacturerVehicleMakeCountry],[ManufacturerVehicleMakeId])
AS
SELECT [Manufacturer].[Country].[CountryISO3],[Manufacturer].[ManufacturerVehicleMake].[ManufacturerVehicleMakeName],[Manufacturer].[ManufacturerVehicleMake].[ManufacturerVehicleMakeCountry],[Manufacturer].[ManufacturerVehicleMake].[ManufacturerVehicleMakeId]
	FROM [Manufacturer].[Country],[Manufacturer].[ManufacturerVehicleMake]
		WHERE Manufacturer.Country.CountryISO3 = Manufacturer.ManufacturerVehicleMake.ManufacturerVehicleMakeCountry
go

CREATE VIEW [Sales].[StaffSales]([StaffId],[StaffName],[TotalSalePrice])
AS
SELECT ALL [Employee].[Staff].[StaffId],[Employee].[Staff].[StaffName],[Sales].[SalesOrderVehicle].[TotalSalePrice]
	FROM [Employee].[Staff],[Sales].[SalesOrderVehicle]
		WHERE Employee.Staff.StaffId = Sales.SalesOrderVehicle.StaffId
		GROUP BY StaffId
go

CREATE VIEW [Sales].[CustomerSales]([CustomerId],[CustomerName],[SalesOrderVehicleId],[StockId],[Cost],[SalePrice],[TotalSalePrice],[SaleDate])
AS
SELECT DISTINCT [Customer].[Customer].[CustomerId],[Customer].[Customer].[CustomerName],[Sales].[SalesOrderVehicle].[SalesOrderVehicleId],[Sales].[SalesOrderVehicleDetail].[StockId],[Manufacturer].[ManufacturerVehicleStock].[Cost],[Sales].[SalesOrderVehicleDetail].[SalePrice],[Sales].[SalesOrderVehicle].[TotalSalePrice],[Sales].[SalesOrderVehicle].[SaleDate]
	FROM [Sales].[SalesOrderVehicleDetail],[Customer].[Customer],[Manufacturer].[ManufacturerVehicleStock],[Sales].[SalesOrderVehicle]
		WHERE Sales.SalesOrderVehicle.SalesOrderVehicleId = Sales.SalesOrderVehicleDetail.SalesOrderVehicleId AND Customer.Customer.CustomerId = Sales.SalesOrderVehicle.CustomerId
		GROUP BY CustomerId ASC, CustomerName

go


ALTER TABLE [Manufacturer].[ManufacturerModel]
	ADD CONSTRAINT [R_6] FOREIGN KEY ([ManufacturerVehicleStockId]) REFERENCES [Manufacturer].[ManufacturerVehicleStock]([ManufacturerVehicleStockId])
go


ALTER TABLE [Marketing].[MarketingInformation]
	ADD CONSTRAINT [FK_MarketingInformation_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Triggered].[Customer]([CustomerId])
go


ALTER TABLE [Sales].[SalesOrderVehicle]
	ADD CONSTRAINT [FK_SalesOrderVehicle_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Triggered].[Customer]([CustomerId])
go

ALTER TABLE [Sales].[SalesOrderVehicle]
	ADD CONSTRAINT [FK_SalesOrderVehicle_Staff] FOREIGN KEY ([StaffId]) REFERENCES [Triggered].[Staff]([StaffId])
go


ALTER TABLE [Triggered].[SalesOrderVehicleDetail]
	ADD CONSTRAINT [FK_SalesOrderVehicleDetail_SalesOrderVehicle] FOREIGN KEY ([SalesOrderVehicleId]) REFERENCES [Sales].[SalesOrderVehicle]([SalesOrderVehicleId])
go

CREATE FUNCTION dbo.[DatabaseObjects] (@ListOfObjectIDs varchar(max) )  
  RETURNS TABLE
 
  
as RETURN
(
    select object_id
         , schema_name(schema_id) + '.' + coalesce(object_name(parent_object_id) + '.', '') + name as name
    from sys.objects as ob
        inner join openjson(N'[' + @ListOfObjectIDs + N']')
            on convert(int, Value) = ob.object_id
);





go

CREATE FUNCTION dbo.[fn_diagramobjects] ()  
  RETURNS int 
 WITH 
 EXECUTE AS 'dbo' 
AS BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
go

CREATE PROCEDURE dbo.[sp_upgraddiagrams]   
   
 AS BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,				diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		
		

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),							0,											dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
go

CREATE PROCEDURE dbo.[sp_helpdiagrams] @diagramname sysname  = NULL , @owner_id int  = NULL   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
go

CREATE PROCEDURE dbo.[sp_helpdiagramdefinition] @diagramname sysname , @owner_id int  = null   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
go

CREATE PROCEDURE dbo.[sp_creatediagram] @diagramname sysname , @owner_id int  = null , @version int , @definition varbinary(max)   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
				if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
go

CREATE PROCEDURE dbo.[sp_renamediagram] @diagramname sysname , @owner_id int  = null , @new_diagramname sysname   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
					
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
go

CREATE PROCEDURE dbo.[sp_alterdiagram] @diagramname sysname , @owner_id int  = null , @version int , @definition varbinary(max)   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) 			begin
				select @ShouldChangeUID = 1 ;
			end
		end

				update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

				if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

				if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
go

CREATE PROCEDURE dbo.[sp_dropdiagram] @diagramname sysname , @owner_id int  = null   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
go

CREATE FUNCTION [Function_786] ()  
  RETURNS TABLE
 
  

go

CREATE TRIGGER Manufacturer.tD_ManufacturerModel ON Manufacturer.ManufacturerModel FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManufacturerModel */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.ManufacturerVehicleStock  Manufacturer.ManufacturerModel on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="000201cb", PARENT_OWNER="Manufacturer", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="ManufacturerModel"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="ManufacturerVehicleStockId" */
    IF EXISTS (SELECT * FROM deleted,Manufacturer.ManufacturerVehicleStock
      WHERE
        /* %JoinFKPK(deleted,Manufacturer.ManufacturerVehicleStock," = "," AND") */
        deleted.ManufacturerVehicleStockId = Manufacturer.ManufacturerVehicleStock.ManufacturerVehicleStockId AND
        NOT EXISTS (
          SELECT * FROM Manufacturer.ManufacturerModel
          WHERE
            /* %JoinFKPK(Manufacturer.ManufacturerModel,Manufacturer.ManufacturerVehicleStock," = "," AND") */
            Manufacturer.ManufacturerModel.ManufacturerVehicleStockId = Manufacturer.ManufacturerVehicleStock.ManufacturerVehicleStockId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Manufacturer.ManufacturerModel because Manufacturer.ManufacturerVehicleStock exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_ManufacturerModel ON Manufacturer.ManufacturerModel FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManufacturerModel */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManufacturerModelId sdId.Id, 
           @insManufacturerVehicleStockId sdId.Id,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.ManufacturerVehicleStock  Manufacturer.ManufacturerModel on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001e629", PARENT_OWNER="Manufacturer", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="ManufacturerModel"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="ManufacturerVehicleStockId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleStockId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Manufacturer.ManufacturerVehicleStock
        WHERE
          /* %JoinFKPK(inserted,Manufacturer.ManufacturerVehicleStock) */
          inserted.ManufacturerVehicleStockId = Manufacturer.ManufacturerVehicleStock.ManufacturerVehicleStockId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Manufacturer.ManufacturerModel because Manufacturer.ManufacturerVehicleStock does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tD_ManufacturerVehicleStock ON Manufacturer.ManufacturerVehicleStock FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManufacturerVehicleStock */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Manufacturer.ManufacturerVehicleStock  Manufacturer.ManufacturerModel on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00017194", PARENT_OWNER="Manufacturer", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="ManufacturerModel"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="ManufacturerVehicleStockId" */
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.ManufacturerModel
      WHERE
        /*  %JoinFKPK(Manufacturer.ManufacturerModel,deleted," = "," AND") */
        Manufacturer.ManufacturerModel.ManufacturerVehicleStockId = deleted.ManufacturerVehicleStockId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Manufacturer.ManufacturerVehicleStock because Manufacturer.ManufacturerModel exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Manufacturer.tU_ManufacturerVehicleStock ON Manufacturer.ManufacturerVehicleStock FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManufacturerVehicleStock */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManufacturerVehicleStockId sdId.Id,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Manufacturer.ManufacturerVehicleStock  Manufacturer.ManufacturerModel on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00019f0a", PARENT_OWNER="Manufacturer", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Manufacturer", CHILD_TABLE="ManufacturerModel"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="ManufacturerVehicleStockId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleStockId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Manufacturer.ManufacturerModel
      WHERE
        /*  %JoinFKPK(Manufacturer.ManufacturerModel,deleted," = "," AND") */
        Manufacturer.ManufacturerModel.ManufacturerVehicleStockId = deleted.ManufacturerVehicleStockId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Manufacturer.ManufacturerVehicleStock because Manufacturer.ManufacturerModel exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Marketing.tD_MarketingInformation ON Marketing.MarketingInformation FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on MarketingInformation */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Triggered.Customer  Marketing.MarketingInformation on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001b6e2", PARENT_OWNER="Triggered", PARENT_TABLE="Customer"
    CHILD_OWNER="Marketing", CHILD_TABLE="MarketingInformation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_MarketingInformation_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Triggered.Customer
      WHERE
        /* %JoinFKPK(deleted,Triggered.Customer," = "," AND") */
        deleted.CustomerId = Triggered.Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Marketing.MarketingInformation
          WHERE
            /* %JoinFKPK(Marketing.MarketingInformation,Triggered.Customer," = "," AND") */
            Marketing.MarketingInformation.CustomerId = Triggered.Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Marketing.MarketingInformation because Triggered.Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Marketing.tU_MarketingInformation ON Marketing.MarketingInformation FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on MarketingInformation */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId sdId.Id,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Triggered.Customer  Marketing.MarketingInformation on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001a1c8", PARENT_OWNER="Triggered", PARENT_TABLE="Customer"
    CHILD_OWNER="Marketing", CHILD_TABLE="MarketingInformation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_MarketingInformation_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Triggered.Customer
        WHERE
          /* %JoinFKPK(inserted,Triggered.Customer) */
          inserted.CustomerId = Triggered.Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Marketing.MarketingInformation because Triggered.Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_SalesOrderVehicle ON Sales.SalesOrderVehicle FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on SalesOrderVehicle */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.SalesOrderVehicle  Triggered.SalesOrderVehicleDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00045cb9", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Triggered", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleId" */
    IF EXISTS (
      SELECT * FROM deleted,Triggered.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Triggered.SalesOrderVehicleDetail,deleted," = "," AND") */
        Triggered.SalesOrderVehicleDetail.SalesOrderVehicleId = deleted.SalesOrderVehicleId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.SalesOrderVehicle because Triggered.SalesOrderVehicleDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Triggered.Staff  Sales.SalesOrderVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Triggered", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (SELECT * FROM deleted,Triggered.Staff
      WHERE
        /* %JoinFKPK(deleted,Triggered.Staff," = "," AND") */
        deleted.StaffId = Triggered.Staff.StaffId AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicle
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicle,Triggered.Staff," = "," AND") */
            Sales.SalesOrderVehicle.StaffId = Triggered.Staff.StaffId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicle because Triggered.Staff exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Triggered.Customer  Sales.SalesOrderVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Triggered", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Triggered.Customer
      WHERE
        /* %JoinFKPK(deleted,Triggered.Customer," = "," AND") */
        deleted.CustomerId = Triggered.Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicle
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicle,Triggered.Customer," = "," AND") */
            Sales.SalesOrderVehicle.CustomerId = Triggered.Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicle because Triggered.Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_SalesOrderVehicle ON Sales.SalesOrderVehicle FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on SalesOrderVehicle */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insSalesOrderVehicleId sdId.Id,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.SalesOrderVehicle  Triggered.SalesOrderVehicleDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0004d6bd", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Triggered", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(SalesOrderVehicleId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Triggered.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Triggered.SalesOrderVehicleDetail,deleted," = "," AND") */
        Triggered.SalesOrderVehicleDetail.SalesOrderVehicleId = deleted.SalesOrderVehicleId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because Triggered.SalesOrderVehicleDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Triggered.Staff  Sales.SalesOrderVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Triggered", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Triggered.Staff
        WHERE
          /* %JoinFKPK(inserted,Triggered.Staff) */
          inserted.StaffId = Triggered.Staff.StaffId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.StaffId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because Triggered.Staff does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Triggered.Customer  Sales.SalesOrderVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Triggered", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Triggered.Customer
        WHERE
          /* %JoinFKPK(inserted,Triggered.Customer) */
          inserted.CustomerId = Triggered.Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CustomerId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because Triggered.Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Triggered.tD_Customer ON Triggered.Customer FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Customer */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Triggered.Customer  Sales.SalesOrderVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000287a0", PARENT_OWNER="Triggered", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Triggered.Customer because Sales.SalesOrderVehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Triggered.Customer  Marketing.MarketingInformation on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Triggered", PARENT_TABLE="Customer"
    CHILD_OWNER="Marketing", CHILD_TABLE="MarketingInformation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_MarketingInformation_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Marketing.MarketingInformation
      WHERE
        /*  %JoinFKPK(Marketing.MarketingInformation,deleted," = "," AND") */
        Marketing.MarketingInformation.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Triggered.Customer because Marketing.MarketingInformation exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Triggered.tU_Customer ON Triggered.Customer FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Customer */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId sdId.Id,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Triggered.Customer  Sales.SalesOrderVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0002bd7d", PARENT_OWNER="Triggered", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Triggered.Customer because Sales.SalesOrderVehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Triggered.Customer  Marketing.MarketingInformation on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Triggered", PARENT_TABLE="Customer"
    CHILD_OWNER="Marketing", CHILD_TABLE="MarketingInformation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_MarketingInformation_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Marketing.MarketingInformation
      WHERE
        /*  %JoinFKPK(Marketing.MarketingInformation,deleted," = "," AND") */
        Marketing.MarketingInformation.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Triggered.Customer because Marketing.MarketingInformation exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Triggered.tD_Staff ON Triggered.Staff FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Staff */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Triggered.Staff  Sales.SalesOrderVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001373c", PARENT_OWNER="Triggered", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Triggered.Staff because Sales.SalesOrderVehicle exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Triggered.tU_Staff ON Triggered.Staff FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Staff */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insStaffId sdId.Id,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Triggered.Staff  Sales.SalesOrderVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00015c52", PARENT_OWNER="Triggered", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Triggered.Staff because Sales.SalesOrderVehicle exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Triggered.tD_SalesOrderVehicleDetail ON Triggered.SalesOrderVehicleDetail FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on SalesOrderVehicleDetail */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.SalesOrderVehicle  Triggered.SalesOrderVehicleDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001e5ac", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Triggered", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleId" */
    IF EXISTS (SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /* %JoinFKPK(deleted,Sales.SalesOrderVehicle," = "," AND") */
        deleted.SalesOrderVehicleId = Sales.SalesOrderVehicle.SalesOrderVehicleId AND
        NOT EXISTS (
          SELECT * FROM Triggered.SalesOrderVehicleDetail
          WHERE
            /* %JoinFKPK(Triggered.SalesOrderVehicleDetail,Sales.SalesOrderVehicle," = "," AND") */
            Triggered.SalesOrderVehicleDetail.SalesOrderVehicleId = Sales.SalesOrderVehicle.SalesOrderVehicleId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Triggered.SalesOrderVehicleDetail because Sales.SalesOrderVehicle exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Triggered.tU_SalesOrderVehicleDetail ON Triggered.SalesOrderVehicleDetail FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on SalesOrderVehicleDetail */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insSalesOrderVehicleDetailId sdId.Id,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.SalesOrderVehicle  Triggered.SalesOrderVehicleDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001f346", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Triggered", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(SalesOrderVehicleId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.SalesOrderVehicle
        WHERE
          /* %JoinFKPK(inserted,Sales.SalesOrderVehicle) */
          inserted.SalesOrderVehicleId = Sales.SalesOrderVehicle.SalesOrderVehicleId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.SalesOrderVehicleId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Triggered.SalesOrderVehicleDetail because Sales.SalesOrderVehicle does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




DROP TRIGGER IF EXISTS t_country_insert;
GO
CREATE TRIGGER t_country_insert ON Country INSTEAD OF INSERT
AS BEGIN
    DECLARE @CountryName nvarchar(100);
    SELECT @CountryName = country_name, @CountryId = country_id FROM INSERTED;
    IF @country_name IS NULL SET @CountryName = country_name;
    INSERT INTO Country (CountryId, CountryName) VALUES (@country_name, @country_id);
END;

DROP TRIGGER IF EXISTS t_country_delete;
GO
CREATE TRIGGER t_country_delete ON Country INSTEAD OF DELETE
AS BEGIN
    DECLARE @id INT;
    DECLARE @count INT;
    SELECT @id = CountryId FROM DELETED;
    SELECT @count = COUNT(*) FROM Country WHERE country_id = @id;
    IF @count = 0
        DELETE FROM Country WHERE CountryId = @id;
    ELSE
        THROW 51000, 'can not delete - country is referenced in other tables', 1;
END;
