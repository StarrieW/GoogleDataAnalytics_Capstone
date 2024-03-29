<img src="https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/4c116cf5-5ecd-4d5d-913f-2179687ba78b" width="100" height="100"/> <br>
# Google Data Analytics Course Capstone: Cyclistic Bike-Share Case Study

## **Executive Summary** <br>
This capstone project focuses on understanding rider patterns for the Cyclistic Bike-Share company with the goal of converting casual riders into members. 

The project began with meticulous data selection and cleaning, addressing inconsistencies and missing values to ensure dataset integrity. Utilizing SQL queries, relevant information was extracted for a structured examination of member and casual rider patterns. Tableau was employed for visual exploration, resulting in insightful dashboards highlighting user behaviours, ride frequencies, and other relevant metrics. 

Key discoveries from the analysis encompass the influence of climate, timing during the week and day, and route preferences on rider patterns. These insights have been translated into actionable recommendations, guiding strategic initiatives aimed at converting casual riders into dedicated members.

Click [here](https://public.tableau.com/app/profile/starrie.woon/viz/GoogleDataAnalytics_Capstone-CyclisticCaseStudy/Dashboard_CyclisticRidership) to view completed Tableau Dashboard for Data Visualizations.

## **Content Outline** <br>

1. [Introduction](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#1-introduction)
   
   1.1 [Case Study Scenario](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#11-case-study-scenario) <br>
   1.2 [Characters and Team](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#12-characters-and-teams)<br>
   1.3 [About the Company](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#13-about-the-company)<br>
   
2. [Problems](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#2-problems)
   
   2.1 [Step 1 of Data Analysis Process: Ask](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#21-step-1-of-data-analysis-process-ask) <br>
      - 2.1.1 [Business Task](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#211-business-task) <br>
      - 2.1.2 [Key Stakeholders](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#212-key-stakeholders) <br>

   2.2 [Step 2 of Data Analysis Process: Prepare](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#22-step-2-of-data-analysis-process-prepare) <br>
      - 2.2.1 [Data Source](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#221-data-source) <br>
      - 2.2.2 [Range of Data Used](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#222-range-of-data-used) <br>
      - 2.2.3 [Data Organization](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#223-data-organization) <br>
      - 2.2.4 [Information on Data](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#224-information-on-data) <br>
      - 2.2.5 [Data Limitations](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#225-data-limitations) <br>
   
   2.3 [Step 3 and 4 of Data Analysis Process: Process and Analyze](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#23-step-3-and-4-of-data-analysis-process-process-and-analyze) <br>
      - 2.3.1 [Storing Data in SQL on BigQuery](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#231-storing-data-in-sql-on-bigquery) <br>
      - 2.3.2 [Ensure Data Consistency Across the 12 Tables](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#232-ensure-data-consistency-across-the-12-tables) <br>
      - 2.3.3 [Combine Tables](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#233-combine-tables) <br>
      - 2.3.4 [Explore Columns Data in Combined 2022_CyclisticTripData Table](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#234-explore-columns-data-in-combined-2022_cyclistictripdata-table) <br>
         - 2.3.4.1 Key Observations From Data <br>
         - 2.3.4.2 Assumptions or Theories Based on Data and Information Provided <br>
      - 2.3.5 [Data Cleaning](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#235-data-cleaning) <br>

   2.4 [Step 5 of Data Analysis Process: Share](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#24-step-5-of-data-analysis-process-share) <br>
      - 2.4.1 [Key Insights](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#241-key-insights) <br>
   
3. [Conclusion](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#3-conclusion) <br>

   3.1 [Step 6 of Data Analysis Process: Act](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#31-step-6-of-data-analysis-process-act) <br>
      - 3.1.1 [Recommendations](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#311-recommendations) <br>
   
   3.2 [Summary](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/README.md#32-summary) <br>
   

## **1. Introduction** 
This introduction marks the commencement of the Capstone project within course outline of the Google Data Analytics Certificate course. The forthcoming data analysis will be conducted utilizing SQL on BigQuery for data preparation and cleaning, followed by the creation of data visualizations using Tableau.

>### 1.1 Case Study Scenario
>You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.
>
>### 1.2 Characters and Teams
>● Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.
>
>● Lily Moreno: The director of marketing and your manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.
>
>● Cyclistic Marketing Analytics Team: A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy learning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic achieve them.
>
>● Cyclistic Executive Team: The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.
>
>### 1.3 About the Company
>In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.
>
>Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.
>
>Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

## **2. Problems** 
Key Business Questions can be addressed by following the 6 Steps of the Data Analysis Process which includes: Asking pertinent questions, Preparing and Processing data, conducting thorough Analysis, Sharing valuable insights, and taking Actionable steps.

### <ins>2.1 Step 1 of Data Analysis Process: Ask</ins>
The following three Business Questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

#### **2.1.1 Business Task**<br>

Business Task of this project is to understand the differences in usage pattern between annual members and casual riders.

#### **2.1.2 Key Stakeholders**
1. Lily Moreno
2. Cyclistic Marketing Analytics Team
3. Cyclistic Executive Team

### <ins>2.2 Step 2 of Data Analysis Process: Prepare</ins>

#### **2.2.1 Data Source**<br>

Data used for the Cyclistic (fictional company) Case Study is downloaded from [Divvy Trip History Data](https://divvy-tripdata.s3.amazonaws.com/index.html). The Divvy historical trip data, released on a monthly schedule, is made publicly available by Motivate International Inc. and provided according to the [Divvy Data License Agreement](https://divvybikes.com/data-license-agreement), where The City of Chicago permits Bikeshare (Lyft Bikes and Scooters, LLC), operators of the Divvy Bicycle Sharing Service, to make certain Divvy system data on historical trip data owned by the City (“Data”) available to the public.

#### **2.2.2 Range of Data Used**<br>

I will leverage on the historical trip data from January 2022 to December 2022 to conduct an analysis and identify trends on how different rider types are using Cyclistic bikes. 

#### **2.2.3 Data Organization**
- Data available for download is organized by respective months. 12 CSV files containing monthly data for the year of 2022 are downloaded with naming convention of YYYYMM-divvy-tripdata and stored in a folder. 
- Each file contains one month of data, with 13 variables and its data stored into Columns. The data contains information on Trip start day and time, Trip end day and time, Trip start and end station, Latitude and Longitude of Trip start and end station, and Rider type.

#### **2.2.4 Information on Data**
- Each trip data is anonymized ensuring Data Privacy of its riders.
- The data has been processed to remove trips that are taken by staff as they service and inspect the system; and any trips that were below 60 seconds in length (potentially false starts or users trying to re-dock a bike to ensure it was secure).

#### **2.2.5 Data Limitations**
- Due to data privacy issues, rider’s personally identifiable information are not provided, we will not be able to connect pass purchases to credit card numbers to determine if Casual Riders live in Cyclistic service area or if they have purchased multiple single passes.
- Unable to segregate casual riders that purchased single-ride or full-day passes (as customers who purchase single-ride or full-day passes are referred to and grouped as Casual riders while customers who purchase annual memberships are Cyclistic Members).


### <ins>2.3 Step 3 and 4 of Data Analysis Process: Process and Analyze</ins>
As it is a large dataset containing more than 5.6 million rows, we will be storing it in SQL on BigQuery
Note: We will not be using Excel spreadsheets for processing of large amount of data as Excel has a limit of 1,048,576 rows per Sheet. 

#### **2.3.1 Storing Data in SQL on BigQuery**

- A new Dataset named CyclisticTripData is created to store the data
- 12 Tables named in the format, YYYYMM_CyclisticTripData, are created in the CyclisticTripData Dataset by uploading the 12 CSV files<br>
  ![12 Tables Created](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/8701d118-fcfd-4c9f-a20f-01cfe983066b)

#### **2.3.2 Ensure Data Consistency Across the 12 Tables**

Ensure each Table consists of the following 13 Columns and check that each Column’s Data Type is consistent and correct across the 12 Tables:
>1. ride_id: Unique ID per Ride
>2. rideable_type: Type of Bicycle 
>3. started_at: Date and Time Bicycle was Unlocked 
>4. ended_at: Date and Time Bicycle was Returned
>5. start_station_name: Name of Station at Start of Trip
>6. start_station_id: Unique ID for Start Station
>7. end_station_name: Name of Station at End of Trip
>8. end_station_id: Unique ID for End Station
>9. start_lat: Latitude of Start Station
>10. start_lng: Longitude of Start Station
>11. end_lat: Latitude of End Station
>12. end_lng: Longitude of End Station
>13. member_casual: Rider Type 

#### **2.3.3 Combine Tables**<br>
> 
> SQL Code for: [Combining Tables](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/CyclisticTripData_1_CombineTables.sql)
> 
A new Table named 2022_CyclisticTripData is created by combining the 12 Tables (containing 12 months of data for Year 2022), for ease of data cleaning.

The 2022_CyclisticTripData Table has a total of 13 Columns and 5,667,717 Rows. 
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/00a32acd-741b-43f7-b4bd-233829d22bc2)
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/fe2b64c8-1016-426a-b7cd-585ce0434eec)

#### **2.3.4 Explore Columns Data in Combined 2022_CyclisticTripData Table**<br>
> 
> SQL Code for: [Checking Columns Data](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/CyclisticTripData_2_CheckColumnsData.sql)
> 
<ins>Explore data in each of the 13 Columns of the 2022_CyclisticTripData Table:</ins>
1. ride_id: Unique ID per Ride<br>
   - No NULL values
   - Check for Distinct values // Returns: 5,667,717 Distinct row values (same as Total Number of Rows)
   - Check for Minimum and Maximum Length of values // Returns: 16 (consistent)

2. rideable_type: Types of Bicycle (electric_bike/classic_bike/docked_bike)<br>
   - No NULL values
   - Check for Distinct values // Returns: 3 Types of Distinct row values – electric_bike (2,889,029), classic_bike (2,601,214), docked_bike (177,474)

3. started_at: Date and Time Bicycle was Unlocked<br>
   - No NULL values
   - Check for Minimum and Maximum values // Returns: Min of 2022-01-01 00:00:05 UTC and Max of 2022-12-31 23:59:26 UTC

4. ended_at: Date and Time Bicycle was Returned<br>
   - No NULL values
   - Check for Minimum and Maximum values // Returns: Min of 2022-01-01 00:01:48 UTC and Max of 2023-01-02 04:56:45 UTC

5. start_station_name: Name of Station at Start of Trip
   - Check for NULL values // Returns: 833,064 Records with NULL values

6. start_station_id: Unique ID for Start Station
   - Check for NULL values // Returns: 833,064 Records with NULL values

7. end_station_name: Name of Station at End of Trip
   - Check for NULL values // Returns: 892,742 Records with NULL values

8. end_station_id: Unique ID for End Station
   - Check for NULL values // Returns: 892,742 Records with NULL values

- Check for NULL values in Column 5 OR 6 OR 7 OR 8 // Returns: 1,298,357 Records with NULL values

9. start_lat: Latitude of Start Station
10. start_lng: Longitude of Start Station 
11. end_lat: Latitude of End Station
12. end_lng: Longitude of End Station
- Check for NULL values in Columns 9 OR 10 OR 11 OR 12 // Returns: 5,858 Records with NULL values

- Check for NULL values in Column 5 OR 6 OR 7 OR 8 OR 9 OR 10 OR 11 OR 12 // Returns: 1,298,357 Records with NULL values

13. member_casual: Rider Type (member/casual)
    - No NULL values
    - Check for Distinct values // Returns: 2 Types of values - member (3,345,685), casual (2,322,032)

<ins>Further Checks on Columns with Related Data:</ins>
>1. Check if there are records where Trip Start Time based on *Column 3: started_at* is equals to or after/later than Trip End Time based on *Column 4: ended_at* by calculating the Trip Duration in seconds based on the difference (Trip End Time - Trip Start Time) // Returns: 531 Records with trip_duration_sec <= 0 seconds
  ```sql
  SELECT
    *,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS trip_duration_second
  FROM
    `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
  WHERE
    started_at = ended_at OR
    started_at > ended_at
    --TIMESTAMP_DIFF(ended_at, started_at, SECOND) <= 0
  ```
 ![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/5b5313dd-c6ab-4397-b9fb-59da8e342b96)

>2. Check Minimum and Maximum Ride Length based on Difference of *Column 3: ended_at* and *Column 2: started_at* // Returns: min_trip_duration_sec of -621,201 and max_trip_duration_sec of 2,483,235
 ```sql
 SELECT
   min(TIMESTAMP_DIFF(ended_at, started_at, SECOND)) AS min_trip_duration_second,
   max(TIMESTAMP_DIFF(ended_at, started_at, SECOND)) AS max_trip_duration_second
 FROM
   `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
 ```
 ![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/b38e3ac6-cc63-494f-a5f0-d57bc64d59a7)

>3. Check number of Records with Ride Length based on Difference of *Column 3: ended_at* and *Column 2: started_at* more than 86,400 seconds (24 hours) // Returns: 5360 Records with trip_duration_sec > 86,400 seconds
```sql
 SELECT
   *,
   TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS trip_duration_sec
 FROM
   `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
 WHERE
   TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 86400
```
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/1dff88b4-2899-4dd9-b680-8e84b9a1730f)

>4. Check number of Records with Ride Length based on Difference of Column 3 and 2 ended_at and started_at more than 0 second and less than or equals to 60 seconds // Returns: 121,752 Records with trip_duration_sec > 0 second and <= 60 seconds
```sql
SELECT
  *,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS trip_duration_sec
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0 AND
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) <= 60
```
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/d50c9b68-ebc2-46c9-8f36-24f3984cc6c9)

>5. Check number of Records with Ride Length based on Difference of Column 3 and 2 ended_at and started_at less than or equals to 60 seconds (1 minute) // Returns: 122,283 Records with trip_duration_sec <= 60 seconds
```sql
SELECT
  *,
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) AS trip_duration_sec
FROM
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData`
WHERE
  TIMESTAMP_DIFF(ended_at, started_at, SECOND) <= 60
```
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/9ecaae48-3b90-40da-863a-386a93e7219f)


**<ins>2.3.4.1 Key Observations from Data</ins>**
- 1,298,357 Records with NULL values from 8 Columns - *Columns 5 to 12* on *Start and End Station Id and Name, Start and End Latitude and Longitude*: NULL value rows to be removed
- Minimum Trip Duration is -621,201 seconds
  - 122,283 Records with Trip Duration <= 60 seconds: Erroneous and Outlier value rows to be removed
    - 531 Records with Trip Duration  <= 0 seconds (minimum value of -621,201 to 0 second): Erroneous value rows to be removed
    - 121,752 Records with Trip Duration > 0 second and <= 60 seconds: Outlier value rows to be removed as these records only make up 2.15% of total 5,667,717 Records 
- Maximum Trip Duration is 2,483,235 seconds (28.74 days)
  - 5,360 Records with Trip Duration > 86,400 seconds (>24 hours): Outlier value rows to be removed as these records only make up 0.09% of total 5,667,717 Records 

**<ins>2.3.4.2 Assumptions or Theories Based on Data and Information Provided</ins>**
1. Any trips below or equals to 60 seconds (<= 60 seconds) in length are assumed to be potentially false starts or users trying to re-dock a bike to ensure it was secure, hence it is removed from the Dataset.
2. Any trips above 86,400 seconds (> 24 hours) in length are considered rare occurences (outliers) and as it makes up a small percentage of 0.09% (5,360 out of total 5,667,717 records) of the original dataset, it is removed from the Dataset.

#### **2.3.5 Data Cleaning**
> 
> SQL Code for: [Cleaning Data and Creation of New Columns](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/CyclisticTripData_3_CleanCreateColumns.sql)
> 
A new Table named 2022_CyclisticTripData_Cleaned is created by making a copy of the 2022_CyclisticTripData Table with 8 New Columns Added.

<ins>8 New Columns Added</ins>
1. *Column 14: started_date* - Date each ride started based on Column 2 started_at; Return Date in YYYY-MM-DD Format
2. *Column 15: started_month* - Month each ride started based on Column 2 started_at; Return Month in MONTH Name Format
3. *Column 16: started_day_of_week* - Day of the Week that each ride started based on Column 2 started_at; Return Day of the Week Name Value (Monday to Sunday)
4. *Column 17: started_time* - Time each ride started based on Column 2 started_at; Return Time Value in HH:MM:SS Format
5. *Column 18: started_time_of_day* - Time of Day Category each ride started based on Column 2 started_at; Return Time of Day Category (Early Morning, Morning, Afternoon, Night) in String Value
6. *Column 19: trip_duration_second* - Calculated Ride Length in Seconds based on Difference of Column 3 and 2 ended_at and started_at; Return Trip Duration in Seconds
7. *Column 20: trip_duration_minute* - Calculated Ride Length in Minutes based on Difference of Column 3 and 2 ended_at and started_at; Return Trip Duration in Minutes
8. *Column 21: trip_route* - Concatenated start and end station name based on Column 5 and 7 start_station_name and end_station_name; Return Trip Start and End Route in String Value
```sql
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
```
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/714a5d55-e0c9-43f2-a644-9a5e8226e497)

A new Table named 2022_CyclisticTripData_Cleaned2 is created by making a copy of the 2022_CyclisticTripData_Cleaned Table (with 8 New Columns Added), and Dirty Data are removed.

<ins>Create a New Table with Dirty Data Removed</ins>

1. Check Dirty Data to be deleted - 1,375,912 Records with NULL or Erroneous Values
   1. Rows with NULL values: Columns 5 OR 6 OR 7 OR 8 OR 9 OR 10 OR 11 OR 12: start_station_name IS NULL OR start_station_id IS NULL OR end_station_name IS NULL OR end_station_id IS NULL OR start_lat IS NULL OR start_lng IS NULL OR end_lat IS NULL OR end_lng IS NULL
   2. Rows with Erroneous and Outlier values: Column 19: trip_duration_second <= 0 (Erroneous) OR trip_duration_second <= 60 (Erroneous) OR trip_duration_second >= 86400 (Outliers)
```sql
 --Check Number of Dirty Data Rows to be Deleted: 1,375,912 Records x//1,298,357 Records
 SELECT
   *
 FROM
     `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
 WHERE
     start_station_name IS NULL OR
     start_station_id IS NULL OR
     end_station_name IS NULL OR
     end_station_id IS NULL OR
     start_lat IS NULL OR 
     start_lng IS NULL OR 
     end_lat IS NULL OR 
     end_lng IS NULL OR
   --trip_duration_second <= 0 --TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0 --AND --Exclude trip_duration_sec <= 0 seconds (including negative values for those started_at start trip time is later than ended_at end trip time) // Returns: 4,369,052 Records
   trip_duration_second <= 60 OR --// Returns: 1,375,756 Records
   trip_duration_second >= 86400 --// Returns: 1,375,912 Records
```
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/1216fe2b-cac9-4514-a8bd-3c02bdf84124)
```sql
 DELETE
  `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned`
 WHERE
   start_station_name IS NULL OR 
   start_station_id IS NULL OR 
   end_station_name IS NULL OR 
   end_station_id IS NULL OR
   start_lat IS NULL OR
   start_lng IS NULL OR
   end_lat IS NULL OR
   end_lng IS NULL OR
   --trip_duration_second <= 0
   trip_duration_second <= 60 OR
   trip_duration_second >= 86400
```

2. Create a New Table named 2022_CyclisticTripData_Cleaned2 (by making a copy of 2022_CyclisticTripData_Cleaned Table with 8 New Columns Added) with 1,375,912 Records of Dirty Data removed
```sql
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
     start_lat IS NOT NULL AND
     start_lng IS NOT NULL AND
     end_lat IS NOT NULL AND
     end_lng IS NOT NULL AND
     --trip_duration_second > 0 AND --Exclude trip_duration_second <= 0 seconds (including negative values for those started_at start trip time is later than ended_at end trip time) // Returns: 4,369,052 Records
     trip_duration_second > 60 AND --Check for trip_duration_second > 60 seconds (> 1 minute) // Returns: 4,291,961 Records
     trip_duration_second < 86400 --Check for trip_duration_second < 86,400 seconds (< 24 hours) // Returns: 4,291,805 Records x// Returns: 4,368,896 Recordsx
 )
```
There is a total of 4,291,805 Records in 2022_CyclisticTripData_Cleaned2 Table after Dirty Data is removed.
```sql
 SELECT
   *
 FROM
     `sw-coursera-project1.CyclisticTripData.2022_CyclisticTripData_Cleaned2`
```
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/bcadf65d-e1ad-468b-b180-9e6a08711206)

### <ins>2.4 Step 5 of Data Analysis Process: Share</ins>
> 
> Tableau Dashboard: [Data Visualizations](https://public.tableau.com/app/profile/starrie.woon/viz/GoogleDataAnalytics_Capstone-CyclisticCaseStudy/Dashboard_CyclisticRidership)
> 
#### **2.4.1 Key Insights**
Data Visualizations are created using Tableau with the key insights summarized in a Dashboard.
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/1cf948d9-85e5-429a-ba8e-35589ec8de95)


## **3. Conclusion** 
### <ins>3.1 Step 6 of Data Analysis Process: Act</ins>

#### **3.1.1 Recommendations**<br>

<ins>1. Roadshows for Maximum Impact</ins>

The roadshows organized during popular periods, particularly in _Quarter 3 of the year_ and on _Saturdays_, serve as a powerful tool for engaging with Casual Riders directly. Through interactive displays, demonstrations, and personalized consultations, we intend to not only introduce our membership offerings but also address any reservations or inquiries, making the conversion process seamless and compelling.

<ins>2. Tailored Membership Packages</ins>

Weekend-Focused Membership Plans: Our membership plans will spotlight exclusive benefits for _weekend usage_, enticing Casual Riders with a commitment to weekend adventures. By showcasing the added value of membership during their preferred riding times, we aim to convert Casual Riders into dedicated weekend enthusiasts.

Monthly Plans for Flexibility: Recognizing the diverse commitment levels of Casual Riders, our monthly plans provide the flexibility they desire. This approach ensures that riders can experience the benefits of membership without the constraints of long-term commitments, making the conversion process more accessible.

Rewards Program for Loyalty: The rewards program, a cornerstone of our strategy, is designed not only to reward Members but also to encourage Casual Riders to take the leap, as Casual Riders currently have a higher median Ride Duration. By accruing points for every kilometre ridden, we can create a tangible and rewarding journey towards having a membership. Milestones in the rewards program become conversion milestones, offering additional incentives for Casual Riders to commit to becoming valued members.

<ins>3. Traditional Media Campaigns</ins>

Our traditional media campaigns are strategically positioned along the _Top 10 Popular Routes_, designed not only to enhance brand visibility but also to communicate the exclusive benefits of membership. By showcasing the advantages of becoming a Member, we aim to entice Casual Riders to make the transition from occasional participants to committed Members, unlocking a series of perks and privileges.

<ins>4. Digital Media Campaigns</ins>

Our digital media strategy, including targeted email campaigns, plays a pivotal role in creating awareness about the membership benefits. By strategically launching these campaigns _during peak riding periods_, we aim to capture the attention of Casual Riders and showcase how membership enhances their overall riding experience. Highlighting exclusive perks and personalized offerings will be key to driving conversion through digital channels.

### <ins>3.2 Summary</ins>

By seamlessly integrating traditional and digital media, engaging roadshows and introducing tailored membership packages, we aim to showcase the undeniable value of signing up for the membership, so that Casual Riders are willing to transition to become a committed Member.


