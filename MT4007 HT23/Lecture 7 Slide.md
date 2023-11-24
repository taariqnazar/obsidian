---
bg: black
theme: css/my_theme.css
transition: fade
transitionSpeed: fast
---
# Statistical Data Processing HT2023 
**Lecture 7**

Taariq Nazar

---
## Overview 

- Structured Query Language
- Retrieving Data 
- Storing Data 

---
# Structured Query Language
---
##  SQL

- Structured Query Language (SQL) for making requests to databases.<!-- element class="fragment" -->
- Many flavours<!-- element class="fragment" -->


---
## SQL 
- SQL databases are relational database
![relational-data](https://r4ds.hadley.nz/diagrams/relational.png)<!-- element style="width:600px;margin-left:2em;"  class="fragment"-->
 
---
# Retrieving Data
---
## Basic Syntax

- SELECT<!-- element class="fragment"-->
- FROM<!-- element class="fragment"-->
- WHERE <!-- element class="fragment"-->
	- Conditions 
	- Chaining logical operators: AND, OR, NOT, ...
 - ... JOIN<!-- element class="fragment"-->
- End query with ";"<!-- element class="fragment"-->

```SQL 
SELECT variable1, variable2, ... -- * if you want all variables
FROM table1
... JOIN table2 ON table1.key1 = table2.key2
WHERE condition1 AND/OR/NOT condition2 AND/OR/NOT condition3 ...;
```
<!-- element style="margin-top:30em;"  class="fragment"-->

---
## Example

```SQL 
SELECT carrier, dest, tailnum
FROM flights
LEFT JOIN airlines ON flights.carrier = airlines.carrier;
WHERE dest='sweden';
```
<!-- element style="margin-top:10em;" -->

![relational-data](https://r4ds.hadley.nz/diagrams/relational.png)<!-- element style="width:600px;"-->

---
# Storing Data 
---
## Storing Data
- CREATE (TABLE tablename)<!-- element class="fragment"-->
- Specify variables <!-- element class="fragment"-->
	- Name
	- Datatype
	- Constraint

```SQL 
SELECT carrier, dest, tailnum
FROM flights
LEFT JOIN airlines ON flights.carrier = airlines.carrier;
WHERE dest='sweden';
```
<!-- element style="margin-top:25em;" class="fragment" -->

---
## Example
```SQL
CREATE TABLE Persons (
  Name VARCHAR(255) NOT NULL,
  Age INT,  -- It does not need to be specified
  ID_number VARCHAR(255) PRIMARY KEY
);

CREATE TABLE Computers (
  Computer_id INT PRIMARY KEY,
  Model VARCHAR(255),
  Brand VARCHAR(255),
  Owner VARCHAR(255) FOREIGN KEY REFERENCES Persons(ID_number) 
)
```
---
## Example Cont.
- Altering Table
	- Adding new variable called "Occupation"
 
```SQL
ALTER TABLE Persons
ADD Occupation VARCHAR(255);
```
---
## Example Cont. 
- Insert entry to table

```SQL
INSERT INTO table_name (variable1, variable2, ...)
VALUES (value1, value2, ...)
```

---
## Summary
- SQL is language communicates with SQL databases using structured syntax
- How we can retrieve data from an SQL database using queries
- How to store data in an SQL database using queries
