install.packages("rvest")
library('rvest')
theurl<-"https://en.wikipedia.org/wiki/Brazil_national_football_team"
file<- read_html(theurl)
tables<-html_nodes(file,"table")
table<-html_table(tables[4], fill = TRUE)
print(table)
