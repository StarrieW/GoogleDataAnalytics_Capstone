<img src="https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/4c116cf5-5ecd-4d5d-913f-2179687ba78b" width="100" height="100"/> <br>
# Google Data Analytics Course Capstone: Cyclistic Bike-Share Case Study

## **1. Introduction** 
This introduction marks the commencement of my Capstone project within course outline of the Google Data Analytics Certificate course. THe forthcoming analysis will be conducted utilizing SQL on BigQuery to prepare and cleanse the data, followed by the creation of Data Visualizations using Tableau.

### Case Study Scenario
You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.

### Characters and teams
● Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.

● Lily Moreno: The director of marketing and your manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.

● Cyclistic Marketing Analytics Team: A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy learning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic achieve them.

● Cyclistic Executive Team: The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.

### About the company
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

## **2. Problems** 
I will address key Business Questions by following the 6 Steps of the Data Analysis Process, which includes Asking pertinent questions, Preparing and Processing data, conducting thorough Analysis, Sharing valuable insights, and taking Actionable steps.

### <ins>Step 1 of Data Analysis Process: Ask</ins>
The following three Business Questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

**Business Task**<br>

I will start off by addressing the Business Task of this project which is to understand the differences in usage pattern between annual members and casual riders.

**Key Stakeholders**
1. Lily Moreno
2. Cyclistic Marketing Analytics Team
3. Cyclistic Executive Team

### <ins>Step 2 of Data Analysis Process: Prepare</ins>

**Data Source**<br>

Data used for the Cyclistic (fictional company) Case Study is downloaded from [Divvy Trip History Data](https://divvy-tripdata.s3.amazonaws.com/index.html). The Divvy historical trip data, released on a monthly schedule, is made publicly available by Motivate International Inc. and provided according to the [Divvy Data License Agreement](https://divvybikes.com/data-license-agreement), where The City of Chicago permits Bikeshare (Lyft Bikes and Scooters, LLC), operators of the Divvy Bicycle Sharing Service, to make certain Divvy system data on historical trip data owned by the City (“Data”) available to the public.

**Range of Data Used**<br>

I will leverage on the historical trip data from January 2022 to December 2022 to conduct an analysis and identify trends on how different rider types are using Cyclistic bikes. 

**Data Organization**
- Data available for download is organized by respective months. 12 CSV files containing monthly data for the year of 2022 are downloaded with naming convention of YYYYMM-divvy-tripdata and stored in a folder. 
- Each file contains one month of data, with each variable and its data stored into Columns. The dataset contains information on Trip start day and time, Trip end day and time, Trip start and end station, Latitude and Longitude of Trip start and end station, Rider type (Member, Casual).
 
**Download and Storage of Data**<br>

**Information on Data**
- Each trip data is anonymized ensuring Data Privacy of its riders.
- The data has been processed to remove trips that are taken by staff as they service and inspect the system; and any trips that were below 60 seconds in length (potentially false starts or users trying to re-dock a bike to ensure it was secure).


 
**Data Limitations**
- Due to data privacy issues, rider’s personally identifiable information are not provided, we will not be able to connect pass purchases to credit card numbers to determine if Casual Riders live in Cyclistic service area or if they have purchased multiple single passes.
- Unable to segregate casual riders that purchased single-ride or full-day passes (as customers who purchase single-ride or full-day passes are referred to and grouped as Casual riders while customers who purchase annual memberships are Cyclistic Members).


### <ins>Step 3 of Data Analysis Process: Process</ins>
As it is a large dataset containing more than 5.6 million rows, we will be storing it in SQL on BigQuery
Note: We will not be using Excel spreadsheets for processing of large amount of data as Excel has a limit of 1,048,576 rows per Sheet. 

**1. Storing Data in SQL on BigQuery**

- A new Dataset named CyclisticTripData is created to store the data
- 12 Tables named in the format, YYYYMM_CyclisticTripData, are created in the CyclisticTripData Dataset by uploading the 12 CSV files<br>
  ![12 Tables Created](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/8701d118-fcfd-4c9f-a20f-01cfe983066b)

**2. Ensure Data Consistency Across the 12 Tables**

Ensure each Table consists of the following 13 Columns and check that each Column’s Data Type is consistent and correct across the 12 Tables:
1. ride_id: Unique ID per Ride
2. rideable_type: Type of Bicycle (electric_bike/classic_bike/docked_bike)
3. started_at: Date and Time Bicycle was Unlocked 
4. ended_at: Date and Time Bicycle was Returned
5. start_station_name: Name of Station at Start of Trip
6. start_station_id: Unique ID for Start Station
7. end_station_name: Name of Station at End of Trip
8. end_station_id: Unique ID for End Station
9. start_lat: Latitude of Start Station
10. start_lng: Longitude of Start Station
11. end_lat: Latitude of End Station
12. end_lng: Longitude of End Station
13. member_casual: Rider Type (member/casual)

**3. Combine Tables**<br>
> 
> SQL Code for: [Combining Tables](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/CyclisticTripData_1_CombineTables.sql)
> 
A new Table named 2022_CyclisticTripData is created by combining the 12 Tables (12 months of data for Year 2022), for ease of data cleaning.
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/00a32acd-741b-43f7-b4bd-233829d22bc2)
![image](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/assets/157820867/fe2b64c8-1016-426a-b7cd-585ce0434eec)
> 

**4. Explore Data in Combined 2022_CyclisticTripData Table**<br>
> 
> SQL Code for: [Checking Columns Data](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/CyclisticTripData_2_CheckColumnsData.sql)
> 
The 2022_CyclisticTripData Table containing data for entire Year of 2022 includes a total of 13 Columns and 5,667,717 Rows.

**5. Data Cleaning**
> 
> SQL Code for: [Cleaning Data and Creation of New Columns](https://github.com/StarrieW/GoogleDataAnalytics_Capstone/blob/main/CyclisticTripData_3_CleanCreateColumns.sql)
> 


**Assumptions or Theories Based on Data and Information Provided**
1. Any trips below 60 seconds (<1 minute) in length are assumed to be potentially false starts or users trying to re-dock a bike to ensure it was secure, hence it is removed from the Dataset.
2. Any trips above 36,660 seconds (>24 hours) in length are considered rare occurences (outlier), hence it is removed from the Dataset.
3. 


### <ins>Step 4 of Data Analysis Process: Analyze</ins>

### <ins>Step 5 of Data Analysis Process: Share</ins>

### <ins>Step 6 of Data Analysis Process: Act</ins>

## **3. Solutions** 
Outline a solution that would alleviate the problem and have a few alternatives in mind to show that you have given the case study considerable thought. Don’t forget to include pros and cons for each solution.

## **4. Conclusion** 
End your presentation by summarizing key takeaways of all of the problem-solving you conducted, highlighting what you have learned from this.




## **5. Recommendations** 
Explain why you made your choice and how this will affect the scenario in a positive way. Be specific and include what needs to be done, who should enforce it, and when.


