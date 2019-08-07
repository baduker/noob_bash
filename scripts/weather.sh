#!/bin/bash

# A super simple weather script
# Usage: `weather CITYNAME` or just `weather` to use your IP addr. location.

: '
Road map to the url format

c    Weather condition,
C    Weather condition textual name,
h    Humidity,
t    Temperature,
w    Wind,
l    Location,
m    Moonphase,
M    Moonday,
p    precipitation (mm),
P    pressure (hPa),
'

curl http://wttr.in/$1?format="%l:+%c+%t+%h+%w"