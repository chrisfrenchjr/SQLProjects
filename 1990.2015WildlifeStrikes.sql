select * from IndiaRainfall..WildlifeStrikes

-- Total Wildlife Strikes from 1990-2015

select count(*) as TotalIncidents from IndiaRainfall..WildlifeStrikes
where [Incident Year] BETWEEN 1990 AND 2005


-- Total Wildlife Strike Incidents per year (1990-2015)

select [Incident Year],count(*) as TotalIncidents from IndiaRainfall..WildlifeStrikes
where [Incident Year] BETWEEN 1990 AND 2005
Group by [Incident Year] 
Order by [Incident Year] asc


-- Wildlife Strikes per Month (1990-2015)

select [Incident Month], count(*) as TotalMonthlyIncidents from IndiaRainfall..WildlifeStrikes
where [Incident Month] BETWEEN 1 AND 12
Group by [Incident Month]
Order by [Incident Month] asc

-- Wildlife Strikes by Airline Provider, top 5 (1990-2015)

select  top 8 Operator, count(*) as TotalIncidents from IndiaRainfall..WildlifeStrikes 
where [Incident Year] BETWEEN 1990 AND 2015
AND  NOT Operator = 'UNKNOWN' AND NOT Operator = 'BUSINESS'
Group by Operator
Order by TotalIncidents desc 

-- Wildlife Strikes by Airport

select Airport, count(*) as TotalIncidents from IndiaRainfall..WildlifeStrikes 
where [Incident Year] BETWEEN 1990 AND 2015
AND NOT Airport = 'UNKNOWN' 
Group by Airport
Order by TotalIncidents desc 

-- Wildlife Strikes by Aircraft

select top 8 Aircraft, count(*) as TotalIncidents from IndiaRainfall..WildlifeStrikes 
where [Incident Year] BETWEEN 1990 AND 2015 
AND NOT Aircraft = 'UNKNOWN'
Group by Aircraft
Order by TotalIncidents desc 















