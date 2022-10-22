SET GLOBAL local_infile=1;
set global local_infile=true;
SHOW GLOBAL VARIABLES LIKE 'local_infile';

create database telcocustomerdb;

use telcocustomerdb;

select * from telcocustomerdb.customers where customerID = '6713-OKOMC';

CREATE TABLE customers (
customerID	VARCHAR(40) NOT NULL PRIMARY KEY,
gender	VARCHAR(40),
SeniorCitizen	bool,
Partner	bool,
Dependents	bool,
tenure	INT,
PhoneService	bool,
MultipleLines	bool,
InternetService	bool,
OnlineSecurity	bool,
OnlineBackup	bool,
DeviceProtection	bool,
TechSupport	bool,
StreamingTV	bool,
StreamingMovies	bool,
Contract	VARCHAR(40),
PaperlessBilling	bool,
PaymentMethod	VARCHAR(40),
MonthlyCharges	FLOAT,
TotalCharges FLOAT
);

show tables;

LOAD DATA LOCAL INFILE "C:/softwares_dee_learning/repositories-github/GitHub/mysql-projects/data-sets/TelcoCustomer.csv" INTO TABLE telcocustomerdb.customers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(customerID,
gender,
SeniorCitizen,
Partner,
Dependents,
tenure,
PhoneService,
MultipleLines,
InternetService	,
OnlineSecurity	,
OnlineBackup,
DeviceProtection,
TechSupport,
StreamingTV	,
StreamingMovies	,
Contract	,
PaperlessBilling,	
PaymentMethod,	
MonthlyCharges	,
TotalCharges );

select count(customerID) from telcocustomerdb.customers;
