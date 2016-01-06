# Weather1

This app read Rss Feed, XML file from Yahoo Weather. Display current condition and forecast.
But it incompletely to finish do the below.


### Workflow

![alt text](https://raw.githubusercontent.com/youknowok/Weather1/master/weather1.png)

### Yahoo Weather

  1. Get woeid by lat, long
  
    * query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.placefinder%20where%20text=%22`lat`,`long`%22%20and%20gflags=%22R%22
    * Example: [Bangkok](http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.placefinder%20where%20text=%2213.7563,100.5018%22%20and%20gflags=%22R%22)
    
  2. Get Weather by id
  
    * weather.yahooapis.com/forecastrss?w=`woeid`&u=c
    * Example: [Weather](http://weather.yahooapis.com/forecastrss?w=12756339&u=c)

### See more
[Yahoo Weather](https://developer.yahoo.com/weather/)
  
