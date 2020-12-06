## API Challenge 
### This API to find out when the ISS (International Space Station) will be passing over Hamburg (which is at latitude 53.5511, longitude: 9.9937):
###This API returns times to us in the form of Unix time.


library(glue)
library(httr)
library(jsonlite)
resp <- GET("http://api.open-notify.org/iss-pass.json", query = list(lat =53.5511, lon = 9.9937))
resp
data = fromJSON(rawToChar(resp$content))
data
