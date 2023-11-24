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

- `SELECT`<!-- element class="fragment"-->
- `FROM`<!-- element class="fragment"-->
- `WHERE`<!-- element class="fragment"-->
<!-- element class="fragment"--> 
	- Conditions: `AND`,  `NOT`, `OR`, ...


```SQL 
SELECT variable1, variable2, ... -- * if you want all variables
FROM table
WHERE condition1 AND/OR/NOT condition2 AND/OR/NOT condition3 ...;
```
<!-- element style="margin-top:25em;"  class=""-->

---
# Storing Data 
---
