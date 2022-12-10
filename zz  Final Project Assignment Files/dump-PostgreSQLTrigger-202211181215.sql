--
-- PostgreSQL database dump
--

-- Dumped from database version 11.15
-- Dumped by pg_dump version 14.2

-- Started on 2022-11-18 12:15:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 32 (class 2615 OID 18223)
-- Name: Audit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Audit";


ALTER SCHEMA "Audit" OWNER TO postgres;

--
-- TOC entry 7 (class 2615 OID 18229)
-- Name: HumanResources; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "HumanResources";


ALTER SCHEMA "HumanResources" OWNER TO postgres;

--
-- TOC entry 26 (class 2615 OID 18230)
-- Name: Inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Inventory";


ALTER SCHEMA "Inventory" OWNER TO postgres;

--
-- TOC entry 15 (class 2615 OID 18231)
-- Name: Location; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Location";


ALTER SCHEMA "Location" OWNER TO postgres;

--
-- TOC entry 19 (class 2615 OID 18232)
-- Name: Rentor; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Rentor";


ALTER SCHEMA "Rentor" OWNER TO postgres;

--
-- TOC entry 14 (class 2615 OID 18233)
-- Name: Rules; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Rules";


ALTER SCHEMA "Rules" OWNER TO postgres;

--
-- TOC entry 21 (class 2615 OID 18234)
-- Name: Sales; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Sales";


ALTER SCHEMA "Sales" OWNER TO postgres;

--
-- TOC entry 12 (class 2615 OID 18245)
-- Name: Staff; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Staff";


ALTER SCHEMA "Staff" OWNER TO postgres;

--
-- TOC entry 20 (class 2615 OID 18246)
-- Name: SystemVersioned; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "SystemVersioned";


ALTER SCHEMA "SystemVersioned" OWNER TO postgres;

--
-- TOC entry 6 (class 2615 OID 18247)
-- Name: Triggered; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Triggered";


ALTER SCHEMA "Triggered" OWNER TO postgres;

--
-- TOC entry 25 (class 2615 OID 18248)
-- Name: Udt; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Udt";


ALTER SCHEMA "Udt" OWNER TO postgres;

--
-- TOC entry 24 (class 2615 OID 18249)
-- Name: Utils; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Utils";


ALTER SCHEMA "Utils" OWNER TO postgres;

--
-- TOC entry 18 (class 2615 OID 18224)
-- Name: dBlob; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "dBlob";


ALTER SCHEMA "dBlob" OWNER TO postgres;

--
-- TOC entry 17 (class 2615 OID 18225)
-- Name: dDatetime; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "dDatetime";


ALTER SCHEMA "dDatetime" OWNER TO postgres;

--
-- TOC entry 11 (class 2615 OID 18226)
-- Name: dNumber; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "dNumber";


ALTER SCHEMA "dNumber" OWNER TO postgres;

--
-- TOC entry 16 (class 2615 OID 18227)
-- Name: dRoot; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "dRoot";


ALTER SCHEMA "dRoot" OWNER TO postgres;

--
-- TOC entry 28 (class 2615 OID 18228)
-- Name: dString; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "dString";


ALTER SCHEMA "dString" OWNER TO postgres;

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 10 (class 2615 OID 18235)
-- Name: sdAddressesString; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdAddressesString";


ALTER SCHEMA "sdAddressesString" OWNER TO postgres;

--
-- TOC entry 31 (class 2615 OID 18237)
-- Name: sdDV2String; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdDV2String";


ALTER SCHEMA "sdDV2String" OWNER TO postgres;

--
-- TOC entry 27 (class 2615 OID 18236)
-- Name: sdDescriptionsString; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdDescriptionsString";


ALTER SCHEMA "sdDescriptionsString" OWNER TO postgres;

--
-- TOC entry 4 (class 2615 OID 18238)
-- Name: sdInternetsString; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdInternetsString";


ALTER SCHEMA "sdInternetsString" OWNER TO postgres;

--
-- TOC entry 13 (class 2615 OID 18239)
-- Name: sdJobsString; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdJobsString";


ALTER SCHEMA "sdJobsString" OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 18240)
-- Name: sdKeysNumber; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdKeysNumber";


ALTER SCHEMA "sdKeysNumber" OWNER TO postgres;

--
-- TOC entry 33 (class 2615 OID 18241)
-- Name: sdNamesString; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdNamesString";


ALTER SCHEMA "sdNamesString" OWNER TO postgres;

--
-- TOC entry 34 (class 2615 OID 18242)
-- Name: sdPIIString; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdPIIString";


ALTER SCHEMA "sdPIIString" OWNER TO postgres;

--
-- TOC entry 29 (class 2615 OID 18243)
-- Name: sdTelephonesString; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdTelephonesString";


ALTER SCHEMA "sdTelephonesString" OWNER TO postgres;

--
-- TOC entry 30 (class 2615 OID 18244)
-- Name: sdTextDatesString; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "sdTextDatesString";


ALTER SCHEMA "sdTextDatesString" OWNER TO postgres;

--
-- TOC entry 627 (class 1247 OID 18253)
-- Name: BinaryImages; Type: DOMAIN; Schema: dBlob; Owner: postgres
--

CREATE DOMAIN "dBlob"."BinaryImages" AS bytea;


ALTER DOMAIN "dBlob"."BinaryImages" OWNER TO postgres;

--
-- TOC entry 648 (class 1247 OID 18269)
-- Name: dtTimestamp; Type: DOMAIN; Schema: dDatetime; Owner: postgres
--

CREATE DOMAIN "dDatetime"."dtTimestamp" AS timestamp without time zone;


ALTER DOMAIN "dDatetime"."dtTimestamp" OWNER TO postgres;

--
-- TOC entry 651 (class 1247 OID 18271)
-- Name: dtYYYYMMDD; Type: DOMAIN; Schema: dDatetime; Owner: postgres
--

CREATE DOMAIN "dDatetime"."dtYYYYMMDD" AS date;


ALTER DOMAIN "dDatetime"."dtYYYYMMDD" OWNER TO postgres;

--
-- TOC entry 639 (class 1247 OID 18263)
-- Name: Counter; Type: DOMAIN; Schema: dNumber; Owner: postgres
--

CREATE DOMAIN "dNumber"."Counter" AS integer;


ALTER DOMAIN "dNumber"."Counter" OWNER TO postgres;

--
-- TOC entry 642 (class 1247 OID 18265)
-- Name: Currency; Type: DOMAIN; Schema: dNumber; Owner: postgres
--

CREATE DOMAIN "dNumber"."Currency" AS integer;


ALTER DOMAIN "dNumber"."Currency" OWNER TO postgres;

--
-- TOC entry 675 (class 1247 OID 18287)
-- Name: sdAddressesString; Type: DOMAIN; Schema: dString; Owner: postgres
--

CREATE DOMAIN "dString"."sdAddressesString" AS character varying(20);


ALTER DOMAIN "dString"."sdAddressesString" OWNER TO postgres;

--
-- TOC entry 684 (class 1247 OID 18293)
-- Name: sdDescriptionsString; Type: DOMAIN; Schema: dString; Owner: postgres
--

CREATE DOMAIN "dString"."sdDescriptionsString" AS character varying(20);


ALTER DOMAIN "dString"."sdDescriptionsString" OWNER TO postgres;

--
-- TOC entry 687 (class 1247 OID 18295)
-- Name: sdInternetsString; Type: DOMAIN; Schema: dString; Owner: postgres
--

CREATE DOMAIN "dString"."sdInternetsString" AS character varying(20);


ALTER DOMAIN "dString"."sdInternetsString" OWNER TO postgres;

--
-- TOC entry 690 (class 1247 OID 18297)
-- Name: sdJobsString; Type: DOMAIN; Schema: dString; Owner: postgres
--

CREATE DOMAIN "dString"."sdJobsString" AS character varying(20);


ALTER DOMAIN "dString"."sdJobsString" OWNER TO postgres;

--
-- TOC entry 696 (class 1247 OID 18301)
-- Name: sdNamesString; Type: DOMAIN; Schema: dString; Owner: postgres
--

CREATE DOMAIN "dString"."sdNamesString" AS character varying(25);


ALTER DOMAIN "dString"."sdNamesString" OWNER TO postgres;

--
-- TOC entry 702 (class 1247 OID 18305)
-- Name: sdPIIString; Type: DOMAIN; Schema: dString; Owner: postgres
--

CREATE DOMAIN "dString"."sdPIIString" AS character varying(20);


ALTER DOMAIN "dString"."sdPIIString" OWNER TO postgres;

--
-- TOC entry 705 (class 1247 OID 18307)
-- Name: sdTelephonesString; Type: DOMAIN; Schema: dString; Owner: postgres
--

CREATE DOMAIN "dString"."sdTelephonesString" AS character varying(20);


ALTER DOMAIN "dString"."sdTelephonesString" OWNER TO postgres;

--
-- TOC entry 708 (class 1247 OID 18309)
-- Name: sdTextDatesString; Type: DOMAIN; Schema: dString; Owner: postgres
--

CREATE DOMAIN "dString"."sdTextDatesString" AS character(8);


ALTER DOMAIN "dString"."sdTextDatesString" OWNER TO postgres;

--
-- TOC entry 645 (class 1247 OID 18267)
-- Name: Department; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public."Department" AS character varying(50);


ALTER DOMAIN public."Department" OWNER TO postgres;

--
-- TOC entry 660 (class 1247 OID 18277)
-- Name: FullName; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public."FullName" AS character varying(45);


ALTER DOMAIN public."FullName" OWNER TO postgres;

--
-- TOC entry 663 (class 1247 OID 18279)
-- Name: IsFlagChar1; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public."IsFlagChar1" AS character(1);


ALTER DOMAIN public."IsFlagChar1" OWNER TO postgres;

--
-- TOC entry 672 (class 1247 OID 18285)
-- Name: Note; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public."Note" AS character varying(200);


ALTER DOMAIN public."Note" OWNER TO postgres;

--
-- TOC entry 678 (class 1247 OID 18289)
-- Name: sdBlob; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public."sdBlob" AS bytea;


ALTER DOMAIN public."sdBlob" OWNER TO postgres;

--
-- TOC entry 681 (class 1247 OID 18291)
-- Name: sdDateTime; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public."sdDateTime" AS date;


ALTER DOMAIN public."sdDateTime" OWNER TO postgres;

--
-- TOC entry 699 (class 1247 OID 18303)
-- Name: sdNumber; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public."sdNumber" AS integer;


ALTER DOMAIN public."sdNumber" OWNER TO postgres;

--
-- TOC entry 624 (class 1247 OID 18251)
-- Name: Address; Type: DOMAIN; Schema: sdAddressesString; Owner: postgres
--

CREATE DOMAIN "sdAddressesString"."Address" AS character varying(20);


ALTER DOMAIN "sdAddressesString"."Address" OWNER TO postgres;

--
-- TOC entry 636 (class 1247 OID 18261)
-- Name: City; Type: DOMAIN; Schema: sdAddressesString; Owner: postgres
--

CREATE DOMAIN "sdAddressesString"."City" AS character varying(20);


ALTER DOMAIN "sdAddressesString"."City" OWNER TO postgres;

--
-- TOC entry 720 (class 1247 OID 18317)
-- Name: State; Type: DOMAIN; Schema: sdAddressesString; Owner: postgres
--

CREATE DOMAIN "sdAddressesString"."State" AS character varying(20);


ALTER DOMAIN "sdAddressesString"."State" OWNER TO postgres;

--
-- TOC entry 732 (class 1247 OID 18327)
-- Name: ZipCode; Type: DOMAIN; Schema: sdAddressesString; Owner: postgres
--

CREATE DOMAIN "sdAddressesString"."ZipCode" AS character varying(20);


ALTER DOMAIN "sdAddressesString"."ZipCode" OWNER TO postgres;

--
-- TOC entry 741 (class 1247 OID 26235)
-- Name: Char1; Type: DOMAIN; Schema: sdDescriptionsString; Owner: postgres
--

CREATE DOMAIN "sdDescriptionsString"."Char1" AS character(1);


ALTER DOMAIN "sdDescriptionsString"."Char1" OWNER TO postgres;

--
-- TOC entry 735 (class 1247 OID 18329)
-- Name: ChoiceList1; Type: DOMAIN; Schema: sdDescriptionsString; Owner: postgres
--

CREATE DOMAIN "sdDescriptionsString"."ChoiceList1" AS character(1);


ALTER DOMAIN "sdDescriptionsString"."ChoiceList1" OWNER TO postgres;

--
-- TOC entry 630 (class 1247 OID 18257)
-- Name: ChoiceList2; Type: DOMAIN; Schema: sdDescriptionsString; Owner: postgres
--

CREATE DOMAIN "sdDescriptionsString"."ChoiceList2" AS character(2);


ALTER DOMAIN "sdDescriptionsString"."ChoiceList2" OWNER TO postgres;

--
-- TOC entry 633 (class 1247 OID 18259)
-- Name: ChoiceList3; Type: DOMAIN; Schema: sdDescriptionsString; Owner: postgres
--

CREATE DOMAIN "sdDescriptionsString"."ChoiceList3" AS character(3);


ALTER DOMAIN "sdDescriptionsString"."ChoiceList3" OWNER TO postgres;

--
-- TOC entry 669 (class 1247 OID 18283)
-- Name: LongDescription75; Type: DOMAIN; Schema: sdDescriptionsString; Owner: postgres
--

CREATE DOMAIN "sdDescriptionsString"."LongDescription75" AS character varying(75);


ALTER DOMAIN "sdDescriptionsString"."LongDescription75" OWNER TO postgres;

--
-- TOC entry 711 (class 1247 OID 18311)
-- Name: ShortDescription20; Type: DOMAIN; Schema: sdDescriptionsString; Owner: postgres
--

CREATE DOMAIN "sdDescriptionsString"."ShortDescription20" AS character varying(20);


ALTER DOMAIN "sdDescriptionsString"."ShortDescription20" OWNER TO postgres;

--
-- TOC entry 714 (class 1247 OID 18313)
-- Name: SingleCharacter; Type: DOMAIN; Schema: sdDescriptionsString; Owner: postgres
--

CREATE DOMAIN "sdDescriptionsString"."SingleCharacter" AS character(1);


ALTER DOMAIN "sdDescriptionsString"."SingleCharacter" OWNER TO postgres;

--
-- TOC entry 723 (class 1247 OID 18321)
-- Name: URL; Type: DOMAIN; Schema: sdInternetsString; Owner: postgres
--

CREATE DOMAIN "sdInternetsString"."URL" AS character varying(80);


ALTER DOMAIN "sdInternetsString"."URL" OWNER TO postgres;

--
-- TOC entry 744 (class 1247 OID 26256)
-- Name: Department; Type: DOMAIN; Schema: sdJobsString; Owner: postgres
--

CREATE DOMAIN "sdJobsString"."Department" AS character varying(50);


ALTER DOMAIN "sdJobsString"."Department" OWNER TO postgres;

--
-- TOC entry 738 (class 1247 OID 18331)
-- Name: SurrogateKeyInt; Type: DOMAIN; Schema: sdKeysNumber; Owner: postgres
--

CREATE DOMAIN "sdKeysNumber"."SurrogateKeyInt" AS integer;


ALTER DOMAIN "sdKeysNumber"."SurrogateKeyInt" OWNER TO postgres;

--
-- TOC entry 693 (class 1247 OID 18299)
-- Name: sdKeysNumber; Type: DOMAIN; Schema: sdKeysNumber; Owner: postgres
--

CREATE DOMAIN "sdKeysNumber"."sdKeysNumber" AS integer;


ALTER DOMAIN "sdKeysNumber"."sdKeysNumber" OWNER TO postgres;

--
-- TOC entry 747 (class 1247 OID 26258)
-- Name: FullName; Type: DOMAIN; Schema: sdNamesString; Owner: postgres
--

CREATE DOMAIN "sdNamesString"."FullName" AS character varying(50);


ALTER DOMAIN "sdNamesString"."FullName" OWNER TO postgres;

--
-- TOC entry 666 (class 1247 OID 18281)
-- Name: LastName; Type: DOMAIN; Schema: sdNamesString; Owner: postgres
--

CREATE DOMAIN "sdNamesString"."LastName" AS character varying(30);


ALTER DOMAIN "sdNamesString"."LastName" OWNER TO postgres;

--
-- TOC entry 654 (class 1247 OID 18273)
-- Name: EmailAddress; Type: DOMAIN; Schema: sdPIIString; Owner: postgres
--

CREATE DOMAIN "sdPIIString"."EmailAddress" AS character varying(80);


ALTER DOMAIN "sdPIIString"."EmailAddress" OWNER TO postgres;

--
-- TOC entry 657 (class 1247 OID 18275)
-- Name: FirstName; Type: DOMAIN; Schema: sdPIIString; Owner: postgres
--

CREATE DOMAIN "sdPIIString"."FirstName" AS character varying(25);


ALTER DOMAIN "sdPIIString"."FirstName" OWNER TO postgres;

--
-- TOC entry 717 (class 1247 OID 18315)
-- Name: SocialSecurityNumber; Type: DOMAIN; Schema: sdPIIString; Owner: postgres
--

CREATE DOMAIN "sdPIIString"."SocialSecurityNumber" AS character(9);


ALTER DOMAIN "sdPIIString"."SocialSecurityNumber" OWNER TO postgres;

--
-- TOC entry 726 (class 1247 OID 18323)
-- Name: USATelephone; Type: DOMAIN; Schema: sdTelephonesString; Owner: postgres
--

CREATE DOMAIN "sdTelephonesString"."USATelephone" AS character(10);


ALTER DOMAIN "sdTelephonesString"."USATelephone" OWNER TO postgres;

--
-- TOC entry 729 (class 1247 OID 18325)
-- Name: YYYYMMDD; Type: DOMAIN; Schema: sdTextDatesString; Owner: postgres
--

CREATE DOMAIN "sdTextDatesString"."YYYYMMDD" AS character(8);


ALTER DOMAIN "sdTextDatesString"."YYYYMMDD" OWNER TO postgres;

--
-- TOC entry 242 (class 1255 OID 18356)
-- Name: funcDeleteHumanResourcesEmployeeTriggerHistory(); Type: FUNCTION; Schema: HumanResources; Owner: postgres
--

CREATE FUNCTION "HumanResources"."funcDeleteHumanResourcesEmployeeTriggerHistory"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin
	 insert
		into
		"Audit"."HumanResourcesTriggerHistory"
		( 			"EmployeeId",
					"EmployeeFullName",
					"Department",
					"Salary",
					"Note",
					"TransactionNumber",
					"UserAuthenticatedKey",
					"SysStartTime",
					"SysEndTime",
					"AuditDateTimeStamp",
					"DBAction")
		values(
				    old."EmployeeId",
					old."EmployeeFullName",
					old."Department",
					old."Salary",
					'Row was deleted',
					old."TransactionNumber",
					old."UserAuthenticatedKey",
					old."SysStartTime",
					now(), 
					now(), 	--"AuditDateTimeStamp",
					'D'     --"DBAction"
			 );

return new;
end;

$$;


ALTER FUNCTION "HumanResources"."funcDeleteHumanResourcesEmployeeTriggerHistory"() OWNER TO postgres;

--
-- TOC entry 241 (class 1255 OID 34479)
-- Name: funcUpdateHumanResourcesEmployeeTriggerHistory(); Type: FUNCTION; Schema: HumanResources; Owner: postgres
--

CREATE FUNCTION "HumanResources"."funcUpdateHumanResourcesEmployeeTriggerHistory"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin
--
--  Get the NEW.SysStartTime FROM NEW to create the 
--  SysEndTime of the history record for continuity in the Allen intervald (Meet)
--
	 insert
		into
		"Audit"."HumanResourcesTriggerHistory"
	( 	"EmployeeId",
		"EmployeeFullName",
		"Department",
		"Salary",
		"Note",
		"TransactionNumber",
		"UserAuthenticatedKey",
		"SysStartTime",
		"SysEndTime",
		"AuditDateTimeStamp",
		"DBAction")
values(
		old."EmployeeId",
		old."EmployeeFullName",
		old."Department",
		old."Salary",
		coalesce(old."Note",concat('No note on Transaction : ',old."TransactionNumber")),
		old."TransactionNumber",
		old."UserAuthenticatedKey",
		old."SysStartTime",
		new."SysStartTime",  -- current row SysStartTime
		new."SysStartTime", 	--"AuditDateTimeStamp",
		'U'
	 );
	
return new;
end;

$$;


ALTER FUNCTION "HumanResources"."funcUpdateHumanResourcesEmployeeTriggerHistory"() OWNER TO postgres;

--
-- TOC entry 243 (class 1255 OID 18355)
-- Name: funcUpdateHumanResourcesTriggerHistory(); Type: FUNCTION; Schema: HumanResources; Owner: postgres
--

CREATE FUNCTION "HumanResources"."funcUpdateHumanResourcesTriggerHistory"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin
--
--  Get the NEW.SysStartTime FROM NEW to create the 
--  SysEndTime of the history record for continuity in the Allen intervald (Meet)
--
	 insert
		into
		"Audit"."HumanResourcesTriggerHistory"
	( 	"EmployeeId",
		"EmployeeFullName",
		"Department",
		"Salary",
		"Note",
		"TransactionNumber",
		"UserAuthenticatedKey",
		"SysStartTime",
		"SysEndTime",
		"AuditDateTimeStamp",
		"DBAction")
values(
		old."EmployeeId",
		old."EmployeeFullName",
		old."Department",
		old."Salary",
		coalesce(old."Note",concat('No note on Transaction : ',old."TransactionNumber")),
		old."TransactionNumber",
		old."UserAuthenticatedKey",
		old."SysStartTime",
		new."SysStartTime",  -- current row SysStartTime
		new."SysStartTime", 	--"AuditDateTimeStamp",
		'U'
	 );
	
return new;
end;

$$;


ALTER FUNCTION "HumanResources"."funcUpdateHumanResourcesTriggerHistory"() OWNER TO postgres;

SET default_tablespace = '';

--
-- TOC entry 226 (class 1259 OID 26394)
-- Name: HumanResourcesEmployeeTriggerHistory; Type: TABLE; Schema: Audit; Owner: postgres
--

CREATE TABLE "Audit"."HumanResourcesEmployeeTriggerHistory" (
    "HumanResourcesEmployeeTriggerHistoryId" integer NOT NULL,
    "AuditDateTimeStamp" "dDatetime"."dtTimestamp",
    "EmployeeId" integer NOT NULL,
    "DBAction" "sdDescriptionsString"."ChoiceList1" NOT NULL,
    "EmployeeFullName" "sdNamesString"."FullName" NOT NULL,
    "Department" "sdJobsString"."Department" NOT NULL,
    "Salary" "dNumber"."Currency" NOT NULL,
    "Note" public."Note",
    "TransactionNumber" "dNumber"."Counter",
    "UserAuthenticatedKey" "sdKeysNumber"."SurrogateKeyInt",
    "SysStartTime" "dDatetime"."dtTimestamp",
    "SysEndTime" "dDatetime"."dtTimestamp"
);


ALTER TABLE "Audit"."HumanResourcesEmployeeTriggerHistory" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 26392)
-- Name: HumanResourcesTriggerHistory_HumanResourcesTriggerHistoryId_seq; Type: SEQUENCE; Schema: Audit; Owner: postgres
--

ALTER TABLE "Audit"."HumanResourcesEmployeeTriggerHistory" ALTER COLUMN "HumanResourcesEmployeeTriggerHistoryId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Audit"."HumanResourcesTriggerHistory_HumanResourcesTriggerHistoryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 26366)
-- Name: Employee; Type: TABLE; Schema: HumanResources; Owner: postgres
--

CREATE TABLE "HumanResources"."Employee" (
    "EmployeeId" integer NOT NULL,
    "EmployeeFullName" "sdNamesString"."FullName" NOT NULL,
    "Department" "sdJobsString"."Department" DEFAULT 'Computer Science'::character varying NOT NULL,
    "Salary" "dNumber"."Currency" DEFAULT 0 NOT NULL,
    "Note" public."Note",
    "TransactionNumber" "dNumber"."Counter" DEFAULT 1 NOT NULL,
    "UserAuthenticatedKey" "sdKeysNumber"."SurrogateKeyInt" DEFAULT 1 NOT NULL,
    "SysStartTime" "dDatetime"."dtTimestamp" DEFAULT now() NOT NULL,
    "SysEndTime" "dDatetime"."dtTimestamp" DEFAULT '9999-12-31 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE "HumanResources"."Employee" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 26364)
-- Name: Employee_EmployeeId_seq; Type: SEQUENCE; Schema: HumanResources; Owner: postgres
--

ALTER TABLE "HumanResources"."Employee" ALTER COLUMN "EmployeeId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "HumanResources"."Employee_EmployeeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 34486)
-- Name: uvw_FindAllUniquePkyForHumanResourcesEmployee; Type: VIEW; Schema: HumanResources; Owner: postgres
--

CREATE VIEW "HumanResources"."uvw_FindAllUniquePkyForHumanResourcesEmployee" AS
 SELECT "Employee"."EmployeeId"
   FROM "HumanResources"."Employee"
UNION
 SELECT "HumanResourcesEmployeeTriggerHistory"."EmployeeId"
   FROM "Audit"."HumanResourcesEmployeeTriggerHistory";


ALTER TABLE "HumanResources"."uvw_FindAllUniquePkyForHumanResourcesEmployee" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 34480)
-- Name: uvw_GetTransactionHistoryByPKY; Type: VIEW; Schema: HumanResources; Owner: postgres
--

CREATE VIEW "HumanResources"."uvw_GetTransactionHistoryByPKY" AS
 SELECT 'Current Row'::text AS "RecordType",
    NULL::integer AS "HumanResourcesEmployeeTriggerHistoryId",
    NULL::timestamp without time zone AS "AuditDateTimeStamp",
    NULL::bpchar AS "DBAction",
    "Employee"."EmployeeId",
    "Employee"."EmployeeFullName",
    "Employee"."Department",
    "Employee"."Salary",
    "Employee"."Note",
    "Employee"."TransactionNumber",
    "Employee"."UserAuthenticatedKey",
    "Employee"."SysStartTime",
    "Employee"."SysEndTime"
   FROM "HumanResources"."Employee"
UNION
 SELECT 'History Row'::text AS "RecordType",
    "HumanResourcesEmployeeTriggerHistory"."HumanResourcesEmployeeTriggerHistoryId",
    "HumanResourcesEmployeeTriggerHistory"."AuditDateTimeStamp",
    "HumanResourcesEmployeeTriggerHistory"."DBAction",
    "HumanResourcesEmployeeTriggerHistory"."EmployeeId",
    "HumanResourcesEmployeeTriggerHistory"."EmployeeFullName",
    "HumanResourcesEmployeeTriggerHistory"."Department",
    "HumanResourcesEmployeeTriggerHistory"."Salary",
    "HumanResourcesEmployeeTriggerHistory"."Note",
    "HumanResourcesEmployeeTriggerHistory"."TransactionNumber",
    "HumanResourcesEmployeeTriggerHistory"."UserAuthenticatedKey",
    "HumanResourcesEmployeeTriggerHistory"."SysStartTime",
    "HumanResourcesEmployeeTriggerHistory"."SysEndTime"
   FROM "Audit"."HumanResourcesEmployeeTriggerHistory";


ALTER TABLE "HumanResources"."uvw_GetTransactionHistoryByPKY" OWNER TO postgres;

--
-- TOC entry 3134 (class 0 OID 26394)
-- Dependencies: 226
-- Data for Name: HumanResourcesEmployeeTriggerHistory; Type: TABLE DATA; Schema: Audit; Owner: postgres
--

COPY "Audit"."HumanResourcesEmployeeTriggerHistory" ("HumanResourcesEmployeeTriggerHistoryId", "AuditDateTimeStamp", "EmployeeId", "DBAction", "EmployeeFullName", "Department", "Salary", "Note", "TransactionNumber", "UserAuthenticatedKey", "SysStartTime", "SysEndTime") FROM stdin;
1	2022-11-09 15:17:39.273536	1	U	Peter Heller	Computer Science	95000	Intial row insert	1	1	2022-11-09 15:17:32.180146	2022-11-09 15:17:39.273536
2	2022-11-09 15:17:44.566295	1	U	Peter Heller	Rock Climbing	100000	Salery increase	2	1	2022-11-09 15:17:39.273536	2022-11-09 15:17:44.566295
3	2022-11-09 15:17:55.176501	1	U	Peter Heller	Cs Department	100000	No note on Transaction : 3	3	1	2022-11-09 15:17:44.566295	2022-11-09 15:17:55.176501
4	2022-11-09 15:18:57.141541	1	D	Peter Heller	Cs Department	100000	Row was deleted	4	1	2022-11-09 15:17:55.176501	2022-11-09 15:18:57.141541
5	2022-11-09 15:19:01.788507	2	U	Barney Rubble	Yabba Dabba Du	95000	Intial row insert	1	1	2022-11-09 15:18:06.884297	2022-11-09 15:19:01.788507
\.


--
-- TOC entry 3132 (class 0 OID 26366)
-- Dependencies: 224
-- Data for Name: Employee; Type: TABLE DATA; Schema: HumanResources; Owner: postgres
--

COPY "HumanResources"."Employee" ("EmployeeId", "EmployeeFullName", "Department", "Salary", "Note", "TransactionNumber", "UserAuthenticatedKey", "SysStartTime", "SysEndTime") FROM stdin;
2	Barney Rubble	Rock Climbing	100000	Salery increase	2	1	2022-11-09 15:19:01.788507	9999-12-31 00:00:00
\.


--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 225
-- Name: HumanResourcesTriggerHistory_HumanResourcesTriggerHistoryId_seq; Type: SEQUENCE SET; Schema: Audit; Owner: postgres
--

SELECT pg_catalog.setval('"Audit"."HumanResourcesTriggerHistory_HumanResourcesTriggerHistoryId_seq"', 5, true);


--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 223
-- Name: Employee_EmployeeId_seq; Type: SEQUENCE SET; Schema: HumanResources; Owner: postgres
--

SELECT pg_catalog.setval('"HumanResources"."Employee_EmployeeId_seq"', 2, true);


--
-- TOC entry 3005 (class 2606 OID 26401)
-- Name: HumanResourcesEmployeeTriggerHistory XPKTestGenericTriggerHistory; Type: CONSTRAINT; Schema: Audit; Owner: postgres
--

ALTER TABLE ONLY "Audit"."HumanResourcesEmployeeTriggerHistory"
    ADD CONSTRAINT "XPKTestGenericTriggerHistory" PRIMARY KEY ("HumanResourcesEmployeeTriggerHistoryId");


--
-- TOC entry 3003 (class 2606 OID 26379)
-- Name: Employee XPKCSCI381; Type: CONSTRAINT; Schema: HumanResources; Owner: postgres
--

ALTER TABLE ONLY "HumanResources"."Employee"
    ADD CONSTRAINT "XPKCSCI381" PRIMARY KEY ("EmployeeId");


--
-- TOC entry 3006 (class 2620 OID 26380)
-- Name: Employee uTd_HumanResourcesEmployeeTriggerHistory; Type: TRIGGER; Schema: HumanResources; Owner: postgres
--

CREATE TRIGGER "uTd_HumanResourcesEmployeeTriggerHistory" AFTER DELETE ON "HumanResources"."Employee" FOR EACH ROW EXECUTE PROCEDURE "HumanResources"."funcDeleteHumanResourcesEmployeeTriggerHistory"();


--
-- TOC entry 3007 (class 2620 OID 26381)
-- Name: Employee uTu_HumanResourcesEmployeeTriggerHistory; Type: TRIGGER; Schema: HumanResources; Owner: postgres
--

CREATE TRIGGER "uTu_HumanResourcesEmployeeTriggerHistory" AFTER UPDATE ON "HumanResources"."Employee" FOR EACH ROW EXECUTE PROCEDURE "HumanResources"."funcUpdateHumanResourcesTriggerHistory"();


-- Completed on 2022-11-18 12:15:35

--
-- PostgreSQL database dump complete
--

