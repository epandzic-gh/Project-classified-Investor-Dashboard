
set search_path to unemployment

-- Create table for initial claims and unemployment rate

create table initial_claims(
	"year" varchar(50) null,
	"month" varchar(50) null,
	"observation_date" varchar(50) null,
	"value" integer null
);

create table unrate(
	"year" varchar(50) null,
	"month" varchar(50) null,
	"observation_date" varchar(50) null,
	"value" float(2) null
);

-- Making year and month both varchar(50) in order to reformate observation_Date data

-- Substring the observation date into year and month column for ease of joining

-- INITIAL CLAIMS

update initial_claims
set "year" = substring("observation_date", 1, 4);

update initial_claims
set "month" = substring("observation_date", 6, 2);

update initial_claims
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

-- UNEMPLOYMENT RATE

update unrate
set "year" = substring("observation_date", 1, 4);

update unrate
set "month" = substring("observation_date", 6, 2);

update unrate
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


