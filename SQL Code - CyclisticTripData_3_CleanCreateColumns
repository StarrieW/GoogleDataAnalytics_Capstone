--Create a New Table named 2022_CyclisticTripData_Cleaned (copy of 2022_CyclisticTripData Table) with Additional New Columns Added
--Column 14: Date each ride started based on Column 2 started_at; Return Date in YYYY-MM-DD Format
--Column 15: Month each ride started based on Column 2 started_at; Return Month in MONTH Name Format
--Column 16: Day of the Week that each ride started based on Column 2 started_at; Return Day of the Week Name Value (Monday to Sunday)
--Column 17: Time each ride started based on Column 2 started_at; Return Time Value in HH:MM:SS Format
--Column 18: Time of Day Category each ride started based on Column 2 started_at; Return Time of Day Category (Early Morning, Morning, Afternoon, Night) in String Value
--Column 19: Calculated Ride Length in Seconds based on Difference of Column 3 and 2 ended_at and started_at; Return Trip Duration in Seconds
--Column 20: Calculated Ride Length in Minutes based on Difference of Column 3 and 2 ended_at and started_at; Return Trip Duration in Minutes
--Column 21: Concatenated start and end station name based on Column 5 and 7 start_station_name and end_station_name; Return Trip Start and End Route in String Value

--DROP TABLE IF EXISTS `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
CREATE TABLE `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned` AS
(
SELECT
  *,
  EXTRACT(DATE FROM started_at) AS started_date,
  FORMAT_DATETIME("%B", DATETIME(started_at)) AS started_month,
  --CONCAT(CAST(EXTRACT(YEAR from started_at) AS STRING), LPAD(CAST(EXTRACT(MONTH from started_at) AS STRING),2,'0')) as year_month, ----Return YearMonth that each ride started based on Column 2 started_at
  --EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week_number, --Calculate the Day of the Week that each ride started based on Column 2 started_at; Return Number Value where 1 = Sunday to 7 = Monday
  FORMAT_DATE('%A', EXTRACT(DATE FROM started_at)) AS started_day_of_week,
  EXTRACT(TIME FROM started_at) AS started_time,
  CASE WHEN CAST(EXTRACT(TIME FROM started_at) AS TIME) >= '00:00:00' AND
              CAST(EXTRACT(TIME FROM started_at) AS TIME) <= '05:59:00'
         THEN 'Early Morning'
         WHEN CAST(EXTRACT(TIME FROM started_at) AS TIME) >= '06:00:00' AND
              CAST(EXTRACT(TIME FROM started_at) AS TIME) <= '11:59:00'
         THEN 'Morning'
         WHEN CAST(EXTRACT(TIME FROM started_at) AS TIME) >= '12:00:00' AND
              CAST(EXTRACT(TIME FROM started_at) AS TIME) <= '17:59:00'
         THEN 'Afternoon'   
         ELSE 'Night'
    END AS started_time_of_day,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS trip_duration_second,
  CAST(ROUND(CAST(TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS INT64)/60, 2) AS NUMERIC) AS trip_duration_minute,
  CONCAT(start_station_name," to ",end_station_name) AS trip_route
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
)


--Check New Table named 2022_CyclisticTripData_Cleaned// Returns: Total Number of Rows is 5,667,717
SELECT
  *
FROM
    `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`


--Delete Dirty Data Rows with NULL or Errorneous Values where:
--(1) start_station_name IS NULL OR start_station_id IS NULL OR end_station_name IS NULL OR end_station_id IS NULL
--(2) trip_duration_second <= 0 OR trip_duration_second <= 60 OR trip_duration_second >= 86400 

--Check Number of Rows After Deletion of Dirty Data: 4,291,805 Records
SELECT
  *
FROM
    `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
WHERE
  start_station_name IS NOT NULL AND
  start_station_id IS NOT NULL AND
  end_station_name IS NOT NULL AND
  end_station_id IS NOT NULL AND
  --trip_duration_second > 0 AND --Exclude trip_duration_second <= 0 seconds (including negative values for those started_at start trip time is later than ended_at end trip time) // Returns: 4,369,052 Records
  trip_duration_second > 60 AND --Check for trip_duration_second > 60 seconds (> 1 minute) // Returns: 4,291,961 Records
  trip_duration_second < 86400 --Check for trip_duration_second < 86,400 seconds (< 24 hours) // Returns: 4,291,805 Records x// Returns: 4,368,896 Recordsx


--Check Number of Dirty Data Rows to be Deleted: 1,375,912 Records x//1,298,665 Records
SELECT
  *
FROM
    `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
WHERE
  start_station_name IS NULL OR
  start_station_id IS NULL OR
  end_station_name IS NULL OR
  end_station_id IS NULL OR
  --trip_duration_second <= 0 --TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0 --AND --Exclude trip_duration_sec <= 0 seconds (including negative values for those started_at start trip time is later than ended_at end trip time) // Returns: 4,369,052 Records
  trip_duration_second <= 60 OR --// Returns: 1,375,756 Records
  trip_duration_second >= 86400 --// Returns: 1,375,912 Records

DELETE
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
WHERE
  start_station_name IS NULL OR 
  start_station_id IS NULL OR 
  end_station_name IS NULL OR 
  end_station_id IS NULL OR
  --trip_duration_second <= 0
  trip_duration_second <= 60 OR
  trip_duration_second >= 86400


--Create a New Table named 2022_CyclisticTripData_Cleaned2 (copy of 2022_CyclisticTripData_Cleaned Table): With Dirty Data Rows Deleted
CREATE TABLE `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned2` AS
(
  SELECT
    *
  FROM
      `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
  WHERE
    start_station_name IS NOT NULL AND
    start_station_id IS NOT NULL AND
    end_station_name IS NOT NULL AND
    end_station_id IS NOT NULL AND
    --trip_duration_second > 0 AND --Exclude trip_duration_second <= 0 seconds (including negative values for those started_at start trip time is later than ended_at end trip time) // Returns: 4,369,052 Records
    trip_duration_second > 60 AND --Check for trip_duration_second > 60 seconds (> 1 minute) // Returns: 4,291,961 Records
    trip_duration_second < 86400 --Check for trip_duration_second < 86,400 seconds (< 24 hours) // Returns: 4,291,805 Records x// Returns: 4,368,896 Recordsx
)


--Check New Table named 2022_CyclisticTripData_Cleaned2// Returns: Total Number of Rows is 4,291,805 
SELECT
  *
FROM
    `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned2`


/*
--Create a New Table named 2022_CyclisticTripData_Cleaned (copy of 2022_CyclisticTripData Table)
CREATE TABLE `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned` AS
(
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
)

ALTER TABLE `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
ADD COLUMN started_date DATE,
ADD COLUMN started_month STRING,
ADD COLUMN started_day_of_week STRING,
ADD COLUMN started_time TIME,
ADD COLUMN started_time_of_day STRING,
ADD COLUMN trip_duration_second INT64,
ADD COLUMN trip_duration_minute NUMERIC,
ADD COLUMN trip_route STRING

UPDATE `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
SET started_date = EXTRACT(DATE FROM started_at),
SET started_month = FORMAT_DATETIME("%B", DATETIME(started_at)),
SET started_day_of_week = FORMAT_DATE('%A', EXTRACT(DATE FROM started_at)),
SET started_time = EXTRACT(TIME FROM started_at),
SET started_time_of_day = 
    CASE WHEN CAST(EXTRACT(TIME FROM started_at) AS TIME) >= '00:00:00' AND
              CAST(EXTRACT(TIME FROM started_at) AS TIME) <= '05:59:00'
         THEN 'Early Morning'
         WHEN CAST(EXTRACT(TIME FROM started_at) AS TIME) >= '06:00:00' AND
              CAST(EXTRACT(TIME FROM started_at) AS TIME) <= '11:59:00'
         THEN 'Morning'
         WHEN CAST(EXTRACT(TIME FROM started_at) AS TIME) >= '12:00:00' AND
              CAST(EXTRACT(TIME FROM started_at) AS TIME) <= '17:59:00'
         THEN 'Afternoon'   
         ELSE 'Night'
    END AS,
SET trip_duration_second = TIMESTAMP_DIFF(ended_at, started_at, SECOND),
SET trip_duration_minute = ROUND(CAST(TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS INT64)/60, 2),
SET trip_route = CONCAT(start_station_name," to ",end_station_name)
*/


/*
ALTER TABLE `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
ALTER COLUMN trip_duration_minute SET DATA TYPE NUMERIC;
*/
