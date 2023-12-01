---
bg: black
theme: css/my_theme.css
transition: fade
transitionSpeed: fast
---
# Statistical Data Processing HT2023 
**Lecture 9**

Taariq Nazar

---
## Overview 

- REST
- Request & Response
- Resources
- Example 

---
# REST

---
##  REST
- Representational State Transfer Application (REST) is a framework for communication in a network
- *Clients* requests and *Servers* Respond
	- E.g Restaurant

---
## REST
- Resources are located at a URI 
- Clients communicate using specific methods 
	- `GET`, `POST`, `DELETE`, `PUT` etc.
- Resource are commonly in the form of JSON or XML
- REST is stateless method of communication
---

![rest-api](https://www.altexsoft.com/static/blog-post/2023/11/72f74918-0345-4be1-bed3-08d1cfe138cc.webp)

---
# Request & Response
---
## Request
- **URI**: Specifying the location of the resource you are requesting.
- **Method**: Specifying the type of request. E.g. `GET`, `POST`, `DELETE`,
  `PUT` and so on.
- **Header**:  The headers provide additional information about the request or
  the client. The information needed is dependent on the API.
- **Body**: Optionally, data can be sent with the request, this is passed in
  the body of the request. 

---
## Response
- **Status**: Information of the status of the request. For instance status code
- **Header**: The header provide additional information about the response or
  the server
- **Body**: The response consists of a body that contains the resource(s)
  requested 


---
# Resources
---
##  JavaScript Object Notation (JSON) 
- Lightweight
- Easy to work with for both humans and machines
-  Example code 
```json 
{
  "name": "John Doe",
  "age": 30,
  "isStudent": false,
  "address": {
    "city": "Exampleville",
    "country": "JSONland"
  },
  "hobbies": ["reading", "coding", "traveling"]
}
```

---
## eXtensible Markup Language (XML)
- Easy to work with for both humans and machines
-  Example code 
```xml
<person>
  <name>John Doe</name>
  <age>30</age>
  <isStudent>false</isStudent>
  <address>
    <city>Exampleville</city>
    <country>XMLland</country>
  </address>
  <hobbies>
    <hobby>reading</hobby>
    <hobby>coding</hobby>
    <hobby>traveling</hobby>
  </hobbies>
</person>
```

---
## Summary
- REST is a framework for communication
- Clients make requests & Servers responds
- Response is commonly in the form of JSON or XML
- REST is everywhere!

