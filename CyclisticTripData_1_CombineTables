--Combine 12 Months of Data for Year 2022 and Create a New Table named 2022_CyclisticTripData
CREATE TABLE `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData` AS
  (
  --202201
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202201_CyclisticTripData`
  UNION ALL
  --202202
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202202_CyclisticTripData`
  UNION ALL
  --202203
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202203_CyclisticTripData`
  UNION ALL
  --202204
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202204_CyclisticTripData`
  UNION ALL
  --202205
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202205_CyclisticTripData`
  UNION ALL
  --202206
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202206_CyclisticTripData`
  UNION ALL
  --202207
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202207_CyclisticTripData`
  UNION ALL
  --202208
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202208_CyclisticTripData`
  UNION ALL
  --202209
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202209_CyclisticTripData`
  UNION ALL
  --202210
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202210_CyclisticTripData`
  UNION ALL
  --202211
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202211_CyclisticTripData`
  UNION ALL
  --202212
  SELECT
    *
  FROM
    `sw-coursera-project1.CyclisticTripData.202212_CyclisticTripData`
  )


--Count Total Number of Rows of 12 Months of Data Files // Returns: 5,667,717 Records
SELECT
  SUM(total_rows) AS total_rows_2022
FROM
  (
  --202201
  SELECT
    COUNT(*) AS total_rows
  FROM
    `sw-coursera-project1.CyclisticTripData.202201_CyclisticTripData`
  UNION ALL
  --202202
  SELECT
    COUNT(*) 
  FROM
    `sw-coursera-project1.CyclisticTripData.202202_CyclisticTripData`
  UNION ALL
  --202203
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202203_CyclisticTripData`
  UNION ALL
  --202204
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202204_CyclisticTripData`
  UNION ALL
  --202205
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202205_CyclisticTripData`
  UNION ALL
  --202206
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202206_CyclisticTripData`
  UNION ALL
  --202207
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202207_CyclisticTripData`
  UNION ALL
  --202208
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202208_CyclisticTripData`
  UNION ALL
  --202209
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202209_CyclisticTripData`
  UNION ALL
  --202210
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202210_CyclisticTripData`
  UNION ALL
  --202211
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202211_CyclisticTripData`
  UNION ALL
  --202212
  SELECT
    COUNT(*)
  FROM
    `sw-coursera-project1.CyclisticTripData.202212_CyclisticTripData`
  )

