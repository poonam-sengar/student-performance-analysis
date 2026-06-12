-- =============================================
-- Student Performance Analysis
-- All SQL Queries
-- Author: Poonam Sengar
-- =============================================

-- Setup
CREATE DATABASE student_analysis;
USE student_analysis;

CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    gender VARCHAR(10),
    race_ethnicity VARCHAR(20),
    parental_education VARCHAR(50),
    lunch VARCHAR(20),
    test_preparation VARCHAR(20),
    math_score INT,
    reading_score INT,
    writing_score INT
);

-- =============================================
-- ANALYSIS QUERIES
-- =============================================

-- Query 1: Average Scores by Gender
SELECT gender,
       ROUND(AVG(math_score), 2) AS avg_math,
       ROUND(AVG(reading_score), 2) AS avg_reading,
       ROUND(AVG(writing_score), 2) AS avg_writing
FROM student
GROUP BY gender;

-- Query 2: Impact of Test Preparation on Scores
SELECT test_preparation,
       ROUND(AVG(math_score), 2) AS avg_math,
       ROUND(AVG(reading_score), 2) AS avg_reading,
       ROUND(AVG(writing_score), 2) AS avg_writing
FROM student
GROUP BY test_preparation;

-- Query 3: Pass/Fail Analysis (Pass = score >= 40)
SELECT 
    COUNT(CASE WHEN math_score >= 40 THEN 1 END) AS math_pass,
    COUNT(CASE WHEN math_score < 40 THEN 1 END) AS math_fail,
    COUNT(CASE WHEN reading_score >= 40 THEN 1 END) AS reading_pass,
    COUNT(CASE WHEN reading_score < 40 THEN 1 END) AS reading_fail
FROM student;

-- Query 4: Top 10 Performers Overall
SELECT id, gender,
       (math_score + reading_score + writing_score) AS total_score
FROM student
ORDER BY total_score DESC
LIMIT 10;

-- Query 5: Parental Education Impact on Scores
SELECT parental_education,
       ROUND(AVG(math_score + reading_score + writing_score), 2) AS avg_total
FROM student
GROUP BY parental_education
ORDER BY avg_total DESC;
