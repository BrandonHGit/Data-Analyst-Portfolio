# Brandon Hindman's Data Analyst Portfolio

Hello! Thanks for stopping by my GitHub. This repository contains some examples of SQL and Tableau I have completed. My goal with this GitHub is to show employers my capacity to explore data and hopefully land a full-time data analyst (or similar) job. 

For my SQL projects: I begin by importing '.csv' files into PgAdmin4 by defining table parameters and adjusting import-type to include any unique characters. Afterwrds, I try to clean the data by compiling/extracting dates and removing null fields. Finally, I showcase some syntax to answer generic questions one may have regarding each project database. 

For my Tableau projects: I try to work under a specific question/hypothesis and answer it to the best of my capacity utilizing 1-3 databases. Following importing of '.xlxs' files I then create multiple graphics. Once I get a good handle on the narrative I see in the data, I then integrate these graphics into a dashboard or a story and save them on my [tableau.public](https://public.tableau.com/app/profile/brandon.hindman).

Please feel free to look through this collection of example projects and [reach out](https://www.linkedin.com/in/brandon-h123/) if you have any questions or feedback.

## SQL Projects
* **Global Youtube Statistics '23** - [SQL](https://github.com/BrandonHGit/Data-Analyst-Portfolio/blob/main/Youtube%20Global%20Statistics%20'23.sql): In this project I used a dataset from Kaggle.com to analyze trends of the top ~1,000 most popular Youtube channels as of August 2023. I created the database repository in PgAdmin4, as well as a table for importing of the dataset. I began probing basic questions such as 'What are the 10 most popular channels based on subscribers?'.

*  **Top 10million internet domains '23** - [SQL](https://github.com/BrandonHGit/Data-Analyst-Portfolio/blob/main/Top10milliondomains.sql): In this project I used a dataset from Kaggle.com to compare the top 10 million internet domains. I created the database repository in PgAdmin4, as well as a table for importing of the dataset. I began probing basic questions such as 'Of the 10million domains, how many are google affiliated?'.

## Tableau Projects
*  **Canada CO2 Emissions** - [Tableau](https://public.tableau.com/app/profile/brandon.hindman/viz/CanadaCO2Emissions_16922201387280/CO2EmissionsinCanada): Utilizing a two datasets from Kaggle.com, I created a dashboard which compared CO2 emissions recorded in Canadian provinces. The map displays all provinces and post-codes for which CO2 emission data is available. The bar chart on the right contains a further breakdown of CO2 emissions within all provinces. Given Alberta contained the greatest CO2 emissions, I created a subsequent bar chart breaking down which post-codes presented the highest CO2 emissions exclusive to the province of Alberta. From this we can glean that the post-code 'T9H' obtains the greatest CO2 emissions in Alberta, and subsequently all provinces of Canada. Of interest, the cause of this CO2 emission spike is specific to the oil deposits located around Fort McMurray known as the [Athabasca oil sands](https://en.wikipedia.org/wiki/Athabasca_oil_sands).

![alt text](https://github.com/BrandonHGit/Data-Analyst-Portfolio/blob/main/Media/CO2%20Emissions%20in%20Canada.png)

* **Gold, Silver, and the S&P 500** [Tableau](https://public.tableau.com/app/profile/brandon.hindman/viz/GoldSilverSPVolumeTrendQuarterly/GoldandSilverVolumeTrend): Utilizing a three sample datasets from Kaggle.com, I created two graphical representations which contain three scatterplots each. These six scatterplots were then organized into a single story. For this project I wanted to assess a popular claim by Wallstreet where investors tend to purchase greater quantities of metal indices (i.e. silver and gold) during points of stock market volitility. If this hypothesis were to be supported, we would expect greater volume traded for both Gold and Silver indices during instances where the S&P500 shows more volitility in price valuation. I first approached this question with annual comparisons. For this graphic, we can see a lack of variability among our three indices for the timeframe of 2015-2019. Given such, I wanted to observe trends at greater fidelity, specifically weekly stock fluctuations around 2020 Q1-Q4 where most volitility was observed. Based on the graphic displayed below (i.e. weekly volume and reported 'highs'), we can find some support for our hypothesis. Specifically we see volume in metal indices tends to fluctuate immediately before/after the price of the S&P 500 has a drastic price movement at weekly averages for the dates of 01.19.20, 02.23.20, 03.22.20, and 04.26.20.   

![alt text](https://github.com/BrandonHGit/Data-Analyst-Portfolio/blob/main/Media/Gold%2C%20Silver%2C%20and%20the%20S%26P500%20-%20Story.png)

*  **AirBnB_Copenhagen** - [Tableau](https://public.tableau.com/app/profile/brandon.hindman/viz/Copenhagen_AirBnB/Dashboard1): Utilizing a sample dataset from Kaggle.com, I created a dashboard which compared AirBnB prices (per day) across multiple countries. The bar chart displays the averaged highest price_per_day AirBnB rentals within 8 countries. Given the highest rate for avg_rental_per_day was within Denmark, a breakdown of the 6 major cities was conducted resulting in both a map as well as a smaller inset bar graph. The breakdown of these prices within cities of Denmark reveals that the avg_price_per_day is greatest in the city of Brønshøj, Copenhagen. 

![alt text](https://github.com/BrandonHGit/Data-Analyst-Portfolio/blob/main/Media/AirBnB_Copenhagen.PNG)

* **Global Youtube Statistics '23** - [Tableau](https://public.tableau.com/app/profile/brandon.hindman/viz/YoutubeGlobalStatistics23/Dashboard1): Utilizing the same dataset from Kaggle.com, I created a dashboard which compared two packed bubble charts: 1) the top 10 channels based on subscription count and 2) the top 10 channels based on monthly revenue in order to compare channel types (music, entertainment, gaming, etc.). Of interest, the subcategory of 'Entertainment' has the highest representation across both subscriber count and monthly earnings. However, there is a distinct lack of overlap for those channels with the highest subscriber count and those channels with the highest monthly revenue. For instance, of the top 10 subscribed to channels only three channels are also top monthly earners: T-Series, Cocomelon - Nursery Rhymes, and SET India.

![alt text](https://github.com/BrandonHGit/Data-Analyst-Portfolio/blob/main/Media/YoutubeGlobalTop10.png)

          
