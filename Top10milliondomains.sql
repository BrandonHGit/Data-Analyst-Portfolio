/*Importing a pre-existing dataset from Kaggle.com 'https://www.kaggle.com/datasets/joebeachcapital/top-10-million-websites-2023'*/

/*Create DB*/
CREATE DATABASE top10milliondomains;

/*Create Table*/
CREATE TABLE public.Top10milliondomains
(
    Rank numeric,
    Domain VARCHAR(255),
    Open_Page_Rank numeric
);

/*Of the 10million domains, how many are google affiliated?*/
SELECT COUNT(*) 
FROM public.Top10milliondomains
WHERE domain LIKE '%google%';

/*Of the 10million domains, how many obtained a rank of 8.0 or higher?*/
SELECT COUNT(*)
FROM public.Top10milliondomains
WHERE open_page_rank >= 8;

/*Of the 10million domains, what are the top 10 based on ranking?*/
SELECT *
FROM public.Top10milliondomains
ORDER BY rank asc
LIMIT 10;

/*Of the 10million domains, what are the highest ranking '.org' domains?*/
SELECT *
FROM public.Top10milliondomains
WHERE domain like '%.org'
AND open_page_rank >= 5
ORDER BY rank;

/*Of the 10million domains, how many are related to 'wikipedia.org'?*/
SELECT COUNT(*)
FROM public.Top10milliondomains
WHERE domain like '%wikipedia%.org%';

/*Of the 10million domains, how many different language donmains are there for amazon?*/
SELECT COUNT(*)
FROM public.Top10milliondomains
WHERE domain like 'amazon.__'