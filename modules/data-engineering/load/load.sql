-- Create database if not exists
CREATE DATABASE IF NOT EXISTS db;

USE db;


-- Creating the table to hold the CSV data
CREATE TABLE diabetes_data (
    Diabetes_binary TINYINT, -- 0 or 1 (Target variable)
    HighBP TINYINT, -- 0 or 1
    HighChol TINYINT, -- 0 or 1
    CholCheck TINYINT, -- 0 or 1
    BMI FLOAT, -- Body Mass Index (decimal values)
    Smoker TINYINT, -- 0 or 1
    Stroke TINYINT, -- 0 or 1
    HeartDiseaseorAttack TINYINT, -- 0 or 1
    PhysActivity TINYINT, -- 0 or 1
    Fruits TINYINT, -- 0 or 1
    Veggies TINYINT, -- 0 or 1
    HvyAlcoholConsump TINYINT, -- 0 or 1
    AnyHealthcare TINYINT, -- 0 or 1
    NoDocbcCost TINYINT, -- 0 or 1
    GenHlth TINYINT, -- 1 to 5
    MentHlth TINYINT, -- 0 to 30
    PhysHlth TINYINT, -- 0 to 30
    DiffWalk TINYINT, -- 0 or 1
    Sex TINYINT, -- 0 or 1 (Female or Male)
    Age TINYINT, -- 1 to 14 (categories)
    Education TINYINT, -- 1 to 6
    Income TINYINT -- 1 to 8
);


-- Load data from the CSV file into the table
LOAD DATA INFILE '/var/lib/mysql-files/diabetes_dataset.csv'
INTO TABLE diabetes_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
