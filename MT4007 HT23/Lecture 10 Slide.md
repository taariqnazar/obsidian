---
bg: black
theme: css/my_theme.css
transition: fade
transitionSpeed: fast
---
# Statistical Data Processing HT2023 
**Lecture 10**

Taariq Nazar

---
## Overview 

- Web Scraping
- HTML
- Static vs Dynamic
- Ethical Consideration 

---
# Web Scraping
---
## Web Scraping
- Web scraping is the process retrieving data that is available on a website <!-- element class="fragment" -->
- Collecting information present in the HTML <!-- element class="fragment" -->
- No API -> Web Scrape <!-- element class="fragment" -->

---
# HTML
---
## HTML 

- HyperText Markup Language (HTML), defines structure of a website <!-- element class="fragment" -->
- HTML uses tags, for e.g headings, paragraphs, links, images, and more <!-- element class="fragment" -->
---
## HTML

- HTML Structure example

```HTML
<!DOCTYPE html>  
<html>  
<head>  
<title>Page Title</title>  
</head>  
<body>  
  
<h1>This is a Heading</h1>  
<p>This is a paragraph.</p>  
  
</body>  
</html>
```
<!-- element class="" style="margin-top:100px;"-->

---
# Static vs Dynamic
---
## Static

- Complete website is retrieved with request <!-- element class="fragment" -->
- Easy to web scrape <!-- element class="fragment" -->
---
## Dynamic

- Skeleton of website is retrieved and content is loaded after the fact <!-- element class="fragment" -->
- Example, ICA  <!-- element class="fragment" -->
- A bit more difficult to web scrape <!-- element class="fragment" --> 
- Solution: Use a tool to simulate user <!-- element class="fragment" -->
---
# Ethical Considerations
---
## Ethical Considerations

- Always adhere to the terms of service of the website you are scraping. Some
websites explicitly prohibit scraping in their terms.

- To prevent server overload, implement rate limiting in your scraping scripts.
  This ensures you're not making too many requests in a short period, respecting
  the server's capacity.

- Robots.txt files provide guidelines for web crawlers. Check for this file on a
  website to understand any restrictions or rules set by the website owner.
---
## Summary

- Web Scraping 
- HTML Structure
- What is the difference between static and dynamic websites
- Ethical Considerations
