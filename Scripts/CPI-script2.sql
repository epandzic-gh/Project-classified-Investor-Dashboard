
set search_path to cpi;

-- Create table solely for All items seasonally adjusted

create table cpi_u_all_items as
select 
	cpi_u.series_id,
	cpi_u.series,
	cpi_u.year,
	cpi_u.month,
	cpi_u.label,
	cpi_u.value
from cpi_u
where cpi_u.series = 'All Items (Seas)';