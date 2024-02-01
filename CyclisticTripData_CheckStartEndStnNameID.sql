SELECT 
  *
FROM 
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned2`
WHERE
--trip_route LIKE "%charging%" OR --//Start and End Station Name is Same: Pawel Bialowas - Test- PBSC charging station; But based on Start and End Lat Lng: Start Name is in 221 Rue de Rosemère, Rosemère, QC J7A 3R3, Canada and End Name is in S Leavitt St, Chicago, IL 60608, USA (Trip Duration is 155 seconds which is <> ETT is 3 days by Bike with mixed transport and 13 hours by car drive)
 --start_station_id LIKE "%charg%" OR
 --end_station_id LIKE "%charg%" 
 start_station_name LIKE "%Aberdeen St & Randolph St%" AND
 end_station_name LIKE "%Green St & Madison Ave%"


SELECT 
  --start_station_name,
  start_station_id,
  --end_station_name,
  end_station_id,
  count(start_station_id) AS no_of_start,
  count(end_station_id) AS no_of_end
FROM 
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned2`
WHERE
  --start_station_name LIKE "%charg%" OR
  --end_station_name LIKE "%charg%" OR
  start_station_id LIKE "%charg%" AND
  end_station_id LIKE "%charg%"
GROUP BY
  start_station_id, end_station_id


SELECT
  *
FROM 
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned2`
WHERE
  start_lat = 0 OR
  start_lng = 0 OR
  end_lat = 0 OR
  end_lng = 0

SELECT
  ride_id,
  start_station_name,
  --start_station_id,
  end_station_name,
  --end_station_id,
  --start_lat,
  --start_lng,
  end_lat,
  end_lng,
  count(end_station_name)
FROM 
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned2`
WHERE
  --end_station_name LIKE "%Green St & Madison Ave%" OR
  (start_lat = 0 OR
  start_lng = 0 OR
  end_lat = 0 OR
  end_lng = 0)
GROUP BY
  ride_id,end_station_name, start_station_name, end_lat, end_lng--, start_lat, start_lng

/*
  start_lat IS NULL OR
  start_lng IS NULL OR
  end_lat IS NULL OR
  end_lng IS NULL
*/


SELECT
  DISTINCT(trip_route),
  count(trip_route) AS no_of_trips
FROM 
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned2`
WHERE
  end_lat <> 0 OR
  end_lng <> 0
GROUP BY
  trip_route
ORDER BY
  no_of_trips DESC
