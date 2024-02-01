--Check Table // Returns: Total Number of Rows is 5,667,717

--/*
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
--*/


--Check Each Column's Data

--Column 1: ride_id
--/*
--IS NULL: Find Column with NULL values and Fill in Missing Values if necessary // Returns: No Records with NULL values
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  ride_id IS NULL

--DISTINCT: Check for unexpected values in Column // Returns: Total Number of Rows is 5,667,717 (All Rows are distinct)
SELECT
  DISTINCT ride_id 
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`

--MIN, MAX: Check for MIN and MAX of LENGTH of values in Column // Returns: Min of 16 and Max of 16 (Length of values is 16 and consistent)
SELECT
  --length(ride_id) AS length_of_ride_id
  min(length(ride_id)) AS min_length_ride_id,
  max(length(ride_id)) AS max_length_ride_id
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`

SELECT
  length(ride_id) AS length_of_ride_id
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
GROUP BY
  length_of_ride_id
--*/


--Column 2: rideable_type
--/*
--IS NULL: Find Column with NULL values and Fill in Missing Values if necessary // Returns: No Records with NULL values
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  rideable_type IS NULL

--DISTINCT: Check for unexpected values in Column // Returns: 3 Types of values - electric_bike (2,889,029), classic_bike (2,601,214), docked_bike (177,474)
SELECT
  DISTINCT rideable_type, 
  COUNT(rideable_type) AS no_of_rideable_type
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
GROUP BY
  rideable_type
ORDER BY
  no_of_rideable_type DESC
--*/


--Column 3: started_at
--/*
--IS NULL: Find Column with NULL values and Fill in Missing Values if necessary // Returns: No Records with NULL values
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  started_at IS NULL

--MIN, MAX: Check for MIN and MAX of values in Column // Returns: Min of 2022-01-01 00:00:05 UTC and Max of 2022-12-31 23:59:26 UTC
SELECT
  min(started_at) As min_started_at,
  max(started_at) As max_started_at
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
--*/

--Column 4: ended_at
--/*
--IS NULL: Find Column with NULL values and Fill in Missing Values if necessary // Returns: No Records with NULL values
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  ended_at IS NULL

--MIN, MAX: Check for MIN and MAX of values in Column // Returns: Min of 2022-01-01 00:01:48 UTC and Max of 2023-01-02 04:56:45 UTC
SELECT
  min(ended_at) As min_ended_at,
  max(ended_at) As max_ended_at
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
--*/


--Check if Trip Start time based on Column 3 started_at is equals to or after/later than Trip End Time based on Column 4 ended_at by calculating the Trip Duration in seconds based on the difference (Trip End Time - Trip Start Time) // Returns: 531 Records with trip_duration_sec <= 0 seconds
--/*
SELECT
  *,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS trip_duration_second
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  started_at = ended_at OR
  started_at > ended_at
  --TIMESTAMP_DIFF(ended_at, started_at, SECOND) <= 0
--*/


--Column 5: start_station_name
--/*
--IS NULL: Find Column with NULL values and Fill in Missing Values if necessary // Returns: 833,064 Records with NULL values
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  start_station_name IS NULL
--*/


--Column 6: start_station_id
--/*
--IS NULL: Find Column with NULL values and Fill in Missing Values if necessary // Returns: 833,064 Records with NULL values
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  start_station_id IS NULL
--*/


--Number of Returned Records from IS NULL Check for Column 5 and 6 is the same: start_station_name and start_station_id;
--// Column 5 AND 6 IS NULL Returns: 833,064 Records with NULL values
--// Column 5 OR 6 IS NULL Returns: 833,064 Records with NULL values
--/*
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  start_station_name IS NULL OR --AND
  start_station_id IS NULL
--*/


--Column 7: end_station_name
--/*
--IS NULL: Find Column with NULL values and Fill in Missing Values if necessary // Returns: 892,742 Records with NULL values
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  end_station_name IS NULL
--*/

--Column 8: end_station_id
--/*
--IS NULL: Find Column with NULL values and Fill in Missing Values if necessary // Returns: 892,742 Records with NULL values
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  end_station_id IS NULL
--*/


--Number of Returned Records from IS NULL Check for Column 7 and 8 is the same: end_station_name and end_station_id;
--// Column 7 AND 8 IS NULL Returns: 892,742 Records with NULL values
--// Column 7 OR 8 IS NULL Returns: 892,742 Records with NULL values
--/*
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  end_station_name IS NULL OR --AND
  end_station_id IS NULL
--*/


--Number of Returned Records from IS NULL Check for Column 5, 6, 7, 8: start_station_name and start_station_id, end_station_name and end_station_id;
--// Column 5 AND 6 AND 7 AND 8 IS NULL Returns: 427,449 Records with NULL values
--// Column 5 OR 6 OR 7 OR 8 IS NULL Returns: 1,298,357 Records with NULL values
--/*
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  start_station_name IS NULL OR --AND
  start_station_id IS NULL OR --AND
  end_station_name IS NULL OR --AND
  end_station_id IS NULL
--*/


--Columns 9, 10, 11, 12: start_lat, start_lng, end_lat, end_lng
--Number of Returned Records from IS NULL Check for Column 9, 10, 11, 12: start_lat and start_lng, end_lat and end_lng;
--// Column 9 AND 10 AND 11 AND 12 IS NULL Returns: No Records with NULL values
--// Column 9 OR 10 OR 11 OR 12 IS NULL Returns: 5,858 Records with NULL values
--/*
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  start_lat IS NULL OR --AND
  start_lng IS NULL OR --AND
  end_lat IS NULL OR --AND
  end_lng IS NULL
--*/


--Number of Returned Records from IS NULL Check for Column 5, 6, 7, 8: start_station_name and start_station_id, end_station_name and end_station_id + Column 9, 10, 11, 12: start_lat and start_lng, end_lat and end_lng;
--// Column 5 AND 6 AND 7 AND 8 AND 9 AND 10 AND 11 AND 12 IS NULL Returns: No Records with NULL values
--// Column 5 OR 6 OR 7 OR 8 OR 9 OR 10 OR 11 OR 12 IS NULL Returns: 1,298,357 Records with NULL values
--/*
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  start_station_name IS NULL OR --AND
  start_station_id IS NULL OR --AND
  end_station_name IS NULL OR --AND
  end_station_id IS NULL OR --AND
  start_lat IS NULL OR --AND
  start_lng IS NULL OR --AND
  end_lat IS NULL OR --AND
  end_lng IS NULL
--*/


--Column 13: member_casual
--/*
--IS NULL: Find Column with NULL values and Fill in Missing Values if necessary // Returns: No Records with NULL values
SELECT
  *
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  member_casual IS NULL

--DISTINCT: Check for unexpected values in Column // Returns: 2 Types of values - member (3,345,685), casual (2,322,032)
SELECT
  DISTINCT member_casual,
  COUNT(member_casual) AS no_of_member_casual
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
GROUP BY
  member_casual
ORDER BY
  no_of_member_casual DESC
--*/


--Create a New Table with New Columns Added
--Column 14: Date each ride started based on Column 2 started_at; Return Date in YYYY-MM-DD Format
--Column 15: Month each ride started based on Column 2 started_at; Return Month in MONTH Name Format
--Column 16: Day of the Week that each ride started based on Column 2 started_at; Return Day of the Week Name Value (Monday to Sunday)
--Column 17: Time each ride started based on Column 2 started_at; Return Time Value in HH:MM:SS Format
--Column 18: Time of Day Category each ride started based on Column 2 started_at; Return Time of Day Category (Early Morning, Morning, Afternoon, Night) in String Value
--Column 19: Calculated Ride Length in Seconds based on Difference of Column 3 and 2 ended_at and started_at; Return Trip Duration in Seconds
--Column 20: Calculated Ride Length in Minutes based on Difference of Column 3 and 2 ended_at and started_at; Return Trip Duration in Minutes
--Column 21: Concatenated start and end station name based on Column 5 and 7 start_station_name and end_station_name; Return Trip Start and End Route in String Value
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
  /*
  CASE WHEN CAST(EXTRACT(TIME FROM started_at) AS TIME) >= '06:00:00' AND
              CAST(EXTRACT(TIME FROM started_at) AS TIME) <= '11:59:00'
         THEN 'Morning'
         WHEN CAST(EXTRACT(TIME FROM started_at) AS TIME) >= '12:00:00' AND
              CAST(EXTRACT(TIME FROM started_at) AS TIME) <= '17:59:00'
         THEN 'Afternoon'
         WHEN CAST(EXTRACT(TIME FROM started_at) AS TIME) >= '18:00:00' AND
              CAST(EXTRACT(TIME FROM started_at) AS TIME) <= '19:59:00'
         THEN 'Evening'   
         ELSE 'Night'
    END AS time_of_day
  */
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS trip_duration_second,
  ROUND(CAST(TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS INT64)/60, 2) AS trip_duration_minute,
  CONCAT(start_station_name," to ",end_station_name) AS trip_route
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  start_station_id IS NOT NULL AND
  start_station_name IS NOT NULL AND
  end_station_id IS NOT NULL AND
  end_station_name IS NOT NULL AND
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0 --AND --Exclude trip_duration_sec <= 0 seconds (including negative values for those started_at start trip time is later than ended_at end trip time) // Returns: 4,369,052 Records
  --TIMESTAMP_DIFF(ended_at, started_at, SECOND) < 86400 AND --Check for trip_duration_second < 86,400 seconds (<24 hours) // Returns: 4,368,896 Records
  --TIMESTAMP_DIFF(ended_at, started_at, SECOND) >= 86400 --Check for trip_duration_second >= 86,400 seconds (>= 24 hours) // Returns: 156 Records
  --member_casual = 'casual'
  --EXTRACT(DATE FROM started_at) = '2022-01-02' --CAST('2022-01-02' AS DATE)


SELECT
  *,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS trip_duration_second,
  ROUND(CAST(TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS INT64)/60, 2) AS trip_duration_minute
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`


--Check MIN and MAX Ride Length based on Difference of Column 3 and 2 ended_at and started_at // Returns: min_trip_duration_sec of -621,201 and max_trip_duration_sec of 2,483,235
--/*
SELECT
  min(TIMESTAMP_DIFF(ended_at, started_at, SECOND)) AS min_trip_duration_second,
  max(TIMESTAMP_DIFF(ended_at, started_at, SECOND)) AS max_trip_duration_second
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0 --// Returns: min_trip_duration_sec of 1 and max_trip_duration_sec of 2,483,235
  --TIMESTAMP_DIFF(ended_at, started_at, SECOND) <= 0 --// Returns: min_trip_duration_sec of -621,201 and max_trip_duration_sec of 0
  --started_at = ended_at OR
  --started_at > ended_at
--*/

--Check number of Records with Ride Length based on Difference of Column 3 and 2 ended_at and started_at more than 86,400 seconds (24 hours) // Returns: 5360 Records with trip_duration_sec > 86,400 seconds
--*/
SELECT
  *,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS trip_duration_sec
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) >= 86400
--*/

