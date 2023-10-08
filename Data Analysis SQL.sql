-- Combine datasets and sort by start time 
SELECT * FROM "2022-06" UNION
SELECT * FROM "2022-07" UNION
SELECT * FROM "2022-08" UNION
SELECT * FROM "2022-09" UNION
SELECT * FROM "2022-10" UNION
SELECT * FROM "2022-11" UNION
SELECT * FROM "2022-12" UNION
SELECT * FROM "2023-01" UNION
SELECT * FROM "2023-02" UNION
SELECT * FROM "2023-03" UNION
SELECT * FROM "2023-04" UNION
SELECT * FROM "2023-05" UNION
SELECT * FROM "2023-06" UNION
SELECT * FROM "2023-07"
ORDER BY started_at;


-- Total trips per rider type and bike type

SELECT 
	member_casual, 
	rideable_type, 
	COUNT(*) AS total_rides
FROM 
	'bikes_master'
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_trips;



-- Average ride length per rider type

SELECT 
	member_casual, 
	FORMAT_TIMESTAMP ('%T', TIMESTAMP_SECONDS(CAST(AVG(TIME_DIFF(ride_length, '00:00:00', SECOND)) AS INT64))) AS avg_ride_length
FROM 
	'bikes_master'
GROUP BY  member_casual



-- Total trips per rider type for each month of the year

WITH month_db AS
(SELECT *, EXTRACT(MONTH FROM started_at) AS month FROM `bikes_master`)

SELECT
  member_casual,
  month,
  COUNT(*) as total_rides_month
FROM  
  month_db
GROUP BY member_casual, month
ORDER BY member_casual, month



-- Average trip length per rider type for each day of the week
WITH weekday_db AS
(SELECT DATEPART(WEEKDAY, GETDATE(started_at)) AS weekday)

SELECT
  member_casual,
  weekday,
  COUNT(*) as total_rides_weekday
FROM  
  weekday_db
GROUP BY member_casual, weekday
ORDER BY member_casual, weekday



-- Top 5 starting locations for each rider type

SELECT
  member_casual,
  start_station_name,
  AVG(start_lat) as station_lat,
  AVG(start_lng) as station_lng,
  COUNT(*) as total_rides_station
FROM
  `bikes_master`
GROUP BY member_casual, start_station_name
ORDER BY member_casual, total_rides_station DESC
  
  
  
  
  
  