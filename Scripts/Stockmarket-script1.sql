set search_path to stock_market;

-- Create tables Gold, Bitcoin, DowJones Industrial, NASDAQ, S&P500, and Russel 2000

create table gold(
	"year" varchar(50) null,
	"month" varchar(50) null,
	"date" varchar(50) null,
	"close" float(4) null,
	"high" float(4) null,
	"low" float(4) null,
	"open" float(4) null,
	"volume" integer null
);

create table bitcoin(
	"year" varchar(50) null,
	"month" varchar(50) null,
	"date" varchar(50) null,
	"close" float(4) null,
	"high" float(4) null,
	"low" float(4) null,
	"open" float(4) null,
	"volume" integer null
);

create table dowjones(
	"year" varchar(50) null,
	"month" varchar(50) null,
	"date" varchar(50) null,
	"close" float(4) null,
	"high" float(4) null,
	"low" float(4) null,
	"open" float(4) null,
	"volume" varchar(50) null
);


create table nasdaq(
	"year" varchar(50) null,
	"month" varchar(50) null,
	"date" varchar(50) null,
	"close" float(4) null,
	"high" float(4) null,
	"low" float(4) null,
	"open" float(4) null,
	"volume" varchar(50) null
);

create table sp500(
	"year" varchar(50) null,
	"month" varchar(50) null,
	"date" varchar(50) null,
	"close" float(4) null,
	"high" float(4) null,
	"low" float(4) null,
	"open" float(4) null,
	"volume" varchar(50) null
);

create table russel2000(
	"year" varchar(50) null,
	"month" varchar(50) null,
	"date" varchar(50) null,
	"close" float(4) null,
	"high" float(4) null,
	"low" float(4) null,
	"open" float(4) null,
	"volume" varchar(50) null
);

-- Volume for indexes will be brought in as varchar(50) due to SQL not having a data type for scientific notation. 

-- Reformat time into year and month

-- GOLD

update gold
set "year" = substring("date", 1, 4);

update gold
set "month" = substring("date", 6, 2);

update gold
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

-- BITCOIN

update bitcoin
set "year" = substring("date", 1, 4);

update bitcoin
set "month" = substring("date", 6, 2);

update bitcoin
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


-- DOWJONES

update dowjones
set "year" = substring("date", 1, 4);

update dowjones
set "month" = substring("date", 6, 2);

update dowjones
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


-- NASDAQ

update nasdaq
set "year" = substring("date", 1, 4);

update nasdaq
set "month" = substring("date", 6, 2);

update nasdaq
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

-- S&P500

update sp500
set "year" = substring("date", 1, 4);

update sp500
set "month" = substring("date", 6, 2);

update sp500
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

-- Russel 2000

update russel2000
set "year" = substring("date", 1, 4);

update russel2000
set "month" = substring("date", 6, 2);

update russel2000
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

-- Drop null values

delete from bitcoin
where "close" is null;

delete from dowjones
where "close" is null;

delete from gold
where "close" is null;

delete from nasdaq
where "close" is null;

delete from russel2000
where "close" is null;

delete from sp500
where "close" is null;

