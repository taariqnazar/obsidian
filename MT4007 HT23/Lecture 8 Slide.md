---
bg: black
theme: css/my_theme.css
transition: fade
transitionSpeed: fast
---
# Statistical Data Processing HT2023 
**Lecture 8**

Taariq Nazar

---
## Overview 

- Regular Expressions
- The Syntax
- Example

---
# Regular Expressions

---
##  RegEx
- Regex, short for Regular Expressions, is a powerful tool for pattern matching and manipulation of strings.<!-- element class="fragment" -->
-  It allows you to search, match, and manipulate text based on patterns in string data.<!-- element class="fragment" -->
- Regex is everywhere. <!-- element class="fragment" -->
	- Git
	- Python/R
	- SQL

---
# The Syntax
---
## The syntax 

- **Literals**: E.g. `abc`
- **Metacharacters**: Special characters. E.g `*`, `+`
- **Character Classes** `[ ]`:  E.g `[aeiou]`. 
- **Quantifiers**: Control the number of occurrences of a character. 
- **Anchors**: Specify the position in the string where a match must occur. E.g `\b`
---
# Example
---
## Validating Email Addresses

```txt
john.doe@example.com
alice123@gmail.com 
bob@company.org
invalid-email
```
---

## Example 

```regex
\b[\w._%+-]+@[\w.-]+\.[A-Za-z]{2,4}\b
```

![regex-email](https://kottke.org/plus/misc/images/regex-example.png)<!-- element class="fragment" -->


---
## Example

- Pattern matches

```txt
john.doe@example.com 
alice123@gmail.com 
bob@company.org
```

---
## Summary
- Regex is a versatile tool for string pattern matching and manipulation. 
- Widely used
- Regex Syntax
- Example
- Best way to learn Regex is by examples