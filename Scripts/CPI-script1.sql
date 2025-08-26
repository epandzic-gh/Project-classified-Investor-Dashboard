
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

-- Drop unnecessary data/null values

delete from cpi_u
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


-- Drop Period column

alter table cpi_u
drop column "period";



