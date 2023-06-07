#!/usr/bin/env python

import csv
from datetime import datetime
from envirophat import weather

dt = datetime.now()
DateTime= dt.strftime('%d-%m-%Y %H:%M:%S')
temp = round(weather.temperature(), 2)
baro = round(weather.pressure(unit = 'hPa'), 2)

csvWrite = DateTime, temp, baro
csvFile = open('/home/foo/Dev/RasPi/enviroplot/enviroplot.csv', 'a')

with csvFile:
        writer = csv.writer(csvFile)
        writer.writerow(csvWrite)
