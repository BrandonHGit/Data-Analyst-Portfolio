/*Importing a pre-existing dataset from Kaggle.com 'https://www.kaggle.com/datasets/nelgiriyewithana/global-youtube-statistics-2023'*/

/*Create DB*/
CREATE DATABASE YTGlobalStatistics;

/*Create Table*/
CREATE TABLE public.GlobalStatistics
(
    rank numeric,
    Youtuber VARCHAR(255),
    subscribers numeric,
    video_views numeric,
    category VARCHAR(255),
    Title VARCHAR(255),
    uploads numeric,
    Country VARCHAR(255),
    Abbreviation VARCHAR(255),
    channel_type VARCHAR(255),
    video_views_rank numeric,
    country_rank numeric,
    channel_type_rank numeric,
    video_views_for_the_last_30_days numeric,
    lowest_monthly_earnings numeric,
    highest_monthly_earnings numeric,
    lowest_yearly_earnings numeric,
    highest_yearly_earnings numeric,
    subscribers_for_last_30_days numeric,
    created_year numeric,
    created_month VARCHAR(255),
    created_date numeric,
    Gross_tertiary_education_enrollment numeric,
    Population numeric,
    Unemployment_rate numeric,
    Urban_population numeric,
    Latitude numeric,
    Longitude numeric
);

/*Adjusting encoding to permit input of foreign characters*/
SET client_encoding = 'Latin1';

/*Copy data from .csv file-type to overlay onto created table*/
/*Filtering out null data denoted in .csv file-type as 'nan'*/
COPY public.GlobalStatistics
FROM 'C:\PostGre_to_CSVs\GlobalStatistics.csv'
WITH DELIMITER ','
NULL as 'nan'
CSV HEADER;

/*Initial glance to confirm table is successfully imported*/
Select * FROM public.GlobalStatistics;

/*Remove Youtube channels specifically owned by Youtube which returned NULL view count*/
/*DELETE*/
DELETE FROM public.GlobalStatistics
WHERE video_views = 0;

/*Adjust year, month, day columns to reflect single 'date' column as MM-DD-YYYY*/
/*ALTER TABLE and ADD COLUMN*/
ALTER TABLE public.GlobalStatistics
ADD COLUMN date_created DATE;

/*Adust month entries from string to numerical values*/
UPDATE public.GlobalStatistics
SET created_month = 
    CASE 
        WHEN created_month = 'Jan' THEN '01'
        WHEN created_month = 'Feb' THEN '02'
        WHEN created_month = 'Mar' THEN '03'
        WHEN created_month = 'Apr' THEN '04'
        WHEN created_month = 'May' THEN '05'
        WHEN created_month = 'Jun' THEN '06'
        WHEN created_month = 'Jul' THEN '07'
        WHEN created_month = 'Aug' THEN '08'
        WHEN created_month = 'Sep' THEN '09'
        WHEN created_month = 'Oct' THEN '10'
        WHEN created_month = 'Nov' THEN '11'
        WHEN created_month = 'Dec' THEN '12'
        ELSE created_month
    END;

/*UPDATE and SET new column parameter*/
UPDATE public.GlobalStatistics
SET date_created = TO_DATE(created_month || '-' || created_date || '-' || created_year, 'MM-DD-YYYY');

/*Remove redundant columns*/
ALTER TABLE public.GlobalStatistics
DROP COLUMN created_year,
DROP COLUMN created_month,
DROP COLUMN created_date;

/*What are the oldest channels, based on date_created, which are still in the top 1,000 youtube channels?*/
/*ORDER BY*/
SELECT youtuber, date_created 
FROM public.GlobalStatistics
ORDER BY date_created ASC;

/*What are the 10 most popular channels based on subscribers?*/
/*LIMIT*/
SELECT youtuber, subscribers, video_views
FROM public.GlobalStatistics
LIMIT 10;

/*What are the 10 most popular channels based on view count?*/
/*ORDER BY*/
SELECT youtuber, subscribers, video_views
FROM public.GlobalStatistics
ORDER BY video_views DESC
LIMIT 10;

/*What are the 5 most popular channels in Canada based on subscribers?*/
/*WHERE*/
SELECT youtuber, subscribers, country
FROM public.GlobalStatistics
WHERE country = 'Canada'
ORDER BY subscribers
LIMIT 5;

/*Which countries have the highest total number of subscribers?*/
/*DISTINCT and Aggregate function SUM*/
SELECT DISTINCT country, SUM(subscribers) as total_subscribers
FROM public.GlobalStatistics
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_subscribers DESC;
