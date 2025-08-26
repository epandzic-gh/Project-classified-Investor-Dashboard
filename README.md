# Project-classified-Investor-Dashboard

<img width="1302" height="740" alt="image" src="https://github.com/user-attachments/assets/069826bf-7aa8-46f9-8a51-8df119e98978" />

Project [classified] provides a clean, intuitive interface that delivers key economic indicators as they stand.

Designed for investors who need quick, reliable data, the dashboard enables you to monitor these critical metrics and make informed decisions based on the most up-to-date economic trends. Whether you're evaluating market conditions or adjusting your investment strategy, this dashboard offers the essential insights to guide your next steps.

## 1 Extract the Data

Sources to find the data are as follows:

CPI: [U.S. Bureau of Labor Statistics](https://www.bls.gov/cpi/data.htm)

Monetary-Fiscal & Unemployment: [Federal Reserve Bank of St. Louis](https://fred.stlouisfed.org/) 

Stock data was extracted using a simple Python library "yfinance". This method was chosen due to the fact that Yahoo Finance no longer offers the service of exporting stock closing price data to a spreadsheet without having to pay for it.

![image](https://github.com/user-attachments/assets/35cb7f7b-a8c4-45f8-b6a2-c929b8e725f8)

The source data extracted, of course, comes organized in a manner which will not be convenient for analyzing nor as easily readable with a quick glance. For this, the data must be cleaned/transformed.

![image](https://github.com/user-attachments/assets/e0cd3d35-0a2b-4271-b78a-16d81c8f008d)

## 2 Create Database and Schemas

Databases and SQL to query the data are used to clean and organize the data due to the ability to query larger sums of data. So far, the CPI for urban consumers csv file totals approximately 16,000 rows of data. 

To work with databases, DBeaver was used as most of the menial tasks like importing a spreadsheet onto a table are done through the UI. This makes the process of importing and exporting spreadsheets much more streamlined and faster. The SQL language used is PostgreSQL.

![image](https://github.com/user-attachments/assets/1c4e7473-b815-4a0b-bad9-2ba2a781e791)

![image](https://github.com/user-attachments/assets/bc8dd862-32d9-48f9-8c93-ca4332da5616)

A script is made which will create the database "Macroecon" then create the various schemas to organize CPI, Monetary-Fiscal, Stock, and Unemployment data. Schemas are what allow the data to be stored into the database.

The script is seen here below.

![image](https://github.com/user-attachments/assets/4a952d2f-df9b-4731-8f9f-98899dbd4924)

## 3 Create Tables

Create tables in the schemas so that each separate csv file can be imported into them for transformation. 

Creating tables is a crucial aspect when setting up a database as they are objects for holding data. If the imported data cannot be stored as the set data type in the below script, there will be issues later in attempting to clean the data. It's important to assess what kind of data is being worked with, and what insights one needs from the data. 

![image](https://github.com/user-attachments/assets/935613c6-8409-4659-a394-6aaa63f7938b)

## 4 Transform the Data

Next, the tables of data across the schema will be cleaned to make them uniform. 

![image](https://github.com/user-attachments/assets/3adaebfe-5c6c-431f-9442-1bc072d6b044)

After cleaning the tables and making them uniform, this will make it easier to transform it. For example, GDP and Federal Debt values were not similar - with GDP being presented in a multiple of billions of dollars and Federal Debt being presented in a multiple of millions of dollars. 

## 5 Creating New Tables from Transformed Data

From the transformed data, we can create new tables that can analyze other metrics using JOINS. Federal Debt-to-GDP is created from Federal Debt and GDP.

![image](https://github.com/user-attachments/assets/6e0fdabe-0a7b-41df-8ba0-da3405e54435)

## 6 Load the Data

Using DBeaver we can export the data out into a folder, and load it into PowerBI for analysis and vizualization. 

![image](https://github.com/user-attachments/assets/3e9f0254-fa0f-4b40-b9d0-97b22b198517)

## 7 Findings

After a briefly analyzing the data, the following conclusions can be made:

•	FED has cut the federal funds rate too early, compromised their own goal with hiking rates. CPI in Feb. 2025 printed 3.2% inflation YoY, now over the target 2% YoY 

•	GDP increase is supported significantly by increase in federal spending. Whilst October 2024 GDP printed 11% increase YoY, federal debt in Oct. 2024 printed 15% increase YoY

•	Federal debt to GDP reaches equilibrium in 2020 then federal debt surpasses GDP with a significant spread. This negative spread has never been seen before, which is an alarming concern for the American citizen














