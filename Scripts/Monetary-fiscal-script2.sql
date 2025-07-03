
set search_path to monetary_fiscal;

-- Create debt to gdp table. 
-- Need to alias the column names that way when creating a table, it does not lead to ambiguity throwing up and error.

create table debt_to_gdp as
select 
	gdp.quarter as gdp_quarter, 
	gdp.observation_date as gdp_observation_date, 
	gdp.value as gdp_value, 
	federal_debt.quarter as federal_debt_quarter, 
	federal_debt.observation_date as federal_debt_observation_date, 
	federal_debt.value as federal_debt_value
from gdp
left join federal_debt on gdp.observation_date = federal_debt.observation_date
order by gdp.observation_date;

-- Alter debt_to_gdp table with a new column called "ratio", which will take federal_debt_value/gdp_value

alter table debt_to_gdp
add column "ratio" float(4);

update debt_to_gdp
set "ratio" = "federal_debt_value" / "gdp_value";

-- Drop null values and duplicating quarter and observation_date columns

delete from debt_to_gdp
where "ratio" is null;

alter table debt_to_gdp
drop column "federal_debt_quarter"

alter table debt_to_gdp
drop column "federal_debt_observation_date";