
set search_path to cpi;

-- Create tables for CPI-U, CPI-U chained, and CPI Average Price Index or staple items
create table cpi_u (
	"series_id" varchar(50) null,
	"series" varchar(225) null,
	"year" varchar(50) null,
	"month" varchar(50) null,
	"label" varchar(50) null,
	"value" float(4) null
);

create table cpi_u_chained (
	"series_id" varchar(50) null,
	"series" varchar(225) null,
	"year" varchar(50) null,
	"month" varchar(50) null,
	"label" varchar(50) null,
	"value" float(4) null
);

create table cpi_u_staple (
	"series_id" varchar(50) null,
	"series" varchar(225) null,
	"year" varchar(50) null,
	"month" varchar(50) null,
	"label" varchar(50) null,
	"value" float(4) null
);


-- Specify Series names corresponding to SeriesID

update cpi_u 
set "series" = case
		when "series_id" = 'CUUR0000SA0' then 'All Items'
		when "series_id" = 'CUSR0000SA0' then 'All Items (Seas)'
		when "series_id" = 'CUUR0000SA0L1E' then 'All Items Less Food & Energy'
		when "series_id" = 'CUSR0000SA0L1E' then 'All Items Less Food & Energy (Seas)'
		when "series_id" = 'CUUR0000SA0E' then 'Energy'
		when "series_id" = 'CUUR0000SAM' then 'Medical Care'
		when "series_id" = 'CUSR0000SASLE' then 'Services Less Energy Services (Seas)'
		when "series_id" = 'CUUR0000SAF' then 'Food and Beverages'
		when "series_id" = 'CUUR0000SAH1' then 'Shelter'
		when "series_id" = 'CUUR0000SAF1' then 'Food'
		when "series_id" = 'CUUR0000SETB01' then 'Gasoline'
		when "series_id" = 'CUSR0000SEHC' then 'OERoR (Seas)'
		when "series_id" = 'CUSR0000SEHA' then 'RoPR (Seas)'
		when "series_id" = 'CUUR0000SEMF01' then 'Prescription Drugs'
		else "series"
end
where "series_id" in ('CUUR0000SA0', 'CUSR0000SA0', 'CUUR0000SA0L1E', 'CUSR0000SA0L1E', 'CUUR0000SA0E', 
'CUUR0000SAM', 'CUSR0000SASLE', 'CUUR0000SAF', 'CUUR0000SAH1', 'CUUR0000SAF1', 'CUUR0000SETB01', 
'CUSR0000SEHC', 'CUSR0000SEHA', 'CUUR0000SEMF01');

update cpi_u_chained
set "series" = case
	when "series_id" = 	'SUUR0000SA0' then 'All Items'
	when "series_id" = 'SUUR0000SAM' then 'Medical Care'
	when "series_id" = 'SUUR0000SAF' then 'Food and Beverages'
	when "series_id" = 'SUUR0000SAH' then 'Housing'
	when "series_id" = 'SUUR0000SAC' then 'Commodities'
	when "series_id" = 'SUUR0000SA0L1E' then 'All Items Less Food & Energy'
	when "series_id" = 'SUUR0000SA0E' then 'Energy'
	when "series_id" = 'SUUR0000SAT' then 'Transportation'
	when "series_id" = 'SUUR0000SAA' then 'Apparel'
	when "series_id" = 'SUUR0000SAS' then 'Services'
	when "series_id" = 'SUUR0000SAF11' then 'Food at Home'
	when "series_id" = 'SUUR0000SAD' then 'Durables'
	when "series_id" = 'SUUR0000SAR' then 'Recreation'
	when "series_id" = 'SUUR0000SAN' then 'Nondurables'
	when "series_id" = 'SUUR0000SEFV' then 'Food away from Home'
	when "series_id" = 'SUUR0000SAH1' then 'Shelter'
	when "series_id" = 'SUUR0000SAE1' then 'Education'
	when "series_id" = 'SUUR0000SAE2' then 'Communication'
end
where "series_id" in ('SUUR0000SA0', 'SUUR0000SAM', 'SUUR0000SAF', 'SUUR0000SAH', 
'SUUR0000SAC', 'SUUR0000SA0L1E', 'SUUR0000SA0E', 'SUUR0000SAT', 'SUUR0000SAA', 
'SUUR0000SAS', 'SUUR0000SAF11', 'SUUR0000SAD', 'SUUR0000SAR', 'SUUR0000SAN', 
'SUUR0000SEFV', 'SUUR0000SAH1', 'SUUR0000SAE1', 'SUUR0000SAE2');

update cpi_u_staple
set "series" = case
	when "series_id" = 	'APU0000708111' then 'Eggs Grade A (dozen)'
	when "series_id" = 'APU020072620' then 'Utility (piped) Gas'
	when "series_id" = 'APU0200703423' then 'Steak Porterhouse (cost per pound/1 lb)'
	when "series_id" = 'APU0000709112' then 'Milk (1 gallon)'
	when "series_id" = 'APU0000701111' then 'Flour White (1 lb)'
	when "series_id" = 'APU000074714' then 'Gas Unleaded (1 gallon)'
	when "series_id" = 'APU0000702111' then 'Bread White(1 lb)'
	when "series_id" = 'APU0000701312' then 'Rice White (1 lb)'
	when "series_id" = 'APU000072610' then 'Electricity (KWH)'
	when "series_id" = 'APU0000704111' then 'Bacon Slices (1 lb)'
	when "series_id" = 'APU0000711211' then 'Bananas (1 lb)'
	when "series_id" = 'APU0000706111' then 'Chicken Whole (1 lb)'
	when "series_id" = 'APU0000703112' then 'Ground Beef (1 lb)'
	when "series_id" = 'APU0000717311' then 'Cofee 100% Ground Roast (1 1b)'
	when "series_id" = 'APU0000702421' then 'Cookies Chocolate Chip (1 lb)'
	when "series_id" = 'APU0000710411' then 'Ice Cream Prepackaged Bulk (1/2 gallon)'
	when "series_id" = 'APU00007471A' then 'Gas All Types (1 gallon)'
	when "series_id" = 'APU0000718311' then 'Potato Chips (16 oz)'
	when "series_id" = 'APU0000711311' then 'Oranges Navel (1 lb)'
	when "series_id" = 'APU000072511' then 'Fuel Oil #2 (1 gallon)'
end
where "series_id" in ('APU0000708111', 'APU020072620', 'APU0200703423', 'APU0000709112', 
'APU0000701111', 'APU000074714', 'APU0000702111', 'APU0000701312', 'APU000072610',
'APU0000704111', 'APU0000711211', 'APU0000706111', 'APU0000703112', 'APU0000717311',
'APU0000702421', 'APU0000710411', 'APU00007471A', 'APU0000718311', 'APU0000711311', 'APU000072511');


-- Drop unnecessary data/null values

delete from cpi_u
where "series" is null;

delete from cpi_u_chained
where "series" is null;

-- Reformat time for ease of table joining and reading

update cpi_u
set "month" = case 
	when "period" = 'M01' then 'Jan'
	when "period" = 'M02' then 'Feb'
	when "period" = 'M03' then 'Mar'
	when "period" = 'M04' then 'Apr'
	when "period" = 'M05' then 'May'
	when "period" = 'M06' then 'Jun'
	when "period" = 'M07' then 'Jul'
	when "period" = 'M08' then 'Aug'
	when "period" = 'M09' then 'Sep'
	when "period" = 'M10' then 'Oct'
	when "period" = 'M11' then 'Nov'
	when "period" = 'M12' then 'Dec'
end 
where "period" in ('M01', 'M02', 'M03', 'M04', 'M05', 'M06', 'M07', 'M08', 'M09', 'M10', 'M11', 'M12');

update cpi_u_chained
set "month" = case 
	when "period" = 'M01' then 'Jan'
	when "period" = 'M02' then 'Feb'
	when "period" = 'M03' then 'Mar'
	when "period" = 'M04' then 'Apr'
	when "period" = 'M05' then 'May'
	when "period" = 'M06' then 'Jun'
	when "period" = 'M07' then 'Jul'
	when "period" = 'M08' then 'Aug'
	when "period" = 'M09' then 'Sep'
	when "period" = 'M10' then 'Oct'
	when "period" = 'M11' then 'Nov'
	when "period" = 'M12' then 'Dec'
end 
where "period" in ('M01', 'M02', 'M03', 'M04', 'M05', 'M06', 'M07', 'M08', 'M09', 'M10', 'M11', 'M12');

update cpi_u_staple
set "month" = case 
	when "period" = 'M01' then 'Jan'
	when "period" = 'M02' then 'Feb'
	when "period" = 'M03' then 'Mar'
	when "period" = 'M04' then 'Apr'
	when "period" = 'M05' then 'May'
	when "period" = 'M06' then 'Jun'
	when "period" = 'M07' then 'Jul'
	when "period" = 'M08' then 'Aug'
	when "period" = 'M09' then 'Sep'
	when "period" = 'M10' then 'Oct'
	when "period" = 'M11' then 'Nov'
	when "period" = 'M12' then 'Dec'
end 
where "period" in ('M01', 'M02', 'M03', 'M04', 'M05', 'M06', 'M07', 'M08', 'M09', 'M10', 'M11', 'M12');

-- Drop Period column

alter table cpi_u
drop column "period";


alter table cpi_u_chained
drop column "period";


alter table cpi_u_staple
drop column "period";


