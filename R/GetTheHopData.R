# use rvest to get HOPS data, and wranlge to a dataframe for saving
library(rvest)

# web reference: http://blog.corynissen.com/2015/01/using-rvest-to-scrape-html-table.html
# web source: http://www.schiesshouse.com/hop_properties_chart.htm
# note, use "inspect" in Chrome to find the right tabel XPath
# /html/body/table

# the web server rejects the request for this URL
# url <- "http://www.schiesshouse.com/hop_properties_chart.htm"

# this one does not
url <- "https://ychhops.com/varieties"

# looks an interesting page, but will require MORE crawling. Reminiscient of OIE

hops_raw <- read_html(url) %>%
    html_nodes(xpath='//*[@id="adminForm"]/table') %>%
    html_table()


