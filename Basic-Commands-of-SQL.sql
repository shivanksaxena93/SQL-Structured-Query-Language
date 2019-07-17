create schema myschema ;

	create table customers (
    ID INT not null,
    Name Varchar(45),
    Address varchar(65),
    City varchar(45),
    state varchar(45),
    Zip varchar(45),
    primary key (ID));
select * from customers ;
truncate table customers;
Insert into customers values (1,'Shivank','201 S 4th St', 'San Jose', 'CA', 95112);
Insert into customers values (2,'Poonam','2901 S King Dr','Chicago','IL',60616);
Insert into customers values (3,'Ram','21 E 9th BH','San Jose','CA',91223);
Insert into customers values (4,'Himanshu','401 North Park','Seattle','WA',60616);
Insert into customers values (5,'Yash','673 Greenwich Ave','Newark','NJ',80432);
Insert into customers values (6,'Rahul','1568 Greenfiled Ave','Augusta','GA',30568);
Insert into customers values (7,'Bhature','423 Wisteria Lane','Simmersville','AK',54112);
Insert into customers values (8,'Parul','32 Hungerford Ave','Adams','NY',13605);
Insert into customers values (9,'Satwik','99543 Westin Blvd','Provo','UT',85478);
Insert into customers values (10,'Adithya','104 Main St','Denver','CO',81712);
Insert into customers values (11,'Gaurav','6801 Regina Cir','Madison','WI',53209);
Insert into customers values (12,'Archit','3290 Pennsylvania Ave','Las Vegas','NV',83594);
Insert into customers values (13,'Shefali','4972 Massachusetts Ave','Orlando','FL',33718);
Insert into customers values (14,'Rutvik','5517 Oak St','Phoenix','AZ',85072);
Insert into customers values (15,'Aakash','3752 Wittifield Blvd','Indianapolis','IN',46219);
Insert into customers values (16,'Vasanth','2901 S King Dr','Chicago','OH',45872);
Insert into customers values (17,'Abhishek','2901 S King Dr','Chicago','NC',27606);
Insert into customers values (18,'Sanjana','2901 S King Dr','Chicago','IN',47404);
Insert into customers values (19,'Shradha','6310 E21st Rd','Las Vegas','NV',83594);
Insert into customers values (20,'Nihar','Star Lane','Hollywood','CA',90210);

show tables;
show databases; 
SHOW COLUMNS FROM customers;
# Show statement displays the desired values 

select * from customers;
# * provides a proxy to dissplay all columns with records using a wistlist

SELECT city from customers;
#Using SELECT statement to diplay records from only one column

SELECT name, city FROM customers;
# Selecting 2 Columns from  table
SELECT name FROM customers
WHERE state = 'CA';
# Where clause put a condition to display only the desired records based on the condition
SELECT name, id, city FROM customers
WHERE !id = 12 or 15 or 17;
# Where not equal to condition with multipe conditions !=
SELECT name, id, city FROM customers
WHERE id <= 12;
# Where clause with less than or equal to condition

SELECT name, id, city FROM customers
WHERE id BETWEEN 5 AND 10;
# Where clause using BETWEEN keyword 

# Same sorting using limit
SELECT name, id, city FROM customers limit 5, 5;

SELECT DISTINCT state from customers;
# Distinct word doesnt not allow repetition for the selected variables 
SELECT id, name FROM customers order by id LIMIT 5;
# limit dsiplays the first N variable selected from the Table

SELECT id, name FROM customers LIMIT 5, 10;
# This command dsiplays the N variable starting from the first number and limiting to the last number and act as a range
SELECT customers.name from customers;
# Fully qualified names is a techqiue to run the query in exactly same way
 
# SORTING

SELECT id,name FROM customers ORDER BY name;
# This command sequentially arranges the values in definite order of names/alphabets
 
 
SELECT id, name, address, state FROM customers ORDER BY state,name;
# This command sequentially arranges the values in definite order of state/alphabets 
# and again checks for the order of second condition meeting the first 

SELECT id,name,address,zip FROM customers ORDER BY name DESC;
# DESC arranges the values of different columns in descending order mentioned after order by

SELECT id, state, name FROM customers ORDER BY id DESC LIMIT 4;
# This function helps in arranging in desc or ASC and then by selecting the number of top or bottom enteries.

SELECT id, name, city FROM customers WHERE (id = 1 or id = 2) and city = 'chicago';
#Using PARANTHESIS for defining a correct order function with multiple OR and AND statements

SELECT name, city, state FROM customers WHERE state IN ('NY','CA','NC') ORDER BY state;
SELECT name, city, state FROM customers WHERE state Not IN ('NY','CA','NC') ORDER BY state;
#Whenever a bunch of OR statements to be used better to use IN statement

