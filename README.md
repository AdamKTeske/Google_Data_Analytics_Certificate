# Cyclistic Bike-Share Case Study

## Introduction

### Summary
In this fictional case study, I am a junior data analyst at a bike-share company named Cyclistic. Lily Moreno, the director of marketing, wants to use data to find the best way to convert casual riders into annual members. My task is to use historical trip data to find out how these two types of bikers use Cyclistic differently and deliver my insights and recommendations to the stakeholders so they can decide on what marketing strategies to pursue. 

### About Cyclistic
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. 

Cyclistic's appeal is that they offer flexibility in their pricing plans with single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are 
referred to as casual riders. Customers who purchase annual memberships are Cyclistic members. 

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Moreno believes there is a very good chance to convert casual riders into members. 

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends. 

### Analysis Framework
As this is the capstone project of the Google Professional Data Analytics Certificate, I will be using their **APPASA** (Ask, Prepare, Process, Analyze, Share, and Act) data analysis process to help the Cyclistic executives maximize the number of annual memberships purchased. 


## Ask

### Business Task
Of the three business tasks guiding this marketing project, I have been assigned the first:

1.	**How do annual members and casual riders use Cyclistic bikes differently?**
2.	Why would casual riders buy Cyclistic annual memberships?
3.	How can Cyclistic use digital media to influence casual riders to become members?

I'll be analyzing historical trends for this proposal, pulling from and aggregating Cyclistic's most recent data going back one calendar year. 

### Stakeholders
**Lily Moreno**: Cyclistic’s Director of Marketing. She uses ___ channels such as email and social media to develop marketing campaigns that promote the bike-share program.

**Cyclistic marketing analytics team**: A cadre of data analysts who collect, analyze, and report on data that helps determine marketing strategy. I am a junior analyst on this team. 

**Cyclistic executive team**: The big dogs; they are “notoriously detail-oriented” and will decide whether to approve the recommended marketing program.

## Prepare
### Data Verification
The historical data I will be working with comes straight from Cyclistic themselves. Their records go from April 2020 to August 2023, so the data is absolutely fresh. There are 3 dozen tables each with thousands of data points. Following Google’s ROCCC (Reliable, Original, Comprehensive, Current, and Cited) data verification guidelines, we can be confident in the validity of our data as we move forward.

## Process
### Data Cleaning (Excel)
After downloading the Cyclistic monthly datasets from June 2022 to July of 2023, I opened each file in Excel in order to: 
*Remove duplicates.*
*Trim unnecessary spaces and characters using the TRIM() function.*
*Change the date format to YYYY/MM/DD.*
*Remove ride entries where the start date is later than the end date.*

### Data Preparation (SQL) 
Assuming Excel wouldn’t be able to handle 7,000,000+ rows of data, I used SQL to combine and prepare the data for analysis: 
*Created one master file containing all 13 datasets using the UNION function.*
*Sorted data by start date/time so everything was in chronological order.*

With all my data cleaned and merged, I could move forward with my analysis. 


## Analyze
Business Task: **How do casual riders and members use bikes differently?**

Before jumping into the analysis, I had to create some new columns using the data I already had. I created:
*A column for ride length by subtracting the end and start times.
*A column indicating the day of the week using the WEEKDAY function.
*A column indicating the month of the year using the MONTH function
Using the new ride length column, I removed a few rows of extreme outlier data such as rides that were longer than 24 hours.

Once I had completed these calculated columns, I compiled a list of questions I wanted to answer. I wrote queries to find: 
* *Total trips per rider type*
* *Total trips per bike type*
* *Average trip length per rider type*
* *Total trips per rider type for each month of the year*
* *Average trip length per rider type for each day of the week*
* *Top 5 starting locations for each rider type*

Here are the summarized results for each of these questions:
* *Members had about 1.5 million more rides than casual users.*
* *Casual riders were 42% more likely to use electric bikes over classic.*
* *Average trip length for casual riders was nearly twice as long as member trip length.*
* *The summer months were most active for both types of riders, with casual usage seeing a more drastic decline during the winter.*
* *Members rode consistently throughout the week, while weekends were busier for casual riders.*
* *The top 5 stations are split evenly East to West; casual riders clearly prefer waterside stations.*

## Share
For the visualization portion of this report, I used Tableau to create a dashboard that showcases each of the 6 questions I ran queries for. Blue represents members, while green shows data for the casual users. Here is a screenshot of the dashboard itself:

![Dashboard.png](https://github.com/AdamKTeske/Google_Data_Analytics_Certificate/blob/2296b0cf428b4922eec3de7be4767d796c03d1c9/Dashboard.png)

If you’d like to see the full dashboard on Tableau, click [here]( https://public.tableau.com/views/BikesCaseStudy/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link)

The most noticeable differences between casual riders and members were the total number of rides and the average ride length. Casual riders tended to take longer rides than members, while members took more rides overall. This is most likely because members can access the bikes whenever they want, while casual riders pay for individual rides and want to get their money’s worth. 

Looking at the five most popular stations for each rider type, we can see that all of the busiest casual stations are near the water on the East side. The top 5 stations for members are located deeper in the city, closer to offices and campuses. We can also see that members use the bikes consistently throughout the week while casual riders are much more active on weekends. These facts suggest that the casuals prefer to use Cyclistic bikes for recreation while members utilize them more pragmatically (work commute, basic transportation, etc.).


## Act
With all these findings in mind, I have a few recommendations for the executive team to get more casual users to become members: 

***Targeted Advertising:* The majority of casual riders use stations near entertainment hubs or by the water, so we should focus our advertisements there. They would be directed towards casuals and could promote the other marketing strategies suggested below.**

***Summer Membership:* Since the summer months are much more popular across the board, we could offer a discounted seasonal membership for those only looking for recreational biking experiences during the warmer parts of the year.**

***Weekend Membership:* Much like the summer membership, this plan would cover only the weekends and would cost less than a full membership.**

***Many Miles Rewards Program:* Casual riders take longer trips than members do. We could implement monetary rewards and/or digital badges for riders to earn if they hit a certain number of miles in a given time frame. We could incorporate a leaderboard as well, encouraging healthy competition within the community and giving people an incentive to share their scores online.**

These marketing strategies would encourage users who don’t want a full membership to try a less committal route, which will in turn lead to more full memberships in the future. The rewards program would also increase community engagement and generate online presence for Cyclistic as riders share their monthly scores and compete for the top spot. 



