#!/bin/sh
# This is the script that the cron job will execute

# Run the python script to collect the variables
python /home/foo/Dev/RasPi/enviroplot/enviroplot.py

#### Create the graph images from gnuplot
# 'Sleep' is there to prevent a conflict
sleep 10
gnuplot /home/foo/Dev/RasPi/enviroplot/temp_pressure_all.plot > /home/foo/Dev/RasPi/enviroplot/temp_pressure_all.png
sleep 10
gnuplot /home/foo/Dev/RasPi/enviroplot/temp_pressure_last7days.plot > /home/foo/Dev/RasPi/enviroplot/temp_pressure_last7days.png
sleep 10
gnuplot /home/foo/Dev/RasPi/enviroplot/temp_pressure_last24hours.plot > /home/foo/Dev/RasPi/enviroplot/temp_pressure_last24hours.png
