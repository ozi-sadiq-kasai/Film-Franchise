-- Comparing Franchise Movies

-- Total Marvel BoxOffice Sales
select sum(`WorldwideBox Office`) as TotalBoxOfficeSales
from all_time_worldwide_box_office_csv
where movie like '%Avengers%'or
	  movie like '%marvel%'or 
	  movie like '%endgame%'or
	  movie like '%thor%'or 
	  movie like '%black w%'or
	  movie like '%spider man%'or
	  movie like '%iron man%'
	  
-- 	  Locate all marvel movies sales break-down per movie
	  
select movie,round(PercentInterSales,0) as PercentInterSales from 
(select movie,(`InternationalBox Office`/`WorldwideBox Office`)*100 
			as PercentInterSales
			from all_time_worldwide_box_office_csv 
			where movie like '%Avengers%'or
	  		movie like '%marvel%'or 
	  		movie like '%endgame%'or
			  movie like '%thor%'or 
			  movie like '%black w%'or
			  movie like '%spider man%'or
			  movie like '%iron man%') tub
	  
-- Total Harry Potter BoxOffice Sales
select sum(`WorldwideBox Office`) as TotalBoxOfficeSales 
from all_time_worldwide_box_office_csv 
where movie like '%harry%'
	  
-- locate all Harry Potter movies/sales break-down
select movie,round(PercentInterSales,0) as PercentInterSales from	  
(select movie,(`InternationalBox Office`/`WorldwideBox Office`)*100 
		as PercentInterSales 
from all_time_worldwide_box_office_csv 
where movie like '%harry%')stub

-- Total Lord of the Rings BoxOffice Sales
select sum(`WorldwideBox Office`) as TotalBoxOfficeSales 
from all_time_worldwide_box_office_csv
where movie like '%lord of the rings%'

-- Total Mission Impossible BoxOffice Sales
select sum(`WorldwideBox Office`) as TotalBoxOfficeSales 
from all_time_worldwide_box_office_csv
where movie like '%mission%'

--  Total Pirates of the Caribbean BoxOffice Sales
select sum(`WorldwideBox Office`) as TotalBoxOfficeSales 
from all_time_worldwide_box_office_csv
where movie like '%pirates%'
	  