# week6quiz.R
# [For your convenience], here is the provided code from Jared Lander's R for Everyone, 
# 6.7 Extract Data from Web Sites

#install.packages("XML")
require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
bowlPool

##### Question 1 #####
# 1. What type of data structure is bowlpool? 

# bowlPool is a data frame and it will contain the first table on the web url given
if(is.data.frame(bowlPool))
print("bowlPool is a data frame")
#colnames(bowlPool)
#typeof(bowlPool$v1)


#####  Question 2 #####
# 2. Suppose instead you call readHTMLTable() with just the URL argument,
# against the provided URL, as shown below

# What is the type of variable returned in hvalues?

# Answer hvalues is a list of data frames of the tables.

theURL <- "http://www.w3schools.com/html/html_tables.asp"
hvalues <- readHTMLTable(theURL)
# hvalues is not a data frame. See the test below. hvalues is a list.
is.data.frame(hvalues)
#hvalues is a list.
if(is.list(hvalues))
  print("hvalues is a list")


#####  Question 3 #####
# 3. Write R code that shows how many HTML tables are represented in hvalues
length(hvalues)
# this will tell you how many items are in the list. Each item is a table




#####  Question 4 #####
# 4. Modify the readHTMLTable code so that just the table with Number, 
# FirstName, LastName, # and Points is returned into a dataframe
# That is the first table of the page so just say which =1
table2 <- readHTMLTable(theURL, which = 1, header = TRUE, stringsAsFactors = FALSE)
colnames(table2)





#####  Question 5 #####
# 5. Modify the returned data frame so only the Last Name and Points columns are shown.

# I placed the results into table2A

table2A <- table2[,c("Last Name", "Points")]
table2A






#####  Question 6 #####
# 6 Identify another interesting page on the web with HTML table values.  
# This may be somewhat tricky, because while
# HTML tables are great for web-page scrapers, many HTML designers now prefer 
# creating tables using other methods (such as <div> tags or .png files).  

# I chose the below website listed in q6URL

q6URL <- "http://www.htmlgoodies.com/tutorials/tables/article.php/3479851"
q6List <- readHTMLTable(q6URL)


#####  Question 7 #####

# 7 How many HTML tables does that page contain?

# There were 11 tables returned

cat("Number of tables : ",length(q6List))

print("There are")
length(q6List)




#####  Question 8 #####
# 8 Identify your web browser, and describe (in one or two sentences) 
# how you view HTML page source in your web browser.
# I use google Chrome browser and in that browser you can right click on a web page and select inspect element.
# The HTML source code will come up for that web page in the bottom of your browser window.
