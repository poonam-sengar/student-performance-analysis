# Student Performance Analysis

I built this project to understand what factors actually affect 
how students perform in exams. The dataset has records of 1,000 
students with their scores in math, reading and writing along 
with details like gender, parental education, lunch type and 
whether they completed test preparation.

## Why I Made This

I wanted to practice real SQL analysis on a relatable dataset. 
Student performance is something everyone can connect with and 
I was genuinely curious whether things like parental education 
or test preparation actually make a measurable difference in 
scores — turns out they do.

## Tools Used

 MySQL — to store the data and write all my queries
 Excel — to clean and export query results  
 Tableau — to build the final dashboard

## What I Analyzed

- Do male or female students score higher on average?
- Does completing test preparation actually improve scores?
- How many students passed or failed each subject?
- Does parental education level affect student performance?
- Who are the top 10 overall performers?
- What percentage of students fall in each score category?

## What I Found

After running SQL queries here is what the data showed:

- Female students scored higher in reading and writing
  while male students had a slight edge in math
- Students who completed test preparation scored around
  5 to 10 points higher across all subjects
- Students whose parents had a master's degree consistently
  outperformed others
- Math had the highest number of failures compared to
  reading and writing

## Files in This Repository

- StudentsPerformance.csv — original dataset from Kaggle
- queries.sql — all  SQL queries written for this project
- screenshots/ — screenshots of every query result from MySQL

## Live Tableau Dashboard

https://public.tableau.com/app/profile/poonam.sengar/viz/StudentPerformanceAnalysis_17812872313850/Dashboard1
https://public.tableau.com/app/profile/poonam.sengar/viz/StudentPerformanceAnalysis1/Dashboard2

## What I Learned

This was my first real data analysis project using SQL and 
Tableau together. I learned how to import data into MySQL, 
write different types of queries from basic SELECT to subqueries 
and CASE WHEN statements, export results and visualize them 
in Tableau. The most interesting finding was how strongly 
test preparation correlated with higher scores across all 
three subjects.
