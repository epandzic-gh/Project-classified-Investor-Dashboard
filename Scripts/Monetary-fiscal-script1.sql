
set search_path to monetary_fiscal;

-- Create tables for gdp, federal_debt, fed_funds_rate

create table gdp(
	"year" varchar(50) null,
	"quarter" varchar(50) null,
	"observation_date" varchar(50) null,
	"value" float(4) null
);

create table federal_debt(
	"year" varchar(50) null,
	"quarter" varchar(50) null,
	"observation_date" varchar(50) null,
	"value" float(4) null
);

create table fed_funds_rate(
	"year" varchar(50) null,
	"month" varchar(50) null,
	"observation_date" varchar(50) null,
	"value" float(2) null
);

-- Substring observation date into quarters 

-- GDP

update gdp
set "year" = substring("observation_date", 1, 4);

update gdp
set "quarter" = substring("observation_date", 6, 2);

update gdp
set "quarter" = case "quarter"
	when '01' then 'Q1'
	when '04' then 'Q2'
	when '07' then 'Q3'
	when '10' then 'Q4'
end;

-- FEDERAL DEBT

update federal_debt
set "year" = substring("observation_date", 1, 4);

update federal_debt
set "quarter" = substring("observation_date", 6, 2);

update federal_debt
set "quarter" = case "quarter"
	when '01' then 'Q1'
	when '04' then 'Q2'
	when '07' then 'Q3'
	when '10' then 'Q4'
end;

-- FED FUNDS RATE
update fed_funds_rate
set "year" = substring("observation_date", 1, 4);

update fed_funds_rate
set "month" = substring("observation_date", 6, 2);

update fed_funds_rate
set "month" = case "month"
	when '01' then 'Jan'
	when '02' then 'Feb'
	when '03' then 'Mar'
	when '04' then 'Apr'
	when '05' then 'May'
	when '06' then 'Jun'
	when '07' then 'Jul'
	when '08' then 'Aug'
	when '09' then 'Sep'
	when '10' then 'Oct'
	when '11' then 'Nov'
	when '12' then 'Dec'
end;

-- Multiply values in GDP, Real GDP, and Federal Debt to create uniformity in presented values

-- GDP
update gdp
set "value" = "value" * 1000000000;

-- FEDERAL DEBT
update federal_debt
set "value" = "value" * 1000000;

